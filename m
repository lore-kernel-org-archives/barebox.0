Delivery-date: Tue, 03 Dec 2024 09:25:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIODq-003Qd3-2c
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 09:25:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIODq-0000LD-OI
	for lore@pengutronix.de; Tue, 03 Dec 2024 09:25:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XrW1ectEhYCoSdQ68dfkhK1nXhhA6vzg62WMCSauJHA=; b=yEB0sidaFvFo5f+uYIVXGJnP0s
	wFHxr/D0+/QstgIj8OiFfkL9cHxbUu5B2m/0bGWZOk48sxpJKowRYaeyiDuDnRO57YGWywK14xXis
	EJNuaQX/fIR12og/g89uwzoz+PmHQvz5pfDNc2Gbko/Lh/PjPm2BZRLUc7Rfx911THFc0toN8WwK8
	8vgk6nqBeZy0yusHdqiEIWiSKWUyu4ZXKVS+JDOBhNtuk3JgrTQ9RTkGVXHqHUrM3Ke0W8F3J8KeR
	gMajymrRQzOB1N8uAAGhY41fX7EtcLVwwuL7v641+ve6Zo3JlYgTk3xJy/1snoV1vAUzOSrfCr9Ci
	XNlwhDhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIODQ-00000008gHf-32OA;
	Tue, 03 Dec 2024 08:25:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIODN-00000008gGl-1j1K
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 08:25:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIODJ-0000ER-Nf
	for barebox@lists.infradead.org; Tue, 03 Dec 2024 09:24:57 +0100
Message-ID: <0b5f4524-975d-427f-b527-6fc543391edb@pengutronix.de>
Date: Tue, 3 Dec 2024 09:24:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
 <20241202124404.1814203-2-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202124404.1814203-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_002501_457641_AE428F41 
X-CRM114-Status: GOOD (  18.98  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] kbuild: images: don't check for missing FW if file
 didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.12.24 13:44, Ahmad Fatoum wrote:
> The information about the missing firmware is contained in an ELF
> section and the ELF file is dependency to the $(obj)/%.pblb: $(obj)/%.pbl
> rule.
> 
> We can thus don't need to rerun the missing firmware check if the
> input file hasn't been changed since the last time.

Please dismiss this series. I will send a v2.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  images/Makefile      | 3 +--
>  scripts/Makefile.lib | 6 ++++++
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index 80ea582728a5..f781ecb59ccb 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -76,8 +76,7 @@ $(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FOR
>  
>  $(obj)/%.pblb: $(obj)/%.pbl FORCE
>  	$(call if_changed,objcopy_bin,$(*F))
> -	$(Q)$(OBJCOPY) -O binary --only-section=.missing_fw $< $@.missing-firmware
> -	$(Q)[ -s $@.missing-firmware ] || rm -f $@.missing-firmware
> +	$(call if_changed,check_missing_fw,$@,$<)
>  	$(call if_changed,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  
>  #
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index b698161f43f6..e2d0168550f8 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -533,6 +533,12 @@ quiet_cmd_check_file_size = CHKFILESIZE $2
>  		exit 1 ;						\
>  	fi
>  
> +# Check for missing firmware
> +quiet_cmd_check_missing_fw = # no message as we collect info for later
> +      cmd_check_missing_fw = set -e;						    \
> +	$(OBJCOPY) -O binary --only-section=.missing_fw	$3 $2.missing-firmware;	    \
> +	[ -s $2.missing-firmware ] || rm -f $2.missing-firmware
> +
>  quiet_cmd_imximage__S_dcd= DCD_S   $@
>  cmd_imximage_S_dcd=						\
>  (								\


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


