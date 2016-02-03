Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQs2A-00008D-Gr
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 07:39:27 +0000
Date: Wed, 3 Feb 2016 08:39:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160203073904.GI4118@pengutronix.de>
References: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH 1/6] net: phy: micrel: Staticise ksz8873mll_read_status()
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 02, 2016 at 12:17:30PM +0100, Philipp Zabel wrote:
> Based on kernel commit 32d73b144eac ("net: phy: micrel: Staticise
> ksz8873mll_read_status()") by Jingoo Han <jg1.han@samsung.com>:
> 
>     ksz8873mll_read_status() is used only in this file.
>     Fix the following sparse warning:
> 
>     drivers/net/phy/micrel.c:147:5: warning: symbol 'ksz8873mll_read_status' was not declared. Should it be static?
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/net/phy/micrel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied except 6/6, thanks.

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
