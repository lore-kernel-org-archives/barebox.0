Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WwyDy-0005VH-4S
 for barebox@lists.infradead.org; Tue, 17 Jun 2014 18:35:14 +0000
Date: Tue, 17 Jun 2014 20:34:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140617183451.GI15686@pengutronix.de>
References: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: AM335x: Beaglebone: Fix memory setup for Beaglebone
 black
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 16, 2014 at 05:13:54PM +0200, Philipp Zabel wrote:
> From: Philipp Zabel <philipp.zabel@gmail.com>
> 
> Commit 0d6392de4ad824a6553c0e3e3e18edef689a7c85 introduced a stripped
> down device tree used for both white and black Beaglebone variants
> that included the 256 MiB memory node from am335x-bone-common.dtsi.
> This leads to the following error in the MLO:
> 
>     mmu: Critical Error: Can't request SDRAM region for ttb at 9fff4000
> 
> This patch removes the (for the Beaglebone black) invalid memory size
> from the common device tree and instead registers the memory bank
> manually in the board file.
> 
> Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>

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
