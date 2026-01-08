Delivery-date: Thu, 08 Jan 2026 17:26:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsq0-002gPW-2w
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:26:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsq0-0005Hu-CR
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:26:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wfPFxXaE+iiFwExJWjujeND65T9YLwNPWaAK1o5r7nw=; b=GWoqoFD98QK7PoSbqe5KHYU8PB
	sJZZQpdiHPnGuI/WIhyZNt5fXqh+xRIp3OqIHqA/OPU1HrTtKgA8JFGpD2eF75TjwAXbEsVlLzmSV
	uvwg0B0LXztaoSGv2g50Tl5Bs0VVLr/jiI3zne4u2onhFWVet6CkPLVbub4QYIXU0f5ENAon/p4pc
	mijfhNt7G6jReDaD1W6d8Ar2uhSqoFc9gzf2nGawRPKp1kgF7sZQMahOP8NQSFIvi6Fskbi+VQWRB
	EXveG35qbM8NZvV/FEPCgNSgREehVfvcInHSnoIh6piNUfXQ79/hpUHf/igeRZVqhj3znkjKWe4FK
	EYPEO13g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdspJ-000000007fv-3IRc;
	Thu, 08 Jan 2026 16:25:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdspF-000000007eZ-2wPV
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:25:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdspD-00058D-Tj; Thu, 08 Jan 2026 17:25:28 +0100
Message-ID: <a2e7ee66-49b1-4de9-b687-6694a778ac10@pengutronix.de>
Date: Thu, 8 Jan 2026 17:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-1-e28c931fc179@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-1-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_082531_136939_30E37E97 
X-CRM114-Status: GOOD (  15.11  )
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
Subject: Re: [PATCH v3 01/23] Makefile.compiler: add objcopy-option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/8/26 4:49 PM, Sascha Hauer wrote:
> Similar to other *-option macros this one is for testing if objcopy
> flags are supported.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/Makefile.compiler | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
> index 1d34239b3bbaf49dede33f67d69ebeb511b5dc28..f2fdddd07bbef9ea90da219602086b5be591a75d 100644
> --- a/scripts/Makefile.compiler
> +++ b/scripts/Makefile.compiler
> @@ -69,6 +69,11 @@ cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
>  ld-option = $(call try-run,\
>  	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
>  
> +# objcopy-option
> +# Usage: KBUILD_LDFLAGS += $(call objcopy-option,--strip-section-headers,--strip-all)
> +objcopy-option = $(call try-run,\
> +        $(CC) -x c /dev/null -c -o "$$TMPO"; $(OBJCOPY) $(1) "$$TMPO" "$$TMP",$(1),$(2))
> +
>  # Prefix -I with $(srctree) if it is not an absolute path.
>  # skip if -I has no parameter
>  addtree = $(if $(patsubst -I%,%,$(1)), \
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



