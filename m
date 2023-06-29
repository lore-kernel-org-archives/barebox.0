Delivery-date: Thu, 29 Jun 2023 11:09:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEneK-008EYq-JN
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 11:09:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEneI-00020I-5W
	for lore@pengutronix.de; Thu, 29 Jun 2023 11:09:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g1VQTMqOMpNbsL427M0lrIntgRdM7tH+C3jOAsTKBWo=; b=3dSubR14/nJm2kAs9hPbwjld2i
	eUGEgmBbZ52x8L0OYtJXlIi3NOKJEQ2m5q5WKW5VhCGnnbw7MUe6JfMFlLPfQDyPdUXB7Bb1jP+Gf
	eR17672HUV0JTYfNzOSJ0sxorgoFQdY+RWZ+rae6cSqqoziVlxxCV4pMfCq2Q/GKj76zid8DC6g9W
	qL3VKo9crWWZmWHPyYxGxPAk1l29sYMdBDD5AYqwUutUXBP27lk06XsxMeQlKwbTlVZdVoRtIICID
	R0cWqtMKjmoagCbmVnGrNTQ/trbhPf8ROIda9bzRuj937u3J3cxGJChnlbi6BTkVtp1ZRX7IodfCp
	VhlwtNAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEnd6-000VZT-0D;
	Thu, 29 Jun 2023 09:07:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEnd2-000VYo-1l
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 09:07:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qEnd0-0001vR-Jy; Thu, 29 Jun 2023 11:07:50 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qEnd0-0003nY-Cn; Thu, 29 Jun 2023 11:07:50 +0200
Date: Thu, 29 Jun 2023 11:07:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20230629090750.q2r5ler7ponpwchw@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
 <20230626153335.3592017-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626153335.3592017-3-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_020752_599993_8869E46D 
X-CRM114-Status: GOOD (  17.47  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v1 2/6] firmware: turn missing firmware into
 linker error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-26, Ahmad Fatoum wrote:
> Appending to firmware-y results in an assembly file being generated that
> defines a section embedding the firmware in question verbatim via .incbin.
> To update the assembly file as required, the target has a dependency on
> the firmware. When the firmware is missing, the build will abort there.
> 
> In preparation for deferring missing PBL firmware errors till the very
> end, let's remove the firmware dependency if the missing firmware file
> is built into PBL and replace the .incbin with a reference to an ultimately
> undefined variable.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  firmware/Makefile | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 8050d0418d33..c66d19c677e8 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -41,6 +41,7 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
>  
>  FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
>  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> +FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
>  
>  filechk_fwbin = { \
>  	echo "/* Generated by $(src)/Makefile */"		;\
> @@ -50,7 +51,11 @@ filechk_fwbin = { \
>  	echo "    .p2align $(ASM_LGPTR)"			;\
>  	echo ".global _fw_$(FWSTR)_start"			;\
>  	echo "_fw_$(FWSTR)_start:"				;\
> +	echo "\#if $(FWNAME_EXISTS)"				;\
>  	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
> +	echo "\#else"						;\
> +	echo "ASM_PTR _fwname_$(FWSTR)"				;\
> +	echo "\#endif"						;\
>  	echo ".global _fw_$(FWSTR)_end"				;\
>  	echo "_fw_$(FWSTR)_end:"				;\
>  }
> @@ -88,7 +93,7 @@ clean-files += *.sha.bin *.sum
>  $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
>  
>  # The same for pbl:
> -$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
> +$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(wildcard $(fwdir)/%)
>  $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
>  
>  pbl-y := $(addsuffix .extgen.o, $(fw-external-y))
> -- 
> 2.39.2
> 
> 
> 


