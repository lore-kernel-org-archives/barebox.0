Delivery-date: Tue, 29 Apr 2025 11:53:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9her-000SLU-1f
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 11:53:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9heq-0003Il-Vj
	for lore@pengutronix.de; Tue, 29 Apr 2025 11:53:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xS833mi1qRvwoemyQpkVkOKOcZ/oiVd9/Yjtv/3ccMQ=; b=3pTcysqmHEi0XsvTcYBtFUx+t3
	LFuAb8eKWx03WfbCxB1eJgLAfoN+FTa+ec1WMgdVpnQ4AIvA0H9iwjB1MgFMztcTvM8rY8qnHQNa4
	WUS8ueCzzqT/gipY4AoPDV6urBbn5zEjUV8twNQwd7rMJllXIZqwBvyqscFAew3pPBo5/8iRAVWCv
	B/agFVhcsDgZOcYNHd4ZkvNDrsv9TT2eQdT/3ebG9lOI18tW6VKRaUSwm2KB51Ji9zRdGFDWlIoeQ
	bNNYoq8HzdI4Emy4yyJ540JU1RAKCvC9RDMCMd6bI/5kXYHwlXmtSxbgMkRlEOi8jD7W/TU3VpG16
	7mH2uUdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9heK-00000009D2s-2iCs;
	Tue, 29 Apr 2025 09:53:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9heJ-00000009D2f-1VYg
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 09:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=xS833mi1qRvwoemyQpkVkOKOcZ/oiVd9/Yjtv/3ccMQ=; b=oV4x1dHYzD4ZAyneWIXDcnZmTA
	Dc5kQklyvyEN+WJdOtEgxiltga1zRU9hZg4hopmSAELMpPISrAXb7F5M6zMHPkv/KuZggCmmCeVRq
	eX/bmqq0b3E6s24y/fezVv4AEtvXrjGOWhUXvgKSXK4JzqKrMZTpM9agd/AlWC8DeFxK97Xm0mMJJ
	NPQ5TDpS5qZwEMNqn4lgrbmtNrgHaJeN8ydIRLG79mlcqxi+6OsKZGNJResK5Bu3yZF7DRn12o/mZ
	dKWJG1bIrKHmPjv21d8e+AogYfwsOZ7OpSaXvisHLzK1/EIiEZLhv/3GC43/NcNuxp5cyN/CXV6vZ
	7Crf1VXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9heG-0000000DG9c-0Xrb
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 09:53:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9heF-0002zD-My; Tue, 29 Apr 2025 11:53:07 +0200
Message-ID: <e6f4523c-6e63-42fe-be22-d15707d2267a@pengutronix.de>
Date: Tue, 29 Apr 2025 11:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20250424084833.2920664-1-a.fatoum@pengutronix.de>
 <174555956247.545067.10905121643082274040.b4-ty@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <174555956247.545067.10905121643082274040.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_105308_364510_2D8BEC90 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clocksource: omit seeding of RNG in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/25/25 07:39, Sascha Hauer wrote:
> 
> On Thu, 24 Apr 2025 10:48:33 +0200, Ahmad Fatoum wrote:
>> We do not maintain a PRNG in the PBL, so we should omit the call to
>> srand_xor in PBL, otherwise it expands to BUG() and breaks the newly
>> introduced PBL clocksource support.
>>
>>
> 
> Applied, thanks!

While the patch is correct, I think it would be better to just drop the
BUG() in the header instead of littering IN_PROPER around.

If the patch isn't pushed yet, can you drop it?
I just sent out an alternative.

Thanks,
Ahmad

> 
> [1/1] clocksource: omit seeding of RNG in PBL
>       https://git.pengutronix.de/cgit/barebox/commit/?id=a6e031cc425d (link may not be stable)
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



