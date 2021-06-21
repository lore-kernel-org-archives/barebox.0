Delivery-date: Mon, 21 Jun 2021 06:35:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBes-0003dL-Vz
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 06:35:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBes-0000DE-4z
	for lore@pengutronix.de; Mon, 21 Jun 2021 06:35:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=04WLYnFFbp04qGFyMrPHIUQrHL+M2FCwvWkO9hHwd2s=; b=sQ9XXKNZQjPo130AFtEa1F7i1U
	ESr+DjrO8E53Gm9WKy3SO2WRsY1ejUjWGxdWNvggOCcPWmHPJ8qnIq9Ly3zYps2sEYl2/BQXl1/si
	U53OI/zMo5u1HRM6+4Y0IioHzdJWBhJUeAoS57rK5K6TCltjR0zUCijGwLPDjMugnPGMzV5d4vBtO
	CV8ctib6WSgs6hX0Km7xGNzemKy6BGjkXn1ui5Mav5yziWLDKC0T1AntPKT71uO3BotXs0a/gJeCT
	5af2G+niWAQKaKfKDIIT4pF8LYO4/YeSsWnkZIfNB876CQpuUFkKh8S/VkHOLHIjPfCPYF24jmtEQ
	wdxCOrKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBdm-0022zC-IC; Mon, 21 Jun 2021 04:34:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBdh-0022ya-7q
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 04:34:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBdg-0008Nu-0C; Mon, 21 Jun 2021 06:34:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBdf-0006lp-NZ; Mon, 21 Jun 2021 06:34:23 +0200
Date: Mon, 21 Jun 2021 06:34:23 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621043423.GG9782@pengutronix.de>
References: <20210617170018.42823-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617170018.42823-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:34:11 up 123 days,  7:58, 89 users,  load average: 0.02, 0.12,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_213425_324367_412C653B 
X-CRM114-Status: GOOD (  17.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove >=0 check for u32 port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBKdW4gMTcsIDIwMjEgYXQgMDc6MDA6MTlQTSArMDIwMCwgUm91dmVuIEN6ZXJ3aW5z
a2kgd3JvdGU6Cj4gVGhlIGNvbXBpbGVyIHJpZ2h0ZnVsbHkgY29tcGxhaW5zOgo+IAo+ICAgZHJp
dmVycy91c2IvbWlzYy91c2IyNTF4Yi5jOiBJbiBmdW5jdGlvbiDigJh1c2IyNTF4Yl9nZXRfb2Zk
YXRh4oCZOgo+ICAgZHJpdmVycy91c2IvbWlzYy91c2IyNTF4Yi5jOjU2MzoxMzogd2FybmluZzog
Y29tcGFyaXNvbiBvZiB1bnNpZ25lZCBleHByZXNzaW9uIGluIOKAmD49IDDigJkgaXMgYWx3YXlz
IHRydWUgWy1XdHlwZS1saW1pdHNdCj4gICAgIDU2MyB8ICAgaWYgKChwb3J0ID49IDApICYmIChw
b3J0IDw9IGRhdGEtPnBvcnRfY250KSkKPiAKPiBzbyBkcm9wIHRoZSBjaGVjay4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBSb3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRl
Pgo+IC0tLQo+ICBkcml2ZXJzL3VzYi9taXNjL3VzYjI1MXhiLmMgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKQXBwbGllZCwgdGhhbmtzCgpT
YXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAg
ICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxk
ZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3
LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6
ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=

