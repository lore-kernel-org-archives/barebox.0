Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgBRB-0005fm-LI
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 09:38:42 +0000
Date: Wed, 5 Dec 2012 10:38:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205093840.GB10369@pengutronix.de>
References: <1354622665-7824-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354622665-7824-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] password: fixed underflow on <backspace>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2012 at 01:04:25PM +0100, Enrico Scholz wrote:
> due to missing/misplaced boundary check, deleting characters could
> underflow the password buffer.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Applied, thanks

Sascha

> ---
>  common/password.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/common/password.c b/common/password.c
> index a03e1db..d157a11 100644
> --- a/common/password.c
> +++ b/common/password.c
> @@ -66,11 +66,14 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
>  			case CTL_CH('h'):
>  			case KEY_DEL7:
>  			case KEY_DEL:
> -				if (flags & STAR && pos > 0)
> -					puts("\b \b");
> -				*buf = '\0';
> -				buf--;
> -				pos--;
> +				if (pos > 0) {
> +					if (flags & STAR)
> +						puts("\b \b");
> +
> +					*buf = '\0';
> +					buf--;
> +					pos--;
> +				}
>  				continue;
>  			default:
>  				if (pos < length - 1) {
> -- 
> 1.7.11.7
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
