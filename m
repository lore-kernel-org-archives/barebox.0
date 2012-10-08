Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJph-0007je-Tx
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 20:21:46 +0000
Date: Mon, 8 Oct 2012 22:21:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121008202143.GS1322@pengutronix.de>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
 <1349647287-28224-4-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349647287-28224-4-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 03/13] ARM: ensure irqs are disabled
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 08, 2012 at 12:01:17AM +0200, Vicente wrote:
> 
> Signed-off-by: Vicente <vicencb@gmail.com>
> +	/*
> +	 * barebox normally does not use interrupts, but some functionalities
> +	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
> +	 * disabled before exiting.
> +	 */
> +#if __LINUX_ARM_ARCH__ >= 6
> +	__asm__ __volatile__ ("cpsid i\n");
> +#else
> +	__asm__ __volatile__ ("msr cpsr_c, #PSR_I_BIT | SVC_MODE\n");

This does not compile, we are currently lacking a definition of
PSR_I_BIT

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
