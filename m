Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0Hn-0007AL-Sa
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 06:53:05 +0000
Date: Thu, 18 Jul 2019 08:53:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190718065300.fswsh5t5vxaiyb6e@pengutronix.de>
References: <20190715145522.9589-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715145522.9589-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] UBI: silence erroneous GCC warning about uninitialized
 read
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 15, 2019 at 04:55:22PM +0200, Ahmad Fatoum wrote:
> GCC reports following use of an uninitialized variable:
> 
>   ./drivers/mtd/ubi/eba.c: In function 'try_write_vid_and_data':
>   ./drivers/mtd/ubi/eba.c:904:9: warning:
>     'opnum' may be used uninitialized in this function [-Wmaybe-uninitialized]
>        err = ubi_wl_put_peb(ubi, vol_id, lnum, opnum, 0);
>              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This is incorrect, because it's only called when err == 0 and opnum
> is always initialized if err == 0. Silence the warning by initializing
> a variable.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mtd/ubi/eba.c | 2 +-
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
