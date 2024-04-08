Delivery-date: Mon, 08 Apr 2024 10:22:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtkGl-002NQJ-0i
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 10:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtkGi-00066i-DH
	for lore@pengutronix.de; Mon, 08 Apr 2024 10:22:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R0buzF0tvOb0JmGhB/LBsW+bs2lGXTDERJtwOpiYU0U=; b=WWmsd7x9aD7KTmqG0UfqoCR//U
	reL68XBWIg0DkNGGYRbDpdSyswXcyT0EduZF6uc8etam+0uySOIExCHSGn3Glo49SefQNwaVpvB5j
	VGoL0t4jaFkwWMjrZoMJYYQRgD3UkByq97iXzxWusoS80IzP77U1Wrun8vYw/yNlQWgmIfXeqrWB3
	psJikMDEG/ulnh967O2ChX5BwTgH1B6JBBx9UcHnpXmD/nGtsrbchtx2nN/4li0VkTO/NtF6SK864
	ZeVs9NcpSHxvDlQvDLPvp+pdKBA6+lR+OIAF9pNZuzgixS2dZ/DWRAwUrUni9K7VEhBmv9wIXcB3H
	DODwvStA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkGA-0000000EsEq-0Awb;
	Mon, 08 Apr 2024 08:21:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkG6-0000000EsDn-0X61
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 08:21:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rtkG2-0005tg-Sf; Mon, 08 Apr 2024 10:21:38 +0200
Message-ID: <d1d4cb86-58a3-4ea1-8389-17e90d4058c0@pengutronix.de>
Date: Mon, 8 Apr 2024 10:21:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20240408073612.4075622-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240408073612.4075622-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_012142_192407_FE5F24F4 
X-CRM114-Status: GOOD (  16.90  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] bootm: don't allow bootm_set_verify_mode if
 BOOTM_FORCE_SIGNED_IMAGES is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 08.04.24 09:36, Marco Felsch wrote:
> The only allowed value for bootm_verify_mode is BOOTM_VERIFY_SIGNATURE
> if CONFIG_BOOTM_FORCE_SIGNED_IMAGES is enabled. This is set via the
> bootm_init() initcall. All further attempts to modify this variable
> should be prevented.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/bootm.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index a59fa35008a9..e6703b19b3ba 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -75,6 +75,11 @@ enum bootm_verify bootm_get_verify_mode(void)
>  
>  void bootm_set_verify_mode(enum bootm_verify mode)
>  {
> +	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
> +		pr_err("BOOTM_FORCE_SIGNED_IMAGES enabled, prevent modifying bootm_verify_mode\n");
> +		return;
> +	}

We bootm_set_verify_mode(BOOTM_VERIFY_SIGNATURE) shouldn't result
in a warning message.

With this addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +
>  	bootm_verify_mode = mode;
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



