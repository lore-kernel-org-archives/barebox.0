Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUv7t-0003jP-C3
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 10:41:34 +0000
Date: Mon, 9 Mar 2015 11:41:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150309104111.GC31289@pengutronix.de>
References: <1425666862-8616-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425666862-8616-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH 1/2] MMC: dw_mmc: PIO mode fixes
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 06, 2015 at 09:34:21PM +0300, Andrey Panov wrote:
> Simplify PIO mode routines.
> Fix a bug when IO is possibly performed twice because of using old
> interrupt status.
> Support for slow-speed card writes.
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  drivers/mci/dw_mmc.c | 129 ++++++++++++++++++++++-----------------------------
>  1 file changed, 56 insertions(+), 73 deletions(-)

Applied both, thanks

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
