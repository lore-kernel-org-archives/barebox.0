Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFer5-0004mI-7o
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 08:17:07 +0000
Date: Mon, 26 Jan 2015 09:16:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150126081645.GI12209@pengutronix.de>
References: <1422192133-17906-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422192133-17906-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/splash: fix '-y' option handling
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 25, 2015 at 04:22:13PM +0300, Antony Pavlov wrote:
> The '-y' and '-o' options are independent,
> so just add missing 'break'.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks.

> ---
>  commands/splash.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 9bd84fb..077c0e4 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -41,6 +41,7 @@ static int do_splash(int argc, char *argv[])
>  			break;
>  		case 'y':
>  			s.y = simple_strtoul(optarg, NULL, 0);
> +			break;
>  		case 'o':
>  			offscreen = 1;

It is missing here aswell. It's the last case, so this is not currently
a bug, but it could easily turn into a bug once the next option is
added.

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
