Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAVO-00068y-Jv
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:47:08 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1347720962-32574-1-git-send-email-s.hauer@pengutronix.de>
Date: Sun, 16 Sep 2012 10:46:54 +0200
In-Reply-To: <1347720962-32574-1-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Sat, 15 Sep 2012 16:56:02 +0200")
Message-ID: <87k3vuuzgh.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd mtdraw: Fix partial page read
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> When reading parts of a page we have to limit the maximum bytes copied
> the the remaining bytes of a page.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/mtd/mtdraw.c |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index d28ae07..29f6a8c 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -129,6 +129,7 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
>  
>  	while (ret > 0 && count > 0) {
>  		toread = min_t(int, count, mtd->writesize + mtd->oobsize);
> +		toread = min_t(int, toread, mtd->writesize + mtd->oobsize -
>  		skip);
Hi Sasha,

Why the 2 lines of min_t() instead of a single:
toread = min_t(int, count, mtd->writesize + mtd->oobsize - skip)

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
