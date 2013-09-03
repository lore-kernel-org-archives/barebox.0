Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGowu-0004nV-Va
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 11:39:09 +0000
Received: from mail605.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 62F56FFAA63
 for <barebox@lists.infradead.org>; Tue,  3 Sep 2013 13:38:46 +0200 (CEST)
Date: Tue, 3 Sep 2013 13:39:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130903113942.GA22507@ns203013.ovh.net>
References: <7CB5E6E6-CC40-418F-ADB6-766DEC5D180A@reinrag.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7CB5E6E6-CC40-418F-ADB6-766DEC5D180A@reinrag.net>
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
Subject: Re: [PATCH 2/4] AT91: move have_intensity_bit into board setup
To: Darren Garnier <dgarnier@reinrag.net>
Cc: barebox@lists.infradead.org

On 22:22 Mon 02 Sep     , Darren Garnier wrote:
> Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
\why this is soc specific

Best Regards,
J.
> ---
> arch/arm/boards/at91sam9261ek/init.c     | 2 ++
> arch/arm/mach-at91/at91sam9261_devices.c | 2 --
> 2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
> index 00fc745..b420a48 100644
> --- a/arch/arm/boards/at91sam9261ek/init.c
> +++ b/arch/arm/boards/at91sam9261ek/init.c
> @@ -223,6 +223,8 @@ static void ek_add_device_lcdc(void)
> 
> 	if (machine_is_at91sam9g10ek())
> 		ek_lcdc_data.lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
> +	else
> +		ek_lcdc_data.has_intensity_bit = true;
> 
> 	at91_add_device_lcdc(&ek_lcdc_data);
> }
> diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
> index b522afb..ba52e56 100644
> --- a/arch/arm/mach-at91/at91sam9261_devices.c
> +++ b/arch/arm/mach-at91/at91sam9261_devices.c
> @@ -218,8 +218,6 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
> {
> 	BUG_ON(!data);
> 
> -	data->have_intensity_bit = true;
> -
> #if defined(CONFIG_FB_ATMEL_STN)
> 	at91_set_A_periph(AT91_PIN_PB0, 0);	/* LCDVSYNC */
> 	at91_set_A_periph(AT91_PIN_PB1, 0);	/* LCDHSYNC */
> -- 
> 1.8.3.1
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
