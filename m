Delivery-date: Mon, 05 Aug 2024 12:24:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sautQ-006SYg-0Y
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:24:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sautP-0000Yh-Ic
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:24:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FmvtOqebcNHcPKeMgWDglY0Eo+pGznGzLuwWtvHQS+I=; b=WCirwqYBpBfySYTYwTB51Bhrvq
	yPXsIpNAclkX+2K8Rw/lZqykEQ0iweVkPwRQsTQ6IP9qMQDbKp12gxK6y1K/u6Bz6G45kqiY34Lol
	f7pRSjTNXuH3R+YtgPo6vBG00DNHWKvxyHsIQKTXxhNcR/Xmxyuwwz8kwPM20kbey53/JS0Rwc47J
	peM9jmyYJqtDwopTMInz4VLMtWjoX7cJPT/fWneRsd5pMiiRoP10YgS4ocfgbEsjZAyNlchuXNNHY
	TqnNSS+oG4w0GIYu9Nqng13t3kVKEwTCqpBMfQXxSdwC9/rxGMszpZXQtefJIjL60vhJqvMVvDSxo
	Nxza0XtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sausz-0000000FUSP-2Xdv;
	Mon, 05 Aug 2024 10:24:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauoo-0000000FSpO-3ZFS
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:20:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauon-00087N-LQ; Mon, 05 Aug 2024 12:19:57 +0200
Message-ID: <4dcac39a-91e3-435b-b11e-93d8bbb600f3@pengutronix.de>
Date: Mon, 5 Aug 2024 12:19:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-19-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-19-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_031958_921399_C4EF5987 
X-CRM114-Status: GOOD (  19.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 18/19] crypto: make RSA a visible option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> With upcoming ECDSA support RSA won't be the only option for FIT image
> verification anymore. Make CONFIG_CRYPTO_RSA visible so that the user
> can choose. CONFIG_CRYPTO_RSA defaults to yes when FITIMAGE_SIGNATURE
> is selected so that existing configs continue to work.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/Kconfig     | 1 -
>  common/image-fit.c | 5 +++++
>  crypto/Kconfig     | 3 ++-
>  3 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 31360892ae..65850f68bd 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -59,7 +59,6 @@ config FITIMAGE
>  	select DIGEST
>  
>  config FITIMAGE_SIGNATURE
> -	select CRYPTO_RSA
>  	bool
>  
>  config LOGBUF
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 4a69049abc..6002440e7e 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -262,6 +262,11 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
>  	const char *sig_value;
>  	int ret;
>  
> +	if (!IS_ENABLED(CONFIG_CRYPTO_RSA)) {
> +		pr_err("RSA support is disabled, Cannot verify image\n");
> +		return -EOPNOTSUPP;
> +	}
> +
>  	sig_value = of_get_property(sig_node, "value", &sig_len);
>  	if (!sig_value) {
>  		pr_err("signature value not found in %pOF\n", sig_node);
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index eeacd9ffb7..22faff5100 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -116,7 +116,8 @@ config CRYPTO_PBKDF2
>  	bool
>  
>  config CRYPTO_RSA
> -	bool
> +	bool "RSA support"
> +	default y if FITIMAGE_SIGNATURE
>  
>  config CRYPTO_RSA_BUILTIN_KEYS
>  	bool

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



