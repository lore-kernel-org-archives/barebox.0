Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJdGt-0005ml-Du
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 07:24:12 +0000
Date: Fri, 6 Feb 2015 08:23:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150206072348.GH12209@pengutronix.de>
References: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 1/5] ARM: am335x: phyFLEX-AM335x: Split DT and add MLO DT
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 04, 2015 at 03:00:49PM +0100, Wadim Egorov wrote:
> To support different module variants, this patch splits the phyFLEX DT
> in dts and dtsi.
> 
> And we are also adding a DT for the MLO, which has all bootable devices
> disabled. The bootsource is checked in the board file and only the needed
> device is enabled and registered.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm/boards/phytec-phyflex-am335x/board.c    |   4 +
>  arch/arm/boards/phytec-phyflex-am335x/lowlevel.c |   7 +-
>  arch/arm/dts/Makefile                            |   2 +-
>  arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts   |  28 ++
>  arch/arm/dts/am335x-phytec-phyflex-som.dts       |  24 ++
>  arch/arm/dts/am335x-phytec-phyflex-som.dtsi      | 362 ++++++++++++++++++++++
>  arch/arm/dts/am335x-phytec-phyflex.dts           | 368 -----------------------
>  7 files changed, 423 insertions(+), 372 deletions(-)
>  create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
>  create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som.dts
>  create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som.dtsi
>  delete mode 100644 arch/arm/dts/am335x-phytec-phyflex.dts

Applied all, thanks

BTW we will probably get device tree overlay support soon. I hope that
can make such SoMs easier to handle. You could then have some core
device tree builtin and load the rest later.

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
