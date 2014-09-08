Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQsAa-0007Ho-N3
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:11:29 +0000
Date: Mon, 8 Sep 2014 08:10:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908061058.GL5352@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
 <1409838437-3625-5-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409838437-3625-5-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 4/4] Firmware: socfpga: Add SoCFPGA FPGA program support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 04, 2014 at 03:47:17PM +0200, Steffen Trumtrar wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Changes since v2:
> 	- be sure to clear nce bit to allow HPS configuration
> 
>  arch/arm/dts/socfpga.dtsi                         |   6 +
>  arch/arm/mach-socfpga/Makefile                    |   1 +
>  arch/arm/mach-socfpga/include/mach/socfpga-regs.h |   2 +
>  drivers/firmware/Kconfig                          |   3 +
>  drivers/firmware/Makefile                         |   1 +
>  drivers/firmware/socfpga.c                        | 440 ++++++++++++++++++++++
>  6 files changed, 453 insertions(+)
>  create mode 100644 drivers/firmware/socfpga.c

Hm, the original author failed to add a binding document. Care to add
one?

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
