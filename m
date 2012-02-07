Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuoA1-0004sd-V4
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:44:55 +0000
Date: Tue, 7 Feb 2012 11:44:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89318342F9@DBDE01.ent.ti.com>
Message-ID: <alpine.DEB.2.02.1202071138340.15978@oneiric>
References: <alpine.DEB.2.02.1202070816090.3550@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A89318342F9@DBDE01.ent.ti.com>
MIME-Version: 1.0
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
Subject: RE: "make distclean" doesn't remove generated MLO file
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 7 Feb 2012, Premi, Sanjeev wrote:

> This patch should help.
> If you confirm, I can submit it formally.
>
> ~sanjeev
>
> >From 072ef5dd7022877fc1470b6dc14a0ec309eb68a0 Mon Sep 17 00:00:00 2001
> From: Sanjeev Premi <premi@ti.com>
> Date: Tue, 7 Feb 2012 21:58:50 +0530
> Subject: [PATCH] omap: Remove MLO with distclean
>
>
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
>  Makefile |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 5cf49da..5a03b32 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1008,7 +1008,7 @@ MRPROPER_DIRS  += include/config include2 usr/include
>  MRPROPER_FILES += .config .config.old include/asm .version .old_version \
>                    include/generated/autoconf.h include/generated/version.h      \
>                    include/generated/utsrelease.h include/config.h           \
> -		  Module.symvers tags TAGS cscope*
> +		  Module.symvers tags TAGS cscope* MLO
>
>  # clean - Delete most, but leave enough to build external modules
>  #

  based on this from the Makefile:

===== snip =====

# Directories & files removed with 'make clean'
CLEAN_DIRS  += $(MODVERDIR)
CLEAN_FILES +=  barebox System.map
include/generated/barebox_default_env.h \
                .tmp_version .tmp_barebox* barebox.bin barebox.S \
                .tmp_kallsyms* barebox_default_env barebox.ldr
Doxyfile.version

# Directories & files removed with 'make mrproper'
MRPROPER_DIRS  += include/config include2 usr/include
MRPROPER_FILES += .config .config.old include/asm .version
.old_version \
                  include/generated/autoconf.h include/generated/version.h      \
                  include/generated/utsrelease.h include/config.h           \
                  Module.symvers tags TAGS cscope* MLO

===== snip =====

  i would think that it should be added to CLEAN_FILES, given its
relation to barebox.bin, etc.  but either way will certainly work.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
