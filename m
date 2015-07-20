Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH3Pb-0007tj-0w
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 05:14:47 +0000
Date: Mon, 20 Jul 2015 07:14:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150720051424.GQ18700@pengutronix.de>
References: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 1/7] mtd: core: Check partitions for empty string
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 17, 2015 at 01:13:47PM +0200, Teresa Remmet wrote:
> Make setting partitions a litte bit more robust.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/mtd/core.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied all except 2/7, thanks

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
