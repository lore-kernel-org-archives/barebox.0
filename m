Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k54B6-0001Io-0K
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 09:33:13 +0000
Date: Mon, 10 Aug 2020 11:33:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810093310.GY31536@pengutronix.de>
References: <20200804214158.25721-1-anees.r3hman@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804214158.25721-1-anees.r3hman@gmail.com>
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
Subject: Re: [PATCH v2 0/2] ARM: i.MX: Add support for IMX7 based board
To: Anees Rehman <anees.r3hman@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 04, 2020 at 11:41:56PM +0200, Anees Rehman wrote:
> The first patch adds support for the IMX7 to load image from SD/MMC similar to
> IMX6 and IMX8.
> 
> The second patch adds support for Atlas Copco's IXB tool which comes with
> IMX7D, 1GB lpddr2 and has most of the interfaces supported by the SoC.
> This patch also shows booting IMX7 without a static DCD file which allows
> to have a single barebox image on multiple revisions of the same board
> (different memory chips).
> 
> The _no_ DCD file part is an adaptation for ac-sxb from zii-imx6q-rdu2.
> 
> Changes since v1:
> Changes according to Ahmad's review, thank you very much Ahmad!
> * Add barebox update handler in device initcall
> * Introduce compressed dtb
> * Remove explicit initialization of return value
> * Use imx7d-ddrc.dtsi instead of hardcoded memory node
> * Move imx7d-ac-sxb.dts to arch/arm/dts directory
> 
> Anees Rehman (2):
>   mci: imx-esdhc-pbl: Add support for IMX7
>   ARM: i.MX: Add atlascopco sxb board

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
