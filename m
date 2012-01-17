Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn6At-0003MU-Ig
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 10:22:01 +0000
Date: Tue, 17 Jan 2012 11:21:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120117102137.GA26642@pengutronix.de>
References: <1326730793-2818-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326730793-2818-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2 v2] add config to check if the size of barebox exceed
 the target size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 16, 2012 at 05:19:52PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> CONFIG_BAREBOX_MAX_IMAGE_SIZE will allow to detected silent oversize result
> 
> if 0x0 the size will not been checked
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 
> 	change to CONFIG_BAREBOX_MAX_IMAGE_SIZE
> 	use default as 0xffffffff
> 
> Best Regards,
> J.
>  Makefile       |    7 +++++++
>  common/Kconfig |    8 ++++++++
>  2 files changed, 15 insertions(+), 0 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index d8e685e..12fa192 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -659,6 +659,13 @@ OBJCOPYFLAGS_barebox.bin = -O binary
>  
>  barebox.bin: barebox FORCE
>  	$(call if_changed,objcopy)
> +	size=`stat -c%s $@`; \
> +	max_size=`printf "%d" $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)`; \
> +	if [ $$size -gt $$max_size ] ; \
> +	then \
> +		echo "$@ size $$size > of the maximum size $$max_size"; \
> +		exit 1 ; \
> +	fi

added a '@' while applying to make this check quiet.

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
