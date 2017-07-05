Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSi82-0001S9-3t
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 11:05:57 +0000
Message-ID: <1499252725.22075.6.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 13:05:25 +0200
In-Reply-To: <20170705105637.4484-2-s.trumtrar@pengutronix.de>
References: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
 <20170705105637.4484-2-s.trumtrar@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/8] common: efi: do not use undefined kconfig option
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.07.2017, 12:56 +0200 schrieb Steffen Trumtrar:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/efi/efi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/common/efi/efi.c b/common/efi/efi.c
> index 05c58250f4a7..f924385958e1 100644
> --- a/common/efi/efi.c
> +++ b/common/efi/efi.c
> @@ -266,8 +266,7 @@ static int efi_console_init(void)
>  
>  	add_generic_device("efi-stdio", DEVICE_ID_SINGLE, NULL, 0 , 0, 0, NULL);
>  
> -	if (IS_ENABLED(CONFIG_ARCH_EFI_REGISTER_COM1))

It seems we lost this option when moving arch/efi to arch/x86. As
unconditionally enabling the serial console may break some boards, the
proper fix should be to bring back the Kconfig option.

> -		add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
> +	add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
>  				&ns16550_plat);
>  
>  	return 0;



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
