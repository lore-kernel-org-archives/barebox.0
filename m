Delivery-date: Wed, 08 Sep 2021 14:47:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNwyl-0005WR-4V
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 14:47:03 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNwyk-0003Ae-BF
	for lore@pengutronix.de; Wed, 08 Sep 2021 14:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq94nhDkwrpoK16awEDn8Rwr0KGD7q3pEUQIe4XPIpY=; b=SaG40CJyRp8Btk
	EQpWIp8TVqnMPkgWZl39jEMmZyTcJJZ8Bu2o7sCb1YKVD+BH7c8jT4rZ513cL0QPPtoDXucaJcqUN
	UUdCoWriX04Wo1Rf0QWro+rSwLKIoZwzzq+UKyEQTAKxAFOV/TIY7VLGl5HQ9RljmK2IoxdTjBQ60
	Izuf/pmuvEaR5PHxlUwpoTeAuYTIvUPEO2sEy6D+EGUsDJwluXkdGvv+dTtpWClayKSlxnRkaov4z
	YXN7ePPFc5uADNbCnMCOLCtN0MQ+MnQmpPRNu6vGIYKVxTsqaSRVZx18EpJhPJ4qeDnkOoPvCupjr
	6Dx7gcJ+xsX4owswr7eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNwx0-006jTe-Kl; Wed, 08 Sep 2021 12:45:14 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNwwv-006jSy-E1
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 12:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:Reply-To:Subject:References:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wCfo8GKoTEGjkEtc0uEsL6q4cH8kSMy1rp4ECMHNOYA=; b=bwa7EPAAhdyxZetf2X8fJrbWGl
 yiLMHMymT79gJED3C6qXcg21rxyCMAzG+a0beFP1rl5sqpX7iWhmPWamhlSmQbZ4s7V1odI1NDvQg
 EnrspvBH6uoQSIFA78fis7iYgd3xWSR45JQBtMLUok8g9HLcV6/2AC6uJfFlIOsShy6ZD0AZAivie
 fGvDVCGCka8UQzQzaqZ/vMIgNPCUE4WBQ6qMGerjtUonaIAu8GsxbyB7Wy9jVFa2FCYPZYqabQ24L
 qYUhKkOvEuSAtT+LjiLY/2xCYuCN6nM8ibbs+qt04uTmd+r6NSTYxO6wG/5MpC7fguMvcKqa+ZOU0
 z++iAtwA==;
Received: from [89.212.21.243] (port=34172 helo=[192.168.69.192])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <anze.lesnik@norik.com>)
 id 1mNwwj-00CYAk-J8; Wed, 08 Sep 2021 14:44:57 +0200
To: barebox@lists.infradead.org
References: <20210830144835.27458-1-jmaselbas@kalray.eu>
From: =?UTF-8?B?QW7FvmUgTGXFoW5paw==?= <anze.lesnik@norik.com>
Message-ID: <07375b1c-7bd8-2936-3e8a-21e0dc75e7a3@norik.com>
Date: Wed, 8 Sep 2021 14:45:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210830144835.27458-1-jmaselbas@kalray.eu>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 anze.lesnik@norik.com
X-Authenticated-Sender: cpanel.siel.si: anze.lesnik@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_054509_842607_C7AD421F 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
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
Reply-To: 20210830144835.27458-1-jmaselbas@kalray.eu
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,
	RDNS_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

V2UgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBvbiBhIFBIWVRFQyBwaHlDT1JFLWkuTVg2IFVMTCBT
T00gcnVubmluZyAKYmFyZWJveCAyMDIxLjA0ICh1c2luZyB0aGUgaW14LXVzYiBkcml2ZXIpIGFu
ZCBpdCBzZWVtcyB0byByZXNvbHZlIHRoZSAKaXNzdWUuIERGVSB0cmFuc2ZlciBub3cgd29ya3Mg
YXMgaW50ZW5kZWQuCgpJZiBvbmUgcmVjZWl2ZXMgdGltZW91dHMgb24gdGhlIGhvc3QgY29tcHV0
ZXIsIHRyeSBzZXR0aW5nIAp1c2Jjb3JlLmF1dG9zdXNwZW5kPS0xLgoKCkFuxb5lCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

