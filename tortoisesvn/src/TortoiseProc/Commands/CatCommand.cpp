﻿// TortoiseSVN - a Windows shell extension for easy version control

// Copyright (C) 2007-2008, 2010, 2014, 2018 - TortoiseSVN

// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//
#include "stdafx.h"
#include "CatCommand.h"

#include "PathUtils.h"
#include "SVN.h"

bool CatCommand::Execute()
{
    auto savepath = CPathUtils::GetLongPathname(parser.GetVal(L"savepath"));
    CString revision = parser.GetVal(L"revision");
    CString pegrevision = parser.GetVal(L"pegrevision");
    SVNRev rev = SVNRev(revision);
    if (!rev.IsValid())
        rev = SVNRev::REV_HEAD;
    SVNRev pegrev = SVNRev(pegrevision);
    if (!pegrev.IsValid())
        pegrev = SVNRev::REV_HEAD;
    SVN svn;
    if (!svn.Cat(cmdLinePath, pegrev, rev, CTSVNPath(savepath.c_str())))
    {
        svn.ShowErrorDialog(GetExplorerHWND(), cmdLinePath);
        ::DeleteFile(savepath.c_str());
        return false;
    }
    return true;
}
