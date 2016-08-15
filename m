Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZD4K-0006PO-If
 for barebox@lists.infradead.org; Mon, 15 Aug 2016 08:16:25 +0000
Date: Mon, 15 Aug 2016 10:16:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160815081600.GS20657@pengutronix.de>
References: <1470218005-20457-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470218005-20457-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] bbu: parameters are inverted in error message
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 03, 2016 at 10:53:25AM +0100, Renaud Barbier wrote:
> The error message warning the user that the image is too big for
> the device has its parameters in the wrong order. Swap the two
> parameters so that the output makes sense.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  common/bbu.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 1b22139..c5dda8c 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -307,8 +307,8 @@ static int bbu_std_file_handler(struct bbu_handler *handler,
>  		oflags |= O_CREAT;
>  	} else {
>  		if (!S_ISREG(s.st_mode) && s.st_size < data->len) {
> -			printf("Image (%lld) is too big for device (%zd)\n",
> -					s.st_size, data->len);
> +			printf("Image (%zd) is too big for device (%lld)\n",
> +					data->len, s.st_size);
>  		}
>  	}
>  
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
