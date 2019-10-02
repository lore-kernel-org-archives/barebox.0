Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYP2-0002x9-3K
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 06:46:25 +0000
Date: Wed, 2 Oct 2019 08:46:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002064622.cxy4lle73auyzhab@pengutronix.de>
References: <20191001062518.1123-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001062518.1123-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] gpio: da9062: fix uninitialized variable read
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de

On Tue, Oct 01, 2019 at 08:25:18AM +0200, Ahmad Fatoum wrote:
> In cases where reg < 0x100, WARN_ON will evaluate the uninitialized
> client variable. Fix this by initializing it to NULL.
> This way, the function will always early-return if the reg is < 0x100.
> 
> Fixes: 17a43d293c ("gpio: add DA9062 MFD gpio support")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/gpio/gpio-da9062.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
