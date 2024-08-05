Delivery-date: Mon, 05 Aug 2024 11:29:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau2C-006Re8-1Y
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau2A-0000oP-TV
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XLVau5NrpeMcDZEifmG6oG3vtRBDecYEzZcI7vblo4w=; b=RZJ2EFu1S+efa3uvMQ4zLgWAaY
	HhvV2pEpI/qRxwhfiYixyBhCxnyafUVsKPUYYL/VyZBxOP8AYAf+TS0LauS2/Ob1KV5+F1lfA9eqw
	eZPsLlCFU5H6fUAAo96zzYQk9MJC5XotgHZCJVOz1zVg8LGkOsZgIkNeZ7YMKTJfDoPdzikVGM56E
	WIjSXbVEWNi2W8H9M2qYNlq/b1fOmz3LkaJw1ug3JkiEV4CxBSI7V/A9zAiYnXSQHwoCIG3VryAvj
	x9AQNcwHVQBIlfaGehzLdp/Oj/1q+4KjuqaVFAxFu3N/h0S96aXUQL6GmnZ/ktXVxGeIGuPaJ2mDU
	k8F94Jzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau1k-0000000FHw0-25WH;
	Mon, 05 Aug 2024 09:29:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau1g-0000000FHv6-3SBF
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:29:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sau1f-0000gf-JA; Mon, 05 Aug 2024 11:29:11 +0200
Message-ID: <4bff069f-f277-4843-b7c1-01e672d0e33d@pengutronix.de>
Date: Mon, 5 Aug 2024 11:29:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-3-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_022912_894209_7E2094EE 
X-CRM114-Status: GOOD (  17.80  )
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
Subject: Re: [PATCH v2 02/19] rsatoc: disable deprecated function warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> In rsatoc we use several deprecated functions. We can get rid of some
> of them in the next few patches, but we will still need the ENGINE
> functions as the provider API is not yet widespread across
> distributions. Disable the deprecated function warnings for now.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index d5943d4a11..ed167bf247 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -5,6 +5,7 @@
>   * This tool converts an RSA key given as file or PKCS#11
>   * URI to a C struct suitable to compile with barebox.
>   */
> +#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
>  #include <stdio.h>
>  #include <string.h>
>  #include <time.h>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



