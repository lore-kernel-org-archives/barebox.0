Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZt2j-0004CS-Rp
 for barebox@lists.infradead.org; Tue, 25 Jul 2017 06:10:20 +0000
Date: Tue, 25 Jul 2017 08:09:39 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170725060939.GA10720@ravnborg.org>
References: <20170710092942.13037-1-l.stach@pengutronix.de>
 <20170724192300.lfbvphhwpoltbbmd@pengutronix.de>
 <20170724205625.GA19867@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724205625.GA19867@ravnborg.org>
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
Subject: Re: [PATCH] ARM: imx: remove DCD files from Makefiles
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi all.

> diff --git a/defaultenv/Makefile b/defaultenv/Makefile
> index 33e0eceef..f313b04e8 100644
> --- a/defaultenv/Makefile
> +++ b/defaultenv/Makefile
> @@ -14,7 +14,7 @@ quiet_cmd_env_default = ENV     $@
>  cmd_env_default = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
>  
>  $(obj)/barebox_default_env: FORCE
> -	$(call cmd,env_default)
> +	$(call if_changed,env_default)
>  
>  quiet_cmd_env_h = ENVH    $@
>  cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
> @@ -27,4 +27,4 @@ quiet_cmd_env_zero = ENVZ    $@
>  cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
>  
>  $(obj)/barebox_zero_env: FORCE
> -	$(call cmd,env_zero)
> +	$(call if_changed,env_zero)

Before anyome jumps to try this out...
The above changes are bogus - as we fail to detect when we change a file
within defaultenv/.
Will try to come up with something that works.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
