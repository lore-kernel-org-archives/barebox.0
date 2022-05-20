Delivery-date: Fri, 20 May 2022 13:40:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0zA-0033ok-Ay
	for lore@lore.pengutronix.de; Fri, 20 May 2022 13:40:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0z8-00027A-VQ
	for lore@pengutronix.de; Fri, 20 May 2022 13:39:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LN28A6dGkHB5jWpfjQQV56dE1bst3POoSAfFJtQCPhc=; b=WklkHKj0ppPFDtkg/C/wfWJVQL
	BldtXQAdF4lMgkye1x+r9R8xPOWSITQTicHDiIqFBOgRKf3EuvdhtobtnwCfgL2Tek0kKMKAp90NP
	n2jGNgCsdQ11EEYnK1baV4zn5NkDVqfLZxPuyBnq+jbfMPxgjahbdy2NJ+AGDYpq+Lmrr51EMNQzv
	ZMBEnq7ZCOFO2DwT7b+X6GBjP5TtuzaNIHmJP4BfPrkNzjiS2MlraOEmKQuAca0w8lqJDRTZU9qD6
	fMmERY4MZQdBivKRBToA1LTdlO1YPWeF34BL51D2YMOXyS31R+zZUO7fcXLDgIlTo240dAlLkSdMV
	T7JSZuEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns0xs-00C82A-OA; Fri, 20 May 2022 11:38:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns0xm-00C808-JC
 for barebox@lists.infradead.org; Fri, 20 May 2022 11:38:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ns0xk-0001v1-MK; Fri, 20 May 2022 13:38:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ns0xk-000723-5p; Fri, 20 May 2022 13:38:32 +0200
Date: Fri, 20 May 2022 13:38:32 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20220520113832.GJ25578@pengutronix.de>
References: <20220520082428.32385-1-eagle.alexander923@gmail.com>
 <30d02935-d1c8-edb2-2117-3ac6f1e0f7d6@pengutronix.de>
 <CAP1tNvQO_6FULYt9tFeY1KQNSCuEdEBERm28N7csV89kGb+0ig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvQO_6FULYt9tFeY1KQNSCuEdEBERm28N7csV89kGb+0ig@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:38:15 up 51 days, 7 min, 55 users,  load average: 0.28, 0.11, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_043834_671338_8639F200 
X-CRM114-Status: GOOD (  22.36  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: clps711x: Switch to devicetree usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBNYXkgMjAsIDIwMjIgYXQgMDI6MzE6NDJQTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiBIZWxsby4KPiAKPiDQv9GCLCAyMCDQvNCw0Y8gMjAyMiDQsy4g0LIgMTI6NTYs
IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ogo+ID4KPiA+IEhlbGxvLAo+
ID4KPiA+IE9uIDIwLjA1LjIyIDEwOjI0LCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gPiBU
aGlzIGlzIGEgY29tcGxleCBwYXRjaCB0aGF0IHN3aXRjaGVzIHRoZSBBUk0gQ0xQUzcxMVggYXJj
aGl0ZWN0dXJlCj4gPiA+IHRvIHdvcmsgd2l0aCB0aGUgZGV2aWNlIHRyZWUuIEluY2x1ZGVzIGNo
YW5nZXMgdG8gYm9hcmQgaW5pdGlhbGl6YXRpb24KPiA+ID4gYW5kIGFueSBhcmNoaXRlY3R1cmUg
ZHJpdmVycyB1c2VkLgo+IC4uLgo+ID4gPiArc3RhdGljIF9faW5pdCBpbnQgY2xlcDcyMTJfZml4
dXAodm9pZCkKPiA+ID4gK3sKPiA+ID4gKyAgICAgaWYgKG9mX21hY2hpbmVfaXNfY29tcGF0aWJs
ZSgiY2lycnVzLGVwNzIwOSIpKQo+ID4gPiArICAgICAgICAgICAgIG9mX3JlZ2lzdGVyX2ZpeHVw
KGNsZXA3MjEyX2R0X2ZpeHVwLCBOVUxMKTsKPiA+ID4gKwo+ID4gPiArICAgICByZXR1cm4gMDsK
PiA+ID4gK30KPiA+ID4gK3Bvc3Rjb3JlX2luaXRjYWxsKGNsZXA3MjEyX2ZpeHVwKTsKPiA+Cj4g
PiBZb3UgY2FuIHJlcGxhY2UgdGhpcyB3aXRoIHRoZSBuZXcgYmFyZWJveF9zZXRfc2VyaWFsX251
bWJlcigpLCBzZWU6Cj4gPiBodHRwczovL2dpdC5wZW5ndXRyb25peC5kZS9jZ2l0L2JhcmVib3gv
Y29tbWl0Lz9oPW5leHQmaWQ9ZjY3NTZlOWNlNmYyNmRjMjI1MDZlMjViZDVjZjFhNGY2YTE3MzYz
Ngo+IAo+IFRoaXMgY2hhbmdlIGlzIGN1cnJlbnRseSBpbiB0aGUgbmV4dCBicmFuY2gsIGJ1dCBP
ay4KCkl0J3MgaW4gbWFzdGVyIG5vdy4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0
ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAg
ICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0s
IEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

