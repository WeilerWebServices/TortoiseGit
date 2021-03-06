// TortoiseSVN - a Windows shell extension for easy version control

// Copyright (C) 2009, 2011-2012 - TortoiseSVN

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
#pragma once

///////////////////////////////////////////////////////////////
// necessary includes
///////////////////////////////////////////////////////////////

#include "Containers/DictionaryBasedTempPath.h"

#include "QuickHashMap.h"

/**
 * CDictionaryBasedPath -> CString conversion utility.
 * Speeds up conversion by remembering previous mappings.
 */
class CPathToStringMap
{
private:

    /// exisiting mappings

    typedef quick_hash_map<LogCache::index_t, std::string> TMap;
    TMap data;

public:

    /// construction

    CPathToStringMap();

    /// remove all entries.
    /// Must be called whenever exisiting entries of
    /// the path dictionary get modified / invalidated.

    void Clear();

    /// auto-inserting lookup

    const std::string& AsString (const LogCache::CDictionaryBasedPath& path);
};