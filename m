Delivery-date: Thu, 23 Jun 2022 13:01:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KaV-00Bs1G-FQ
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 13:01:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KaU-0000kI-R2
	for lore@pengutronix.de; Thu, 23 Jun 2022 13:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yuri0kAYjMD23SVSJKzqTTqggjcosy9bjUqewHWxI/4=; b=adia6dgYitW1sNcljfii7RNxhc
	ot8NnttVF7kG0uKo9nC4eVhaxZFgxrwpvrdq4z8FAK20YGcFNKpqrJS4sgLbNh/l9reexA6mvfQSa
	9WJ4StsiXI90ATDiTmfCnUz5hNJU+0KaFIzBcqKQqfXND4mlkDnzb0k5dgPfJvYVjTr3zWroCC+ro
	hH2jdQLt5X3Dl8B9Vtl+ZYAjJoh5rvBmvEPAxgUdRS40KUTF7ZooYUNC+RzSHJoiTa5nclgj9wXvC
	1Txb1DtQH3WNVAvlT/6Gcgn+S71i0wAyW/4CeCo9gMq1iXLUhB8TY1iHtYvtnnPQFe1dO0m25c4aR
	zvfSb9Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KZ3-00EcQV-1m; Thu, 23 Jun 2022 10:59:57 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KYy-00EcLY-8R
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655981982; x=1658573982;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Yuri0kAYjMD23SVSJKzqTTqggjcosy9bjUqewHWxI/4=;
	b=PdVUMbIj2yeYplUSnhyrI9r2O7l/ho3GGJQpWkkJBIb7K4lRqF0Jk9/oTVs5EEYM
	q0czCILhghddaGmlOLZNVsxWsrxOLXEuLDUMC2GxmFa3w9DCMCeQ2Xo+MVwNyMqv
	8BxP1nc1coYaM+3hL5vn3ZjsvEe7epKdh9qtwWDSyPA=;
X-AuditID: c39127d2-b3a2d70000001dbe-3c-62b4479ebf9b
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 22.BD.07614.E9744B26; Thu, 23 Jun 2022 12:59:42 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 23 Jun
 2022 12:59:42 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Thu, 23 Jun 2022 12:59:42 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>,
	"lst@pengutronix.de" <lst@pengutronix.de>
Thread-Topic: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
Thread-Index: AQHYhuxUu5SJqfFayUuD9NjiywLjq61csU2A
Date: Thu, 23 Jun 2022 10:59:42 +0000
Message-ID: <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
	 <20220623103051.572885-4-a.fatoum@pengutronix.de>
In-Reply-To: <20220623103051.572885-4-a.fatoum@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <67F85EEE5A2C4647BA42012457D2B93F@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsWyRpKBR3ee+5Ykg8OfdSwWftjBZNHcYWtx
	YnE/s8Xqqc8ZLf5+/cDuwOqxc9Zddo/NS+o9+v8aeKy5vJQlgCWKyyYlNSezLLVI3y6BK+Pp
	i3b2gkdaFadmL2JuYLyi2cXIySEhYCLRPqWLHcQWEljCJLF9igeE/YBRovNecRcjF5C9iVGi
	ff8JJpAEm4CGxMsT3WC2iECZxMcnvxlBipgFVjNKNLT8ZgNJCAskS2w81cYKUZQicWrXJSjb
	SOLAquNgNSwCqhJ3Ls5nBLF5BdwkTv5+ygyxuUhi25xvYPWcAnYSMz72gl3HKCArsWHDebAa
	ZgFxiU3PvrNCfCAgsWQPRFxCQFTi5eN/UHF5iRO3pgEdygFUrymxfpc+RKuFxNn7LYwQtqLE
	lO6H7BAnCEqcnPmEZQKj+CwkG2YhdM9C0j0LSfcsJN0LGFlXMQrlZiZnpxZlZusVZFSWpCbr
	paRuYgTG5OGJ6pd2MPbN8TjEyMTBeIhRgoNZSYT3xf/NSUK8KYmVValF+fFFpTmpxYcYpTlY
	lMR57/cwJQoJpCeWpGanphakFsFkmTg4pRoYmbxLM1Ka+VR61B40aHV7R0bcKWxz+B4nsyjp
	i3lLcw9zZmDyCo8J++2mqrh65J6x9ue0F2Dh184LyEhS/tn3OZpfLepRju63+LkR/xYeO+la
	vo4vtpcxoGvRap7+Zo5D3WJRs/yLHGcvPWfwdn3CrIvzDdPLqhzlmiu9jvA7vA60ydjNp8RS
	nJFoqMVcVJwIAH/lBfy3AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_035952_796706_21F0E216 
X-CRM114-Status: GOOD (  27.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQWhtYWQsDQoNCkFtIERvbm5lcnN0YWcsIGRlbSAyMy4wNi4yMDIyIHVtIDEyOjMwICsw
MjAwIHNjaHJpZWIgQWhtYWQgRmF0b3VtOg0KPiBPbGRlciBOWFAgRERSIHNwcmVhZHNoZWV0cyBk
b24ndCBpbml0aWFsaXplIEFERFJNQVA3LCBsZWF2aW5nIGl0IGF0DQo+IGl0cw0KPiBQT1IgZGVm
YXVsdCBvZiB6ZXJvLiBOb3cgdGhhdCBiYXJlYm94IGxvb2tzIGF0IEFERFJNQVA3IHRvIGJlIGFi
bGUgdG8NCj4gY29ycmVjdGx5IGRldGVjdCBiaWdnZXIgbWVtb3J5IHNpemVzLCBiYXJlYm94IHBy
b3BlciBvbiBvdXQtb2YtdHJlZQ0KPiBib2FyZHMgd2l0aCBvbGRlciBzcHJlYWRzaGVldHMgbWF5
IHJlYWQgYmFjayA0eCB0aW1lcyBhcyBtdWNoIFJBTQ0KPiBhcyBhY3R1YWxseSBmaXR0ZWQuDQo+
IA0KPiBXb3JrIGFyb3VuZCB0aGlzIGJ5IHdyaXRpbmcgYSB0cmFpbGluZyAweGYwZiAodGhlIG5l
dXRyYWwgaWdub3JlLW1lDQo+IHZhbHVlIGZvciB0aGUgcmVnaXN0ZXIpIGlmIHRoZSByZWdpc3Rl
ciB3YXNuJ3Qgd3JpdHRlbiB0aHJvdWdoDQo+IGRyYW1fdGltaW5nX2luZm86OmRkcmNfY2ZnLiBX
ZSBjb25zaWRlciB0aGlzIHNhZmUgdG8gZG8sIGJlY2F1c2UNCj4gdGhlIEREUkMgaXMgaGVsZCBp
biByZXNldCB3aGlsZSB0aGVzZSB2YWx1ZXMgYXJlIHByb2dyYW1tZWQuDQoNCmhhdmUgeW91IHRy
aWVkIHRoaXMgcGF0Y2ggd2l0aG91dCBhY3R1YWxseSB1cGRhdGluZyB0aGUgUkFNIFRpbWluZ3Mg
KA0Kc28gcGF0Y2ggMi80KT8NCkkgaGF2ZSBqdXN0IHBsYXllZCBhcm91bmQgYWxzbyBzZXR0aW5n
IEFERFJNQVA3IHJpZ2h0IGJlZm9yZSANCmRkcl9jZmdfdW1jdGwyKCkgd2l0aG91dCBmaXhpbmcg
dGhlIHRpbWluZ3MgYW5kIHRoZSByZWdpc3RlciB3YXMgMA0KYWdhaW4gYWZ0ZXIgc3RhcnR1cCBh
bmQgc28gdGhlIFJBTSBzaXplIHdyb25nLg0KU28gaXQgc2VlbXMgdG8gbWUgdGhhdCB0aGUgdmFs
dWUgaXMgb3ZlcndyaXR0ZW4vcmVzZXR0ZWQgYXQgc29tZSBvdGhlcg0KcG9pbnQgYWdhaW4gLi4u
IG9yIG1heWJlIEkganVzdCBkaWQgc29tZXRoaW5nIHdyb25nLg0KDQpSZWdhcmRzLA0KVGVyZXNh
DQoNCj4gDQo+IEZpeGVzOiBkYWQyYjU2MzZiZDggKCJBUk06IGlteDogQWRkIGlteDggc3VwcG9y
dCBmb3IgMTggYml0IFNEUkFNIHJvdw0KPiBzaXplIGhhbmRsZSIpDQo+IEZpeGVzOiA2Y2YxOTdm
YTYxZjkgKCJhcm06IGlteDogbW1kY19zaXplOiBJbmNyZWFzZSByb3dfbWF4IGZvcg0KPiBpbXg4
bSIpDQo+IFNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXgu
ZGU+DQo+IC0tLQ0KPiAgZHJpdmVycy9kZHIvaW14OG0vZGRyX2luaXQuYyB8IDE4ICsrKysrKysr
KysrKysrKysrKw0KPiAgZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMgICB8ICA2ICsrKysrKw0K
PiAgaW5jbHVkZS9zb2MvaW14OG0vZGRyLmggICAgICB8ICAxICsNCj4gIDMgZmlsZXMgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGRyL2lteDht
L2Rkcl9pbml0LmMNCj4gYi9kcml2ZXJzL2Rkci9pbXg4bS9kZHJfaW5pdC5jDQo+IGluZGV4IGFl
MDViMTM2MjI5Yy4uOWE0YjRlMmNhODhhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Rkci9pbXg4
bS9kZHJfaW5pdC5jDQo+ICsrKyBiL2RyaXZlcnMvZGRyL2lteDhtL2Rkcl9pbml0LmMNCj4gQEAg
LTEzLDE0ICsxMywzMiBAQA0KPiAgI2luY2x1ZGUgPG1hY2gvaW14OG0tcmVncy5oPg0KPiAgI2lu
Y2x1ZGUgPG1hY2gvaW14OG0tY2NtLXJlZ3MuaD4NCj4gIA0KPiArYm9vbCBpbXg4bV9kZHJfb2xk
X3NwcmVhZHNoZWV0ID0gdHJ1ZTsNCj4gKw0KPiAgc3RhdGljIHZvaWQgZGRyX2NmZ191bWN0bDIo
c3RydWN0IGRyYW1fY2ZnX3BhcmFtICpkZHJjX2NmZywgaW50IG51bSkNCj4gIHsNCj4gIAlpbnQg
aSA9IDA7DQo+ICANCj4gIAlmb3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspIHsNCj4gKwkJaWYgKGRk
cmNfY2ZnLT5yZWcgPT0gRERSQ19BRERSTUFQNygwKSkNCj4gKwkJICAgIGlteDhtX2Rkcl9vbGRf
c3ByZWFkc2hlZXQgPSBmYWxzZTsNCj4gIAkJcmVnMzJfd3JpdGUoKHVuc2lnbmVkIGxvbmcpZGRy
Y19jZmctPnJlZywgZGRyY19jZmctDQo+ID52YWwpOw0KPiAgCQlkZHJjX2NmZysrOw0KPiAgCX0N
Cj4gKw0KPiArCS8qDQo+ICsJICogT2xkZXIgTlhQIEREUiBjb25maWd1cmF0aW9uIHNwcmVhZHNo
ZWV0cyBkb24ndCBpbml0aWFsaXplDQo+IEFERFJNQVA3LA0KPiArCSAqIHdoaWNoIGZhbHNpZmll
cyB0aGUgbWVtb3J5IHNpemUgcmVhZCBiYWNrIGZyb20gdGhlDQo+IGNvbnRyb2xsZXINCj4gKwkg
KiBpbiBiYXJlYm94IHByb3Blci4NCj4gKwkgKi8NCj4gKwlpZiAoaW14OG1fZGRyX29sZF9zcHJl
YWRzaGVldCkgew0KPiArCQlwcl93YXJuKCJXb3JraW5nIGFyb3VuZCBvbGQgc3ByZWFkc2hlZXQu
IFBsZWFzZQ0KPiByZWdlbmVyYXRlXG4iKTsNCj4gKwkJLyoNCj4gKwkJICogQWx0ZXJuYXRpdmVs
eSwgc3RpY2sgeyBERFJDX0FERFJNQVA3KDApLCAweGYwZiB9DQo+IGludG8NCj4gKwkJICogc3Ry
dWN0IGRyYW1fdGltaW5nX2luZm86OmRkcmNfY2ZnIG9mIHlvdXIgb2xkIHRpbWluZw0KPiBmaWxl
DQo+ICsJCSAqLw0KPiArCQlyZWczMl93cml0ZShERFJDX0FERFJNQVA3KDApLCAweGYwZik7DQo+
ICsJfQ0KPiAgfQ0KPiAgDQo+ICAvKg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZHIvaW14OG0v
aGVscGVyLmMgYi9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIuYw0KPiBpbmRleCA5NGJiYjgxMTU3
NmQuLjk4ZTQwODQ5NTg0YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kZHIvaW14OG0vaGVscGVy
LmMNCj4gKysrIGIvZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMNCj4gQEAgLTYyLDYgKzYyLDEy
IEBAIHZvaWQgZHJhbV9jb25maWdfc2F2ZShzdHJ1Y3QgZHJhbV90aW1pbmdfaW5mbw0KPiAqdGlt
aW5nX2luZm8sDQo+ICAJCWNmZysrOw0KPiAgCX0NCj4gIA0KPiArCWlmIChpbXg4bV9kZHJfb2xk
X3NwcmVhZHNoZWV0KSB7DQo+ICsJCWNmZy0+cmVnID0gRERSQ19BRERSTUFQNygwKTsNCj4gKwkJ
Y2ZnLT52YWwgPSAweGYwZjsNCj4gKwkJY2ZnKys7DQo+ICsJfQ0KPiArDQo+ICAJLyogc2F2ZSBk
ZHJwaHkgY29uZmlnICovDQo+ICAJc2F2ZWRfdGltaW5nLT5kZHJwaHlfY2ZnID0gY2ZnOw0KPiAg
CWZvciAoaSA9IDA7IGkgPCB0aW1pbmdfaW5mby0+ZGRycGh5X2NmZ19udW07IGkrKykgew0KPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2MvaW14OG0vZGRyLmggYi9pbmNsdWRlL3NvYy9pbXg4bS9k
ZHIuaA0KPiBpbmRleCA5YWU3Y2I4Nzc2ODYuLjE0N2E3ZDQ5OWFhZiAxMDA2NDQNCj4gLS0tIGEv
aW5jbHVkZS9zb2MvaW14OG0vZGRyLmgNCj4gKysrIGIvaW5jbHVkZS9zb2MvaW14OG0vZGRyLmgN
Cj4gQEAgLTQwNyw2ICs0MDcsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgcmVnMzJzZXRiaXQodW5z
aWduZWQgbG9uZw0KPiBhZGRyLCB1MzIgYml0KQ0KPiAgI2RlZmluZSBkd2NfZGRycGh5X2FwYl9y
ZChhZGRyKSBcDQo+ICAJcmVnMzJfcmVhZChJT01FTShJUDJBUEJfRERSUEhZX0lQU19CQVNFX0FE
RFIoMCkpICsgNCAqIChhZGRyKSkNCj4gIA0KPiArZXh0ZXJuIGJvb2wgaW14OG1fZGRyX29sZF9z
cHJlYWRzaGVldDsNCj4gIGV4dGVybiBzdHJ1Y3QgZHJhbV9jZmdfcGFyYW0gZGRycGh5X3RyYWlu
ZWRfY3NyW107DQo+ICBleHRlcm4gdWludDMyX3QgZGRycGh5X3RyYWluZWRfY3NyX251bTsNCj4g
IA0KLS0gDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1
NTEyOSBNYWlueiwgR2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNo
YWVsIE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFp
bnogSFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5
MDU5ODU1DQo=


