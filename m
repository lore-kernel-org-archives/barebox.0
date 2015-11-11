Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQ1N-0008OT-V4
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:40:46 +0000
Date: Wed, 11 Nov 2015 08:40:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111074024.GL8526@pengutronix.de>
References: <1447059771-21793-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447059771-21793-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH v2] ARM: imx6dl: Add support for Phytec phyCORE-i.MX6 SOM
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 09, 2015 at 10:02:51AM +0100, Stefan Christ wrote:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> Add Phytec phyCORE-i.MX6 SOM.
>      - imx6dl-phytec-phycore-som-nand
>         - 256GB RAM on 1 Bank with 32Bit
>         - 10/100MBit Ethernet
>         - NAND
>         - SD
>         - UART
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
> v2: add '#include <arm/imx6dl.dtsi>' in dts to fix compile error
> ---
>  arch/arm/boards/phytec-som-imx6/board.c            |  6 +-
>  .../flash-header-phytec-pcm058dl-256mb.imxcfg      |  8 ++
>  .../phytec-som-imx6/flash-header-phytec-pcm058dl.h | 98 ++++++++++++++++++++++
>  arch/arm/boards/phytec-som-imx6/lowlevel.c         |  1 +
>  arch/arm/dts/Makefile                              |  3 +-
>  arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    | 63 ++++++++++++++
>  images/Makefile.imx                                |  5 ++
>  7 files changed, 181 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
>  create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
>  create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts

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
