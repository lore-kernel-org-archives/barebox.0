Delivery-date: Tue, 30 Jul 2024 13:14:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkob-004Reb-1Q
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:14:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkoa-0004Lv-RI
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=73tA5h+fzdrtH4wQ2ncL2SJacmVzwbRuREkLGZgtKE8=; b=qG5ydhKRw+SrP+xdrhWcB9QGCz
	rfrQktaYQ4my0ngAh8sStPUPGtYoiLhyjrkeJIwDLuSgLmHmpPJCUT7wmmsilr5bjIEu/dHKg4qDb
	dJPS32H+5EqnkaqupGEAvr7kx+KwH5uXDge/mSqz4WAixDPS/4A9rFLDu9Ig/GrNIR9c1HJDTlKNr
	kDvOBN8wOWwBGYFrfcgU1DaDFZ2LS/+/8qAGr03u+Dzek56MslwoJtqmYBuyLRh/8TNlOCzH+ZrTk
	vCDpd8SjSeAq+2lKF8ZfQmFKagWPmNIWNnE5hh8ZCe1LV2fKCmo3ZO/LNysNeNiJNWRnzsei51An8
	DBG1qUxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYko8-0000000ErBQ-2G7v;
	Tue, 30 Jul 2024 11:14:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYko4-0000000ErAq-3qJT
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:14:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYko3-0004Ja-Li; Tue, 30 Jul 2024 13:14:15 +0200
Message-ID: <a39bd0ea-8ca7-4bd7-a9df-69039063a9dd@pengutronix.de>
Date: Tue, 30 Jul 2024 13:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-8-a.fatoum@pengutronix.de>
 <ce9e12b0-1644-4c3c-a3ac-0508b243c607@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ce9e12b0-1644-4c3c-a3ac-0508b243c607@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_041416_976209_28A00B41 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: Re: [PATCH 07/10] mci: add support for discarding write blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 30.07.24 11:23, Yann Sionneau wrote:
> Hello Ahmad,

Thanks for the review. Can you please trim your replies in longer mails,
so it's easier to find the review?

> 
> Le 7/30/24 à 09:19, Ahmad Fatoum a écrit :
>> From: Ahmad Fatoum <ahmad@a3f.at>
>> +    while (i < blkcnt) {
>> +        sector_t blk_r;
>> +
>> +        /* TODO: While it's possible to clear many erase groups at once
>> +         * and it greatly improves throughput, drivers need adjustment:
>> +         *
>> +         * Many drivers hardcode a maximal wait time before aborting
>> +         * the wait for R1b and returning -ETIMEDOUT. With long
>> +         * erases/trims, we are bound to run into this timeout, so for now
>> +         * we just split into suifficiently small erases that are unlikely
> 
> suifficiently -> sufficiently

will fix.

> 
>> +         * to trigger the time.
> time -> timeout?

Yes.

Will fix for v2.

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



