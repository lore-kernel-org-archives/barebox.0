Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXDz-0008D4-Fz
 for barebox@lists.infradead.org; Mon, 06 May 2019 06:35:45 +0000
Date: Mon, 6 May 2019 08:35:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190506063541.lykt4b37z3r2mnub@pengutronix.de>
References: <1556637247-33931-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556637247-33931-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: [PATCH] UBI: remove Kconfig entry from include
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 30, 2019 at 05:14:07PM +0200, Jan Remmet wrote:
> CONFIG_MTD_UBI_WL_THRESHOLD can be set via Kconfig.
> default there is also 4096. So remove the leftover here.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
>  drivers/mtd/ubi/ubi-barebox.h | 1 -
>  1 file changed, 1 deletion(-)

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
