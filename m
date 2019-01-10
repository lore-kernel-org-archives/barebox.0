Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghUvR-00061p-ID
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 07:38:51 +0000
Date: Thu, 10 Jan 2019 08:38:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190110073847.viovympjfkjgbykt@pengutronix.de>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
 <20190109071210.18896-14-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109071210.18896-14-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 13/21] reset: imx7: Fix always writing bits as 0
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 08, 2019 at 11:12:02PM -0800, Andrey Smirnov wrote:
> Port of a Linux commit 26fce0557fa639fb7bbc33e31a57cff7df25c3a0
> 
>   Right now the only user of reset-imx7 is pci-imx6 and the
>   reset_control_assert and deassert calls on pciephy_reset don't toggle
>   the PCIEPHY_BTN and PCIEPHY_G_RST bits as expected. Fix this by writing
>   1 or 0 respectively.
> 
>   The reference manual is not very clear regarding SRC_PCIEPHY_RCR but for
>   other registers like MIPIPHY and HSICPHY the bits are explicitly
>   documented as "1 means assert, 0 means deassert".
> 
>   The values are still reversed for IMX7_RESET_PCIE_CTRL_APPS_EN.
> 
>   Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>   Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
>   Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/reset/reset-imx7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Should also be part of the last patch.

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
