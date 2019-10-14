Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz5B-00049o-O0
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:04:15 +0000
Date: Mon, 14 Oct 2019 14:04:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014120412.uy3tlxj36tscbv3y@pengutronix.de>
References: <20191002130959.2856-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002130959.2856-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: i.MX: phytec-som-imx6: phycore: fix updating
 pmic regulators
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, s.riedmueller@phytec.de, mfe@pengutronix.de, s.christ@phytec.de, j.remmet@phytec.de

On Wed, Oct 02, 2019 at 03:09:59PM +0200, Marco Felsch wrote:
> Currently the fixup code assumes that only one i2c bus is active. If we
> reuse the board code for other boards this isn't always true. Fix that
> by using of_find_i2c_adapter_by_node() to address both cases.
> 
> Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> 
> v2:
> - Make use of of_find_i2c_adapter_by_node() to get the right adapter.
> ---
>  arch/arm/boards/phytec-som-imx6/board.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

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
