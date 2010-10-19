Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P81GM-0003ZH-Tk
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 01:45:15 +0000
Date: Tue, 19 Oct 2010 03:42:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101019014246.GK11127@game.jcrosoft.org>
References: <201010181859.51317.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010181859.51317.jbe@pengutronix.de>
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
Subject: Re: [RFC] S3C24xx: Enable only the clocks of used units
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

> -	mov r1, #0xFFFFFFF0
> +	/*
> +	 * Disable the clocks for most devices on this chip.
> +	 * They will be enabled again on demand
> +	 */
> +#ifdef CONFIG_S3C24XX_NAND_BOOT
> +	ldr r1, =0x6010 /* (CLK_RTC | CLK_GPIO | CLK_NAND) */
> +#else
> +	mov r1, #0x6000 /* (CLK_RTC | CLK_GPIO) */
how about use the macro and define a macro to avoid the ifdef

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
