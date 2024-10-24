Delivery-date: Thu, 24 Oct 2024 15:04:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xVu-000DE6-2m
	for lore@lore.pengutronix.de;
	Thu, 24 Oct 2024 15:04:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xVv-0003ZO-Go
	for lore@pengutronix.de; Thu, 24 Oct 2024 15:04:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7AECBnyGYu/l7tlma40oDOLY9caLjBrJbj9DT/H168=; b=Jkl/a4GJWVNIEcijvd4uhwEIMf
	x0XkvE79EQc/uM4cVCpmxQoMinm3feljOt7VNLUhMoneSLqmvQCPAQV0aFv2XXTFZ4W1WlLw6pLQV
	B5DFnKHgsiB+F4TsJ9kGsG8SYPKYdpQS5PfS+WO4uOtpozMt/4BdFJKh3ctUKC44ngWazwUDbaaeM
	NPFzAa1AcRTpm6sbXbGq6lpUEgaHTtbZ+NFKdpQ0a/7R1oXPO/Wfby4VCTABBx1sopiOeQ7h5BcL+
	N+WWFVYaYrAcy6Bo+3A4ZmIxFmOg4pmfakdzEG3sQXiuShXqo0ifBaUdAQItEVjdGw2YyFjuTvKo0
	pom9azYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xVN-00000000QXm-0p75;
	Thu, 24 Oct 2024 13:03:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xVK-00000000QWu-2aW5
	for barebox@lists.infradead.org;
	Thu, 24 Oct 2024 13:03:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3xVH-0003TY-1e; Thu, 24 Oct 2024 15:03:51 +0200
Message-ID: <0cc21fc3-a980-4d77-b05d-5c94dc3803ef@pengutronix.de>
Date: Thu, 24 Oct 2024 15:03:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Julian Vetter <jvetter@kalrayinc.com>, barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
References: <20241023085517.1594242-1-jvetter@kalrayinc.com>
 <bd3b8651-6108-41d6-8ca5-4c2968a55186@pengutronix.de>
 <1afa7a34-5a08-48a8-b037-9ea59507aa43@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <1afa7a34-5a08-48a8-b037-9ea59507aa43@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_060354_677472_CCDE12E1 
X-CRM114-Status: GOOD (  15.95  )
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
Subject: Re: [PATCH] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.10.24 14:35, Julian Vetter wrote:
fdef CONFIG_WATCHDOG_KVX_EARLY_INIT>>
>> Move this down before the core_initcall
>>
>>> +static int kvx_wdt_early_init(void)
>>
>> Add __maybe_unused here.
>>
>> That way compile test in CI tests this function even if option is disabled.
>>
> 
> I have tried what you proposed but the CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT is only defined if we enable the CONFIG_WATCHDOG_KVX_EARLY_INIT. So, it fails if we have the watchdog enabled but not the EARLY_INIT. I could either keep the #ifdef before the function. So, it will not be covered by compile tests or I add something like the following to the function:
> 
> int wtd_timeout = 0;
> 
> #ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
> wtd_timeout = CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT
> #endif
> 
> What do you think?

I missed the undefined macro. Never mind then, I think
we can leave it as is.

Cheers,
Ahmad

> 
> Thank you.
> 
>>> +{
>>> +    /* Set Start watchdog counting */
>>> +    kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
>>> +    kvx_sfr_set(WDR, 0);
>>> +
>>> +    /* Start watchdog counting */
>>> +    kvx_sfr_set_field(TCR, WUI, 1);
>>> +    kvx_sfr_set_field(TCR, WCE, 1);
>>> +
>>> +    return 0;
>>> +}
>>> +core_initcall(kvx_wdt_early_init);
>>> +#endif
>>
>>
> 
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


