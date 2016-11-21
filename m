Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8ja6-0000wt-Mm
 for barebox@lists.infradead.org; Mon, 21 Nov 2016 08:04:03 +0000
Date: Mon, 21 Nov 2016 09:03:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161121080338.3mlcswjqtw4tuhvw@pengutronix.de>
References: <20161120000910.10503-1-moritzwarning@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161120000910.10503-1-moritzwarning@web.de>
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
Subject: Re: [PATCH] docs: fix typos in memcmp help text
To: Moritz Warning <moritzwarning@web.de>
Cc: barebox@lists.infradead.org

On Sun, Nov 20, 2016 at 01:09:10AM +0100, Moritz Warning wrote:
> Signed-off-by: Moritz Warning <moritzwarning@web.de>
> ---
>  commands/memcmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/memcmp.c b/commands/memcmp.c
> index ce044df..7be0033 100644
> --- a/commands/memcmp.c
> +++ b/commands/memcmp.c
> @@ -130,8 +130,8 @@ out:
>  }
>  
>  BAREBOX_CMD_HELP_START(memcmp)
> -BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with ADDR and ADDR2")
> -BAREBOX_CMD_HELP_TEXT("of size COUNT bytes. If source is a file COUNT can")
> +BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with ADDR1 and ADDR2")
> +BAREBOX_CMD_HELP_TEXT("of size COUNT bytes. If source is a file, COUNT can")
>  BAREBOX_CMD_HELP_TEXT("be left unspecified, in which case the whole file is")
>  BAREBOX_CMD_HELP_TEXT("compared.")
>  BAREBOX_CMD_HELP_TEXT("")
> -- 
> 2.10.2
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
