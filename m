Delivery-date: Fri, 25 Jun 2021 12:58:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwjXk-00032q-Vr
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 12:58:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwjXi-0000Q9-W8
	for lore@pengutronix.de; Fri, 25 Jun 2021 12:58:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr1TA5vRzxOARtfm7GFIOuRR/n70DJELxLsQ1YCz6BE=; b=u+MJS3GUChrgso
	fhCQYJxCWF+QsSr7TybD5pCsdLp4ZoAjV19bsSZ7Zpzi9FoaW0Y/Yma3nKg2u7h/nVKjFp1kjEpFM
	VLDo0fhsiiyIhmCUq92k1aAw/ufOYSml/sTVfJbJz61W6zITzFietSAVzlCLy6P86C+8kwxijk27a
	NLzFeqwNcUxVhZA8Vb/61X+9EHt+XRi8mm11SDMoQTyJiberlHS8XNkQpLRJNWAF0MqSg8cIpWCJ/
	jYAqfh0im3NhF3I4sDdXx/l7MOewR0TVoaOPOUEsKuu2Bv2+HpJ7Hti7QtvDrypIp8oWbx6zaHwC9
	6XwW+1xJnqoXOTgJ+LeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjW4-0019Sj-98; Fri, 25 Jun 2021 10:56:56 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwj6l-000yYC-NP
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 10:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1624617042; x=1627209042;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GBfv9AGdrtbYs5nDO8ki91Huo5LxxL+P1jJquKfHqT4=;
 b=kXnFCyuG7HpzxvA6MeB9JZ99BDZQGQnKOsIco4P6P0yU7Zw/D1DUnDEUxfx41WQG
 EpoeY09zwLYBAwz6edeoNG8nhIY2muBTqsVaHYlHdWZvsBgM/lDHTdt62bbBGn9S
 NPYRirfuJhUJ/uHEd9c6k3yXS8HNBh/vfK9Pb/og1UU=;
X-AuditID: c39127d2-a77bc70000001c5e-de-60d5b0524bc2
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DF.1F.07262.250B5D06;
 Fri, 25 Jun 2021 12:30:42 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Fri, 25 Jun
 2021 12:30:42 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Fri, 25 Jun 2021 12:30:42 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] commands: of_property: Extend command usage on external
 dtb
Thread-Index: AQHXaQ3ahoSp/03Bt0aSAwPCypjxj6skOdsAgAAsxwA=
Date: Fri, 25 Jun 2021 10:30:42 +0000
Message-ID: <0b7bc05838d98c3e81d97e5f0afe6464ef1529e4.camel@phytec.de>
References: <20210624152810.3385526-1-y.bas@phytec.de>
 <20210625075020.GE9782@pengutronix.de>
In-Reply-To: <20210625075020.GE9782@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <5A7A3503771F8C4999AE606867A32DE3@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42JZI8BQphu04WqCQf9EdYsTi/uZLR5tnsXq
 wOSxeUm9R/9fgwCmKC6blNSczLLUIn27BK6MlZu72Qr2qVdcmfCIsYFxj1oXIyeHhICJROeZ
 FsYuRi4OIYHlTBL791xjh3AeMkocW7iLCcLZxCixbmkzSxcjBwebgKLElVv5IN0iAroSO46+
 ZwQJMwvYS6zokAUJCwsESfxccY8dJCwiECzRtTIPotpK4uDdNawgNouAqsS+SSvZQGxeATeJ
 xo67TCC2kECCxN953WA1nALGErcnd4PVMArISmzYcJ4ZxGYWEJfY9Ow7K8T9AhJL9kDEJQRE
 JV4+/gcVV5Bo6+lkgrhMU2L9Ln2IVguJ73c+MUHYihJTuh+yQ5wgKHFy5hOWCYzis5BsmIXQ
 PQtJ9ywk3bOQdC9gZF3FKJSbmZydWpSZrVeQUVmSmqyXkrqJERhfhyeqX9rB2DfH4xAjEwfj
 IUYJDmYlEd5HLZcShHhTEiurUovy44tKc1KLDzFKc7AoifNu4C0JExJITyxJzU5NLUgtgsky
 cXBKNTCqfSlbsUlKezn7660Rh7jePzQrF3B6MzObPd3O0Nl7zs2jFjUzWQ/5L9+dfZgx/uj0
 Giuu+JVHU8yXvVLdffZ39Kv/8ww0eIXvVp4yNVhS/P9qnsrz0Ck8LNf/JHfUr9r4X+VZ7bzc
 sgkztNhDriXXTe5mnj1H1Dyoem/msb+a5f3qL+zjw34psRRnJBpqMRcVJwIALWWEO50CAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_033047_981457_B1DC9BBA 
X-CRM114-Status: GOOD (  22.68  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: of_property: Extend command usage on external
 dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgU2FzY2hhLA0KDQpBbSBGcmVpdGFnLCBkZW0gMjUuMDYuMjAyMSB1bSAwOTo1MCArMDIwMCBz
Y2hyaWViIFNhc2NoYSBIYXVlcjoNCj4gSGksDQo+IA0KPiBPbiBUaHUsIEp1biAyNCwgMjAyMSBh
dCAwNToyODoxMFBNICswMjAwLCBZdW51cyBCYXMgd3JvdGU6DQo+ID4gQEAgLTMxNCw2ICszMjAs
OSBAQCBzdGF0aWMgaW50IGRvX29mX3Byb3BlcnR5KGludCBhcmdjLCBjaGFyDQo+ID4gKmFyZ3Zb
XSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgJ2YnOg0KPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZpeHVwID0gMTsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVh
azsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSAnZSc6DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkdGJmaWxlID0gb3B0
YXJnOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
YnJlYWs7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0Og0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBD
T01NQU5EX0VSUk9SX1VTQUdFOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
fQ0KPiA+IEBAIC0zMjcsOCArMzM2LDIyIEBAIHN0YXRpYyBpbnQgZG9fb2ZfcHJvcGVydHkoaW50
IGFyZ2MsIGNoYXINCj4gPiAqYXJndltdKQ0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRl
YnVnKCJwYXRoOiAlcyBwcm9wbmFtZTogJXNcbiIsIHBhdGgsIHByb3BuYW1lKTsNCj4gPiDCoA0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmICggIShzZXQgfHwgZGVsZXRlKSkNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIENPTU1BTkRfRVJST1JfVVNBR0U7DQo+ID4gKw0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmIChkdGJmaWxlKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGZkdCA9IHJlYWRfZmlsZShkdGJmaWxlLCAmc2l6ZSk7DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghZmR0KSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwcmludGYoInVuYWJsZSB0byByZWFkICVz
OiAlc1xuIiwgZHRiZmlsZSwNCj4gPiBzdHJlcnJvcihlcnJubykpOw0KPiANCj4gV2UgaGF2ZSAl
bSBub3cgYXMgYSBzaG9ydGN1dCBmb3IgIiVzIiwgc3RyZXJyb3IoZXJybm8pIGFuZCB5b3UgY291
bGQNCj4gYmUNCj4gdGhlIGZpcnN0IHVzZXIgOykNCg0KVGhhbmsgeW91IGZvciB0aGUgYWR2aWNl
LiBUaGF0J3MgYSBuaWNlIGZlYXR1cmUuDQoNCj4gDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHJv
b3QgJiYgIWZpeHVwKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZkdCA9
IG9mX2dldF9maXhlZF90cmVlKHJvb3QpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0ID0gd3JpdGVfZmlsZShkdGJmaWxlLCBmZHQsIGZkdDMyX3RvX2NwdShm
ZHQtDQo+ID4gPnRvdGFsc2l6ZSkpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZnJlZShmZHQpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+IA0KPiBBcmUgeW91
IHN1cmUgeW91IHdhbnQgdG8gc2F2ZSB0aGUgZml4ZWQgdHJlZT8gSSB3b3VsZCByYXRoZXIgZXhw
ZWN0DQo+IHRoYXQNCj4gdGhlIHNhdmVkIHRyZWUgaGFzIG9ubHkgdGhlIGRlc2lyZWQgcHJvcGVy
dHkgY2hhbmdlZC4NCg0KWW91J3JlIHJpZ2h0LCB3ZSBkb24ndCBuZWVkIHRvIGFwcGx5IHRoZSBm
aXh1cCdzIGhlcmUuIEknbGwgc2VuZCBhbg0KdXBkYXRlIG9uIHRoaXMuDQoNClJlZ2FyZHMsDQpZ
dW51cw0KPiANCj4gPiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDCoHJldHVybiBDT01NQU5EX0VSUk9S
X1VTQUdFOw0KPiA+ICtvdXQ6DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChyb290KQ0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBvZl9kZWxldGVfbm9kZShyb290KTsN
Cj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiDCoH0NCj4gPiDCoA0K
PiA+IMKgQkFSRUJPWF9DTURfSEVMUF9TVEFSVChvZl9wcm9wZXJ0eSkNCj4gPiBAQCAtMzczLDYg
KzQxMiw3IEBAIEJBUkVCT1hfQ01EX0hFTFBfVEVYVCgiT3B0aW9uczoiKQ0KPiA+IMKgQkFSRUJP
WF9DTURfSEVMUF9PUFQgKCItcyIswqAgInNldCBwcm9wZXJ0eSB0byB2YWx1ZSIpDQo+ID4gwqBC
QVJFQk9YX0NNRF9IRUxQX09QVCAoIi1kIizCoCAiZGVsZXRlIHByb3BlcnR5IikNCj4gPiDCoEJB
UkVCT1hfQ01EX0hFTFBfT1BUICgiLWYiLMKgICJzZXQvZGVsZXRlIGFzIGEgZml4dXAgKGRlZmVy
IHRoZQ0KPiA+IGFjdGlvbiB1bnRpbCBib290aW5nKSIpDQo+ID4gK0JBUkVCT1hfQ01EX0hFTFBf
T1BUICgiLWUgZHRiIizCoCAic2V0L2RlbGV0ZS9maXh1cCBmcm9tIGV4dGVybmFsDQo+ID4gZHRi
IikNCj4gPiDCoEJBUkVCT1hfQ01EX0hFTFBfVEVYVCgiIikNCj4gPiDCoEJBUkVCT1hfQ01EX0hF
TFBfVEVYVCgiVmFsaWQgZm9ybWF0cyBmb3IgdmFsdWVzOiIpDQo+ID4gwqBCQVJFQk9YX0NNRF9I
RUxQX1RFWFQoIjwweDAwMTEyMjMzIDQgMDU+IC0gYW4gYXJyYXkgb2YgY2VsbHMuDQo+ID4gY2Vs
bHMgbm90IGJlZ2lubmluZyB3aXRoIGEgZGlnaXQgYXJlIikNCj4gPiBAQCAtMzg0LDggKzQyNCw4
IEBAIEJBUkVCT1hfQ01EX0hFTFBfRU5EDQo+ID4gwqBCQVJFQk9YX0NNRF9TVEFSVChvZl9wcm9w
ZXJ0eSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLmNtZMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoD0g
ZG9fb2ZfcHJvcGVydHksDQo+ID4gwqDCoMKgwqDCoMKgwqDCoEJBUkVCT1hfQ01EX0RFU0MoImhh
bmRsZSBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVzIikNCj4gPiAtwqDCoMKgwqDCoMKgwqBCQVJFQk9Y
X0NNRF9PUFRTKCJbLXNkXSBbLWZdIE5PREUgW1BST1BFUlRZXSBbVkFMVUVTXSIpDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgQkFSRUJPWF9DTURfT1BUUygiWy1zZF0gWy1lXSBbLWZdIE5PREUgW1BST1BF
UlRZXQ0KPiA+IFtWQUxVRVNdIikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgQkFSRUJPWF9DTURfR1JP
VVAoQ01EX0dSUF9NSVNDKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoEJBUkVCT1hfQ01EX0NPTVBMRVRF
KGRldmljZXRyZWVfY29tcGxldGUpDQo+ID4gK8KgwqDCoMKgwqDCoMKgQkFSRUJPWF9DTURfQ09N
UExFVEUoZGV2aWNldHJlZV9maWxlX2NvbXBsZXRlKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBCQVJF
Qk9YX0NNRF9IRUxQKGNtZF9vZl9wcm9wZXJ0eV9oZWxwKQ0KPiA+IMKgQkFSRUJPWF9DTURfRU5E
DQo+ID4gLS0gDQo+ID4gMi4zMC4wDQo+ID4gDQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBiYXJlYm94IG1haWxpbmcgbGlzdA0K
PiA+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveA0KPiA+IA0KPiANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

