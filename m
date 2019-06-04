Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4V5-0006Oa-Nr
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:08:57 +0000
Date: Tue, 4 Jun 2019 10:08:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604080853.gna2e3lrkh5i22gz@pengutronix.de>
References: <20190603190535.15346-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603190535.15346-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] commands: don't use stale errno when calling fb_open
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2019 at 09:05:35PM +0200, Ahmad Fatoum wrote:
> fb_open returns a pointer and doesn't populate errno, which will
> results in a stale errno being evaluated by perror() on failure.
> Fix this by populating errno manually at call sites.
> 
> While at it, correct the typo in the prefix passed to perror().
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/fbtest.c | 5 +++--
>  commands/splash.c | 5 +++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/fbtest.c b/commands/fbtest.c
> index e5dd8ba7fabf..2c589f77d3b8 100644
> --- a/commands/fbtest.c
> +++ b/commands/fbtest.c
> @@ -271,8 +271,9 @@ static int do_fbtest(int argc, char *argv[])
>  
>  	sc = fb_open(fbdev);
>  	if (IS_ERR(sc)) {
> -		perror("fd_open");
> -		return PTR_ERR(sc);
> +		errno = PTR_ERR(sc);
> +		perror("fb_open");
> +		return errno;
>  	}

I would also prefer a printf() message along with a strerror(). Setting
a global variable when the result is only used in this function looks
odd.

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
