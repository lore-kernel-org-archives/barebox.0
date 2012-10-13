Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0qT-0004Eg-7o
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:29:34 +0000
Date: Sat, 13 Oct 2012 14:29:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013122931.GW27665@pengutronix.de>
References: <1350063493-3782-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350063493-3782-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/2] sandbox: move add_image for env in second getopt
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 12, 2012 at 07:38:12PM +0200, Alexander Aring wrote:
> Function add_image needs a allocated malloc space.
> This is only available in the second getopt loop.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/sandbox/os/common.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
> index 0dedfe1..8c7679a 100644
> --- a/arch/sandbox/os/common.c
> +++ b/arch/sandbox/os/common.c
> @@ -311,11 +311,6 @@ int main(int argc, char *argv[])
>  		case 'i':
>  			break;
>  		case 'e':
> -			sprintf(str, "env%d", envno);
> -			ret = add_image(optarg, str);
> -			if (ret)
> -				exit(1);
> -			envno++;
>  			break;
>  		case 'O':
>  			fd = open(optarg, O_WRONLY);
> @@ -376,6 +371,13 @@ int main(int argc, char *argv[])
>  				exit(1);
>  			fdno++;
>  			break;
> +		case 'e':
> +			sprintf(str, "env%d", envno);
> +			ret = add_image(optarg, str);
> +			if (ret)
> +				exit(1);
> +			envno++;
> +			break;
>  		default:
>  			break;
>  		}
> -- 
> 1.7.12.2
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
