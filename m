Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTc2L-0006WA-Gg
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 19:34:10 +0000
Received: by mail-wg0-f43.google.com with SMTP id x12so4331953wgg.26
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 12:33:43 -0700 (PDT)
Message-ID: <54173F10.4030306@gmail.com>
Date: Mon, 15 Sep 2014 21:33:36 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] mvebu: Openblocks A6 board support
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On 08/23/2014 10:19 PM, Ezequiel Garcia wrote:
> This two-piece patchset adds support for Plat'home's Openblocks A6 board [1].
> To make it a little more interesting, NAND support (ported from Linux) is
> included.
> 
> Let's hope we can see USB and SATA soon!
> 
> [1] http://openblocks.plathome.com/products/a6/
> 
> Ezequiel Garcia (2):
>   nand: Add Marvell Orion NAND driver
>   ARM: mvebu: Add Plathome Kirkwood Openblocks A6 board support
> 
>  arch/arm/boards/Makefile                          |   1 +
>  arch/arm/boards/plathome-openblocks-a6/Makefile   |   2 +
>  arch/arm/boards/plathome-openblocks-a6/board.c    |   1 +
>  arch/arm/boards/plathome-openblocks-a6/lowlevel.c |  32 +++++

Ezequiel,

this patch set is missing

arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg

Can you please prepare a patch adding the missing kwbimage.cfg?

Sebastian

>  arch/arm/dts/Makefile                             |   1 +
>  arch/arm/dts/kirkwood-openblocks_a6-bb.dts        |  13 ++
>  arch/arm/mach-mvebu/Kconfig                       |   3 +
>  drivers/mtd/nand/Kconfig                          |   7 +
>  drivers/mtd/nand/Makefile                         |   1 +
>  drivers/mtd/nand/nand_orion.c                     | 162 ++++++++++++++++++++++
>  images/Makefile.mvebu                             |  11 ++
>  11 files changed, 234 insertions(+)
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/Makefile
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/lowlevel.c
>  create mode 100644 arch/arm/dts/kirkwood-openblocks_a6-bb.dts
>  create mode 100644 drivers/mtd/nand/nand_orion.c
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
