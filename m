Delivery-date: Fri, 27 Sep 2024 09:11:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su58o-003JPD-0W
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 09:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su58o-000515-KH
	for lore@pengutronix.de; Fri, 27 Sep 2024 09:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3Esq2yzDJ6vSra1BsX696XHLJbzwapFApVrhpmQCak=; b=eHGroijlEwKXiZjwBAJ0bDclXD
	bQULxiJJhWciX6yqxs/OSJ77mcxJqtOFqpkGdfTlNlI4Rf7RmyHFMpg3uwmjvKib2+Qz+95wJZ1El
	n6aZgAnoXyVR2tNUw3K71Ic4zpmd0u11MzoFJB803cpAHCHZ/vtyOCysgyQH7tTGlJJB77Q3egLkX
	lVL60ViPUUJ1qMj8nyfPcPO0JKJxXRg5Fy4EiV74IbNDL4SaeTOcCdl7ppotFJdDOWCOHRCN7u1cm
	tutdlrCZDOv0+xL7BzBij5IidA9X1dCHhMqVMqPCtxHkfiUUO7VDPyadIpsr1Jp3uUfCoeUkZeKWQ
	yAHwXrKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su58L-0000000AJEj-1qS4;
	Fri, 27 Sep 2024 07:11:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su50v-0000000AHvq-2kxh
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 07:03:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su50u-0001Y1-8E; Fri, 27 Sep 2024 09:03:40 +0200
Message-ID: <92383eb2-e7b0-4211-b10c-4a6cdb515a6f@pengutronix.de>
Date: Fri, 27 Sep 2024 09:03:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-7-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_000341_729279_D4F4DB3C 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: Re: [PATCH v4 06/16] crypto/Makefile: Drop unnecessary dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> Having rsa-keys.h depend on the input key files is unnecessary. They
> were introduced to avoid unnecessary rebuilds when the files didn't
> change. This is unnecessary because the public_keys cmd won't produce
> output when it wouldn't change the existing file.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  crypto/Makefile | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index d7a06a721d..5a484355f3 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -29,10 +29,6 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
>  
>  CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
>  
> -ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
> -RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
> -endif
> -
> -$(obj)/rsa-keys.h: $(RSA_DEP) FORCE
> +$(obj)/rsa-keys.h: FORCE
>  	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
>  endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


