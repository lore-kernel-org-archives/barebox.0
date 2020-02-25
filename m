Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VEx-0006bd-4z
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:06:52 +0000
Date: Tue, 25 Feb 2020 09:06:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225080649.GM3335@pengutronix.de>
References: <20200224081218.526309-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224081218.526309-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] images: i.MX: fix marsboard image file name
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Feb 24, 2020 at 09:12:18AM +0100, Ahmad Fatoum wrote:
> With 778bd9320b ("Makefile.imx: change image creation to
> build_imx_habv4img for i.MX6") the barebox image file name for the
> board became barebox-barebox-embest-imx6q-marsboard.img.
> 
> Drop the extra barebox-.
> 
> Fixes: 778bd9320b ("Makefile.imx: change image creation to
>        build_imx_habv4img for i.MX6")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  images/Makefile.imx | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
