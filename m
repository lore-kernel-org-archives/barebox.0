Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtaC-0004r0-GH
 for barebox@lists.infradead.org; Wed, 13 Nov 2019 14:25:21 +0000
Date: Wed, 13 Nov 2019 15:25:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191113142516.ymxrdqvwxev6b5v7@pengutronix.de>
References: <1573544123-338486-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573544123-338486-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: imx6: phycore: Make use of upstream
 devicetree
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>

On Tue, Nov 12, 2019 at 08:35:22AM +0100, Stefan Riedmueller wrote:
> Make use of the upstream devicetree for the phyCORE-i.MX 6 and the
> phyBOARD-Mira to reduce code duplication. In this context also add a
> Mira devicetree for barebox to better differentiate between phyCORE
> related settings and baseboard related settings.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  23 +-
>  arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  20 +-
>  arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |  14 +-
>  arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  17 +-
>  arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  23 +-
>  arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  23 +-
>  arch/arm/dts/imx6qdl-phytec-mira.dtsi              |  44 ++++
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       | 286 +++------------------
>  arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  23 +-
>  9 files changed, 94 insertions(+), 379 deletions(-)
>  create mode 100644 arch/arm/dts/imx6qdl-phytec-mira.dtsi

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
