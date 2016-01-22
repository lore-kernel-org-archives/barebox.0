Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWPI-0000zD-P0
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:45:21 +0000
Date: Fri, 22 Jan 2016 08:44:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160122074458.GR13058@pengutronix.de>
References: <1453276042-4721-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453276042-4721-1-git-send-email-uwe@kleine-koenig.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add initial support for Netgear ReadyNAS 104
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org

On Wed, Jan 20, 2016 at 08:47:22AM +0100, Uwe Kleine-K=F6nig wrote:
> Currently only second stage booting from the vendor U-Boot is tested. I
> don't want to flash barebox into NAND yet because UART-booting for
> recovery doesn't work for me.
> =

> Working so far are:
> =

>  - UART
>  - networking
>  - nand flash
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm/boards/Makefile                   |  1 +
>  arch/arm/boards/netgear-rn104/Makefile     |  2 ++
>  arch/arm/boards/netgear-rn104/board.c      |  1 +
>  arch/arm/boards/netgear-rn104/kwbimage.cfg |  7 +++++++
>  arch/arm/boards/netgear-rn104/lowlevel.c   | 22 ++++++++++++++++++++++
>  arch/arm/configs/mvebu_defconfig           |  1 +
>  arch/arm/dts/Makefile                      |  1 +
>  arch/arm/dts/armada-370-rn104-bb.dts       | 11 +++++++++++
>  arch/arm/mach-mvebu/Kconfig                |  4 ++++
>  images/Makefile.mvebu                      | 11 +++++++++++
>  10 files changed, 61 insertions(+)
>  create mode 100644 arch/arm/boards/netgear-rn104/Makefile
>  create mode 100644 arch/arm/boards/netgear-rn104/board.c
>  create mode 100644 arch/arm/boards/netgear-rn104/kwbimage.cfg
>  create mode 100644 arch/arm/boards/netgear-rn104/lowlevel.c
>  create mode 100644 arch/arm/dts/armada-370-rn104-bb.dts

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
