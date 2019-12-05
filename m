Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmdu-0002XB-Bs
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 08:37:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1icmds-0003JC-Ua
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 09:37:45 +0100
References: <1575380921-160915-1-git-send-email-s.riedmueller@phytec.de>
 <20191205080755.nc2ao3hjb5eli7ud@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <67c1cd67-9156-9e43-2be4-b3502877d95f@pengutronix.de>
Date: Thu, 5 Dec 2019 09:37:44 +0100
MIME-Version: 1.0
In-Reply-To: <20191205080755.nc2ao3hjb5eli7ud@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl: phycore: Remove emmc vmmc-supply
To: barebox@lists.infradead.org

Hello,

On 12/5/19 9:07 AM, Sascha Hauer wrote:
> On Tue, Dec 03, 2019 at 02:48:41PM +0100, Stefan Riedmueller wrote:
>> There is no driver for the eMMC's vmmc-supply regulator in the barebox.
>> Use a dummy regulator instead by simply deleting the vmmc-supply
>> property.
>>
>> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
>> ---
>>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> index 69f252b42382..974e271f453d 100644
>> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> @@ -112,6 +112,7 @@
>>  };
>>  
>>  &usdhc4 {
>> +	/delete-property/ vmmc-supply;
> 
> I don't like this approach very much. It's fine for barebox, but leads
> to problems once you start Linux with the barebox device tree. I'd
> rather go with the unmodified device trees (apart from the things
> barebox changes to the device trees in order to start Linux).

How about a barebox,regulator-always-on property? If the regulator is unnecessary,
it basically means you can assume it's always on when barebox runs.

If regulator_get is called with a property that points to such a node, a dummy
regulator is returned with which enable is a no-op. Additionally, do the same
for regulator-always-on, so the in-barebox device tree only needs to mark
non regulator-always-on that are expected to be always on when it runs due to
strapping/fuses as barebox,regulator-always-on.

Thoughts?
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
