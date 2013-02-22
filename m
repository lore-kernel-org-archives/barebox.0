Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f53.google.com ([209.85.219.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8qGn-0000Nz-6C
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 10:54:25 +0000
Received: by mail-oa0-f53.google.com with SMTP id m1so455094oag.40
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2013 02:54:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1361527842-25815-2-git-send-email-fabio.porcedda@gmail.com>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
 <1361527842-25815-2-git-send-email-fabio.porcedda@gmail.com>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 22 Feb 2013 11:54:04 +0100
Message-ID: <CAHkwnC_a0-C0oAwP33u8xjKpORB=JC4zDhqUDw+OMmdRd8S4Mw@mail.gmail.com>
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
To: barebox@lists.infradead.org

On Fri, Feb 22, 2013 at 11:10 AM, Fabio Porcedda
<fabio.porcedda@gmail.com> wrote:
> There is no need to set againg deafult values in /env/config
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

This patch works fine on master too.

Best regards
-- 
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
