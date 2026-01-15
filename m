Delivery-date: Thu, 15 Jan 2026 13:43:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMgn-001azR-36
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMgm-0006PN-V4
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lr9Rk20SY7MvfRDmph7U+jrRRhdzahBaTflmwHzUghc=; b=GLSBMdG2gXSmeVjYpOhpI+03+S
	GVa3LiBpT5xotcLELuQLhJu7FdPnREs37ehmdg09j9sIsvdCvgSXuBugIz8u+Ig3wL4bOZT4r4/M3
	+2kxWJMEmpbZWC2FpIgap/RlEEplL/ivbe6xnWDttfEg6TFuimQYWdKZ4LRKwJEVEFxUEMnKgy4dD
	xdGwi/za6sGAA95XOivepU+6GU/lWeV6BH8nLqV6YSLuZforAELCvAqkatQS6J4KfTH+tD2DO1h6k
	PIVVLCTmJpwFiOF6Q34HJwTMQcZatGs2gj9FI2xd3KQBDAAEXfIrXWa9vTY6kEzaufP5XBukQu1mh
	f6sLZCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMgM-0000000CLkz-0U4A;
	Thu, 15 Jan 2026 12:42:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMgJ-0000000CLkV-2T6f
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:42:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgMgI-0006IN-1d; Thu, 15 Jan 2026 13:42:30 +0100
Message-ID: <d57d3d3a-8766-4ba3-b6bb-73c5ed42939c@pengutronix.de>
Date: Thu, 15 Jan 2026 13:42:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-12-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-12-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_044231_628799_D99311D9 
X-CRM114-Status: GOOD (  18.16  )
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
Subject: Re: [PATCH v4 12/22] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/14/26 1:14 PM, Sascha Hauer wrote:
> Some architectures want to link the barebox proper ELF image into the
> PBL. Allow that and provide a Kconfig option to select the ELF image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Makefile    | 4 ++++
>  pbl/Kconfig | 9 +++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 2350592cdef6cb0cab0a85a481fbf17e24d6483f..25b548712c777ffb3ceeb375b109661312485bee 100644
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
>  
>  barebox-flash-images: $(KBUILD_IMAGE)
>  	@echo $^ > $@
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



