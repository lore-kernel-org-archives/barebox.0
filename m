Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hI8zZ-0002wd-B1
 for barebox@lists.infradead.org; Sun, 21 Apr 2019 09:42:35 +0000
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-15-a.fatoum@pengutronix.de>
 <20190402180113.GE18142@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1fba21ef-5a10-7497-876e-1e4a4595a543@pengutronix.de>
Date: Sun, 21 Apr 2019 11:42:30 +0200
MIME-Version: 1.0
In-Reply-To: <20190402180113.GE18142@ravnborg.org>
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
Subject: Re: [PATCH v3 14/15] ARM: at91: microchip-ksz9477: provide board code
 fallback
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 2/4/19 20:01, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Apr 01, 2019 at 12:18:22PM +0200, Ahmad Fatoum wrote:
>> The newly added device tree based first stage fails to load the second
>> stage from MMC, which might be in relation to a preceding atmel_mci
>> "command/data timeout" message.
> 
> I had similar troubles with MMC on at91sam9263.
> After some digging the fix was simple:
> See 5feabc1e6737742f1cf6a1c41921f68b4dbb5c10 ("arm: at91: fix clock to mci1 for at91sam9263")

Might be clock related. But if I need to fit drivers into the PBL
as well, device tree in first-stage won't be viable anyway,
so I probably won't look further into this.

> 
> Maybe you are hit by something as simple as this?
> 
>> +
>> +static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
>> +	{
>> +		.offset = 0x00000,
>> +		.size = SZ_256K,
>> +		.flags = DEVFS_PARTITION_FIXED,
>> +		.name = "at91bootstrap_raw",
>> +		.bbname = "at91bootstrap",
>> +	},
> Strange partition name now we use barebox as first stage.

Indeed.

> 
> 
>> +++ b/arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
> 
> Naming confuses me.
> Do we stick to the name "first stage" or do we use "bootstrap"?
> For me they are the same, but I get confused when we use both.

For the at91sam9261ek the bootstrap defconfig is the one defining
AT91_BOOTSTRAP, so I figured I should follow suit..


> 
> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
