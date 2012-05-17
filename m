Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUxw0-0004cZ-26
 for barebox@lists.infradead.org; Thu, 17 May 2012 10:27:52 +0000
Date: Thu, 17 May 2012 12:27:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517102750.GA30400@pengutronix.de>
References: <1337107674-9733-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337107674-9733-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] PCM970: Added support for CompactFlash
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, May 15, 2012 at 10:47:54PM +0400, Alexander Shiyan wrote:
> Added support for CompactFlash cards for PCM970 development board via
> PCMCIA window. Directly we cannot use this feature, because some signals
> connects to i.MX pins which cannot be configured as GPIO. This is first
> try to make this interface works, so comments are welcome.

What do you mean with "Directly we cannot use this feature"?

> 
> Hit any key to stop autoboot:  3
> barebox@Phytec phyCORE-i.MX27:/ mkdir /d
> barebox@Phytec phyCORE-i.MX27:/ mount /dev/disk0.0 fat /d
> barebox@Phytec phyCORE-i.MX27:/ ls /d
> test.txt

It seems to work fine here?

> +
> +#define PCMCIA_PIPR		__REG(IMX_PCMCIA_CTL_BASE + 0x00)
> +#define PCMCIA_PSCR		__REG(IMX_PCMCIA_CTL_BASE + 0x04)
> +#define PCMCIA_PER		__REG(IMX_PCMCIA_CTL_BASE + 0x08)
> +#define PCMCIA_PBR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x0c + ((x) << 2))
> +#define PCMCIA_POR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x28 + ((x) << 2))
> +#define PCMCIA_POFR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x44 + ((x) << 2))
> +#define PCMCIA_PGCR		__REG(IMX_PCMCIA_CTL_BASE + 0x60)
> +#define PCMCIA_PGSR		__REG(IMX_PCMCIA_CTL_BASE + 0x64)

Please don't use __REG. We should properly define the register addresses
and use writel/readl instead. I wanted to remove __REG stuff for longer
now, but never came to it.

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
