Delivery-date: Tue, 05 Dec 2023 09:03:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQOl-003vVA-2N
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:03:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQOl-00034Z-NH
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:03:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X9xOtlDQwnlSOO6HNVuncuI8eGWaVZUH59o/qSB0VG0=; b=I8OLd8iW4nfbBgIKmRiPXStzwj
	ip0R7zlQ+zdiLD2zWfbxsdf+E8jFp/LDK+bL2LPg/62oJefgkmlq3ka66OZLsJu5oJZo0mrBD7dF8
	W8X8t7XIt+J5LGY7Y7SW+c6LOhXtu7Oc7oQqaNZNPeUs1Xl3P5qrSJfkfMJpR6dJNY802xe5decbh
	arMzaOqx6i4tnITRwV/DxoxhuyBDwyV8FOJckiEHvm2xn4KESbUXlq2pCoYDrHV25cZ8Pc4WCxLfV
	wV+FEVoVAehvdkDD/UHt7xNKm3apOB8rHR1Ukw74//vE47KXPZnHLifFUmas+8rg5vgCwo6Dv756t
	gcPEeFdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQNa-006Zlq-1x;
	Tue, 05 Dec 2023 08:02:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQNU-006ZlS-1I
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:02:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQNT-0002m7-0X; Tue, 05 Dec 2023 09:01:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQNS-00Dh4j-Ka; Tue, 05 Dec 2023 09:01:58 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQNS-005Lsl-HM; Tue, 05 Dec 2023 09:01:58 +0100
Date: Tue, 5 Dec 2023 09:01:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205080158.GO1057032@pengutronix.de>
References: <20231130070320.3295372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231130070320.3295372-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_000200_440481_7A67875B 
X-CRM114-Status: GOOD (  20.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: don't mix overlay and normal DTC and CPP
 flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 30, 2023 at 08:03:19AM +0100, Ahmad Fatoum wrote:
> We currently conflate flags for *.dtb and *.dtbo targets:
> 
>   - -@ doesn't make sense for overlays, but is used there anyway when
>     CONFIG_OF_OVERLAY_LIVE
> 
>   - DTC_CPP_FLAGS_basetarget.dtbo and DTC_CPP_FLAGS_basetarget.dtb are
>     interchangeable
> 
> Fix this by allowing flags to be specific to either *.dtb or *.dtbo
> generation.
> 
> Fixes: 3610ec11f72b ("kbuild: Add target to build dtb overlay files")
> Fixes: 5b3d7e66aac0 ("kbuild: support DTC_CPP_FLAGS_file.dtbo")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/Makefile.lib | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 18b4fc1b9dd2..8aa49b1ee1b0 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -220,8 +220,7 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
>  		 -I$(srctree)/include                                    \
>  		 -I$(srctree)/dts/include                                \
>  		 -I$(srctree)/dts/src/                                   \
> -		 $(DTC_CPP_FLAGS_$(basetarget).dtb)                      \
> -		 $(DTC_CPP_FLAGS_$(basetarget).dtbo)                     \
> +		 $(DTC_CPP_FLAGS_$(basetarget)$(suffix $@))              \
>  		 -undef -D__DTS__
>  
>  ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> @@ -369,7 +368,7 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
>  	 -Wno-interrupt_provider
>  
>  ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
> -DTC_FLAGS += -@
> +DTC_FLAGS.dtb += -@
>  endif
>  
>  # Generate an assembly file to wrap the output of the device tree compiler
> @@ -391,7 +390,7 @@ quiet_cmd_dtc = DTC     $@
>  cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
>  	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
> -		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> +		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) $(DTC_FLAGS$(suffix $@)) \
>  		-i $(srctree)/dts/src/$(SRCARCH) \
>  		-i $(srctree)/dts/src/arm/ti/omap \
>  		-d $(depfile).dtc $(dtc-tmp) ; \
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


