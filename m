Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkC2D-0005kc-1N
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:33:13 +0000
Date: Thu, 28 Jun 2012 12:33:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120628103311.GV1623@pengutronix.de>
References: <1340876689-26303-1-git-send-email-antonynpavlov@gmail.com>
 <1340876689-26303-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340876689-26303-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 3/4] MIPS: XBurst: fix the JZ4755's clocksource input
 frequency value
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2012 at 01:44:48PM +0400, Antony Pavlov wrote:
> The 40 KHz frequency value was used to parry
> __lshrdi3() error on little-endian MIPS because
> the __lshrdi3() function is used in clocksource code.
> 
> The true value of the JZ4755's external clock frequency is 12 MHz.

12MHz...

>  
> -#define JZ_TIMER_CLOCK 40000
> +#define JZ_TIMER_CLOCK 24000000

or 24MHz?

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
