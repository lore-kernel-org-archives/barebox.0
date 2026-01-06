Delivery-date: Tue, 06 Jan 2026 14:14:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6tN-001u6r-03
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6tM-0005zU-DE
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:14:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IxEfmOCv8Yriw0NLyjruUTEpsSheDyckR9VqY5+nKWI=; b=ScDHf9HSPiEDgLr31ULaGkbU81
	klTng0nFZ0Hyg4xMcKHmhbOBMFLKhp028l7Av04ScjUFS8ao0JmAj8APmcz/D/7OJDNGkTig0SKGY
	oRHzH7RTacR7++cKAdTMFRJVNCEEUcPY8RAsl6IYOvGlKGxtWmdTEq0fSBYpF49BCfY4CbY7H1gU/
	UxCbKW862WASdR0ca0YwUVAKf1msU8ip9K0EKjDeA2eI1nn3UFSruZab7rd/kB9m9Zl8bJ+gK0hjW
	nHPaD3HW39obZL5qqr2mPez6NIYx/VZufL6WePOTsvFLPdCCnqEvMpBH3NgqwPbO7KHrTNkwUr5NA
	UTuichoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6sv-0000000D4ai-2ZzP;
	Tue, 06 Jan 2026 13:14:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6su-0000000D4aa-09TU
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IxEfmOCv8Yriw0NLyjruUTEpsSheDyckR9VqY5+nKWI=; b=jnem2jevgVbFx5IojDr7bHwuF7
	8EvpLCR8WBzFADYvx1RgCTq4cr8dsmQaA1d9dfN3k/IWVZtqSBOeZvGzMTYZqlWlWXJ/6oM9MpvvG
	TnPElFmTgz98xUwOSByks9GpjTSWd9hWJ5/9SdWuX0AB0z265a7XX+rA1y82Db04YSC1tjPtf1BZf
	CnE63aHn+iIFVTet0NM/acY++l4xV/cDPopu/n+beJoi9Dmek7wq/DDpjoh+U1U9tyQ1ULHNeFjuy
	n9jrQzyPtkudHdyCi3E9se74rtwvCesVPt3kJfNtkJ/GMUbcKLi7BGBmlzhhP8wejuy5vdYl2IZ24
	hv04GsAQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6sq-00000009kGl-3WX5
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:14:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6sq-0005ut-63; Tue, 06 Jan 2026 14:14:00 +0100
Message-ID: <6716230c-4bdb-4642-a1d6-cedc337e1b7b@pengutronix.de>
Date: Tue, 6 Jan 2026 14:13:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-9-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-9-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131400_989408_6E254E82 
X-CRM114-Status: GOOD (  17.26  )
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
Subject: Re: [PATCH v2 09/21] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Add a build target to create barebox.elf, which provides an ELF format
> version of barebox that can be used for debugging or alternative boot
> scenarios.

I don't find my feedback re: different name for barebox.elf (e.g.
vmbarebox) and use of --strip-all/--strip-section-headers addressed here.

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> ---
>  Makefile | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 3b31cecc22c431a063b8d2d3c387da487b698e74..aa12b385c779512fe20d33792f4968fed2eec29a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -853,6 +853,9 @@ all: barebox-flash-images
>  endif
>  
>  all: $(symlink-y)
> +ifeq ($(CONFIG_PBL_IMAGE)-$(CONFIG_PBL_IMAGE_NO_PIGGY),y-)
> +all: barebox.elf
> +endif
>  
>  .SECONDEXPANSION:
>  $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
> @@ -1096,6 +1099,14 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
>  
> +OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
> +			   --remove-section=.comment \
> +			   --remove-section=.note* \
> +			   --remove-section=.gnu.hash
> +
> +barebox.elf: barebox FORCE
> +	$(call if_changed,objcopy)
> +
>  quiet_cmd_barebox_proper__ = CC      $@
>        cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
>  
> @@ -1378,7 +1389,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map \
>  		.tmp_kallsyms* compile_commands.json \
>  		.tmp_barebox.o barebox.o barebox-flash-image \
> -		barebox.srec barebox.efi
> +		barebox.srec barebox.efi barebox.elf
>  
>  CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
>  		scripts/bareboxcrc32-target scripts/bareboximd-target \
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



