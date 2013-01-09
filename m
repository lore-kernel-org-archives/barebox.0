Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tsuzs-00035v-LT
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 12:43:10 +0000
Message-ID: <50ED65D0.2080403@phytec.de>
Date: Wed, 09 Jan 2013 13:42:56 +0100
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
MIME-Version: 1.0
References: <1357315992-18896-1-git-send-email-J.Kilb@phytec.de>
 <20130109110036.GA5836@pengutronix.de>
In-Reply-To: <20130109110036.GA5836@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM omap hsmmc: Fix adding iobase for OMAP3
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 09.01.2013 12:00, Sascha Hauer wrote:
> Hi J=FCrgen,
>
> I'm a bit confused...
me too ;-)
> On Fri, Jan 04, 2013 at 05:13:12PM +0100, Juergen Kilb wrote:
>> Only the OMAP4 hsmmc module has an offset of 0x100 from its register
>> base address. With commit 416a991 the offset was added for all SOCs
>> which use the omap_hsmmc driver.
>> This has broken the driver for OMAP3/AM33xx platforms.
> You state that am33xx is broken,...
It seems, I've made a mistake and looked in the wrong datasheet (AM35xx).
Sorry!
>
>> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
>> ---
>>   drivers/mci/omap_hsmmc.c |    6 +++++-
>>   1 files changed, 5 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
>> index 6471ea6..68fb3e1 100644
>> --- a/drivers/mci/omap_hsmmc.c
>> +++ b/drivers/mci/omap_hsmmc.c
>> @@ -577,8 +577,12 @@ static int omap_mmc_probe(struct device_d *dev)
>>   	hsmmc->mci.hw_dev =3D dev;
>>   =

>>   	hsmmc->iobase =3D dev_request_mem_region(dev, 0);
>> -	hsmmc->base =3D hsmmc->iobase + 0x100;
>>   =

>> +#if defined(CONFIG_ARCH_OMAP4)
>> +	hsmmc->base =3D hsmmc->iobase + 0x100;
>> +#else
>> +	hsmmc->base =3D hsmmc->iobase;
>> +#endif
> and remove the 0x100 offset for am33xx here.
>
> Now I realize am33xx MMC is broken and I need the following patch to
> make it work again. Could it be you didn't test it on am33xx or is there
> something else wrong here?
>
Now I've checked the correct datasheet (AM33xx) and I see that
my patch has broken the AM33xx hsmmc support.
I've only tested on an phyCARD-A-L1 (OMAP3530).

> Sascha
>
>
>  From b337e4b71ae7b3b2c9668350252ba86f8ecfa764 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 9 Jan 2013 11:02:50 +0100
> Subject: [PATCH] ARM am33xx: the hsmmc is a omap4 type mmc controller
>
> The am33xx hsmmc controller is actually a omap4 type controller which
> means that it has a 0x100 offset in the registers.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/mach-omap/include/mach/am33xx-devices.h |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/=
mach-omap/include/mach/am33xx-devices.h
> index 4c83b28..c194303 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
> @@ -26,7 +26,7 @@ static inline struct device_d *am33xx_add_uart2(void)
>   =

>   static inline struct device_d *am33xx_add_mmc0(struct omap_hsmmc_platfo=
rm_data *pdata)
>   {
> -	return add_generic_device("omap3-hsmmc", 0, NULL,
> +	return add_generic_device("omap4-hsmmc", 0, NULL,
>   			AM33XX_MMCHS0_BASE, SZ_4K, IORESOURCE_MEM, pdata);
>   }
>   =

I agree with you, that the AM33XX has an offset ox 0x100 like the OMAP4.

greetings,
J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
