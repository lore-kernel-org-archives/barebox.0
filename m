Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlGy1-0002FC-5B
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 09:29:06 +0000
Date: Thu, 12 Jan 2012 10:28:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120112092853.GZ5446@pengutronix.de>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
 <1326303284-14444-2-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326303284-14444-2-git-send-email-premi@ti.com>
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
Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2012 at 11:04:44PM +0530, Sanjeev Premi wrote:
> Don't display any verbose message on the console.

We already have pr_info and friends which right now all fall
back to printf. Instead of adding an ifdef for each conditional
printf how about making pr_* configurable? Something like this:

#if (CONFIG_LOGLEVEL > 6)
#define pr_info(fmt, arg...) printf(fmt, ##arg)
#else
#define pr_info(fmt, arg...)	do {} while(0)
#endif
#if (CONFIG_LOGLEVEL > 5)
#define pr_notice(fmt, arg...)	printf(fmt, ##arg)
#else
#define pr_notice(fmt, arg...)    do {} while(0)
#endif

BTW you seem to be very concerned about the codesize in the xloader
environments, which I can understand. How about giving my thumb2 patches
a try?

panda_xload_defconfig:
-rwxr-xr-x 1 sha ptx 41272 Jan 12 10:25 barebox.bin

panda_xload_defconfig in thumb2 mode:
-rwxr-xr-x 1 sha ptx 30348 Jan 12 10:25 barebox.bin

To merge these I'm currently waiting for Jean-Christophes OK on

ARM: move exception vectors away from start of binary

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
