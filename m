Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f53.google.com ([209.85.214.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9F6d-0005v3-6H
 for barebox@lists.infradead.org; Sat, 23 Feb 2013 13:25:35 +0000
Received: by mail-bk0-f53.google.com with SMTP id j10so661074bkw.40
 for <barebox@lists.infradead.org>; Sat, 23 Feb 2013 05:25:31 -0800 (PST)
Date: Sat, 23 Feb 2013 14:26:29 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130223132520.GA922@x61s.8.8.8.8>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
 <1361527842-25815-2-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361527842-25815-2-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v2 next 1/2] defenv2: comment setting default values in
 /env/config
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

too late for this correction :(

On Fri, Feb 22, 2013 at 11:10:41AM +0100, Fabio Porcedda wrote:
> There is no need to set againg deafult values in /env/config

s/deafult/default/

> because they are already setted in /env/bin/init,
> that allow /env/config-board to change those default values
> without being overwritten by /env/config.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> ---
>  defaultenv-2/base/config | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/defaultenv-2/base/config b/defaultenv-2/base/config
> index 189e5a6..dec0595 100644
> --- a/defaultenv-2/base/config
> +++ b/defaultenv-2/base/config
> @@ -6,16 +6,16 @@
>  #global.hostname=
>  
>  # set to false if you do not want to have colors
> -global.allow_color=true
> +#global.allow_color=true
>  
>  # user (used for network filenames)
> -global.user=none
> +#global.user=none
>  
>  # timeout in seconds before the default boot entry is started
> -global.autoboot_timeout=3
> +#global.autoboot_timeout=3
>  
>  # default boot entry (one of /env/boot/*)
> -global.boot.default=net
> +#global.boot.default=net
>  
>  # base bootargs
>  #global.linux.bootargs.base="console=ttyS0,115200"
> -- 
> 1.8.1.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
