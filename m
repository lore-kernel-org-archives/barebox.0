Delivery-date: Tue, 02 May 2023 17:38:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pts52-002PQ5-QN
	for lore@lore.pengutronix.de; Tue, 02 May 2023 17:38:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pts50-0004qO-PC
	for lore@pengutronix.de; Tue, 02 May 2023 17:38:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ly1E7+PKmNeLFIqZA2ame+r5LIr944b5Xz6ygqP7Lgw=; b=c65/mpEV+n7SfVicGros0cW6SQ
	7rlUisxhBAiSezmwk6zx1CKcI6fMiIcXQGkxlKk0Hxu5IVmsPfRe1Q53tP9nxgu+/FOpLRdxaG8Lz
	2a2mhrxRUQVph24o4c2BMMrNtnUGSUUKsYUhxBfMCf4eYfUxt8wK9aJMSEvlMglS7jadHa9Hxj/Md
	xE53QgxRXkI1VsO4YK8QbD8X9ajgVvfOvU6Yuww197AU4tkCK5fU5G1/EO3LkLt0eisoggN3ZYebE
	fbyanOdeyqJ3/CRtfE0JrzTUNsJgAXsvR4ltkvM4nYeDlvzaFnW9cX1+/g+sdkGbjFEC1odtBuUgV
	RjalqZ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pts37-001yRh-1R;
	Tue, 02 May 2023 15:36:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pts35-001yR0-02
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 15:36:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pts33-0004lR-Ix; Tue, 02 May 2023 17:36:13 +0200
Message-ID: <4be579f6-d907-d817-1e69-d3a9d6e1bcca@pengutronix.de>
Date: Tue, 2 May 2023 17:36:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230502123000.2186637-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230502123000.2186637-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_083615_045658_DC5B9D29 
X-CRM114-Status: GOOD (  16.10  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: NXP i.MX8MN EVK: Drop unnecessary IMD_USED_OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.05.23 14:30, Sascha Hauer wrote:
> IMD tags are now automatically referenced when the DT itself is
> referenced. IMD_USED_OF is no longer needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> index 398dfb33ae..23504ee965 100644
> --- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> @@ -155,8 +155,5 @@ ENTRY_FUNCTION(start_nxp_imx8mn_evk, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  
> -	IMD_USED_OF(imx8mn_evk);
> -	IMD_USED_OF(imx8mn_ddr4_evk);
> -
>  	nxp_imx8mn_evk_start();
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



