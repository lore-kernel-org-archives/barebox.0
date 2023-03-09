Delivery-date: Thu, 09 Mar 2023 14:26:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGHR-00EtYG-2T
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 14:26:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGHQ-0006eJ-VR
	for lore@pengutronix.de; Thu, 09 Mar 2023 14:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zVL34Pa//pkWvcfHtFgfYO+vPgbWoASeaagQzI+bLUI=; b=y5hzkZ6I/1XhwOAxsWz9NacHnq
	q55RhSPhSVaBIq7UVA0etPVFBsh5nHkxxSgTLacwWSTTgusBydXowe2loW63VG2macJhtX+HWhreN
	4C6T/wY5EWum0e6z0mdz8/2zpd3hKhamkGlls/jyiJVIErnlM4k3TrUUTKAA0z256R/usa7rQcSFk
	U1ToXZs7u1MI1K8NPOfx3sMUpnY1WXkiJ4kWYWlMGVZAsfshp1Wo1Al6mh7VRhOvZT1bwHJ98MIR2
	KNWF6sVSJSlRADVTsV+EJiBkbnM/8sgOzoxbAe+dc3aj1ArWsSa3iEJ/7gDuGgYTvm0EPOJs0tT3H
	BbONmZVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGGF-00A560-F8; Thu, 09 Mar 2023 13:24:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGG6-00A53o-GE
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 13:24:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paGG4-0006Cy-St; Thu, 09 Mar 2023 14:24:36 +0100
Message-ID: <dea9d06a-3bd2-dbb5-c740-53f2a0b63d1d@pengutronix.de>
Date: Thu, 9 Mar 2023 14:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230309115208.973893-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_052438_572301_615767D0 
X-CRM114-Status: GOOD (  21.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/7] kbuild: Add target to build dtb overlay files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.03.23 12:52, Sascha Hauer wrote:
> Device tree overlay files have the suffix dtso in source format
> and dtbo in binary format. Add the necessary targets to build dtbo
> files from dtso files and also dtbo.o files to include into the
> barebox binary.
> The overlay files shouldn't include the device tree snippets from
> CONFIG_EXTERNAL_DTS_FRAGMENTS which makes it necessary to specify
> these fragments as an argument to cmd_dtc.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/Makefile.build |  4 ++++
>  scripts/Makefile.lib   | 11 ++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 216f03677b..33480a81b4 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -258,12 +258,16 @@ intermediate_targets = $(foreach sfx, $(2), \
>  					$(filter %$(strip $(1)), $(targets))))
>  # %.asn1.o <- %.asn1.[ch] <- %.asn1
>  # %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
> +# %.dtbo.o <- %.dtbo.S <- %.dtbo <- %.dtso
>  # %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
> +# %.dtbo.pbl.o <- %.dtbo.S <- %.dtbo <- %.dtso (Barebox only)
>  # %.lex.o <- %.lex.c <- %.l
>  # %.tab.o <- %.tab.[ch] <- %.y
>  targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
>  	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
> +	   $(call intermediate_targets, .dtbo.o, .dtbo.S .dtbo.z .dtbo) \
>  	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
> +	   $(call intermediate_targets, .dtbo.pbl.o, .dtbo.S .dtbo.z .dtbo) \

I see now reason to allow building an overlay for PBL. Should we drop this?

>  	   $(call intermediate_targets, .lex.o, .lex.c) \
>  	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
>  
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 6e0d92cf75..6af2fe07b2 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -361,13 +361,19 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
>  $(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
>  	$(call if_changed,dt_S_dtb)
>  
> +$(obj)/%.dtbo.S: $(obj)/%.dtbo $(obj)/%.dtbo.z $(srctree)/scripts/gen-dtb-s FORCE
> +	$(call if_changed,dt_S_dtb)
> +
>  $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
>  	$(call if_changed,$(suffix_y))
>  
> +$(obj)/%.dtbo.z: $(obj)/%.dtbo FORCE
> +	$(call if_changed,$(suffix_y))

Can we drop this and change scripts/gen-dtb-s to skip creating the compressed DTB
if we have a *.dtbo? While at, we should rename the symbol to __dtbo_. Otherwise,
we can have name clashes.

>  dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
>  # For compatibility between make 4.2 and 4.3
> -cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
> +cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
>  	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> @@ -376,6 +382,9 @@ cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(fore
>  	cat $(depfile).pre $(depfile).dtc > $(depfile)
>  
>  $(obj)/%.dtb: $(src)/%.dts FORCE
> +	$(call if_changed_dep,dtc,$(dts-frags))
> +
> +$(obj)/%.dtbo: $(src)/%.dtso $(DTC) FORCE
>  	$(call if_changed_dep,dtc)
>  
>  dtc-tmp = $(subst $(comma),_,$(dot-target).dts)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



