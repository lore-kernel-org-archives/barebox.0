Delivery-date: Tue, 16 Jan 2024 15:45:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPkhP-0022pa-0h
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 15:45:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPkhP-0006iI-QW
	for lore@pengutronix.de; Tue, 16 Jan 2024 15:45:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2m5N/NWrzPP9spp6Hc4mXyjL100laAEZv9g9Al5cbio=; b=LCAWao4olCpWO3e8vp5LfwuvhA
	hWOeC9Z0kCRp5pQNg41w+jTM1ELgmQNDSqATMCdVnY/6tiUtWvRY3/BjB0d7hDlx0XpqZft99IwyT
	PlFkKhlPFfBvg4DNGPlEWagAsW1aH57bzNffFbbWZ99TKj2Xo77GOQPwdARudSFWNEuaj0wGlq1W9
	FFgeOMO2lX+CCt1eZ6iA3y/srHHiwiyJZ5SkTsxPT0LRS/99AnpHDpWEs+TWw88tKM5LcyptmASUJ
	8OatVWu/ps+cfGRpvbRfBldE1c6RFXinR/Yh/5Gr1P884jbqYU6cguT+5zVd2MGZFRBZfsbGoBn0I
	inVYqprQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkfw-00CJdH-1L;
	Tue, 16 Jan 2024 14:44:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkfs-00CJcd-1C
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 14:44:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rPkfp-0006bG-3u; Tue, 16 Jan 2024 15:44:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rPkfo-000GRj-Nr; Tue, 16 Jan 2024 15:44:16 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rPkfo-000EXJ-LT; Tue, 16 Jan 2024 15:44:16 +0100
Date: Tue, 16 Jan 2024 15:44:16 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240116144416.GD4700@pengutronix.de>
References: <20240110145908.3965855-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110145908.3965855-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_064420_414560_05DA7636 
X-CRM114-Status: GOOD (  25.57  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix missing firmware handling for external
 firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On Wed, Jan 10, 2024 at 03:59:08PM +0100, Marco Felsch wrote:
> Currently we depend on the external firmware file since we need it for
> the sha256sum. But this dependency break the 'optional missing firmware'
> feature.
> 
> Fix this by dropping the firmware file prerequisite and instead evaluate
> the FWNAME_EXISTS variable. If the firmware file does not exist a dummy
> file is created and the build continues till the linking process (like
> we do for the other firmware).
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  firmware/Makefile    | 6 +++---
>  images/Makefile      | 2 +-
>  scripts/Makefile.lib | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 51d98d54bf14..a07b31caec73 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -41,7 +41,7 @@ fwobjdir := $(objtree)/firmware
>  pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
>  obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
>  
> -FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
> +FWNAME    = $(patsubst $(obj)/%.sum,%,$(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@)))

The purpose of this change is not clear to me. You replace the pattern
%.sum with %, but I don't see how this ever matches.

Dropping this change has no visible effect for me.

>  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
>  FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
>  
> @@ -91,8 +91,8 @@ $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
>  $(obj)/%.sha.bin: $(obj)/%.sum FORCE
>  	$(call if_changed,sha256bin)
>  
> -$(obj)/%.sum: $(obj)/% FORCE
> -	$(call if_changed,sha256sum)
> +$(obj)/%.sum: FORCE
> +	$(if $(findstring 1,$(FWNAME_EXISTS)), $(call if_changed,sha256sum,$(obj)/$*), @touch $@)
                                                                             ^^^

$(obj) should be $(fwdir) as this is the directory where the firmware
files are.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


