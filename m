Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXPZX-00077U-H1
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 10:50:01 +0000
Date: Fri, 5 Jan 2018 11:49:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105104946.m24p2h6ho774s5i4@pengutronix.de>
References: <20171226183236.GA26708@ravnborg.org>
 <20171226183653.GD28706@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171226183653.GD28706@ravnborg.org>
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
Subject: Re: [PATCH 4/4] build: fix that LZO file is always rebuilt
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Tue, Dec 26, 2017 at 07:36:53PM +0100, Sam Ravnborg wrote:
> From e398a00f84db33ea5ae7f6ee12c54511ef7a94fc Mon Sep 17 00:00:00 2001
> From: Sam Ravnborg <sam@ravnborg.org>
> Date: Tue, 26 Dec 2017 18:09:35 +0100
> Subject: [PATCH 4/4] build: fix that LZO file is always rebuilt
> 
> Port the make-cmd from linux kernel.
> with the updated version $$ is porperly escaped, thus
> the LZO rule works as intended.
> And we avoid rebuilds when not required
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  scripts/Kbuild.include | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index 310dcdc94..fb3fa88fb 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -205,11 +205,13 @@ else
>  arg-check = $(if $(strip $(cmd_$@)),,1)
>  endif
>  
> -# >'< substitution is for echo to work,
> -# >$< substitution to preserve $ when reloading .cmd file
> -# note: when using inline perl scripts [perl -e '...$$t=1;...']
> -# in $(cmd_xxx) double $$ your perl vars
> -make-cmd = $(subst \\,\\\\,$(subst \#,\\\#,$(subst $$,$$$$,$(call escsq,$(cmd_$(1))))))
> +# Replace >$< with >$$< to preserve $ when reloading the .cmd file
> +# (needed for make)
> +# Replace >#< with >\#< to avoid starting a comment in the .cmd file
> +# (needed for make)
> +# Replace >'< with >'\''< to be able to enclose the whole string in '...'
> +# (needed for the shell)
> +make-cmd = $(call escsq,$(subst \#,\\\#,$(subst $$,$$$$,$(cmd_$(1)))))
>  

This doesn't work for me. Without this patch I do not see any rebuilds
of lzo files, but with this patch I do.

Seems you are using another shell, dash vs. bash? Porting the second
hunk of the kernel commit 164f0d2efaaef83 fixes it for me.

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
