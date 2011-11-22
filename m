Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSwp7-0000WS-P1
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 20:20:11 +0000
Date: Tue, 22 Nov 2011 21:20:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111122202002.GN27267@pengutronix.de>
References: <1321965139-17745-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321965139-17745-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] readkey: force return from while true
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 22, 2011 at 01:32:19PM +0100, Jan Weitzel wrote:
> If read_key is feeded by STRG + KEY_LEFT you run into the while(1)
> loop and corrupt memory through esc array.
> Force return if index gets too high.
>

Wow, a shortcut to crash barebox. Applied to master.

Sascha

> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  lib/readkey.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/lib/readkey.c b/lib/readkey.c
> index a42d1cb..895db82 100644
> --- a/lib/readkey.c
> +++ b/lib/readkey.c
> @@ -67,6 +67,8 @@ int read_key(void)
>  				esc[i] = getc();
>  				if (esc[i++] == '~')
>  					break;
> +				if (i == 5)
> +					return -1;
>  			}
>  		}
>  		esc[i] = 0;
> -- 
> 1.7.0.4
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
