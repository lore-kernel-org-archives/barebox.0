Delivery-date: Mon, 11 May 2026 16:08:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMRIy-000ZtH-2Y
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 16:08:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMRIx-0002vT-Nz
	for lore@pengutronix.de; Mon, 11 May 2026 16:08:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YpSI6gjnCNb9tpUlyAfIWJHCaA7X+EL2aGB4PoN0Zm0=; b=KFinxBKqNEguHjxYh90WBiTSPd
	ikQ/cbBuQxJx6wLVf/9i1lW3OK/U41qZugJnWhigiRMzZJH/ZFsAq5Oo/c0AotA491W3h/3VSqxod
	A/FfRQKlV4jjE06zxbJ73PbDdD4aIqKl5rfSG+4jzz9+c8lqiQZLNsnjjbp1FXkc4ygSFe2dRBlVa
	sCj6RcgYVqalHnXKNuQVz37V7ZPJPIBC3aZ2Q7YXaUo4Qna98ETAajtfatM6YFQTg1KJfNL/WnVwB
	rJhaJ197D+XnR0DvQftnSDjsKXWqvnLFZ+RhUSl5Fu+ekqv9QKueRcuhYqjJLtDNYZn2rM4dL7eqH
	dcEzjUXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRGu-0000000DrFe-29mY;
	Mon, 11 May 2026 14:06:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRGs-0000000DrET-1tLC
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 14:06:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wMRGq-0002OT-Po; Mon, 11 May 2026 16:06:08 +0200
Message-ID: <63256b58-0e5f-473d-826d-08b6182459f2@pengutronix.de>
Date: Mon, 11 May 2026 16:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Opus 4.7" <noreply@anthropic.com>
References: <E1wMRCl-0000000FNV4-0iBY@pty.whiteo.stw.pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <E1wMRCl-0000000FNV4-0iBY@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_070610_511704_64255107 
X-CRM114-Status: GOOD (  18.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/10] mci: rockchip-dwcmshc-sdhci: use ADMA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/11/26 4:01 PM, Sascha Hauer wrote:
> On 2026-05-11 14:55, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 5/11/26 2:08 PM, Sascha Hauer wrote:
>>> The SDMA engine doesn't seem to be fast enough to keep up with HS400
>>> support. In preparation to add HS400 support to the driver switch to
>>> ADMA when available.
>>>
>>> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/mci/rockchip-dwcmshc-sdhci.c | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
>>> index 04ee528f07..23c887e906 100644
>>> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
>>> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
>>> @@ -361,6 +361,11 @@ static int rk_sdhci_probe(struct device *dev)
>>>  
>>>  	sdhci_setup_host(&host->sdhci);
>>>  
>>> +	ret = sdhci_setup_adma(&host->sdhci);
>>> +	if (ret && ret != -ENOTSUPP)
>>> +		dev_warn(dev, "ADMA setup failed (%pe), falling back to SDMA\n",
>>> +			 ERR_PTR(ret));
>>
>> As transparent fallback is implemented, could this be folded into
>> sdhci_setup_host, so it's opt-out instead of opt-in?
> 
> I don't expect much advantage from ADMA for drivers that do not need it.
> The advantage is that ADMA can do scatter gather DMA, but we don't make
> use of it in barebox.
> 
> I'd rather leave it opt-in for now at least for a few rounds.

Fair enough.

> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



