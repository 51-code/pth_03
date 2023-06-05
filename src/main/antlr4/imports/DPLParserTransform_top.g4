/*
 * Teragrep Data Processing Language Parser Library PTH-03
 * Copyright (C) 2019, 2020, 2021, 2022  Suomen Kanuuna Oy
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://github.com/teragrep/teragrep/blob/main/LICENSE>.
 *
 *
 * Additional permission under GNU Affero General Public License version 3
 * section 7
 *
 * If you modify this Program, or any covered work, by linking or combining it
 * with other code, such other code is not for that reason alone subject to any
 * of the requirements of the GNU Affero GPL version 3 as long as this Program
 * is the same Program as licensed from Suomen Kanuuna Oy without any additional
 * modifications.
 *
 * Supplemented terms under GNU Affero General Public License version 3
 * section 7
 *
 * Origin of the software must be attributed to Suomen Kanuuna Oy. Any modified
 * versions must be marked as "Modified version of" The Program.
 *
 * Names of the licensors and authors may not be used for publicity purposes.
 *
 * No rights are granted for use of trade names, trademarks, or service marks
 * which are in The Program if any.
 *
 * Licensee must indemnify licensors and authors for any liability that these
 * contractual assumptions impose on licensors and authors.
 *
 * To the extent this program is licensed as part of the Commercial versions of
 * Teragrep, the applicable Commercial License may apply to this file if you as
 * a licensee so wish it.
 */
parser grammar DPLParserTransform_top;

topTransformation
        : COMMAND_MODE_TOP (integerType)? (t_top_topOptParameter)*? fieldListType (t_top_byInstruction)?
        ;

t_top_topOptParameter
        : t_top_showcountParameter
        | t_top_showpercParameter
        | t_top_limitParameter
        | t_top_countfieldParameter
        | t_top_percentfieldParameter
        | t_top_useotherParameter
        | t_top_otherstrParameter
        ;

t_top_countfieldParameter
        : COMMAND_TOP_MODE_COUNTFIELD fieldType
        ;

t_top_limitParameter
        : COMMAND_TOP_MODE_LIMIT integerType
        ;


t_top_otherstrParameter
        : COMMAND_TOP_MODE_OTHERSTR stringType
        ;


t_top_percentfieldParameter
        : COMMAND_TOP_MODE_PERCENTFIELD fieldType
        ;


t_top_showcountParameter
        : COMMAND_TOP_MODE_SHOWCOUNT booleanType
        ;


t_top_showpercParameter
        : COMMAND_TOP_MODE_SHOWPERC booleanType
        ;


t_top_useotherParameter
        : COMMAND_TOP_MODE_USEOTHER booleanType
        ;

t_top_byInstruction
        : (COMMAND_TOP_MODE_BY) fieldListType
        ;
