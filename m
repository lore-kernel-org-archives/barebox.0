Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzKfg-00016S-F4
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 06:57:37 +0000
Date: Tue, 24 Jun 2014 08:57:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140624065712.GA15686@pengutronix.de>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 00/11] Convert MVEBU SoCs to DT and PBL_MULTI_IMAGE
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 23, 2014 at 10:10:51PM +0200, Sebastian Hesselbarth wrote:
> This patch set converts Kirkwood and Armada 370/XP to DT and provides
> PBL_MULTI_IMAGE support as we already have for Dove.
> 
> Patch 1 resorts pbl entries in arch/arm/dts/Makefile back to alphabetical
> order.
> 
> Patch 2 reworks mvebu pbl image Makefile to ease integration of other SoCs.
> 
> Patches 3 and 4 convert Kirkwood and Armada 370/XP SoC init to DT probing.
> 
> Patches 5-9 convert existing Kirkwood and Armada 370/XP boards to
> PBL_MULTI_IMAGES.
> 
> Patch 10 then reworks MVEBU related Kconfig to allow multiple board selection
> per-SoC.
> 
> Patch 11 removes now redundant dtb Makefile targets.
> 
> The patches are based on today's next with previously sent cleanup patches
> applied. They have been tested on Guruplug (Kirkwood) and Mirabox (Armada 370).
> 
> A branch based on *unstable* next with cleanup applied is available at:
> https://github.com/shesselba/barebox-dove.git mvebu/soc
> 
> Sebastian Hesselbarth (11):
>   ARM: dts: sort pbl entries by alphabet
>   ARM: mvebu: sort pbl image target by board
>   ARM: mvebu: convert Kirkwood devices to be probed from DT
>   ARM: mvebu: convert Armada 370/XP devices to be probed from DT
>   ARM: mvebu: convert Globalscale Guruplug to PBL_MULTI_IMAGES
>   ARM: mvebu: convert USI Topkick to PBL_MULTI_IMAGES
>   ARM: mvebu: convert Globalscale Mirabox to PBL_MULTI_IMAGES
>   ARM: mvebu: convert Marvell Armada XP GP to PBL_MULTI_IMAGES
>   ARM: mvebu: convert PlatHome Openblocks AX3-4 to PBL_MULTI_IMAGES
>   ARM: mvebu: convert to multiple board selection
>   ARM: mvebu: remove dtb Makefile entries

Applied, thanks.

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
