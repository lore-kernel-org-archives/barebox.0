Delivery-date: Mon, 05 Jan 2026 13:23:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjc7-001WCi-34
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:23:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjc7-0005BO-Ap
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:23:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nqq3hFraD+PF+ogxsXxifN+aGp2042Hx5wN8nHSdWAA=; b=R/3tuhjJd9qxXF7/aOkGmR4eCr
	w5/w2NZiKCAFH72tgtBW+nWk7wlDNMUPi3JToeydQ7wmiP7J+vhLWxT2GGKyAG9rgSalSoWVmjERV
	Q5L+J7mMBT5BGd8sOoP+eZsbyyfkYC8HlS3eS2cHs0g4bEPKLE1v42uaz/SVULS0a0yMCNvX9bHCi
	fWMxD2gB34pH68+vpofdTzLvM0Hteap/1dy4dQO5W9xYIp7dCfPb1OWHAoM/yo22wDMxbngmSohQZ
	EEwu53zwbTyNs/1sDoWT79kSNcQR85fh0Qq0TmblFRsQqAUfHGjqYbd/dCeABc9cmGPPLClxBzdY9
	gFxUnPHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjbh-0000000BGr9-3RwV;
	Mon, 05 Jan 2026 12:22:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjbe-0000000BGqo-2dLc
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:22:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjbc-00056s-U7; Mon, 05 Jan 2026 13:22:40 +0100
Message-ID: <b86f471c-0813-49d8-a46b-6df823cd6d67@pengutronix.de>
Date: Mon, 5 Jan 2026 13:22:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-8-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-8-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_042242_670644_AF38861C 
X-CRM114-Status: GOOD (  17.57  )
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
Subject: Re: [PATCH 08/19] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Add a build target to create barebox.elf, which provides an ELF format
> version of barebox that can be used for debugging or alternative boot
> scenarios.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>

I think conceptually, the Co-Authored-By should be before your S-o-b.

> ---
>  Makefile | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 75e14383bcdcf987d091442adba9b053af28eae7..c1aa6935abe5c65156b812d4a0b21c6d488038ae 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -850,6 +850,9 @@ all: barebox-flash-images
>  endif
>  
>  all: $(symlink-y)
> +ifeq ($(CONFIG_PBL_IMAGE)-$(CONFIG_PBL_IMAGE_NO_PIGGY),y-)
> +all: barebox.elf
> +endif

Why not:

ifdef CONFIG_PBL_IMAGE_ELF
export BAREBOX_PROPER ?= vmbarebox # or barebox.elf
else
export BAREBOX_PROPER ?= barebox.bin
endif

>  
>  .SECONDEXPANSION:
>  $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
> @@ -1091,6 +1094,17 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
>  
> +OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \

--strip-section-headers goes the farthest I think.

> +			   --remove-section=.comment \
> +			   --remove-section=.note \

--remote-section=.note*

> +			   --remove-section=.note.gnu.build-id

--remove-section=.gnu.hash?

> +
> +quiet_cmd_objcopy_elf = OBJCOPY $@
> +      cmd_objcopy_elf = $(OBJCOPY) $(OBJCOPYFLAGS_barebox.elf) $< $@
> +
> +barebox.elf: barebox FORCE
> +	$(call if_changed,objcopy_elf)

There is already cmd_objcopy. You should be able to reuse it with

OBJCOPYFLAGS_$@ = $your_options.


Sidenote: We should add --error-rwx-segments depending on
CONFIG_PBL_IMAGE_ELF.

Cheers,
Ahmad

> +
>  quiet_cmd_barebox_proper__ = CC      $@
>        cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
>  
> @@ -1388,7 +1402,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map \
>  		.tmp_kallsyms* barebox.ldr compile_commands.json \
>  		.tmp_barebox.o barebox.o barebox-flash-image \
> -		barebox.srec barebox.s5p barebox.ubl \
> +		barebox.srec barebox.elf barebox.s5p barebox.ubl \
>  		barebox.uimage \
>  		barebox.efi barebox.canon-a1100.bin
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



