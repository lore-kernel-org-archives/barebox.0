Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAHTc-0001Qq-Ua
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 10:09:37 +0000
Date: Tue, 26 Feb 2013 11:09:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130226100935.GI25672@pengutronix.de>
References: <1361370315-15701-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361370315-15701-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] Makefile: drop duplicate cmd_as_o_S support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 20, 2013 at 03:25:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as we have it to in scripts/Makefile.lib
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Makefile |    8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index a27c07a..7f97e8f 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1210,14 +1210,6 @@ quiet_cmd_rmdirs = $(if $(wildcard $(rm-dirs)),CLEAN   $(wildcard $(rm-dirs)))
>  quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files)))
>        cmd_rmfiles = rm -f $(rm-files)
>  
> -
> -a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
> -	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
> -	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
> -
> -quiet_cmd_as_o_S = AS      $@
> -cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
> -
>  # read all saved command lines

I dropped this one as it breaks compilation in a number of defconfigs:

cupid_defconfig:
/bin/sh: 1: Syntax error: ";" unexpected
make: *** [.tmp_kallsyms1.o] Error 2

I haven't investigated the reasons.

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
