Delivery-date: Thu, 01 Sep 2022 14:23:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTjEP-003Tb4-HP
	for lore@lore.pengutronix.de; Thu, 01 Sep 2022 14:23:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTjEQ-0006RJ-4M
	for lore@pengutronix.de; Thu, 01 Sep 2022 14:23:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G9E7GxQi4VfiTaquDveDKrBgOhmvdtPt6V9IlACVSiQ=; b=qi9f6eoXupwGN+67ocrUlEU+3B
	1uMP8Vi/KtZZpdOIJJ/ic9NrIem4ZjOJQTTfeFNcFFDPIyx9H0k0F8iqjbuiq925D68IPxq9OjdJC
	kOAOlEcTXtmX0G19zlKDD74ltColtmmGrIp1N6LxIVHZLcvNlpWjH8Qt6iWk1dLo7i0FOXYvz5SY0
	K2FAMmUCnsrGP5KpmYJi7nO0N3Ff2J4EA0noLAbEjhrh/qAPwQ1poS9lLtpnPeyzi9lI5V+gWdsV5
	tGkErHLw0DLIAe4Ba8bTCPm8frEi69e3479X8W/cUBZEX+Kuj1/BYUXtbabHQg9jJtEFBZrOu0JXe
	rG5htOLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjCw-00BhWv-21; Thu, 01 Sep 2022 12:22:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjCq-00BhU6-6S
	for barebox@lists.infradead.org; Thu, 01 Sep 2022 12:22:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oTjCm-0006DM-HD; Thu, 01 Sep 2022 14:21:56 +0200
Message-ID: <d630c102-b92a-16d7-409d-e494d4d46d03@pengutronix.de>
Date: Thu, 1 Sep 2022 14:21:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20220707104127.3330997-1-s.trumtrar@pengutronix.de>
 <20220707104127.3330997-2-s.trumtrar@pengutronix.de>
 <25fec987-ca1b-05bb-1dad-7bc8fb57bb18@pengutronix.de>
In-Reply-To: <25fec987-ca1b-05bb-1dad-7bc8fb57bb18@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_052200_270921_1B1ECED6 
X-CRM114-Status: GOOD (  15.90  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: socfpga: add support for Enclustra AA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 07.07.22 12:57, Ahmad Fatoum wrote:
> On 07.07.22 12:41, Steffen Trumtrar wrote:
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

[snip]

>> +static noinline void aa1_start(void)
>> +{
>> +	int pbl_index = 0;
>> +	int barebox = 0;
>> +	int bitstream = 0;
>> +
>> +	arm_early_mmu_cache_invalidate();
> 
> Is this really required? If MMU is enabled by the time you
> enter here, you risk executing garbage before hitting
> this line anyway and if it's disabled, caches will be invalidated
> just before MMU is enabled already.
> 
>> +
>> +	relocate_to_current_adr();

I see now that I was mistaken here, because relocate_to_current_adr()
called directly after will call sync_for_execution(), which will clean
D$ and invalidate I$. If we happen to have stale dirty D$ entries,
these will be flushed and corrupt memory, which
arm_early_mmu_cache_invalidate() avoided. I still think we shouldn't
expect board code to call arm_early_mmu_cache_invalidate(), rather
sync_caches_for_execution() should take care to only invalidate I$,
when caches are disabled.

My "ARM: sync_caches_for_execution: don't flush disabled data cache"
patch from earlier today should resolve this. You'll probably want
to cherry pick it..

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


