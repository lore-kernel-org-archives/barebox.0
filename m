Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGb5-0001lO-DK
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:49:01 +0000
References: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
 <1575882108-108853-2-git-send-email-s.riedmueller@phytec.de>
 <20191209102059.hq3ujnzcqwh3g63t@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <6a2b5330-ecb7-a6d2-3fca-ee05b54662e6@phytec.de>
Date: Mon, 9 Dec 2019 11:48:55 +0100
MIME-Version: 1.0
In-Reply-To: <20191209102059.hq3ujnzcqwh3g63t@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] ARM: dts: imx6: pcaaxl3: Update license and model
 description
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Roland,

On 09.12.19 11:20, Roland Hieber wrote:
> On Mon, Dec 09, 2019 at 10:01:43AM +0100, Stefan Riedmueller wrote:
>> Make use of SPDX license identifiers and update copyright notices and
>> model descriptions of the phyCARD-i.MX 6 SOM.
>>
>> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
>> ---
>>   arch/arm/dts/imx6q-phytec-pbaa03.dts   | 13 ++++---------
>>   arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi | 14 +++-----------
>>   2 files changed, 7 insertions(+), 20 deletions(-)
>>
>> diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
>> index 4724a02ad7d8..b11b8b3f93fe 100644
>> --- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
>> +++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
>> @@ -1,19 +1,14 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later)
>>   /*
>> - * Copyright 2014 Christian Hemp, Phytec Messtechnik GmbH
>> - *
>> - * The code contained herein is licensed under the GNU General Public
>> - * License. You may obtain a copy of the GNU General Public License
>> - * Version 2 or later at the following locations:
>> - *
>> - * http://www.opensource.org/licenses/gpl-license.html
>> - * http://www.gnu.org/copyleft/gpl.html
>> + * Copyright (C) 2014 PHYTEC Messtechnik GmbH
>> + * Author: Christian Hemp <c.hemp@phytec.de>
>>    */
>>   
>>   /dts-v1/;
>>   #include "imx6q-phytec-pcaaxl3.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCARD-i.MX6 Quad Carrier-Board";
>> +	model = "PHYTEC phyCARD-i.MX6 Quad";
>>   	compatible = "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6q";
>>   
>>   	chosen {
>> diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
>> index db986f87ef26..5e0495996d52 100644
>> --- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
>> +++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
>> @@ -1,21 +1,13 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later)
>>   /*
>> - * Copyright 2014444 Christian Hemp, Phytec Messtechnik GmbH
> 
> Oh, code from the future :)
> 
>> - *
>> - * The code contained herein is licensed under the GNU General Public
>> - * License. You may obtain a copy of the GNU General Public License
>> - * Version 2 or later at the following locations:
>> - *
>> - * http://www.opensource.org/licenses/gpl-license.html
>> - * http://www.gnu.org/copyleft/gpl.html
>> + * Copyright (C) 2014 PHYTEC Messtechnik GmbH
>> + * Author: Christian Hemp <c.hemp@phytec.de>
>>    */
> 
> For the license part:
> Reviewed-by: Roland Hieber <rhi@pengutronix.de>
> 
>>   
>>   #include <arm/imx6q.dtsi>
>>   #include "imx6q.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCARD-i.MX6 Quad";
>> -	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
>> -
> 
> ... but this looks like an accidental change to me, or did you really
> want to have a device tree without a compatible?

Actually, yes I did. In one of the other patches the file gets renamed to an 
imx6qdl-* file to show the possibility to use it with an i.MX 
6DualLight/Solo as well. So the compatible is decided in another file. But 
maybe I should put this hunk into the other patch. I just found another 
thing myself so I will send a v2 anyway.

Regards,
Stefan

> 
>   - Roland
> 
>>   	chosen {
>>   		environment-nand {
>>   			compatible = "barebox,environment";
>> -- 
>> 2.7.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
