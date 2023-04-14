Delivery-date: Fri, 14 Apr 2023 09:32:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnDvD-0035jA-L3
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 09:32:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnDvD-0003ED-FL
	for lore@pengutronix.de; Fri, 14 Apr 2023 09:32:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tParLp9B6CdckbcmnG3VS4qx2pXl8xXyyGQOw6e07Ic=; b=4Klq54eHK2zu8tzRob+4Hc45Aw
	EAHBjEr82Nq9ARZUjJEFqqmP+1cFAvcV9CKUgV+3LX+X36Wo9xsAoDv2r0LDZGIgTryZC2tj/oMck
	6fFDOBE3a2ubAld17hLPOL+yVAUjLmItFL0Zm5iWX+1SG9ifOxh2SdgkzMoRNsGWi2kLWaeE34dU5
	QKRJfV5qvy4cbg+uCQGmdKTlsBgvIrIS/HVibHs4JKLUBZjWgjQi6pjn7q/97v552RGQ3tyeRVpqn
	JnE3NcuDtAP8e+AwnK3Dc1forRrf0qc6Gx0IhOJqZyHEjYNXgdbZCePjTWA0zMBJJSvul0PVY6uJS
	gmhwBPIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnDu6-008YHI-2m;
	Fri, 14 Apr 2023 07:31:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnDu3-008YGB-2b
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 07:31:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pnDu2-00030J-Gx; Fri, 14 Apr 2023 09:31:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pnDu2-0006vO-8p; Fri, 14 Apr 2023 09:31:26 +0200
Date: Fri, 14 Apr 2023 09:31:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de, mol@pengutronix.de
Message-ID: <20230414073126.GB13543@pengutronix.de>
References: <20230413094315.1432917-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230413094315.1432917-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_003127_910313_C2981E27 
X-CRM114-Status: GOOD (  23.18  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] kbuild: drop reliance on echo -e extension for DT
 fragments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 13, 2023 at 11:43:15AM +0200, Ahmad Fatoum wrote:
> We are using echo -e, so the \n in the string being echo'd are
> interpreted. As -e is not POSIX and dash doesn't provide it,
> we use a strange /usr/bin/env echo -e construct hoping that
> whatever non-builtin echo is first in the search path supports -e.
> 
> As the new lines are just used to separate CPP directives, we can
> just pass the directives as $(CPP) flags. This has the same result,
> but is portable and avoids NixOS complaining when building barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - drop comment around $(pound) use, which no longer applies
>   - reword commit message title and fix typo in body (Sascha)
>   - use cpp /dev/null instead of empty echo | cpp (Sascha)
> v1 -> v2:
>   - drop echo -e eltogether after Sascha pointed out why it needs
>     /usr/bin/env.
> ---
>  scripts/Makefile.lib | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 4deaa5dfa73c..51beff56aeb8 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -371,9 +371,8 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
>  
>  dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
> -# For compatibility between make 4.2 and 4.3
> -cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
> -	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
> +cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
> +	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
>  		-i $(srctree)/dts/src/$(SRCARCH) \
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


