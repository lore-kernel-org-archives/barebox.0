Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsDER-00080h-I6
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 22:35:32 +0000
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
 <20200701091122.3437-20-a.fatoum@pengutronix.de>
 <20200705184202.GZ15485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c9be71e8-1b06-7066-57e4-e86287b4e8f7@pengutronix.de>
Date: Mon, 6 Jul 2020 00:35:30 +0200
MIME-Version: 1.0
In-Reply-To: <20200705184202.GZ15485@pengutronix.de>
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
Subject: Re: [PATCH 19/28] ARM: at91: add helpers for chain-loading barebox
 from SD-card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On 7/5/20 8:42 PM, Sascha Hauer wrote:
> On Wed, Jul 01, 2020 at 11:11:13AM +0200, Ahmad Fatoum wrote:
>> +static void at91_fat_start_image(struct pbl_bio *bio,
>> +				 void *buf, unsigned int len,
>> +				 u32 r4)
>> +{
>> +	void __noreturn (*bb)(void);
>> +	int ret;
>> +
>> +	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
>> +	if (ret < 0) {
>> +		pr_err("pbl_fat_load: error %d\n", ret);
>> +		return;
>> +	}
>> +
>> +	bb = buf;
>> +
>> +	sync_caches_for_execution();
>> +
>> +	xload_bb(bb, r4);
>> +}
>> +
>> +static const struct sdhci_instance {
>> +	void __iomem *base;
>> +	unsigned id;
>> +	u8 periph;
>> +	s8 pins[15];
>> +} sdhci_instances[] = {
>> +	[0] = { SAMA5D2_BASE_SDHC0, SAMA5D2_ID_SDMMC0, AT91_MUX_PERIPH_A,
>> +		{ 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 } },
>> +	[1] = { SAMA5D2_BASE_SDHC1, SAMA5D2_ID_SDMMC1, AT91_MUX_PERIPH_E,
>> +		{ 18, 19, 20, 21, 22, 28, 30, -1 } },
>> +};
> 
> Can we use C99 initializer here please?

Can do

> 
>> +
>> +/**
>> + * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
>> + * @r4: value of r4 passed by BootROM
>> + *
>> + * Return: If successul, this function does not return. A negative error
> 
> s/successul/successful/
> 
>> + * code is returned when this function fails.
> 
> This is not true, the function panics on error.

It did when I first wrote the comment :D.
Will reply with a fixup.

> 
>> + */
>> +void __noreturn sama5d2_sdhci_start_image(u32 r4)
>> +{
>> +	void *buf = (void *)SAMA5_DDRCS;
>> +	const struct sdhci_instance *instance;
>> +	struct pbl_bio bio;
>> +	const s8 *pin;
>> +	int ret;
>> +
>> +	instance = &sdhci_instances[!!sama5_bootsource_instance(r4)];
> 
> Why "!!"? sama5_bootsource_instance() should return exactly 0 or 1 here.

SAMA5_BOOTSOURCE_INSTANCE is GENMASK(7, 4). While it should only be 0 or 1
on the sama5d2, better be on the safe side and force it to either 0 or 1.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
