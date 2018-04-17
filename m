Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8KCV-0007qE-NI
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 06:34:49 +0000
Date: Tue, 17 Apr 2018 08:34:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417063435.zdrlh3grobf75kx7@pengutronix.de>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
 <20180415112858.5163-8-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180415112858.5163-8-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 07/10] RISC-V: erizo: add nmon image creation
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 15, 2018 at 02:28:55PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/Makefile      | 11 +++++++++++
>  scripts/erizo-nmon-image |  3 +++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 9a3921065c..c837d4e2e4 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -73,3 +73,14 @@ CFLAGS += $(cflags-y)
>  lds-y	:= arch/riscv/lib/barebox.lds
>  
>  CLEAN_FILES += arch/riscv/lib/barebox.lds
> +
> +ifeq ($(CONFIG_MACH_ERIZO),y)
> +KBUILD_IMAGE := barebox.erizo.nmon
> +endif
> +
> +quiet_cmd_erizo_nmon_image = MKIMAGE $@
> +      cmd_erizo_nmon_image = $(srctree)/scripts/erizo-nmon-image $< $@ || \
> +	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
> +
> +barebox.erizo.nmon: $(KBUILD_BINARY) FORCE
> +	$(call if_changed,erizo_nmon_image)
> diff --git a/scripts/erizo-nmon-image b/scripts/erizo-nmon-image
> new file mode 100755
> index 0000000000..4f0185b6de
> --- /dev/null
> +++ b/scripts/erizo-nmon-image
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +hexdump -v -e '/4 "%08x\n"' $1 | perl -e '$a = 0x80000000; while (<>) { chop; printf("expect \"nmon> \"\n"); printf("send \"w%08x$_\"\n", $a); $a = $a + 4; }' > $2
> -- 

Maybe add some

if [ $# != 2 ]; then echo "usage: ..."; exit 1; fi

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
