Delivery-date: Tue, 20 Apr 2021 08:31:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYjuo-0007zT-8s
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 08:31:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYjum-0001pz-Vb
	for lore@pengutronix.de; Tue, 20 Apr 2021 08:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JOusOqgjHR/bQojFN7z6peoZYr0adiAaIAk2afhoCzU=; b=pCtlcLo6IPQRntpz4blYWxw81
	gSdTahDG67FXV4y1p05TXjBm84frC4SUc3Bb08Dj4ch8mwyQHwhjarpsqy7pDGHIoIkvntAefH1pO
	Xcy2UdKotz4SNjVeD6HA8JCoWK1J19KBuRmCKP6WpqEG3BLN8U0QAp0qVPCL7lujqjNTwuFdmgo8a
	qnsA+IkRDJS19ctC2pLBLUWv6+MBxv3e0YHextmyZmtyhbAaFZtUJVZv2jt7fudR+l5pP48iOLZZo
	1/2ljrMVkfQsVn17uknecWPPnP1DyAA8Qy7FEfxXgT+rCJsHnjpPT3dFKecuPmFjtvgiJ3g2eWqN3
	6Gql4hMyQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYjtX-00BM1V-1Y; Tue, 20 Apr 2021 06:29:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYjtQ-00BM0c-9a
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 06:29:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Description;
 bh=E6QS74eMPQ7a3RIu1tQttqpxtjFINAUDptV9Wsv3ZhU=; b=iwrMOtJnCqYGxDKARqTbVUJUN/
 +NzJ04jvOo7AWqfS7ezO/4CMUFZ+68ho0nC2qGA48qBXHUMDqhj6ndijHTr/jgsx6SqJEfGsdJ7q0
 RiWjtO6lvB+K8E/4a9q71J5l08Ui7gh1jqEj3/OR1FOD03wlZPjm7M4qAu4LFrlgQHCixCKomVh7l
 PTP0O2/pK4leDlZWpCZsD1W9kOXzVwKN0yFkHyYXnc+iQd54ebNyfZQ/n7DBbuiG50dmY5UZ2UwU5
 KGt4fBmmHXUtUbm0wXpbmgBotuk7R2X4YDKkPnmjzFovqzbuZniOPx7yCYu3U6CYwYEN7mza/YR3R
 Kazfm9oQ==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYjtN-00BqeD-C7
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 06:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1618900187; x=1621492187;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E6QS74eMPQ7a3RIu1tQttqpxtjFINAUDptV9Wsv3ZhU=;
 b=BM7ijJH22iZcNmZvcpKOUdb6/7E0YNHzpJrTBK5GW/zve5DtRn00C5sULqX1dM95
 dL9VLF5QH+MFUxgufc+3Tse6l7HjNs/cdhYX3/8gbrJsUICgnq2JvIyYMDvFW1fV
 kLrJsf60n8hE+B5E/G4qLZieDn9O04xEe5U3ch+gTR0=;
X-AuditID: c39127d2-330b970000001c53-c0-607e74db3b8b
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B5.2C.07251.BD47E706;
 Tue, 20 Apr 2021 08:29:47 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Tue, 20 Apr
 2021 08:29:47 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Tue, 20 Apr 2021 08:29:47 +0200
From: =?utf-8?B?U3RlZmFuIFJpZWRtw7xsbGVy?= <S.Riedmueller@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
Thread-Index: AQHXGmEr8clFgKKLt0+xtTjsIb7GVaqH3cmAgAB+OYCABx9iAIALBmIAgBmJTACAABWkgIAI5h6A
Date: Tue, 20 Apr 2021 06:29:47 +0000
Message-ID: <ead66213f63266ca1d3ae36ef55766e7cdd0fc81.camel@phytec.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
 <20210322055902.GO23724@pengutronix.de>
 <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
 <d535d198a5eb6a8404020bbd7295e2c2ccf92182.camel@phytec.de>
 <20210414143605.GX19819@pengutronix.de>
In-Reply-To: <20210414143605.GX19819@pengutronix.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <761B277F7744A94DA45DBFE4DE7769D3@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmkeLIzCtJLcpLzFFi42JZI8BQpnu7pC7B4Hm3nsWJxf3MFo82z2J1
 YPLYvKTeo/+vQQBTFJdNSmpOZllqkb5dAlfGlEMvWQt+yFZM3XqSpYFximwXIyeHhICJxK2z
 U1i7GLk4hASWM0l8enKLGcJ5yCjxvv0RM0iVkMAmRonWjiwQm03AReJz2zc2EFtEQFdix9H3
 jF2MHBzMAvYSKzpkQUxhgRiJI8frICpiJc6cuc8KYUdJdM6YBjaRRUBVYu6bxywgNq+Am8Sl
 zVsYIdauZpaYs2AGI0iCE+i4xZ/Xg9mMArISnQ3vmEBsZgFxiU3PvrNCPCAgsWTPeWYIW1Ti
 5eN/UHEFibaeTiaI0zQl1u/Sh2i1kNh/bCoLhK0oMaX7ITvEDYISJ2c+YZnAKD4LyYZZCN2z
 kHTPQtI9C0n3AkbWVYxCuZnJ2alFmdl6BRmVJanJeimpmxiBEXZ4ovqlHYx9czwOMTJxMB5i
 lOBgVhLhvV9bkyDEm5JYWZValB9fVJqTWnyIUZqDRUmcdwNvSZiQQHpiSWp2ampBahFMlomD
 U6qBkan4vmeaJaM988ts0fk6IaYfOtY7SBz7Lz37wcOCgDn7NrWo3c37dYG997XOwqCEeja+
 0gAHi4L0J6qy4q+1VyWzbVHsNw0/4D654fmH3rolf7awvPzwa4Hilr8x2Y3K/xeccBCZsdQy
 fR3Teqlp4h80gvuvuK7l+5xe7fZ2iuRr5gUZn/9IKLEUZyQaajEXFScCAO2eoA+eAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_232949_578812_2ED4EAE2 
X-CRM114-Status: GOOD (  37.77  )
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

SGkgU2FzY2hhLA0KDQp1bmZvcnR1bmF0ZWx5IHRoaXMgUGF0Y2ggaGFzIGNhdXNlZCBhIHJlZ3Jl
c3Npb24gb24gaW14MjcgaW4gTGludXggYW5kIHdpbGwgYmUNCnJldmVydGVkIGZvciBub3cuIEkg
d291bGQgc3VnZ2VzdCB0byBkbyB0aGUgc2FtZSBoZXJlIHVudGlsIGEgcHJvcGVyIHNvbHV0aW9u
DQppcyBmb3VuZC4NCg0KaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4
LW10ZC8yMDIxLUFwcmlsLzA4NjEyNC5odG1sDQoNClNvcnJ5IGZvciB0aGUgdHJvdWJsZSENCg0K
UmVnYXJkcywNClN0ZWZhbg0KDQoNCk9uIFdlZCwgMjAyMS0wNC0xNCBhdCAxNjozNiArMDIwMCwg
c2hhQHBlbmd1dHJvbml4LmRlIHdyb3RlOg0KPiAwLjA4DQo+IA0KPiBIaSBTdGVmYW4sDQo+IA0K
PiBPbiBXZWQsIEFwciAxNCwgMjAyMSBhdCAwMToxODozOVBNICswMDAwLCBTdGVmYW4gUmllZG3D
vGxsZXIgd3JvdGU6DQo+ID4gSGkgU2FzY2hhLA0KPiA+IA0KPiA+IGp1c3Qgd2FudGVkIHRvIGxl
dCB5b3Uga25vdyB0aGF0IHRoZSBrZXJuZWwgcGF0Y2ggaGFzIGJlZW4gYWNjZXB0ZWQgYW5kIGlz
DQo+ID4gaW5jbHVkZWQgaW4gdGhlIHB1bGwgcmVxdWVzdCBmb3IgNS4xMy4NCj4gDQo+IFRoYW5r
cyBmb3IgdGhlIGVmZm9ydC4gSSBqdXN0IG1lcmdlZCBpdCBpbnRvIGJhcmVib3guDQo+IA0KPiBT
YXNjaGENCj4gDQo+IA0KPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L210ZC9saW51eC5naXQvbG9nLz9oPW5hbmQvZm9yLTUuMTMNCj4gPiANCj4gPiBS
ZWdhcmRzLA0KPiA+IFN0ZWZhbg0KPiA+IA0KPiA+IE9uIE1vbiwgMjAyMS0wMy0yOSBhdCAwNzoy
MCArMDAwMCwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOg0KPiA+ID4gSGkgU2FzY2hhLA0KPiA+
ID4gDQo+ID4gPiBoZXJlIGlzIHRoZSBsaW5rIHRvIHRoZSBrZXJuZWwgcGF0Y2guDQo+ID4gPiBT
b3JyeSwgSSBmb3Jnb3QgdG8gcHV0IHlvdSBpbiBjYy4NCj4gPiA+IA0KPiA+ID4gaHR0cHM6Ly9w
YXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2xpbnV4LW10ZC9wYXRjaC8yMDIxMDMyNTEwMjMz
Ny40ODExNzItMS1zLnJpZWRtdWVsbGVyQHBoeXRlYy5kZS8NCj4gPiA+IA0KPiA+ID4gU3RlZmFu
DQo+ID4gPiANCj4gPiA+IE9uIE1vbiwgMjAyMS0wMy0yMiBhdCAwNjo1OSArMDEwMCwgc2hhQHBl
bmd1dHJvbml4LmRlIHdyb3RlOg0KPiA+ID4gPiBPbiBXZWQsIE1hciAxNywgMjAyMSBhdCAwNTox
NDowNVBNICswMDAwLCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6DQo+ID4gPiA+ID4gSGkgU2Fz
Y2hhLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IE9uIFdlZCwgMjAyMS0wMy0xNyBhdCAxMDo0MSAr
MDEwMCwgU2FzY2hhIEhhdWVyIHdyb3RlOg0KPiA+ID4gPiA+ID4gSGkgU3RlZmFuLA0KPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiBPbiBUdWUsIE1hciAxNiwgMjAyMSBhdCAwMTozNjoyNlBNICsw
MTAwLCBTdGVmYW4gUmllZG11ZWxsZXINCj4gPiA+ID4gPiA+IHdyb3RlOg0KPiA+ID4gPiA+ID4g
PiBUaGUgYmxvY2tzIGNvbnRhaW5pbmcgdGhlIGJhZCBibG9jayB0YWJsZSBjYW4gYmVjb21lIGJh
ZCBhcw0KPiA+ID4gPiA+ID4gPiB3ZWxsLiBTbw0KPiA+ID4gPiA+ID4gPiBtYWtlIHN1cmUgdG8g
c2tpcCBhbnkgYmxvY2tzIHRoYXQgYXJlIG1hcmtlZCBiYWQgd2hlbiBzZWFyY2hpbmcNCj4gPiA+
ID4gPiA+ID4gZm9yDQo+ID4gPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+ID4gPiBiYWQgYmxvY2sg
dGFibGUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFRoZSBmaWxlIGlzIGEgbW9yZSBvciBs
ZXNzIGRpcmVjdCBjb3B5IGZyb20gdGhlIGtlcm5lbC4gRG9lcyB0aGUNCj4gPiA+ID4gPiA+IHBy
b2JsZW0NCj4gPiA+ID4gPiA+IGV4aXN0IGluIHRoZSBrZXJuZWwgYXMgd2VsbD8NCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiBGcm9tIG15IHBvaW50IG9mIHZpZXcgSSB3b3VsZCBzYXkgeWVzLiBJIGhh
dmUganVzdCBtYWRlIGEgc21hbGwgdGVzdA0KPiA+ID4gPiA+IElzc3VlDQo+ID4gPiA+ID4gaXMN
Cj4gPiA+ID4gPiBzaG93biBpbiB0aGUga2VybmVsIGFzIHdlbGwuIEl0IGlzIGEgdmVyeSByYXcg
Y2FzZSB3aGVyZSB0d28gQkJUDQo+ID4gPiA+ID4gYmxvY2tzDQo+ID4gPiA+ID4gbmVlZA0KPiA+
ID4gPiA+IHRvIGJlIHdvcm4gb3V0IGJ1dCBvbiB0aGUgb3RoZXIgaGFuZCB0aGlzIGZpeCBzaG91
bGQgbm90IGhhdmUgdGhhdA0KPiA+ID4gPiA+IG11Y2gNCj4gPiA+ID4gPiBvZg0KPiA+ID4gPiA+
IGFuDQo+ID4gPiA+ID4gaW1wYWN0Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkgd2lsbCBzZW5k
IGEgc2ltaWxhciBwYXRjaCB0byB0aGUga2VybmVsLg0KPiA+ID4gPiANCj4gPiA+ID4gSSdkIGxp
a2UgdG8gZGVsYXkgdGhpcyBvbmUgdW50aWwgaXQgaXMgYWNjZXB0ZWQgaW4gdGhlIGtlcm5lbC4g
SSBkbw0KPiA+ID4gPiBub3QNCj4gPiA+ID4gZnVsbHkgdW5kZXJzdGFuZCB0aGUgY29uc2VxdWVu
Y2VzIG9mIHRoaXMgcGF0Y2gsIGJ1dCBob3BlZnVsbHkgb24gdGhlDQo+ID4gPiA+IG10ZCBsaXN0
IHRoZXJlIGlzIHNvbWVvbmUuDQo+ID4gPiA+IA0KPiA+ID4gPiBTYXNjaGENCj4gPiA+ID4gDQo+
ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+
ID4gYmFyZWJveCBtYWlsaW5nIGxpc3QNCj4gPiA+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
Zw0KPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

