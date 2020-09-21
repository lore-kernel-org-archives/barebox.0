Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKEnz-0003A4-NW
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 05:56:04 +0000
Date: Mon, 21 Sep 2020 07:56:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200921055602.GB21278@pengutronix.de>
References: <20200919145558.12274-1-avoidr@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200919145558.12274-1-avoidr@posteo.de>
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
Subject: Re: [PATCH] README: add some commas for clarity
To: Robert Karszniewicz <avoidr@posteo.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 19, 2020 at 04:55:58PM +0200, Robert Karszniewicz wrote:
> Signed-off-by: Robert Karszniewicz <avoidr@posteo.de>
> ---
>  README | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/README b/README

Applied, thanks

Sascha

> index d8077d21b..0a837b2de 100644
> --- a/README
> +++ b/README
> @@ -114,7 +114,7 @@ in board/sandbox/env:
>  
>    # ./scripts/bareboxenv -s -p 0x10000 arch/sandbox/board/env env.bin
>  
> -To get some files to play with you can generate a cramfs image:
> +To get some files to play with, you can generate a cramfs image:
>    # mkcramfs somedir/ cramfs.bin
>  
>  The barebox image is a normal Linux executable, so it can be started
> @@ -133,14 +133,14 @@ given with '-i' will appear as /dev/fd[n].
>  
>  If barebox finds a valid configuration sector on /dev/env0 it will
>  load it to /env. It then executes /env/init if it exists. If you have
> -loaded the example environment barebox will show you a menu asking for
> +loaded the example environment, barebox will show you a menu asking for
>  your settings.
>  
> -If you have started barebox as root you will find a new tap device on your
> +If you have started barebox as root, you will find a new tap device on your
>  host which you can configure using ifconfig. Once you configured bareboxs
> -network settings accordingly you can do a ping or tftpboot.
> +network settings accordingly, you can do a ping or tftpboot.
>  
> -If you have mapped a cramfs image try mounting it with
> +If you have mapped a cramfs image, try mounting it with
>  
>    # mkdir /cram
>    # mount /dev/fd0 cramfs /cram
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
