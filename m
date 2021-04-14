Delivery-date: Wed, 14 Apr 2021 15:20:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWfRP-0002S7-Bz
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 15:20:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWfRO-0005FO-Jv
	for lore@pengutronix.de; Wed, 14 Apr 2021 15:20:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mR8gFsfu67o48VOmnjDDkQrzRhjWMHroWRse5UdlDmk=; b=WOaalmbGOs+/TLDuX5HyoNlYz
	19bqI/iN3nvDABhCdzLZ2lJEeMIrRYy2izTmL7FEZ27Y4gpURx0SowSFGUwXy8YBa/PTZS8qAbwY+
	paeCbuRbKp3gnaFCWsPyW5E5HqY8tpzPLcF0r/bbWkKWoG03mWZfWslTXmoSRDvh/JYwd9TIAQyBA
	hBWWTT6WnsOPrJro4au4GS+5S25aMUYARVD1/xyEqtb3inYCOYwljJFB0F/37VuycnruY5XXuJhP/
	EPMe1zF96PKQm2IAakMVu1XbvDEBtbKbvAp6wtthxstLnIISBTkC5ISHMZBADCIF3QYMC+twUwglA
	M+hvoIFLA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWfQ9-00ChnH-6c; Wed, 14 Apr 2021 13:19:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfPz-00Chmm-Bg
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 13:18:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Description;
 bh=OVogSUCIakBRs6+Oy5ms3pNNqwZv7XdSmwjndvbXv0E=; b=Gnuv/Wol3Wd6czIwMaLhD+y8iU
 lh15nW4ncXZnAsOmqnbd5OTaHuSnBn3e3kOv8QynOcPxOWtyJYDmKXUfaDY1VOetT9mWO0rosab/L
 A2sHe5ADC3ehB5H/V6CZcDKIrbWE6nBm6HfSIdpvAWlPW5or1IzmLzvqqKViJ3fOypa7NOJ0RHvzc
 1KYMDSTXqfsU90D8rCnB5/eyInOrd9fSqvqj4LbzGKjXINv3rzSYk4lU15sv1esCazoTu+LeMKllc
 tVuTOJ9MEAAhL9nfNDqxZiSF/aOytk4cjfaUYSacT8D8KHBLtd+NkokjSjMiaPKvSqgFnW+U4eERo
 MBRCI+2g==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfPw-007mw3-7z
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 13:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1618406319; x=1620998319;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVogSUCIakBRs6+Oy5ms3pNNqwZv7XdSmwjndvbXv0E=;
 b=BW+3dSE9s8uaEiudqlCXW9hBm7fWXmbZJIUGZsmIDAfJ7jTSfLTKXrdRrnil5qSg
 07kf6MtJaj4DaORBrulrgRzr6eUgIGLo5sU48AAkyknrFkRUDCa1o8TWckV8piXG
 fQP1qGbKF5bok5SFshFy//CFNEd6eW6JuffQpQnyP8Y=;
X-AuditID: c39127d2-330b970000001c53-c1-6076ebaf7e31
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.16.0.119])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E9.C4.07251.FABE6706;
 Wed, 14 Apr 2021 15:18:39 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Diagnostix.phytec.de
 (172.16.0.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 14 Apr
 2021 15:18:39 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Wed, 14 Apr 2021 15:18:39 +0200
From: =?utf-8?B?U3RlZmFuIFJpZWRtw7xsbGVy?= <S.Riedmueller@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
Thread-Index: AQHXGmEr8clFgKKLt0+xtTjsIb7GVaqH3cmAgAB+OYCABx9iAIALBmIAgBmJTAA=
Date: Wed, 14 Apr 2021 13:18:39 +0000
Message-ID: <d535d198a5eb6a8404020bbd7295e2c2ccf92182.camel@phytec.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
 <20210322055902.GO23724@pengutronix.de>
 <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
In-Reply-To: <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <5E0522E1D75598418AA94A3C6A3E6119@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmkeLIzCtJLcpLzFFi42JZI8BQrrv+dVmCwezZOhYnFvczWzzaPIvV
 gclj85J6j/6/BgFMUVw2Kak5mWWpRfp2CVwZz9ZMYyl4JFKx7cNppgbGOSJdjJwcEgImEnNf
 dTB1MXJxCAmsZ5LYvuY+K4TzlFHi9qT9zBDOJkaJzjt/2UBa2ARcJD63fQOzRQR0JXYcfc/Y
 xcjBwSxgL7GiQxbEFBaIkThyvA6iIlbizBmQmSC2n8S3Gw1sICUsAqoS/w+ZgIR5Bdwkmr/t
 YIfYdIhJovndQnaQBKeAu8TqtTdYQGxGAVmJzoZ3TCA2s4C4xKZn31khHhCQWLLnPDOELSrx
 8vE/qLiCRFtPJxPEZZoS63fpQ7RaSPRv38UGYStKTOl+yA5xg6DEyZlPWCYwis9CsmEWQvcs
 JN2zkHTPQtK9gJF1FaNQbmZydmpRZrZeQUZlSWqyXkrqJkZghB2eqH5pB2PfHI9DjEwcjIcY
 JTiYlUR43aaUJAjxpiRWVqUW5ccXleakFh9ilOZgURLn3cBbEiYkkJ5YkpqdmlqQWgSTZeLg
 lGpgrPN52pgd/WiTneSxxTJbLzze+VlYYi/P7lVZhz873uZr1T3UNn1X+1SzrY4H/vgc/nNb
 fxqv5+TG+IUbZhzuedDj9vV8glCE7NUuF88F+qvfH13xT+hq7PH7izcx2r2sSuZLTy05xZn0
 d0furUkaAW+LJi60Wx5S/v/rNKndAvfWiP6rrTg144ASS3FGoqEWc1FxIgCFiHGgngIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_061852_474435_35027DF7 
X-CRM114-Status: GOOD (  31.94  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for the
 BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgU2FzY2hhLA0KDQpqdXN0IHdhbnRlZCB0byBsZXQgeW91IGtub3cgdGhhdCB0aGUga2VybmVs
IHBhdGNoIGhhcyBiZWVuIGFjY2VwdGVkIGFuZCBpcw0KaW5jbHVkZWQgaW4gdGhlIHB1bGwgcmVx
dWVzdCBmb3IgNS4xMy4NCg0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvbXRkL2xpbnV4LmdpdC9sb2cvP2g9bmFuZC9mb3ItNS4xMw0KDQpSZWdhcmRzLA0K
U3RlZmFuDQoNCk9uIE1vbiwgMjAyMS0wMy0yOSBhdCAwNzoyMCArMDAwMCwgU3RlZmFuIFJpZWRt
w7xsbGVyIHdyb3RlOg0KPiBIaSBTYXNjaGEsDQo+IA0KPiBoZXJlIGlzIHRoZSBsaW5rIHRvIHRo
ZSBrZXJuZWwgcGF0Y2guDQo+IFNvcnJ5LCBJIGZvcmdvdCB0byBwdXQgeW91IGluIGNjLg0KPiAN
Cj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2xpbnV4LW10ZC9wYXRjaC8y
MDIxMDMyNTEwMjMzNy40ODExNzItMS1zLnJpZWRtdWVsbGVyQHBoeXRlYy5kZS8NCj4gDQo+IFN0
ZWZhbg0KPiANCj4gT24gTW9uLCAyMDIxLTAzLTIyIGF0IDA2OjU5ICswMTAwLCBzaGFAcGVuZ3V0
cm9uaXguZGUgd3JvdGU6DQo+ID4gT24gV2VkLCBNYXIgMTcsIDIwMjEgYXQgMDU6MTQ6MDVQTSAr
MDAwMCwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOg0KPiA+ID4gSGkgU2FzY2hhLA0KPiA+ID4g
DQo+ID4gPiBPbiBXZWQsIDIwMjEtMDMtMTcgYXQgMTA6NDEgKzAxMDAsIFNhc2NoYSBIYXVlciB3
cm90ZToNCj4gPiA+ID4gSGkgU3RlZmFuLA0KPiA+ID4gPiANCj4gPiA+ID4gT24gVHVlLCBNYXIg
MTYsIDIwMjEgYXQgMDE6MzY6MjZQTSArMDEwMCwgU3RlZmFuIFJpZWRtdWVsbGVyIHdyb3RlOg0K
PiA+ID4gPiA+IFRoZSBibG9ja3MgY29udGFpbmluZyB0aGUgYmFkIGJsb2NrIHRhYmxlIGNhbiBi
ZWNvbWUgYmFkIGFzIHdlbGwuIFNvDQo+ID4gPiA+ID4gbWFrZSBzdXJlIHRvIHNraXAgYW55IGJs
b2NrcyB0aGF0IGFyZSBtYXJrZWQgYmFkIHdoZW4gc2VhcmNoaW5nIGZvcg0KPiA+ID4gPiA+IHRo
ZQ0KPiA+ID4gPiA+IGJhZCBibG9jayB0YWJsZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZSBmaWxl
IGlzIGEgbW9yZSBvciBsZXNzIGRpcmVjdCBjb3B5IGZyb20gdGhlIGtlcm5lbC4gRG9lcyB0aGUN
Cj4gPiA+ID4gcHJvYmxlbQ0KPiA+ID4gPiBleGlzdCBpbiB0aGUga2VybmVsIGFzIHdlbGw/DQo+
ID4gPiANCj4gPiA+IEZyb20gbXkgcG9pbnQgb2YgdmlldyBJIHdvdWxkIHNheSB5ZXMuIEkgaGF2
ZSBqdXN0IG1hZGUgYSBzbWFsbCB0ZXN0DQo+ID4gPiBJc3N1ZQ0KPiA+ID4gaXMNCj4gPiA+IHNo
b3duIGluIHRoZSBrZXJuZWwgYXMgd2VsbC4gSXQgaXMgYSB2ZXJ5IHJhdyBjYXNlIHdoZXJlIHR3
byBCQlQgYmxvY2tzDQo+ID4gPiBuZWVkDQo+ID4gPiB0byBiZSB3b3JuIG91dCBidXQgb24gdGhl
IG90aGVyIGhhbmQgdGhpcyBmaXggc2hvdWxkIG5vdCBoYXZlIHRoYXQgbXVjaA0KPiA+ID4gb2YN
Cj4gPiA+IGFuDQo+ID4gPiBpbXBhY3QuDQo+ID4gPiANCj4gPiA+IEkgd2lsbCBzZW5kIGEgc2lt
aWxhciBwYXRjaCB0byB0aGUga2VybmVsLg0KPiA+IA0KPiA+IEknZCBsaWtlIHRvIGRlbGF5IHRo
aXMgb25lIHVudGlsIGl0IGlzIGFjY2VwdGVkIGluIHRoZSBrZXJuZWwuIEkgZG8gbm90DQo+ID4g
ZnVsbHkgdW5kZXJzdGFuZCB0aGUgY29uc2VxdWVuY2VzIG9mIHRoaXMgcGF0Y2gsIGJ1dCBob3Bl
ZnVsbHkgb24gdGhlDQo+ID4gbXRkIGxpc3QgdGhlcmUgaXMgc29tZW9uZS4NCj4gPiANCj4gPiBT
YXNjaGENCj4gPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QNCj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnDQo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

