/*
 * JavaScript Software Development Kit - what JavaScript should be and can be - js-sdk.sourceforge.net
 * Copyright (C) 2006-2007 Mathew Sheets
 *
 * == BEGIN LICENSE ==
 *
 * Licensed under the terms of any of the following licenses at your
 * choice:
 *
 *  - GNU Lesser General Public License Version 2.1 or later (the "LGPL")
 *    http://www.gnu.org/licenses/lgpl.html
 *
 * == END LICENSE ==
 */

package jsx.collections.comparators;

import jsx.collections.comparators.NumericComparatorUtil;

class NumericComparator
{
	/**
	* @fileOverview
	* @example
	*/
	/**
	* @class NumericComparator
	* @constructor
	* @param {Boolean} _reversal
	*/
	NumericComparator(_reversal)
	{
		/**
		* Comparator function used to compare number values.
		*/
		this.compare = function(_objectA, _objectB)
		{
			return NumericComparatorUtil.compare(_objectA, _objectB, _reversal);
		}
	}

}