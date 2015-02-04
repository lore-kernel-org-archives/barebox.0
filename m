Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJ17E-0007ds-Hu
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 14:39:41 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YJ16r-0006pg-2S
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 15:39:17 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YJ16q-0007Uv-Qc
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 15:39:17 +0100
Message-ID: <1423060756.4050.78.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 04 Feb 2015 15:39:16 +0100
In-Reply-To: <1422956739-2957-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422956739-2957-1-git-send-email-yamada.m@jp.panasonic.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] fixup! defaultenv: generate force-built-in (zero)
 environment file
To: barebox@lists.infradead.org

On Di, 2015-02-03 at 18:45 +0900, Masahiro Yamada wrote:
> Without this, out-of-tree build (O=option) fails.
> 
> diff --git a/defaultenv/Makefile b/defaultenv/Makefile
> index 8a001ec..33e0ece 100644
> --- a/defaultenv/Makefile
> +++ b/defaultenv/Makefile
> @@ -24,7 +24,7 @@ $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SU
>  	$(call if_changed,env_h)
>  
>  quiet_cmd_env_zero = ENVZ    $@
> -cmd_env_zero = ($(srctree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
> +cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)

I adapted this from the same file a few lines above:
quiet_cmd_env_default = ENV     $@
cmd_env_default = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(CONFIG_DEFAULT_ENVIRONMENT_PATH))

Why didn't this fail for your?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
