Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13ge-0004Ml-SD
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 07:08:44 +0000
Date: Fri, 23 Aug 2019 09:08:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823070837.cwxvetelycs7zrqo@pengutronix.de>
References: <20190821124234.GA14745@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821124234.GA14745@lenoch>
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
Subject: Re: [PATCH] startup: Fix typo in comment
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 21, 2019 at 02:42:35PM +0200, Ladislav Michl wrote:
> Fixes: 35266d7e583f ("startup: Factor out the autoboot counter...")
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  common/startup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

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
