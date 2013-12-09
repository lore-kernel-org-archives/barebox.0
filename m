Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq0t3-0005V8-A5
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:28:37 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A3ECDFFA9E7
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:28:15 +0100 (CET)
Date: Mon, 9 Dec 2013 14:28:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209132822.GH27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-3-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/7] at91: sama5d3: use the sama5 smc instead of the sam9
 one
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-at91/Kconfig   | 1 -
>  arch/arm/mach-at91/Makefile  | 2 +-
>  arch/arm/mach-at91/sama5d3.c | 2 +-
>  3 files changed, 2 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 6ab374e..d411edc 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -24,7 +24,6 @@ config SOC_AT91SAM9
>  config SOC_SAMA5
>  	bool
>  	select CPU_V7
> -	select AT91SAM9_SMC
select here I do not want to hack it again when having a new smc
or a new SoC
>  	select AT91SAM9_TIMER
>  =

>  config ARCH_TEXT_BASE
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index ab80e5f..18d156c 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -30,4 +30,4 @@ obj-$(CONFIG_ARCH_AT91SAM9G20) +=3D at91sam9260.o at91s=
am9260_devices.o
>  obj-$(CONFIG_ARCH_AT91SAM9G45) +=3D at91sam9g45.o at91sam9g45_devices.o
>  obj-$(CONFIG_ARCH_AT91SAM9X5)	+=3D at91sam9x5.o at91sam9x5_devices.o
>  obj-$(CONFIG_ARCH_AT91SAM9N12)	+=3D at91sam9n12.o at91sam9n12_devices.o
> -obj-$(CONFIG_ARCH_SAMA5D3)	+=3D sama5d3.o sama5d3_devices.o
> +obj-$(CONFIG_ARCH_SAMA5D3)	+=3D sama5d3.o sama5d3_devices.o sama5_smc.o
> diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
> index aa681aa..acbf018 100644
> --- a/arch/arm/mach-at91/sama5d3.c
> +++ b/arch/arm/mach-at91/sama5d3.c
> @@ -386,7 +386,7 @@ static void sama5d3_initialize(void)
>  	at91_add_sam9x5_gpio(4, SAMA5D3_BASE_PIOE);
>  =

>  	at91_add_pit(SAMA5D3_BASE_PIT);
> -	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
> +	at91_add_sama5_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
>  }
>  =

>  AT91_SOC_START(sama5d3)
> -- =

> 1.8.3.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
