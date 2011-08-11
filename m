Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrPjs-0001sp-HN
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 07:31:38 +0000
Date: Thu, 11 Aug 2011 09:31:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110811073132.GC31404@pengutronix.de>
References: <1312973230-27870-1-git-send-email-plagnioj@jcrosoft.com>
	<1312973230-27870-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312973230-27870-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] defaultenv: add login autoboot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 10, 2011 at 12:47:10PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if the login command is enable and a password set use login with timeout
> to stop the boot
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Makefile                    |   10 ++++++----
>  defaultenv/common/bin/boot_timeout |   10 ++++++++++
>  defaultenv/common/bin/init         |    9 +--------
>  defaultenv/login/bin/boot_timeout  |   15 +++++++++++++++
>  4 files changed, 32 insertions(+), 12 deletions(-)
>  create mode 100644 defaultenv/common/bin/boot_timeout
>  create mode 100644 defaultenv/login/bin/boot_timeout
> 
> diff --git a/common/Makefile b/common/Makefile
> index 531000a..5eeb944 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -32,19 +32,21 @@ $(obj)/startup.o: include/generated/barebox_default_env.h
>  $(obj)/env.o: include/generated/barebox_default_env.h
>  
>  ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
> -DEFAULT_ENVIRONMENT_PATH = "defaultenv/common"
> +DEFAULT_ENVIRONMENT_PATH-y = "defaultenv/common"
> +
> +DEFAULT_ENVIRONMENT_PATH-$(CONFIG_CMD_LOGIN) += "defaultenv/login"
>  endif
>  
>  ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
> -DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> +DEFAULT_ENVIRONMENT_PATH-y += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
>  endif
>  
> -ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f '{}' \;; done)
> +ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH-y); do find $${i} -type f -exec readlink -f '{}' \;; done)
>  
>  endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
>  
>  barebox_default_env: $(ENV_FILES)
> -	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
> +	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH-y)
>  
>  include/generated/barebox_default_env.h: barebox_default_env
>  	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@

I don't like this approach. It is quite intrusive and it handles only
one variable (CONFIG_CMD_LOGIN). If we by applying this patch tell
people that this is the way to customize the default env then this
is going to be a mess soon.

I think you have to live with overwriting /env/bin/init in your board
specific env or have to come up with a more general way to adjust
the default environment.


Sascha

> diff --git a/defaultenv/common/bin/boot_timeout b/defaultenv/common/bin/boot_timeout
> new file mode 100644
> index 0000000..a469ef3
> --- /dev/null
> +++ b/defaultenv/common/bin/boot_timeout
> @@ -0,0 +1,10 @@
> +. /env/config
> +
> +echo
> +echo -n "Hit any key to stop autoboot: "
> +timeout -a $autoboot_timeout
> +if [ $? != 0 ]; then
> +	exit
> +fi
> +
> +boot
> diff --git a/defaultenv/common/bin/init b/defaultenv/common/bin/init
> index b66f7d9..5c4ea00 100644
> --- a/defaultenv/common/bin/init
> +++ b/defaultenv/common/bin/init
> @@ -24,11 +24,4 @@ if [ -f /env/bin/init_board ]; then
>  	/env/bin/init_board
>  fi
>  
> -echo
> -echo -n "Hit any key to stop autoboot: "
> -timeout -a $autoboot_timeout
> -if [ $? != 0 ]; then
> -	exit
> -fi
> -
> -boot
> +boot_timeout
> diff --git a/defaultenv/login/bin/boot_timeout b/defaultenv/login/bin/boot_timeout
> new file mode 100644
> index 0000000..96a7690
> --- /dev/null
> +++ b/defaultenv/login/bin/boot_timeout
> @@ -0,0 +1,15 @@
> +. /env/config
> +
> +echo
> +echo -n "Login in ${autoboot_timeout}s to stop autoboot: "
> +echo
> +login -t $autoboot_timeout
> +
> +echo
> +echo -n "Hit any key to stop autoboot: "
> +timeout -a $autoboot_timeout
> +if [ $? != 0 ]; then
> +	exit
> +fi
> +
> +boot
> -- 
> 1.7.5.4
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
