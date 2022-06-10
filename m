Delivery-date: Fri, 10 Jun 2022 19:36:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nziYd-00ABCj-Vc
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 19:36:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nziYc-0008Hq-Sq
	for lore@pengutronix.de; Fri, 10 Jun 2022 19:36:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lyn0C+rkSQ6jUXwWZ7gVhARimElwt+3H/2ayTR1t/Ug=; b=2xim8i+UAF6SPF
	39opyFiIHDffahPglWO6YfOPb4pJayykhwIEpgZCpb7JPcUXmvL1cuMkw2kWpqnOA1HOrYpExYaC5
	dgNdlz/3VH3gpTvnw8/21ky1PsiGZBBB3pUsgJ4TdsIArDK2apQOeFBp+N5Vc0Tt5Ve8K7aFD84QR
	RiqvMzF3+wdwNjhNArAH5UkCHR2yVbeUIoAphdGKjMxmK2LaroPM5kuDBStul1Ut9DGV9pTvX5R9S
	xylRk+ujDYxcnW2U5FgaN8Unidsb1jxOR+sHbYKZwsTKUZvELF0J1M8lGyNy2W5S+QkohoHi0qWTy
	M94aznwhbhHhEVFtmu/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nziXC-009AwJ-FR; Fri, 10 Jun 2022 17:34:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nziX8-009Avf-5k
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 17:34:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nziX4-0007rp-5b; Fri, 10 Jun 2022 19:34:50 +0200
Message-ID: <0b29c92c-b895-c1a9-6586-9605386f9f45@pengutronix.de>
Date: Fri, 10 Jun 2022 19:34:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Cc: =?UTF-8?Q?J=c3=bcrgen_Borleis?= <jbe@pengutronix.de>
References: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_103454_249358_704D21FA 
X-CRM114-Status: GOOD (  19.54  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Make sure *_get_boot_source always assignes
 *src
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTAuMDYuMjIgMTg6NTAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IENhbGxlcnMgb2Yg
Kl9nZXRfYm9vdF9zb3VyY2UgKGUuZy4gc3RhcnRfYXRmKCkgb2YKPiBueHAtaW14OG1tLWV2ayBv
ciBwcm90b25pYy1pbXg4bSkgZXhwZWN0IHNyYyB0byBob2xkIHRoZSBib290c291cmNlCj4gYWZ0
ZXIgcmV0dXJuLiBTbyBhc3NpZ24gYSB2YWx1ZSBhbHNvIGZvciB0aGUgInVua25vd24iIGNhc2Uu
CgpEaWQgeW91IGNoZWNrIGV4aXN0aW5nIGluLXRyZWUgdXNlcnMgdG8gbWFrZSBzdXJlIG5vbmUg
YXNzaWduZWQKYSBkaWZmZXJlbnQgZmFsbGJhY2sgdmFsdWUgYW5kIGFzc3VtZWQgaXQgd29uJ3Qg
YmUgb3ZlcndyaXR0ZW4KaWYgbm8gYm9vdHNvdXJjZSBjb3VsZCBiZSBmb3VuZD8KCj4gCj4gRml4
ZXM6IGVhNTU3NzAzMDhjMCAoIkFSTTogaS5NWDogQWRkIGkuTVg3IGJhc2UgYXJjaGl0ZWN0dXJl
IHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyB8
IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3Qu
Ywo+IGluZGV4IDYzYWZkZjFlZjRlZC4uMWIwYmNjYjdmZWQ4IDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtL21hY2gtaW14L2Jvb3QuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+IEBA
IC0yODUsNiArMjg1LDggQEAgdm9pZCBpbXg1M19nZXRfYm9vdF9zb3VyY2UoZW51bSBib290c291
cmNlICpzcmMsIGludCAqaW5zdGFuY2UpCj4gIAlkZWZhdWx0Ogo+ICAJCWlmIChpbXg1M19ib290
c291cmNlX25hbmQoY2ZnMSkpCj4gIAkJCSpzcmMgPSBCT09UU09VUkNFX05BTkQ7Cj4gKwkJZWxz
ZQo+ICsJCQkqc3JjID0gQk9PVFNPVVJDRV9VTktOT1dOOwo+ICAJCWJyZWFrOwo+ICAJfQo+ICAK
PiBAQCAtNDY0LDYgKzQ2Niw4IEBAIHZvaWQgaW14Nl9nZXRfYm9vdF9zb3VyY2UoZW51bSBib290
c291cmNlICpzcmMsIGludCAqaW5zdGFuY2UpCj4gIAlkZWZhdWx0Ogo+ICAJCWlmIChpbXg1M19i
b290c291cmNlX25hbmQoYm9vdG1vZGUpKQo+ICAJCQkqc3JjID0gQk9PVFNPVVJDRV9OQU5EOwo+
ICsJCWVsc2UKPiArCQkJKnNyYyA9IEJPT1RTT1VSQ0VfVU5LTk9XTjsKPiAgCQlicmVhazsKPiAg
CX0KPiAgfQo+IEBAIC01MjYsNiArNTMwLDcgQEAgc3RhdGljIHZvaWQgX19pbXg3X2dldF9ib290
X3NvdXJjZShlbnVtIGJvb3Rzb3VyY2UgKnNyYywgaW50ICppbnN0YW5jZSwKPiAgCQkqc3JjID0g
Qk9PVFNPVVJDRV9TRVJJQUw7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+ICsJCSpzcmMgPSBC
T09UU09VUkNFX1VOS05PV047Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIH0KPiBAQCAtNjI5LDYgKzYz
NCw4IEBAIHZvaWQgdmY2MTBfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3JjLCBp
bnQgKmluc3RhbmNlKQo+ICAJZGVmYXVsdDoKPiAgCQlpZiAoaW14NTNfYm9vdHNvdXJjZV9uYW5k
KHNibXIxKSkKPiAgCQkJKnNyYyA9IEJPT1RTT1VSQ0VfTkFORDsKPiArCQllbHNlCj4gKwkJCSpz
cmMgPSBCT09UU09VUkNFX1VOS05PV047Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIH0KPiAKPiBiYXNl
LWNvbW1pdDogMzQ1ZWY1OWFhMGVhMWE5MzE2MjkxODc0NDlmNjM4NzY1MDE3NTJjZAoKCi0tIApQ
ZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAg
ICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJt
YW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

