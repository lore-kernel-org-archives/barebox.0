Delivery-date: Wed, 09 Feb 2022 10:33:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHjMJ-00AVUm-Rs
	for lore@lore.pengutronix.de; Wed, 09 Feb 2022 10:33:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHjMI-0008NZ-7n
	for lore@pengutronix.de; Wed, 09 Feb 2022 10:33:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bhc6qU8gbq9mLGEXs6DY+1q7mAT+Wyxua1AzG/wBso=; b=nXZx/OhwV1vFnO
	jf2Bpp4lCA7wGCrIDUwms1rF4XwTfnepyIZGd9Yo51GRm7Y8V/uQgZVCLEmWrq6MaZ6Aktvfb5EId
	rHD/CN7kAAe1lG+A6G0yHeR79zeo8FGgj/QSI72ZHexFpTrod7FHo4NU230DEAZJsPIfIQgdQvYzL
	Ypn3dDOpMdKQ0r+qJGb3juQc0akj//PCdvTG5usnUoRgZVix5Q4j3cN870GTz09kkdQ6JrfZl/Ahd
	FWyeOkyKt66AMmS8UheQueZ99CGNnNqcPGgS0G30Y4mwO0U7a6KRY00c6vbZ5+r9lkcblRk0PkVTQ
	j5SZkzkWC1Pf4ToAIGwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjKx-00Gvzy-3p; Wed, 09 Feb 2022 09:32:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjKp-00GvyT-JV
 for barebox@lists.infradead.org; Wed, 09 Feb 2022 09:32:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nHjKn-0008AQ-MD; Wed, 09 Feb 2022 10:32:21 +0100
Message-ID: <c4e9f860-74cd-4054-5af6-b3a37a2fd064@pengutronix.de>
Date: Wed, 9 Feb 2022 10:32:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
References: <20220209085125.177442-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220209085125.177442-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_013223_680301_6F028585 
X-CRM114-Status: GOOD (  19.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: let MACHINE_ID select SHA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMDkuMDIuMjIgMDk6NTEsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFNIQTEgaXMgYSBz
eW1ib2wgdGhhdCBjYW5ub3QgYmUgZW5hYmxlZCBtYW51YWxseSBhbmQgYWxsIG90aGVyIHN5bWJv
bHMKPiBuZWVkaW5nIGl0LCBzZWxlY3QgaXQ6Cj4gCj4gJCBnaXQgZ3JlcCAtQjMgLUUgJyhkZXBl
bmRzIG9ufHNlbGVjdCkgU0hBMVw+JyBIRUFECj4gSEVBRDpjb21tb24vS2NvbmZpZy1jb25maWcg
TUFDSElORV9JRAo+IEhFQUQ6Y29tbW9uL0tjb25maWctICAgIGJvb2wgImNvbXB1dGUgdW5pcXVl
IG1hY2hpbmUtaWQiCj4gSEVBRDpjb21tb24vS2NvbmZpZy0gICAgZGVwZW5kcyBvbiBGTEVYSUJM
RV9CT09UQVJHUwo+IEhFQUQ6Y29tbW9uL0tjb25maWc6ICAgIGRlcGVuZHMgb24gU0hBMQo+IC0t
Cj4gSEVBRDpjcnlwdG8vS2NvbmZpZy0KPiBIRUFEOmNyeXB0by9LY29uZmlnLWNvbmZpZyBESUdF
U1RfU0hBMV9HRU5FUklDCj4gSEVBRDpjcnlwdG8vS2NvbmZpZy0gICAgYm9vbCAiU0hBMSIKPiBI
RUFEOmNyeXB0by9LY29uZmlnOiAgICBzZWxlY3QgU0hBMQo+IC0tCj4gSEVBRDpjcnlwdG8vS2Nv
bmZpZy1jb25maWcgRElHRVNUX1NIQTFfQVJNCj4gSEVBRDpjcnlwdG8vS2NvbmZpZy0gICAgdHJp
c3RhdGUgIlNIQTEgZGlnZXN0IGFsZ29yaXRobSAoQVJNLWFzbSkiCj4gSEVBRDpjcnlwdG8vS2Nv
bmZpZy0gICAgZGVwZW5kcyBvbiBBUk0KPiBIRUFEOmNyeXB0by9LY29uZmlnOiAgICBzZWxlY3Qg
U0hBMQo+IAo+IEZpeGVzOiBhYWRhODRlNzJlMTUgKCJjb21tb246IG1hY2hpbmVfaWQ6IGludHJv
ZHVjZSBtYWNoaW5lIGlkIGdlbmVyYXRpb24iKQo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpTSEExIGlzIHNlbGVjdGVk
IGJ5IGVpdGhlciBESUdFU1RfU0hBMV9HRU5FUklDIG9yIERJR0VTVF9TSEExX0FSTS4KSSBkb24n
dCB0aGluayB0aGlzIGlzIGNvcnJlY3QuCgo+IC0tLQo+ICBjb21tb24vS2NvbmZpZyB8IDIgKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2NvbW1vbi9LY29uZmlnIGIvY29tbW9uL0tjb25maWcKPiBpbmRleCBlNTQwY2Jh
N2ViYWEuLjc5ZjZhZmQ4ZGU4NSAxMDA2NDQKPiAtLS0gYS9jb21tb24vS2NvbmZpZwo+ICsrKyBi
L2NvbW1vbi9LY29uZmlnCj4gQEAgLTEwNDIsNyArMTA0Miw3IEBAIGNvbmZpZyBSRVNFVF9TT1VS
Q0UKPiAgY29uZmlnIE1BQ0hJTkVfSUQKPiAgCWJvb2wgImNvbXB1dGUgdW5pcXVlIG1hY2hpbmUt
aWQiCj4gIAlkZXBlbmRzIG9uIEZMRVhJQkxFX0JPT1RBUkdTCj4gLQlkZXBlbmRzIG9uIFNIQTEK
PiArCXNlbGVjdCBTSEExCj4gIAloZWxwCj4gIAkgIENvbXB1dGUgYSBwZXJzaXN0ZW50IG1hY2hp
bmUtc3BlY2lmaWMgaWQgYW5kIHN0b3JlIGl0IHRvICRnbG9iYWwubWFjaGluZV9pZC4KPiAgCSAg
VGhlIGlkIGlzIGEgaGFzaCBvZiBkZXZpY2Utc3BlY2lmaWMgaW5mb3JtYXRpb24gYWRkZWQgdmlh
Cj4gCj4gYmFzZS1jb21taXQ6IGYxMDc3NjQwOTM3ZjZlODEzOTQ2MzEzNmVkZmYyMTUxNjM0NjU1
OTkKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVz
aGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK

