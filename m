Delivery-date: Mon, 31 May 2021 10:22:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndCK-0003Tq-Pq
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:22:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndCJ-0007kG-71
	for lore@pengutronix.de; Mon, 31 May 2021 10:22:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/X6NS13zoPrWw+LOsVpJy06Wu8ZaBXFC2SEhMcSH3Ec=; b=M4Mi1fWBduofgiIYsBGn/nygPF
	JzUmS4YKTk/DevbDODmMmeZXl/6lYPtTsJzfanEe1NFf6mNZk1bBPN4MlZHCu0/B1seOjF+CjVxjv
	nf0AEOZO4fsshLdk6m68/VcLuWPcGXfA2BEBqh4eQ5+DgOV3C4PiEwJnTyiLJI/5+0E8BmbGX44OO
	NRM+QshbHHJ3JGxjSlDYGp1fzcYTVaw/XsLY40lui0xC4LtxsapASo6JowtisbL2QUFFGSYHU2HbR
	79qaNK95fAsoclrK/Yld+Oe41T6pLKfxeMmJrIz3feW/Y6LjVjVGjvpyQwVex+5lSpKAvRzIwpXiQ
	nLeW5Gug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndB6-00BOz0-HM; Mon, 31 May 2021 08:21:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndAu-00BOwY-JR
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:21:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndAt-0007Jc-CW; Mon, 31 May 2021 10:21:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndAt-0007sg-3A; Mon, 31 May 2021 10:21:27 +0200
Date: Mon, 31 May 2021 10:21:27 +0200
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20210531082127.GL5211@pengutronix.de>
References: <20210530145842.2610109-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210530145842.2610109-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:21:18 up 102 days, 11:45, 127 users,  load average: 0.33, 0.24,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012128_700802_E7840F6E 
X-CRM114-Status: GOOD (  33.39  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] firmware: refactor firmware/Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, May 30, 2021 at 11:58:41PM +0900, Masahiro Yamada wrote:
> From: Masahiro Yamada <yamada.masahiro@socionext.com>
> 
> Linux commit 3470d9eb638722212ac44787eaf13486823fa011
> 
> Clean up the Makefile. Equivalent *.gen.S files are still produced.
> 
>  - Use filechk to remove ugly wordsize_deps
> 
>  - Get FWNAME, FWSTR, ASM_WORD, ASM_ALIGN, and PROGBITS out of the
>    recipe for readability
> 
>  - Remove 'mkdir' because filechk takes care of it
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  firmware/Makefile | 56 +++++++++++++++++------------------------------
>  1 file changed, 20 insertions(+), 36 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index cc28c0fc3..3a38c4007 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -1,7 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> -#
> -# kbuild file for firmware/
> -#
>  
>  firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
>  	lpddr4_pmu_train_1d_dmem.bin \
> @@ -19,52 +16,39 @@ firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
>  
>  firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
>  
> -# Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
> +# Create $(fwdir) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
>  # leading /, it's relative to $(srctree).
>  fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
> -fwabs := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
> +fwdir := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
>  
> -fw-external-y := $(firmware-y)
> +obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
>  
> -quiet_cmd_fwbin = MK_FW   $@
> -      cmd_fwbin = FWNAME="$(patsubst firmware/%.gen.S,%,$@)";		     \
> -		  FWSTR="$(subst /,_,$(subst .,_,$(subst -,_,$(patsubst	     \
> -				firmware/%.gen.S,%,$@))))";		     \
> -		  ASM_WORD=$(if $(CONFIG_64BIT),.quad,.long);		     \
> -		  ASM_ALIGN=$(if $(CONFIG_64BIT),3,2);			     \
> -		  PROGBITS=$(if $(CONFIG_ARM),%,@)progbits;		     \
> -		  echo "/* Generated by firmware/Makefile */"		> $@;\
> -		  echo "    .section .rodata.$${FWSTR}"			>>$@;\
> -		  echo "    .p2align $${ASM_ALIGN}"			>>$@;\
> -		  echo ".global _fw_$${FWSTR}_start"			>>$@;\
> -		  echo "_fw_$${FWSTR}_start:"				>>$@;\
> -		  echo "    .incbin \"$(2)\""				>>$@;\
> -		  echo ".global _fw_$${FWSTR}_end"			>>$@;\
> -		  echo "_fw_$${FWSTR}_end:"				>>$@;
> +FWNAME    = $(patsubst $(obj)/%.gen.S,%,$@)
> +FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> +ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
>  
> -# One of these files will change, or come into existence, whenever
> -# the configuration changes between 32-bit and 64-bit. The .S files
> -# need to change when that happens.
> -wordsize_deps := $(wildcard include/config/64bit.h include/config/32bit.h)
> +filechk_fwbin = { \
> +	echo "/* Generated by $(src)/Makefile */"		;\
> +	echo "    .section .rodata.$(FWSTR)"			;\
> +	echo "    .p2align $(ASM_ALIGN)"			;\
> +	echo ".global _fw_$(FWSTR)_start"			;\
> +	echo "_fw_$(FWSTR)_start:"				;\
> +	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
> +	echo ".global _fw_$(FWSTR)_end"				;\
> +	echo "_fw_$(FWSTR)_end:"				;\
> +}
>  
> -$(patsubst %,$(obj)/%.gen.S, $(fw-external-y)): %: $(wordsize_deps) \
> -		include/config/extra/firmware/dir.h
> -	$(call cmd,fwbin,$(fwabs)/$(patsubst $(obj)/%.gen.S,%,$@))
> +$(obj)/%.gen.S: FORCE
> +	$(call filechk,fwbin)
>  
>  # The .o files depend on the binaries directly; the .S files don't.
> -$(patsubst %,$(obj)/%.gen.o, $(fw-external-y)): $(obj)/%.gen.o: $(fwdir)/%
> +$(patsubst %,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
>  
>  # The same for pbl:
> -$(patsubst %,$(obj)/%.gen.pbl.o, $(fw-external-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
> +$(patsubst %,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
>  
>  obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
>  
> -ifndef building_out_of_srctree
> -# Makefile.build only creates subdirectories for O= builds, but external
> -# firmware might live outside the kernel source tree
> -_dummy := $(foreach d,$(addprefix $(obj)/,$(dir $(fw-external-y))), $(shell [ -d $(d) ] || mkdir -p $(d)))
> -endif
> -
>  targets := $(patsubst $(obj)/%,%, \
>                                  $(shell find $(obj) -name \*.gen.S 2>/dev/null))
>  
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

