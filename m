Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TynZZ-0005OS-Hb
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 18:00:18 +0000
Date: Fri, 25 Jan 2013 19:00:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130125180015.GO1906@pengutronix.de>
References: <1359106650-12290-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359106650-12290-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] defenv-2: source /env/config after /env/init/*
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2013 at 10:37:30AM +0100, Michael Olbrich wrote:
> This way variables in /env/config can actually overwrite things from
> e.g. /env/init/config-board.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
> 
> This is really confusing right now. The comment in config-board says
> "Change /env/config instead" and that doesn't work.
> 
> I'd like to see this in master as well, but that only works if these
> commits are applied first:
> 
> f19a924 defaultenv-2: move ps1 to base/init/ps1
> b26c1c3 defaultenv-2: execute init/* before timeout
> 
> otherwise global.autoboot_timeout and global.allow_color are set too late.

I stumbled upon this aswell. I think we need another solution though.
This patch does not apply to master. Currently the problem is that we
need the variables from /env/config before the init sequence, which
means that we have to source /env/config once, then the init sequence
and then /env/config again.

I think we have to move /env/init/config-board to /env/config-board for
each board and source it manually in /env/init. Better ideas?

Sascha


> 
> Michael
> 
>  defaultenv-2/base/bin/init |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index b606b63..4a1b22e 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -13,8 +13,6 @@ global linux.bootargs.dyn.ip
>  global linux.bootargs.dyn.root
>  global editcmd=sedit
>  
> -/env/config
> -
>  if [ -e /env/menu ]; then
>  	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
>  else
> @@ -33,6 +31,8 @@ for i in /env/init/*; do
>  	. $i
>  done
>  
> +/env/config
> +
>  timeout -a $global.autoboot_timeout -v key
>  autoboot="$?"
>  
> -- 
> 1.7.10.4
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
