Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwtSk-00004r-33
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 11:53:27 +0000
Date: Sun, 20 Jan 2013 12:51:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130120115155.GP1906@pengutronix.de>
References: <1358593560-6307-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358593560-6307-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [For master PATCH 1/1] Makefile: move cmd_check_file_size to
 Makefile.lib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 19, 2013 at 12:06:00PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can use to check pbl
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  Makefile             |   11 -----------
>  scripts/Makefile.lib |   11 +++++++++++
>  2 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 0c07463..8e15c03 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -547,17 +547,6 @@ quiet_cmd_barebox_version = GEN     .version
>  	fi;						\
>  	$(MAKE) $(build)=common
>  
> -# Check size of a file
> -quiet_cmd_check_file_size = CHKSIZE $@
> -      cmd_check_file_size = set -e;					\
> -	size=`stat -c%s $@`;						\
> -	max_size=`printf "%d" $2`;					\
> -	if [ $$size -gt $$max_size ] ;					\
> -	then								\
> -		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
> -		exit 1 ;						\
> -	fi;
> -
>  # Generate System.map
>  quiet_cmd_sysmap = SYSMAP
>        cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 14e471d..f7d6721 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -248,3 +248,14 @@ cmd_disasm = $(OBJDUMP) -d $< > $@
>  
>  quiet_cmd_ln = LN      $@
>  cmd_ln = ln -sf $< $@
> +
> +# Check size of a file
> +quiet_cmd_check_file_size = CHKSIZE $@
> +      cmd_check_file_size = set -e;					\
> +	size=`stat -c%s $@`;						\
> +	max_size=`printf "%d" $2`;					\
> +	if [ $$size -gt $$max_size ] ;					\
> +	then								\
> +		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
> +		exit 1 ;						\
> +	fi;
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
