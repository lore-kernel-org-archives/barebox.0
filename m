Delivery-date: Mon, 27 Apr 2026 18:35:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHOvu-00H0oh-1O
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 18:35:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHOvt-0001BD-Q7
	for lore@pengutronix.de; Mon, 27 Apr 2026 18:35:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZaydCdcSTifZDY3GHnILHhzaElKrQ5YUnl3QrhkQML4=; b=Qc6EPSUUQIMm7x84CQh9zMxkKp
	XF8qiL9Kskg2J+zNxSxTBrTEWsh0fpSzIZCZV017Jp4xe7D4X+Jh+tGQgQ5lIx1sH8G5Laz2O27uV
	mFhDC1YY/nLFguoA5pzlTq2cCD7EwTj292C5uf4l2FUuMkYj8AN8xkSJwPAcNqMwzuR53BEFgbhUZ
	JQdPBQCWm8noO0s9pMucMaN1xWQRSfpfaq1QAG8KA7HmbF+hJyYgG2sIe7r+GJFOP0ANiTJw97Y7z
	A5QzXvWbsH3+qPosNs4SJo1JyHV/nrYiSe6xt6hOJW87whgIyuqMJMZCUgDzWD4gLWztd0X/B2SQF
	0NUTp0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOvU-0000000HNKC-3eiI;
	Mon, 27 Apr 2026 16:35:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOvS-0000000HNJn-1egV
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 16:35:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wHOvP-00012e-Db; Mon, 27 Apr 2026 18:35:11 +0200
Message-ID: <1e26a9d8-ef1d-4f72-a489-9e39d0894136@pengutronix.de>
Date: Mon, 27 Apr 2026 18:35:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260427-v2026-04-0-topic-csf_fixup-v1-1-a7178ecb1b6e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260427-v2026-04-0-topic-csf_fixup-v1-1-a7178ecb1b6e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_093514_444172_EF26BF64 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: i.mx: fix error in field return configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/27/26 6:22 PM, Fabian Pflug wrote:
> In the previous version, the newly declared variable had the same name
> as the HAB-env variable, resulting in precedence for the HAB-env
> variable, resulting in included quotes, when substituting
> CONFIG_HABV4_CSF_UNLOCK_UID with the value from defconfig.
> 
> The csf tool in turn can't handle the string and replaces it with a
> single byte 0x60, which leads to non-bootable images.
> 
> Previous:
> hab UID = "0x00, 0x11, 0x22, ..., 0xAA"
> 
> Now:
> hab UID = 0x00, 0x11, 0x22, ..., 0xAA
> 
> The variables have to be different and removing the CONFIG_ at the
> beginning fulfills this, even though it now looks a bit confusing.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/mach/imx/habv4-imx6-gencsf-template.h | 2 +-
>  include/mach/imx/habv4-imx8-gencsf.h          | 2 +-
>  scripts/Makefile.lib                          | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
> index a793496d49..c24bf84b85 100644
> --- a/include/mach/imx/habv4-imx6-gencsf-template.h
> +++ b/include/mach/imx/habv4-imx6-gencsf-template.h
> @@ -43,7 +43,7 @@ hab Features = SETUP_HABV4_FEATURES
>  hab [Unlock]
>  hab Engine = OCOTP
>  hab Features = FIELD RETURN
> -hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
> +hab UID = HABV4_CSF_UNLOCK_UID
>  #endif
>  
>  hab [Install Key]
> diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
> index d3fe3e34c6..480f88fa95 100644
> --- a/include/mach/imx/habv4-imx8-gencsf.h
> +++ b/include/mach/imx/habv4-imx8-gencsf.h
> @@ -46,7 +46,7 @@ hab Features = SRK REVOKE
>  hab [Unlock]
>  hab Engine = OCOTP
>  hab Features = FIELD RETURN
> -hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
> +hab UID = HABV4_CSF_UNLOCK_UID
>  #endif
>  
>  hab [Install Key]
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 0dbaa071cf..6708802477 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -592,7 +592,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
>        $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
>        $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
>        $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
> -      -DCONFIG_HABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
> +      -DHABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
>        $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
>  
>  dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
> 
> ---
> base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
> change-id: 20260427-v2026-04-0-topic-csf_fixup-b995b5636ed7
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



