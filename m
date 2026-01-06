Delivery-date: Tue, 06 Jan 2026 14:18:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xR-001uAz-0h
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:18:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xQ-0006dB-IC
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:18:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kw9z1kyf+lgcNhq7QhnME6vM6NDS4r/NWiKMiMyvR+M=; b=t5BYhXSSY9UV+fmHOWLRRF/cwU
	LMs7oUqSmA+nUBmhfBPHFT7RL5342kw9jcel+hIkoWdFuzDlukkw/2MZlaHggs96OVB93HwbCF6gK
	88SfsIbh5TAY0aqCPjz5MJhCvKzC3+NPLuGbhtHnv0p0q6XGjd6WnGBYC61jAPdBAOC1EYJjgzfaP
	s6L4Q3R1FjgbuA03MpBvlXmyS3eFTEJxx+g1n+hKKPaT/sajjDvSSgKjDgdoyBsDap+GIo/dHYEZX
	S0mNPpIevigO03Rg4e/lt8oGz/DsxebdDz02AUEL71x2kHnJrPjx9UNf+pHlftbdx/Zt1m+zKUwiK
	GAUA+DYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6wy-0000000D4uf-3TuU;
	Tue, 06 Jan 2026 13:18:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6ww-0000000D4uH-3aoS
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:18:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6wv-0006Vk-3d; Tue, 06 Jan 2026 14:18:13 +0100
Message-ID: <ff8d3e20-9d40-41d3-b0db-2006028ebe75@pengutronix.de>
Date: Tue, 6 Jan 2026 14:18:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-10-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-10-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_051814_904473_7D950EEA 
X-CRM114-Status: GOOD (  22.26  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/21] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Some architectures want to link the barebox proper ELF image into the
> PBL. Allow that and provide a Kconfig option to select the ELF image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Makefile        | 16 ++++++++++------
>  images/Makefile |  2 +-
>  pbl/Kconfig     |  9 +++++++++
>  3 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index aa12b385c779512fe20d33792f4968fed2eec29a..d1e6e3e418e4875b0fdee2e156acecdbbd5e3c9a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -831,7 +831,11 @@ export KBUILD_BINARY ?= barebox.bin
>  # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
>  # the default value.
>  
> +ifeq ($(CONFIG_PBL_IMAGE_ELF),y)
> +export BAREBOX_PROPER ?= vmbarebox
> +else
>  export BAREBOX_PROPER ?= barebox.bin
> +endif

Should be squashed into previous commit.

>  
>  barebox-flash-images: $(KBUILD_IMAGE)
>  	@echo $^ > $@
> @@ -854,7 +858,7 @@ endif
>  
>  all: $(symlink-y)
>  ifeq ($(CONFIG_PBL_IMAGE)-$(CONFIG_PBL_IMAGE_NO_PIGGY),y-)
> -all: barebox.elf
> +all: vmbarebox

Shouldn't be needed, there's already

ifdef CONFIG_PBL_IMAGE
all: $(BAREBOX_PROPER) images

>  endif
>  
>  .SECONDEXPANSION:
> @@ -1099,12 +1103,12 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
>  
> -OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
> -			   --remove-section=.comment \
> -			   --remove-section=.note* \
> -			   --remove-section=.gnu.hash
> +OBJCOPYFLAGS_vmbarebox = --strip-debug --strip-unneeded \
> +			 --remove-section=.comment \
> +			 --remove-section=.note* \
> +			 --remove-section=.gnu.hash
>  
> -barebox.elf: barebox FORCE
> +vmbarebox: barebox FORCE
>  	$(call if_changed,objcopy)

Ok. I can add a patch later with --strip-section-headers.

>  quiet_cmd_barebox_proper__ = CC      $@
> diff --git a/images/Makefile b/images/Makefile
> index ebbf57b463558724c97a6b4ca65c33f80dad253b..dd1be18eeef1a4ef42d3b9dc4b9c4f5d22c10d1a 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -231,7 +231,7 @@ ifneq ($(pblx-y)$(pblx-),)
>    $(error pblx- has been removed. Please use pblb- instead.)
>  endif
>  
> -targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o sha_sum.o barebox.sha.bin barebox.sum
> +targets += $(image-y) pbl.lds barebox.x barebox.z barebox.elf.z piggy.o sha_sum.o barebox.sha.bin barebox.sum

barebox.elf.z not needed.

Cheers,
Ahmad

>  targets += $(patsubst %,%.pblb,$(pblb-y))
>  targets += $(patsubst %,%.pbl,$(pblb-y))
>  targets += $(patsubst %,%.s,$(pblb-y))
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index cab9325d16e8625bcca10125b3281062abffedbc..63f29cd6135926c48b355b80fc7a123b90098c20 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -21,6 +21,15 @@ config PBL_IMAGE_NO_PIGGY
>  	  want to use the piggy mechanism to load barebox proper.
>  	  It's so far only intended for sandbox.
>  
> +config PBL_IMAGE_ELF
> +	bool
> +	depends on PBL_IMAGE
> +	select ELF
> +	help
> +	  If yes, link ELF image into the PBL, otherwise a raw binary
> +	  is linked into the PBL. This must match the loader code in the
> +	  PBL.
> +
>  config PBL_MULTI_IMAGES
>  	bool
>  	select PBL_IMAGE
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



