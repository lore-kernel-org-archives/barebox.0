Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVyG1-0006U2-1h
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 06:37:30 +0000
Date: Tue, 15 Oct 2013 08:37:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131015063704.GE30088@pengutronix.de>
References: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] common: fix possible build problem without password
 support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 14, 2013 at 05:39:25PM +0200, Jan Luebbe wrote:
> In the case where CONFIG_PASSWORD is off, CONFIG_PASSWORD_DEFAULT is
> undefined. As undefined is not "", this causes make to call find -type f.
> If there is a filename containing a :, make will complain about having
> "multiple target patterns"
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  common/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/common/Makefile b/common/Makefile
> index 75d924e..6f6e360 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -116,6 +116,7 @@ $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_co
>  	$(call if_changed,env_h)
>  
>  quiet_cmd_pwd_h = PWDH    $@
> +ifdef CONFIG_PASSWORD
>  ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
>  PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
>  cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
> @@ -134,6 +135,7 @@ endif
>  targets += include/generated/passwd.h
>  
>  $(obj)/password.o: include/generated/passwd.h
> +endif
>  
>  # dependencies on generated files need to be listed explicitly
>  $(obj)/version.o: include/generated/compile.h
> -- 
> 1.8.4.rc3
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
