Delivery-date: Thu, 28 Apr 2022 15:21:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nk45l-000oRa-4w
	for lore@lore.pengutronix.de; Thu, 28 Apr 2022 15:21:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nk45h-0007MM-Rh
	for lore@pengutronix.de; Thu, 28 Apr 2022 15:21:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JR96I7BTodSWCnC7odc6/xQsbsF5F3+L6yws8kS4eY=; b=3itD12BuRKD6aA
	vRJsZIXoT89mgJTmN5Hieym5meCdnfcfyV27SArGQ2Xh35UjZUcUjNFSY2BcXYKjXvyvnd9gOjn9/
	CY2RpJtQokjIyH0VA9O+Kx2Wb2AbBrvAdnkcuev7L1CPBCQDBZz8FYR2xTFOC3A8Fjh9vy/6S5N/w
	I+2mfPOp0VxhSMlnJ7+hksqPGK5+R3XO1+T4FST8g3F9HDERG2rifMjD4CSPTiTTwFJOMn+7Er41s
	+AgiNPaV9ADcwd2bXTi8KAVD2DgiLoW9zFP2TrmXOctQiPk8YrfXUff/SsunjY4TQBFDebXuXjYRc
	X7EMk5QAu8EiXUQ1lu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk44A-006yok-Ha; Thu, 28 Apr 2022 13:20:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk41i-006xcn-Oz
 for barebox@lists.infradead.org; Thu, 28 Apr 2022 13:17:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <u.oelmann@pengutronix.de>)
 id 1nk41d-0006bi-5C; Thu, 28 Apr 2022 15:17:41 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <u.oelmann@pengutronix.de>)
 id 1nk41c-001tCZ-Mb; Thu, 28 Apr 2022 15:17:40 +0200
References: <20220427121413.1887458-1-o.rempel@pengutronix.de>
 <20220427121413.1887458-2-o.rempel@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 28 Apr 2022 15:16:05 +0200
In-reply-to: <20220427121413.1887458-2-o.rempel@pengutronix.de>
Message-ID: <6rzgk5fitn.fsf@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_061746_885017_066A31CD 
X-CRM114-Status: GOOD (  28.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/5] common: add $global.serial_number with device
 tree fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgT2xla3NpaiwKCk9uIFdlZCwgQXByIDI3IDIwMjIgYXQgMTQ6MTQgKzAyMDAsIE9sZWtzaWog
UmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gRnJvbTogQWhtYWQgRmF0
b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KPgo+IFRoaXMgbmV3IHZhcmlhYmxlIGNhbiBi
ZSBzZXQgYnkgYm9hcmRzIGZyb20gQyBjb2RlIG9yIGZyb20gdGhlCj4gZW52aXJvbm1lbnQgdG8g
Y2hhbmdlIHRoZSBzZXJpYWwgbnVtYmVyIGZpeGVkIHVwIGludG8gdGhlIGtlcm5lbCBkZXZpY2UK
PiB0cmVlLgo+Cj4gU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRy
b25peC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBPbGVrc2lqIFJlbXBlbCA8by5yZW1wZWxAcGVuZ3V0
cm9uaXguZGU+Cj4gLS0tCj4gIGNvbW1vbi9LY29uZmlnICAgfCAgNSArKysrKwo+ICBjb21tb24v
bWlzYy5jICAgIHwgMTYgKysrKysrKysrKysrKysrKwo+ICBjb21tb24vb2Z0cmVlLmMgIHwgIDkg
KysrKysrKysrCj4gIGluY2x1ZGUvY29tbW9uLmggfCAgMyArKysKPiAgNCBmaWxlcyBjaGFuZ2Vk
LCAzMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvY29tbW9uL0tjb25maWcgYi9jb21t
b24vS2NvbmZpZwo+IGluZGV4IGY3YTZhOTZlODcuLmQwODMwMmE1NzMgMTAwNjQ0Cj4gLS0tIGEv
Y29tbW9uL0tjb25maWcKPiArKysgYi9jb21tb24vS2NvbmZpZwo+IEBAIC0xMDY2LDYgKzEwNjYs
MTEgQEAgY29uZmlnIE1BQ0hJTkVfSUQKPiAgCSAgTm90ZTogaWYgbm8gaGFzaGFibGUgaW5mb3Jt
YXRpb24gaXMgYXZhaWxhYmxlIG5vIG1hY2hpbmUgaWQgd2lsbCBiZSBwYXNzZWQKPiAgCSAgdG8g
dGhlIGtlcm5lbC4KPiAgCj4gK2NvbmZpZyBTRVJJQUxfTlVNQkVSX0ZJWFVQCj4gKwlib29sICJm
aXggdXAgYm9hcmQgc2VyaWFsIG51bWJlciIKPiArCWhlbHAKPiArCSAgZml4dXAgc2VyaWFsIG51
bWJlciBzdXBwbGllZCBieSBib2FyZCBjb2RlIGluZm8gZGV2aWNlIHRyZWUKCnRoaXMgc2hvdWxk
IGJlCgogIHMvY29kZSBpbmZvIGRldmljZS9jb2RlIGludG8gZGV2aWNlLwoKcmlnaHQ/CgpCZXN0
IHJlZ2FyZHMKVWxyaWNoCgoKPiArCj4gIGNvbmZpZyBTWVNURU1EX09GX1dBVENIRE9HCj4gIAli
b29sICJpbmZvcm0gZGV2aWNldHJlZS1lbmFibGVkIGtlcm5lbCBvZiB1c2VkIHdhdGNoZG9nIgo+
ICAJZGVwZW5kcyBvbiBXQVRDSERPRyAmJiBPRlRSRUUgJiYgRkxFWElCTEVfQk9PVEFSR1MKPiBk
aWZmIC0tZ2l0IGEvY29tbW9uL21pc2MuYyBiL2NvbW1vbi9taXNjLmMKPiBpbmRleCAyMjY2MzVm
MGQ0Li4zYjNiYzA1YmZkIDEwMDY0NAo+IC0tLSBhL2NvbW1vbi9taXNjLmMKPiArKysgYi9jb21t
b24vbWlzYy5jCj4gQEAgLTE0OSw2ICsxNDksNyBAQCBFWFBPUlRfU1lNQk9MKGJhcmVib3hfZ2V0
X21vZGVsKTsKPiAgQkFSRUJPWF9NQUdJQ1ZBUihnbG9iYWwubW9kZWwsICJQcm9kdWN0IG5hbWUg
b2YgdGhpcyBoYXJkd2FyZSIpOwo+ICAKPiAgc3RhdGljIGNoYXIgKmhvc3RuYW1lOwo+ICtzdGF0
aWMgY2hhciAqc2VyaWFsX251bWJlcjsKPiAgCj4gIC8qCj4gICAqIFRoZSBob3N0bmFtZSBpcyBz
dXBwb3NlZCB0byBiZSB0aGUgc2hvcnRuYW1lIG9mIGEgYm9hcmQuIEl0IHNob3VsZAo+IEBAIC0x
NzksNiArMTgwLDIxIEBAIEVYUE9SVF9TWU1CT0woYmFyZWJveF9zZXRfaG9zdG5hbWVfbm9fb3Zl
cndyaXRlKTsKPiAgQkFSRUJPWF9NQUdJQ1ZBUihnbG9iYWwuaG9zdG5hbWUsCj4gIAkJInNob3J0
bmFtZSBvZiB0aGUgYm9hcmQuIEFsc28gdXNlZCBhcyBob3N0bmFtZSBmb3IgREhDUCByZXF1ZXN0
cyIpOwo+ICAKPiArdm9pZCBiYXJlYm94X3NldF9zZXJpYWxfbnVtYmVyKGNvbnN0IGNoYXIgKl9f
c2VyaWFsX251bWJlcikKPiArewo+ICsJZ2xvYmFsdmFyX2FkZF9zaW1wbGVfc3RyaW5nKCJzZXJp
YWxfbnVtYmVyIiwgJnNlcmlhbF9udW1iZXIpOwo+ICsKPiArCWZyZWUoc2VyaWFsX251bWJlcik7
Cj4gKwlzZXJpYWxfbnVtYmVyID0geHN0cmR1cChfX3NlcmlhbF9udW1iZXIpOwo+ICt9Cj4gKwo+
ICtjb25zdCBjaGFyICpiYXJlYm94X2dldF9zZXJpYWxfbnVtYmVyKHZvaWQpCj4gK3sKPiArCXJl
dHVybiBzZXJpYWxfbnVtYmVyOwo+ICt9Cj4gKwo+ICtCQVJFQk9YX01BR0lDVkFSKGdsb2JhbC5z
ZXJpYWxfbnVtYmVyLCAiQm9hcmQgc2VyaWFsIG51bWJlciIpOwo+ICsKPiAgdm9pZCBfX25vcmV0
dXJuIHBhbmljKGNvbnN0IGNoYXIgKmZtdCwgLi4uKQo+ICB7Cj4gIAl2YV9saXN0IGFyZ3M7Cj4g
ZGlmZiAtLWdpdCBhL2NvbW1vbi9vZnRyZWUuYyBiL2NvbW1vbi9vZnRyZWUuYwo+IGluZGV4IGJj
ZTBmZjA5ZDYuLmM2ZDc1MDU1Y2MgMTAwNjQ0Cj4gLS0tIGEvY29tbW9uL29mdHJlZS5jCj4gKysr
IGIvY29tbW9uL29mdHJlZS5jCj4gQEAgLTIwNyw2ICsyMDcsMTUgQEAgc3RhdGljIGludCBvZl9m
aXh1cF9ib290YXJncyhzdHJ1Y3QgZGV2aWNlX25vZGUgKnJvb3QsIHZvaWQgKnVudXNlZCkKPiAg
CWludCBpbnN0YW5jZSA9IHJlc2V0X3NvdXJjZV9nZXRfaW5zdGFuY2UoKTsKPiAgCXN0cnVjdCBk
ZXZpY2VfZCAqZGV2Owo+ICAKPiArCWlmIChJU19FTkFCTEVEKENPTkZJR19TRVJJQUxfTlVNQkVS
X0ZJWFVQKSkgewo+ICsJCWNvbnN0IGNoYXIgKnNlcmlhbG5vOwo+ICsKPiArCQlzZXJpYWxubyA9
IGdldGVudigiZ2xvYmFsLnNlcmlhbF9udW1iZXIiKTsKPiArCQlpZiAoc2VyaWFsbm8pCj4gKwkJ
CW9mX3Byb3BlcnR5X3dyaXRlX3N0cmluZyhyb290LCAic2VyaWFsLW51bWJlciIsIHNlcmlhbG5v
KTsKPiArCj4gKwl9Cj4gKwo+ICAJbm9kZSA9IG9mX2NyZWF0ZV9ub2RlKHJvb3QsICIvY2hvc2Vu
Iik7Cj4gIAlpZiAoIW5vZGUpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvY29tbW9uLmggYi9pbmNsdWRlL2NvbW1vbi5oCj4gaW5kZXggNDE2N2Q0Njc2ZS4uOTY3
NTAyYTdhYiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2NvbW1vbi5oCj4gKysrIGIvaW5jbHVkZS9j
b21tb24uaAo+IEBAIC0xMjYsNCArMTI2LDcgQEAgY29uc3QgY2hhciAqYmFyZWJveF9nZXRfaG9z
dG5hbWUodm9pZCk7Cj4gIHZvaWQgYmFyZWJveF9zZXRfaG9zdG5hbWUoY29uc3QgY2hhciAqKTsK
PiAgdm9pZCBiYXJlYm94X3NldF9ob3N0bmFtZV9ub19vdmVyd3JpdGUoY29uc3QgY2hhciAqKTsK
PiAgCj4gK2NvbnN0IGNoYXIgKmJhcmVib3hfZ2V0X3NlcmlhbF9udW1iZXIodm9pZCk7Cj4gK3Zv
aWQgYmFyZWJveF9zZXRfc2VyaWFsX251bWJlcihjb25zdCBjaGFyICopOwo+ICsKPiAgI2VuZGlm
CS8qIF9fQ09NTU9OX0hfICovCgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IFVscmljaCDDlmxtYW5uICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExp
bnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAg
ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

