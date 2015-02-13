Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YMME7-0001Hy-Dg
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 19:48:35 +0000
Date: Fri, 13 Feb 2015 20:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150213194813.GD12209@pengutronix.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH RFT 00/24] Phasing out direct usage of asm/mmu.h on ARM
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 12, 2015 at 10:39:36PM +0100, Lucas Stach wrote:
> This series introduces to Barebox the streaming DMA ops and implements
> them for the ARM architecture. This will make it a lot easier to
> get common cache maintenance operations for all architectures and in
> turn allows for wider reuse of driver across architectures.
> 
> I've tested this on a Tegra124 which is known to fall over in all sorts
> of funny ways if cache maintenance is broken. No odd behavior spotted.
> 
> The series is bisect-clean and I've compile tested it on some defconfigs,
> but please go wild and TEST. I'll take any complaints.

Nice work!

With the one missing '>' added I successfully tested it on i.MX with FEC
and SDHCI and on the beaglebone black with the cpsw driver.

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
