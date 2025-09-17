Delivery-date: Wed, 17 Sep 2025 12:22:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uypJ4-0042UE-3B
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 12:22:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uypJ4-00085z-Ac
	for lore@pengutronix.de; Wed, 17 Sep 2025 12:22:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LyMSuzQryhM2kjVC3FyzpFU8HicokJCCM6snk0sRgqM=; b=Fm189/UUeC9tPRJ7VhyFS/DTEv
	pr4vhP/d365X4nKvwpcPKk67Au9rJVWaEyYhpGXn3C72nZWisBToLxkuQ96jQmqiKMNJ//L60oEC5
	l4xyMGtB7qbc6zvq9b5NTrt+zuYQF/H67B29HChjaCr+nPIgvsLQ4pfcXXRLD34SQsqMubqHPwC/m
	DGxCVjCm7Bgt3XTVWTaMfHn6YvogALhoE1dMLsC+KDxXs5FaxMGtefrVXl4LAdCwmaCXdMJolvMh5
	DRR3yRrHF6Ns3aHU3yZnSaneX1esqD7NOUK45GLRgwxC8JNmkCF7X7Q1llrwYG1defFefzbf0+1KL
	Q5A+fxjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uypIZ-0000000Ay2J-2tg9;
	Wed, 17 Sep 2025 10:22:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uypIW-0000000Ay1F-3BgA
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 10:22:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uypIT-0007uH-Rd; Wed, 17 Sep 2025 12:21:57 +0200
Message-ID: <70e5f030-a3c5-4fa8-af71-99084828d56e@pengutronix.de>
Date: Wed, 17 Sep 2025 12:21:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250917095834.2727068-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250917095834.2727068-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_032200_829958_CC911A49 
X-CRM114-Status: GOOD (  23.97  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/17/25 11:58 AM, Sascha Hauer wrote:
> Sometimes firmware files can be links. When rebuilding barebox correctly
> rebuilds the firmware when file the link points to is updated, but the
> firmware is not rebuilt when the link itself is changed to link to
> another file.

This is surprising. I though GNU make looks at the mtime of the destination.

> Fix this by including the sha256sum directly in the generated assembly
> file by using .byte rather than generating a file containing the
> binary sha256sum and include that using .incbin. This way the generated
> assembly file for sure changes when the firmware file changes and it's
> rebuilt when necessary (and not when it's not).

The if_changed in just one of the $(if branches looks a bit strange, so
it's good to drop it IMO..

> 
> Reproducer:
> 
> export ARCH=arm
> make imx_v8_defconfig
> echo foo > firmware/foo
> echo bar > firmware/bar
> ln -sf foo firmware/imx8mm-bl31.bin
> make
> 
> The following should rebuild the barebox image including the updated
> firmware, but doesn't:
> 
> ln -sf bar firmware/imx8mm-bl31.bin
> make
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But see suggestion below.

> ---
>  firmware/Makefile | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 0c9da2996f..df9f277475 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -57,6 +57,8 @@ FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
>  FWNAME_EXISTS = $(if $(wildcard $(FIRMWARE_DIR)/$(FWNAME)),1,0)
>  
>  filechk_fwbin = { \
> +	SHA=$$(sha256sum $(FIRMWARE_DIR)/$(FWNAME) | sed 's/ .*$$//;s/../0x&, /g;s/, $$//') ;\
> +	\
>  	echo "/* Generated by $(src)/Makefile */"		;\
>  	echo "\#include <asm-generic/pointer.h>"		;\
>  	echo ".section .note.GNU-stack,\"\",%progbits"		;\
> @@ -80,7 +82,7 @@ filechk_fwbin = { \
>  	echo "    .p2align ASM_LGPTR"				;\
>  	echo ".global _fw_$(FWSTR)_sha_start"			;\
>  	echo "_fw_$(FWSTR)_sha_start:"				;\
> -	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
> +	echo "    .byte $${SHA}"				;\
>  	echo ".global _fw_$(FWSTR)_sha_end"			;\

How about we add here an

.if _fw_$(FWSTR)_sha_start - _fw_$(FWSTR)_sha_end
	.err
	.warnig "sha256sum empty"
.endif

As .byte doesn't require an argument, this would ensure breakage to be
noticed at compile time.

Cheers,
Ahmad

>  }
> @@ -89,20 +91,12 @@ filechk_fwbin_ext = { \
>  	$(filechk_fwbin)					;\
>  }
>  
> -$(obj)/%.gen.S: $(obj)/%.sha.bin FORCE
> +$(obj)/%.gen.S: FORCE
>  	$(call filechk,fwbin,.rodata.$(FWSTR),)
>  
> -$(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
> +$(obj)/%.extgen.S: FORCE
>  	$(call filechk,fwbin_ext,.pblext.$(FWSTR),a)
>  
> -$(obj)/%.sha.bin: $(obj)/%.sum FORCE
> -	$(call if_changed,sha256bin)
> -
> -$(obj)/%.sum: FORCE
> -	$(if $(wildcard $(FIRMWARE_DIR)/$*), $(call if_changed,sha256sum,$(FIRMWARE_DIR)/$*), @touch $@)
> -
> -clean-files += *.sha.bin *.sum
> -
>  # This dependency is used if missing firmware should fail the build immediately
>  fwdep-required-y = $(FIRMWARE_DIR)/%
>  # This dependency expands to nothing if the file doesn't exist. This allows

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



