Delivery-date: Sat, 14 Mar 2026 08:51:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w1JmD-000aYI-2R
	for lore@lore.pengutronix.de;
	Sat, 14 Mar 2026 08:51:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w1JmD-00019P-6J
	for lore@pengutronix.de; Sat, 14 Mar 2026 08:51:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=in6JrdAUUY86ygv3JV6kzpWHpphtuL4VyRUJXjYj1mQ=; b=NKkNwn1Mp09XiXsvzQ8UW5sRf4
	RuDFzyDnwZk3D3JvV52FAwnSXCgb6XkdWUg+u3F+cilzrYRHPrUVE4a9LgcQrvnZ9UmnQbomIK6d8
	mb9H+TTNjz4iDoixw50PGsqz0IPgOadRlovDsmeZxtUAR29qRxJQl0nk3+3c2TZBiVczV8MKuOc1z
	xFe8IFmKkN6fbeJ9U5pKJSljz5YccwbNuW+fyT+IwNN6xuFSMI5czNwpaKbJrvrBIBJ5rW0UzFlP5
	sEYY+Mnw0PN/Sbr/0ILH78ZcQ2KidVNlIK5EKTH7Sj+7LFYzmrGkrjcDizKrasVAlJVEbs61Yfxdc
	vUs4XE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1JlY-00000001bGe-1x7Y;
	Sat, 14 Mar 2026 07:50:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1JlV-00000001bGF-3UBL
	for barebox@lists.infradead.org;
	Sat, 14 Mar 2026 07:50:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w1JlR-00010s-Co; Sat, 14 Mar 2026 08:50:25 +0100
Message-ID: <1a321a56-c232-46d6-b274-026a108843b5@pengutronix.de>
Date: Sat, 14 Mar 2026 08:50:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20260312192110.539601-1-a.fatoum@pengutronix.de>
 <177340064747.208368.4405735321340509838.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <177340064747.208368.4405735321340509838.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_005029_876672_E3230C3A 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: cpu: setupc: relocate BSS in relocate_to_adr()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/13/26 12:17, Sascha Hauer wrote:
> 
> On Thu, 12 Mar 2026 20:20:42 +0100, Ahmad Fatoum wrote:
>> When calling relocate_to_adr(), barebox is copied without BSS to a new
>> place. The new BSS region is not necessarily zeroed, but setupc()
>> following relocate_to_adr() will take care of that.
>>
>> With incoming change to make setupc() idempotent, this will become
>> problematic as the variable in .data will indicate that the BSS is
>> zeroed, while the new BSS region isn't actually.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/2] ARM: cpu: setupc: relocate BSS in relocate_to_adr()
>       https://git.pengutronix.de/cgit/barebox/commit/?id=d443585bcce6 (link may not be stable)
> [2/2] fixup! ARM: setup_c: avoid clearing BSS twice

Please reorder "ARM: cpu: setupc: relocate BSS in relocate_to_adr" before "ARM: setup_c: avoid clearing BSS twice" to keep bisection possible without intermittent breakage.

Thanks,
Ahmad

>       (no commit info)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


