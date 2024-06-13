<xsl:stylesheet xmlns:date="http://exslt.org/dates-and-times" xmlns:dyn="http://exslt.org/dynamic" xmlns:exsl="http://exslt.org/common" xmlns:math="http://exslt.org/math" xmlns:random="http://exslt.org/random" xmlns:regexp="http://exslt.org/regular-expressions" xmlns:set="http://exslt.org/sets" xmlns:str="http://exslt.org/strings" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" exclude-result-prefixes="date dyn exsl math random regexp set str">
    <xsl:output method="html" indent="yes" doctype-system="about:legacy-doctype"/>
    <xsl:template match="body/section">
        <section id="exslt-support">
            <h1>EXSLT function support</h1>
            <table>
                <thead>
                    <tr>
                        <th>namespace</th>
                        <th>name</th>
                        <th>supported</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th colspan="3">dates-and-times</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/add/index.html">date:add()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:add')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/add-duration/index.html">date:add-duration()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:add-duration')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/date/index.html">date:date()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:date')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/date-format/index.html">date:date-format()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:date-format')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/date-time/index.html">date:date-time()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:date-time')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-abbreviation/index.html">date:day-abbreviation()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-abbreviation')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-in-month/index.html">date:day-in-month()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-in-month')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-in-week/index.html">date:day-in-week()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-in-week')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-in-year/index.html">date:day-in-year()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-in-year')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-name/index.html">date:day-name()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-name')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/day-of-week-in-month/index.html">date:day-of-week-in-month()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:day-of-week-in-month')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/difference/index.html">date:difference()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:difference')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/duration/index.html">date:duration()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:duration')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/format-date/index.html">date:format-date()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:format-date')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/hour-in-day/index.html">date:hour-in-day()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:hour-in-day')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/leap-year/index.html">date:leap-year()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:leap-year')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/minute-in-hour/index.html">date:minute-in-hour()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:minute-in-hour')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/month-abbreviation/index.html">date:month-abbreviation()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:month-abbreviation')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/month-in-year/index.html">date:month-in-year()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:month-in-year')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/month-name/index.html">date:month-name()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:month-name')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/parse-date/index.html">date:parse-date()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:parse-date')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/second-in-minute/index.html">date:second-in-minute()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:second-in-minute')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/seconds/index.html">date:seconds()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:seconds')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/sum/index.html">date:sum()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:sum')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/time/index.html">date:time()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:time')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/week-in-month/index.html">date:week-in-month()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:week-in-month')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/week-in-year/index.html">date:week-in-year()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:week-in-year')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dates-and-times</td>
                        <td>
                            <a href="https://exslt.github.io/date/functions/year/index.html">date:year()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('date:year')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">dynamic</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/closure/index.html">dyn:closure()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:closure')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/evaluate/index.html">dyn:evaluate()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:evaluate')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/map/index.html">dyn:map()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:map')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/max/index.html">dyn:max()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:max')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/min/index.html">dyn:min()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:min')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/dynamic</td>
                        <td>
                            <a href="https://exslt.github.io/dyn/functions/sum/index.html">dyn:sum()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('dyn:sum')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">common</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/common</td>
                        <td>
                            <a href="https://exslt.github.io/exsl/functions/node-set/index.html">exsl:node-set()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('exsl:node-set')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/common</td>
                        <td>
                            <a href="https://exslt.github.io/exsl/functions/object-type/index.html">exsl:object-type()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('exsl:object-type')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">math</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/abs/index.html">math:abs()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:abs')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/acos/index.html">math:acos()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:acos')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/asin/index.html">math:asin()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:asin')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/atan/index.html">math:atan()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:atan')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/atan2/index.html">math:atan2()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:atan2')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/constant/index.html">math:constant()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:constant')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/cos/index.html">math:cos()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:cos')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/exp/index.html">math:exp()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:exp')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/highest/index.html">math:highest()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:highest')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/log/index.html">math:log()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:log')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/lowest/index.html">math:lowest()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:lowest')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/max/index.html">math:max()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:max')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/min/index.html">math:min()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:min')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/power/index.html">math:power()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:power')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/random/index.html">math:random()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:random')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/sin/index.html">math:sin()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:sin')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/sqrt/index.html">math:sqrt()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:sqrt')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/math</td>
                        <td>
                            <a href="https://exslt.github.io/math/functions/tan/index.html">math:tan()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('math:tan')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">random</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/random</td>
                        <td>
                            <a href="https://exslt.github.io/random/functions/random-sequence/index.html">random:random-sequence()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('random:random-sequence')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">regular-expressions</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/regular-expressions</td>
                        <td>
                            <a href="https://exslt.github.io/regexp/functions/match/index.html">regexp:match()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('regexp:match')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/regular-expressions</td>
                        <td>
                            <a href="https://exslt.github.io/regexp/functions/replace/index.html">regexp:replace()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('regexp:replace')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/regular-expressions</td>
                        <td>
                            <a href="https://exslt.github.io/regexp/functions/test/index.html">regexp:test()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('regexp:test')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">sets</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/difference/index.html">set:difference()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:difference')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/distinct/index.html">set:distinct()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:distinct')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/has-same-node/index.html">set:has-same-node()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:has-same-node')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/intersection/index.html">set:intersection()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:intersection')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/leading/index.html">set:leading()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:leading')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/sets</td>
                        <td>
                            <a href="https://exslt.github.io/set/functions/trailing/index.html">set:trailing()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('set:trailing')"/>
                        </td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <th colspan="3">strings</th>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/align/index.html">str:align()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:align')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/concat/index.html">str:concat()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:concat')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/decode-uri/index.html">str:decode-uri()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:decode-uri')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/encode-uri/index.html">str:encode-uri()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:encode-uri')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/padding/index.html">str:padding()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:padding')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/replace/index.html">str:replace()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:replace')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/split/index.html">str:split()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:split')"/>
                        </td>
                    </tr>
                    <tr>
                        <td>http://exslt.org/strings</td>
                        <td>
                            <a href="https://exslt.github.io/str/functions/tokenize/index.html">str:tokenize()</a>
                        </td>
                        <td>
                            <xsl:value-of select="function-available('str:tokenize')"/>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </xsl:template>
</xsl:stylesheet>