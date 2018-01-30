Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egQ7G-0003Cy-6q
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 07:14:08 +0000
Date: Tue, 30 Jan 2018 08:13:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130071349.j4icka4dmrn6ke5l@pengutronix.de>
References: <20180129162815.32166-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180129162815.32166-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] ratp: remove unused context fields
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Mon, Jan 29, 2018 at 05:28:15PM +0100, Aleksander Morgado wrote:
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/ratp.c | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/ratp.c b/common/ratp.c
> index 6db4df870..80863f81f 100644
> --- a/common/ratp.c
> +++ b/common/ratp.c
> @@ -54,14 +54,8 @@ struct ratp_bb_command_return {
>  struct ratp_ctx {
>  	struct console_device *cdev;
>  	struct ratp ratp;
> -	int ratp_status;
>  	struct console_device ratp_console;
>  	int have_synch;
> -	int in_ratp_console;
> -
> -	u8 sendbuf[256];
> -	u8 sendbuf_len;
> -
>  	int old_active;
>  
>  	struct kfifo *console_recv_fifo;
> -- 
> 2.15.1
> 
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
