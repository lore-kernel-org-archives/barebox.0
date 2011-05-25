Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QPDLr-000211-JL
	for barebox@lists.infradead.org; Wed, 25 May 2011 12:38:16 +0000
From: Teresa Gamez <T.Gamez@phytec.de>
In-Reply-To: <201011251752.42159.jbe@pengutronix.de>
References: <201011251752.42159.jbe@pengutronix.de>
Date: Wed, 25 May 2011 14:39:59 +0200
Message-ID: <1306327199.22033.168.camel@lws-gamez>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] phyCORE-i.MX27: Keep frequency multiplier enabled to
	be able to do a warmstart
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Are there any reasons why this patch was not added to the barebox?
It works fine for us.

Teresa 

Am Donnerstag, den 25.11.2010, 17:52 +0100 schrieb Juergen Beisert:
> commit 7d25a0552dd3a4b65412ae1cbf8f9ca8a88b5d27
> Author: Juergen Beisert <jbe@pengutronix.de>
> Date:   Thu Nov 25 17:49:11 2010 +0100
> 
>     Keep frequency multiplier enabled to be able to do a warmstart
>     
>     The wachtdog's reset does only reset the ARM core, not the whole silicon.
>     But the PLLs seems to do some strange things: It seems they switch back to
>     the low frequency reference when the watchdog barks. But in the case the
>     frequency multiplier is off (not used due to 26 MHz reference usage) the
>     machine stops, because the PLLs are stopping due to the lack of a reference
>     frequency. As the power on reset will set the FPM_EN bit again, a power cycle
>     brings the machine back to life.
>     By keeping the frequency multiplier enabled, also a warmstart triggered by the
>     watchdog can restart the machine now.
>     
>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> 
> diff --git a/arch/arm/boards/pcm038/pll.h b/arch/arm/boards/pcm038/pll.h
> index 13a7989..15b94cf 100644
> --- a/arch/arm/boards/pcm038/pll.h
> +++ b/arch/arm/boards/pcm038/pll.h
> @@ -36,6 +36,7 @@
>  		CSCR_MCU_SEL | /* 26 MHz reference */ \
>  		CSCR_ARM_DIV(0) | /* CPU runs at MPLL/3 clock */ \
>  		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
> +		CSCR_FPM_EN | \
>  		CSCR_SPEN |		\
>  		CSCR_MPEN)
>  
> @@ -51,6 +52,7 @@
>  		CSCR_ARM_SRC_MPLL | /* use main MPLL clock */ \
>  		CSCR_ARM_DIV(0) | /* CPU run at full MPLL clock */ \
>  		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
> +		CSCR_FPM_EN | /* do not disable it! */ \
>  		CSCR_SPEN |		\
>  		CSCR_MPEN)
>  
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
