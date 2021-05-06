Delivery-date: Thu, 06 May 2021 14:07:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecn2-00023B-CB
	for lore@lore.pengutronix.de; Thu, 06 May 2021 14:07:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecn1-0003CZ-HT
	for lore@pengutronix.de; Thu, 06 May 2021 14:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6uNZYz+Kfocip5iNtohzgcy0/BVD7ZOiaC1ZArArN80=; b=pX85NiNRGKNNOClacqtMzOgGB
	n8/zw7iwZv2yQ8VTKJxCmrxKsICShLXxurNBh6xflfael6V1CXujR9jGVZ8esqlt/u4r9RhOkd/x8
	E5WOtjZmXb3JwUV8PWDw5zO4A63dbBA68+D6UnyTYuipzs8mLohsFjH4o0+v+0MKOYst/rhuMP2rq
	HmTYFrMEjaGPKz7nNcf7i97lFZkhWJ1ESzPBtbotG4XmKBxouQjbjuy01qGmvsgX2HRvSuIW+FvPV
	61tvbRIWdiD6NnjrW+MXQYjC6Gou3vFvoTnMeYe5bD1vIzqXdwLQoV64XZZfEXNtkmlsZRrqdPXzY
	DW2VwPmwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lecmJ-004CfQ-MW; Thu, 06 May 2021 12:06:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecmF-004Cf9-SG
 for barebox@desiato.infradead.org; Thu, 06 May 2021 12:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=wztZoi9QU2OmaWZZZT7UtSe9n3GtUPLYMqW/Jl5/eVs=; b=ryTodR/0HXqiNGoRQSnGHiORgc
 fC6QgYrdrgo8Bgp//rUXpKNDxRifzdJHdYZwi2a6uAHH90XicIC1x4cz/ZSQWHy04UEiHnt6Bs/fA
 55ZkzF7m1Jme/Blrp5Mp08H75XNgVW7azIOAkYT3jbRkOocXcpzA1iFqniLHOWhIm2uZc/hJ7QeIg
 qzVnKb30qVK6GqfYFMqTyVL76P5aEwro2KAkO5XZVPxTLNpqGuDG+GIyw5lUbCELqUHuBSgkEVk/Y
 7V3XpnPJ6/CGNY0KnGY3fcnwbQafVD2/OsFN6mGD/p4juYj6ePRLMktsYkKUsCXcAGANjm4m/zc7o
 BAS/cSPw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecmD-0060Uv-5s
 for barebox@lists.infradead.org; Thu, 06 May 2021 12:06:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lecmB-000393-IC; Thu, 06 May 2021 14:06:43 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org,
 Juergen Borleis <jbe@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <20210506112219.27114-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <75ff4a6d-85c3-0229-ec4f-b6b95444e09a@pengutronix.de>
Date: Thu, 6 May 2021 14:06:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506112219.27114-2-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_050645_245680_6FA22A44 
X-CRM114-Status: GOOD (  20.08  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] mci: mci-core: set the DEVFS_IS_MCI_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8sCgpPbiAwNi4wNS4yMSAxMzoyMiwgTWFyY28gRmVsc2NoIHdyb3RlOgo+IFNldCB0aGUg
bmV3IGludHJvZHVjZWQgZmxhZyB0byBiZSBhYmxlIHRvIGNoZWNrIGlmIHRoZSBjZGV2IGlzIGFu
Cj4gbW1jL21jaSBkZXZpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZl
bHNjaEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgZHJpdmVycy9tY2kvbWNpLWNvcmUuYyB8IDEg
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tY2kvbWNpLWNvcmUuYyBiL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKPiBpbmRleCAwMTdm
MjVkMzVmLi5jMGZiY2IzODVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL21jaS9tY2ktY29yZS5jCj4gQEAgLTQyMCw2ICs0MjAsNyBAQCBzdGF0
aWMgdm9pZCBtY2lfcGFydF9hZGQoc3RydWN0IG1jaSAqbWNpLCB1aW50NjRfdCBzaXplLAo+ICAJ
cGFydC0+c2l6ZSA9IHNpemU7Cj4gIAlwYXJ0LT5ibGsuY2Rldi5uYW1lID0gbmFtZTsKPiAgCXBh
cnQtPmJsay5jZGV2LnBhcnRuYW1lID0gcGFydG5hbWU7Cj4gKwlwYXJ0LT5ibGsuY2Rldi5mbGFn
cyB8PSBERVZGU19JU19NQ0lfREVWOwo+ICAJcGFydC0+YmxrLmJsb2NrYml0cyA9IFNFQ1RPUl9T
SElGVDsKPiAgCXBhcnQtPmJsay5udW1fYmxvY2tzID0gbWNpX2NhbGNfYmxrX2NudChzaXplLCBw
YXJ0LT5ibGsuYmxvY2tiaXRzKTsKPiAgCXBhcnQtPmFyZWFfdHlwZSA9IGFyZWFfdHlwZTsKClRo
aXMgaXMgY2FsbGVkIGZvciBoYXJkd2FyZSBwYXJ0aXRpb25zLCBsaWtlIGJvb3QgYW5kIGdlbmVy
YWwKcHVycG9zZSBwYXJ0aXRpb25zLgoKRm9yIGJvb3QgcGFydGl0aW9ucywgdGhlIGxhdGVyIGNv
bW1pdCBpcyB3cm9uZy4gSSBkb24ndCBrbm93IHdoYXQgdGhlIGRlZmF1bHQKZmlsZSBuYW1lIGZv
ciBtbWMgR1BQIGJsb2NrIHBhcnRpdGlvbnMgaXMsIErDvHJnZW4/CgpZb3Ugc2hvdWxkIHByb2Jh
Ymx5IGRvIHRoaXMgb25seSBmb3IgdGhlIE1NQyB1c2VyIHBhcnRpdGlvbiAoY2hlY2sgZm9yCmFy
ZWFfdHlwZSA9PSBNTUNfQkxLX0RBVEFfQVJFQV9NQUlOKS4gSSB0aGluayBERVZGU19JU19NQ0lf
REVWCnNob3VsZCBiZSByZW5hbWVkIHRvIERFVkZTX0lTX01DSV9NQUlOX0RFViB0by4KCkNoZWVy
cywKQWhtYWQKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAg
ICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBI
aWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2
OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBG
YXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=

