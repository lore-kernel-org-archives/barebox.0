Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT3V4-0004EJ-GN
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 08:18:20 +0000
Date: Tue, 9 Feb 2016 09:17:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160209081754.GF4118@pengutronix.de>
References: <1454926524-6210-1-git-send-email-mkl@pengutronix.de>
 <1454926524-6210-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454926524-6210-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 2/2] i.MX habv3: add some more status codes
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

On Mon, Feb 08, 2016 at 11:15:24AM +0100, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/hab/habv3.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
> index 204b9095b393..82ae245f8a03 100644
> --- a/drivers/hab/habv3.c
> +++ b/drivers/hab/habv3.c
> @@ -20,6 +20,7 @@ struct hab_status {

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
