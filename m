Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TG7uM-0008Cs-Bd
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 12:37:07 +0000
Message-ID: <506053EE.5070105@phytec.de>
Date: Mon, 24 Sep 2012 14:37:02 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Makefile: add target to produce a SPL compatible uImage
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Jan,

Am 20.09.2012 21:13, schrieb Jan Luebbe:
> This is mostly useful during the initial port of barebox to a new
> board which is supported by u-boot. It also allows starting barebox
> from a SRAM-based u-boot SPL.
>
> A different load address can be set like this:
> make barebox.uimage UIMAGE_BASE=0x80000000
>
> Also add barebox.ubl to CLEAN_FILES.
>
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> I've carried this patch for some time and adjusted it to support
> PBL (compressed image), but have not had an opportunity to verify
> it again.
>
> Teresa, if you have some time to try it out, that would be very
> much appreciated. :)

I have tested it with my am335x patches. And it worked so far.
But I have not done anything with the pbl image, yet.
Could you explain me what it's actually for? And how I can test it?

Regards
Teresa

>
>
>   .gitignore |    1 +
>   Makefile   |   19 ++++++++++++++++++-
>   2 files changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/.gitignore b/.gitignore
> index 4154c73..7e98a25 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -35,6 +35,7 @@ barebox.srec
>   barebox.netx
>   barebox.s5p
>   barebox.ubl
> +barebox.uimage
>   barebox.map
>   System.map
>   Module.symvers
> diff --git a/Makefile b/Makefile
> index 0f1a319..5cb4730 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -686,6 +686,22 @@ ifndef CONFIG_PBL_IMAGE
>   	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>   endif
>   
> +# By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
> +# leaving space for the compressed PBL image at 1MB below CONFIG_TEXT_BASE.
> +UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
> +
> +# For development provide a target which makes barebox loadable by an
> +# unmodified u-boot
> +quiet_cmd_barebox_mkimage = MKIMAGE $@
> +      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
> +       -O barebox -a $(UIMAGE_BASE) -e $(UIMAGE_BASE) \
> +       -n "barebox $(KERNELRELEASE)" -d $< $@
> +
> +# barebox.uimage is build from the raw barebox binary, without any other
> +# headers.
> +barebox.uimage: $(KBUILD_BINARY) FORCE
> +	$(call if_changed,barebox_mkimage)
> +
>   ifdef CONFIG_X86
>   barebox.S: barebox
>   ifdef CONFIG_X86_HDBOOT
> @@ -1015,7 +1031,8 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                   .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
>   		.tmp_kallsyms* barebox_default_env* barebox.ldr \
>   		scripts/bareboxenv-target barebox-flash-image \
> -		Doxyfile.version barebox.srec barebox.s5p
> +		Doxyfile.version barebox.srec barebox.s5p barebox.ubl \
> +		barebox.uimage
>   
>   # Directories & files removed with 'make mrproper'
>   MRPROPER_DIRS  += include/config include2 usr/include


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
