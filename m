Delivery-date: Thu, 16 Jan 2025 11:25:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYN4E-000Yss-38
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 11:25:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYN4F-0003AI-2y
	for lore@pengutronix.de; Thu, 16 Jan 2025 11:25:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkxlzZV1aAe5kUyiL6qOACXL02mwW/5HIF8UdGGxVEs=; b=WGjFCbQiiLn4GcPlu/Enl1doY8
	ii6fZ79JkXuhaMK7xO8623uESiRfV5sJej+tx6VRLihrHFMXECYqWZA0R8f6bPzTr6CnA5JTkAOyC
	vaTbOqs6W7fURabLVgNZRDkQdtCOgj4GA2jMY5GoZaB9yGIWJBFgGbevByL9U2PwGurLuNcmXqShP
	yFst/G2gUbD/Xy+tEG9/nHSAZ/C9iMHQTe60zJFrSLfbApPb10CYyybuNOYDP3Gb9vBFt4/79mlUa
	V5Mif5dcC7e19vL6yylyvsmoELDVPwjjqh3iUm1ZYv0TBQo/7BPVBIZZd6Wj3ejjouVU6XfbaW2gt
	j85can/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN3q-0000000EUYF-0tkA;
	Thu, 16 Jan 2025 10:25:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN3n-0000000EUWo-2D4d
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 10:25:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tYN3m-00036m-A0; Thu, 16 Jan 2025 11:25:10 +0100
Message-ID: <1fc30203-1803-4e34-adcc-9478240234e4@pengutronix.de>
Date: Thu, 16 Jan 2025 11:25:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250116093859.1676220-1-s.hauer@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250116093859.1676220-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_022511_574076_9038E782 
X-CRM114-Status: GOOD (  17.92  )
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
Subject: Re: [PATCH] ARM: i.MX: HAB: Allow for semicolons in HAB environment
 variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/16/25 10:38 AM, Sascha Hauer wrote:
> With CONFIG_HAB_CERTS_ENV=y, paths and PKCS#11 URIs to the HAB
> certificates are taken from environment variables (allowing for better
> integration with build systems). In this case these values are passed
> internally via compiler macros (-D) to the imx-image host tool. PKCS#11
> URIs usually contain semicolons. The semicolons didn't make it through
> to the imx-image configuration file due to wrong escapes. Fix this by
> expanding the environment variables using make rather than shell.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Bastian Krause <bst@pengutronix.de>

Thanks!

Regards,
Bastian

> ---
>   scripts/Makefile.lib | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f195ddb7e8..7dcd8c9892 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -579,7 +579,7 @@ cmd_imximage_S_dcd=						\
>   overwrite-hab-env = $(shell set -e; \
>         test -n "$(CONFIG_HAB_CERTS_ENV)"; \
>         test -n "$$$(1)"; \
> -      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
> +      echo -D$(1)=\''"${${1}}"'\')
>   
>   overwrite-fit-env = $(shell set -e; \
>         test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


