Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQYXp-00041N-Fd
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 07:04:58 +0000
Date: Tue, 23 Oct 2012 09:04:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023070455.GJ27665@pengutronix.de>
References: <1350926048-12681-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350926048-12681-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] common: Makefile: 'cd' command could lead to broken
 default_env.h
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 22, 2012 at 07:14:08PM +0200, Wolfram Sang wrote:
> Depending on the user's settings (CDPATH), 'cd' may print out the
> directory which was changed to. This causes broken barebox_default_env.h
> to be generated. Ignore the cd printout.

I didn't know such a thing exists. This can cause unexpected behaviour
of 'cd'. Wouldn't it be better to completely disable it by emptying
CDPATH in scripts?

Sascha


> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  common/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/Makefile b/common/Makefile
> index 132bd06..f2c8a2e 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -99,7 +99,7 @@ $(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env FORCE
>  	$(call if_changed,lzo)
>  
>  quiet_cmd_env_h = ENVH    $@
> -cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
> +cmd_env_h = cat $< | (cd $(obj) > /dev/null && $(objtree)/scripts/bin2c default_environment) > $@; \
>  	echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
>  
>  $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp) FORCE
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
