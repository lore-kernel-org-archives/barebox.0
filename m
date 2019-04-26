Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJtaz-0004sZ-Jz
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 05:40:27 +0000
Date: Fri, 26 Apr 2019 07:40:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190426054023.buemc3xvt3a2m4hw@pengutronix.de>
References: <20190424063248.478-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424063248.478-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: aarch64: lowlevel: Reset SCTLR_EL3 in
 arm_cpu_lowlevel_init()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 23, 2019 at 11:32:48PM -0700, Andrey Smirnov wrote:
> There's no guarantee that when arm_cpu_lowlevel_init() runs at EL3,
> SCTLR will be in a state we expect it to be. Add code to reset it to a
> known state, so we'd always start form clean slate. This is also
> matches what we've been doing non 64-bit ARMs.
> 
> Real word motivation for this patch is i.MX8MQ whose rev 2.1 silicon
> appear to have different mask ROM behaviour where it now leaves MMU
> enabled if no valid boot source is found. Page table it sets up
> doesn't include DDR range, so trying to bootstrap the device via
> JTAG/OpenOCD results in an abort.
> 
> The value for SCTLR_ELx_FLAGS was taken from Linux kernel.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/lowlevel_64.S    |  7 +++++++
>  arch/arm/include/asm/system.h | 20 ++++++++++++++++++++
>  2 files changed, 27 insertions(+)

Applied, thanks

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
