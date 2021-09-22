Delivery-date: Wed, 22 Sep 2021 12:27:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzTX-0003Yz-9X
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 12:27:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzTW-00051S-6d
	for lore@pengutronix.de; Wed, 22 Sep 2021 12:27:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yLY0kDmRabPDuQM/4zZDfM5pZcTvziVO1uXNHzfO5ew=; b=s0rI5CR1TpeGoDF+UZP0Pfmhk5
	MmnY9/jM2gjyyr1E7P3S6k/X2PI8sal68q0MOBI6s9mpVX40MqiZ0d6NQWZFLzVQncLn73zZKBd5d
	iKMtvQb+bCxZTQiT10/WoZ0N+ODx9eQ3C8NDinzVTdBAyD1XMQ+52Pyn9wqv/U8Yxf7FpupephckF
	GlGYlSOYXC0Prx3+2rKy6eEVCXflIR6ORoKOg5a2tsGPAEV0aVmxRVf36/uFz8opIyqcGDTQxNcGL
	ADBpaQpSTvJSxHiuhfJpg5OlDj+fhxeu+GtmAcND5gK0UXq3740jT/AZMskfob/lWiakvVf2+liG1
	kXKB/f9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSzSB-007ny9-Sy; Wed, 22 Sep 2021 10:26:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSzS3-007nwa-0F
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 10:26:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSzS1-0004dQ-HX; Wed, 22 Sep 2021 12:26:05 +0200
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
References: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
 <20210917094152.210494-2-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c4eb5131-bb14-776b-5126-4f991766f873@pengutronix.de>
Date: Wed, 22 Sep 2021 12:26:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210917094152.210494-2-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_032607_069181_12A37A3E 
X-CRM114-Status: GOOD (  23.57  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] pinctrl: bcm2835: Add support for bcm2711
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTcuMDkuMjEgMTE6NDEsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEZyb206IEFobWFk
IEZhdG91bSA8YWhtYWRAYTNmLmF0Pgo+IAo+IGJjbTI3MTEtcnBpLTQtYi5kdHMgbGlzdHMgNTgg
Z3BpbyBuYW1lcyBhbmQgdGhlIGxpbnV4IGRyaXZlciBhbHNvIHVzZXMKPiA1OCBHUElPcyBmb3Ig
YmNtMjcxMS4KClNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8YWhtYWRAYTNmLmF0PgoKPiBT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMgfCAyMiAr
KysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJs
LWJjbTI4MzUuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWJjbTI4MzUuYwo+IGluZGV4IDM4
Yzc4OGM4Mjk0NS4uNjg0ZWFkMmY4ZTVlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLWJjbTI4MzUuYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWJjbTI4MzUu
Ywo+IEBAIC01Miw2ICs1MiwxMCBAQCBzdHJ1Y3QgYmNtMjgzNV9ncGlvX2NoaXAgewo+ICAJc3Ry
dWN0IHBpbmN0cmxfZGV2aWNlIHBjdGw7Cj4gIH07Cj4gIAo+ICtzdHJ1Y3QgcGxhdF9kYXRhIHsK
PiArCXVuc2lnbmVkIG5ncGlvczsKPiArfTsKPiArCj4gIHN0YXRpYyBpbnQgYmNtMjgzNV9zZXRf
ZnVuY3Rpb24oc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwgdW5zaWduZWQgZ3BpbywgaW50IGZ1bmN0
aW9uKQo+ICB7Cj4gIAlzdHJ1Y3QgYmNtMjgzNV9ncGlvX2NoaXAgKmJjbWdwaW8gPSBjb250YWlu
ZXJfb2YoY2hpcCwgc3RydWN0IGJjbTI4MzVfZ3Bpb19jaGlwLCBjaGlwKTsKPiBAQCAtMTQ5LDEw
ICsxNTMsMTMgQEAgc3RhdGljIHN0cnVjdCBwaW5jdHJsX29wcyBiY20yODM1X3BpbmN0cmxfb3Bz
ID0gewo+ICAKPiAgc3RhdGljIGludCBiY20yODM1X2dwaW9fcHJvYmUoc3RydWN0IGRldmljZV9k
ICpkZXYpCj4gIHsKPiArCWNvbnN0IHN0cnVjdCBwbGF0X2RhdGEgKnBsYXRfZGF0YTsKPiAgCXN0
cnVjdCByZXNvdXJjZSAqaW9yZXM7Cj4gIAlzdHJ1Y3QgYmNtMjgzNV9ncGlvX2NoaXAgKmJjbWdw
aW87Cj4gIAlpbnQgcmV0Owo+ICAKPiArCXBsYXRfZGF0YSA9IGRldmljZV9nZXRfbWF0Y2hfZGF0
YShkZXYpOwo+ICsKPiAgCWJjbWdwaW8gPSB4emFsbG9jKHNpemVvZigqYmNtZ3BpbykpOwo+ICAJ
aW9yZXMgPSBkZXZfcmVxdWVzdF9tZW1fcmVzb3VyY2UoZGV2LCAwKTsKPiAgCWlmIChJU19FUlIo
aW9yZXMpKQo+IEBAIC0xNjAsNyArMTY3LDggQEAgc3RhdGljIGludCBiY20yODM1X2dwaW9fcHJv
YmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gIAliY21ncGlvLT5iYXNlID0gSU9NRU0oaW9yZXMt
PnN0YXJ0KTsKPiAgCWJjbWdwaW8tPmNoaXAub3BzID0gJmJjbTI4MzVfZ3Bpb19vcHM7Cj4gIAli
Y21ncGlvLT5jaGlwLmJhc2UgPSAwOwo+IC0JYmNtZ3Bpby0+Y2hpcC5uZ3BpbyA9IDU0Owo+ICsJ
YmNtZ3Bpby0+Y2hpcC5uZ3BpbyA9IHBsYXRfZGF0YS0+bmdwaW9zOwo+ICsKPiAgCWJjbWdwaW8t
PmNoaXAuZGV2ID0gZGV2Owo+ICAJYmNtZ3Bpby0+cGN0bC5vcHMgPSAmYmNtMjgzNV9waW5jdHJs
X29wczsKPiAgCWJjbWdwaW8tPnBjdGwuZGV2ID0gZGV2Owo+IEBAIC0xOTEsOSArMTk5LDIxIEBA
IGVycjoKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGxh
dF9kYXRhIGJjbTI4MzVfcGxhdF9kYXRhID0gewo+ICsJLm5ncGlvcyA9IDU0LAo+ICt9Owo+ICsK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0X2RhdGEgYmNtMjcxMV9wbGF0X2RhdGEgPSB7Cj4g
KwkubmdwaW9zID0gNTgsCj4gK307Cj4gKwo+ICBzdGF0aWMgX19tYXliZV91bnVzZWQgc3RydWN0
IG9mX2RldmljZV9pZCBiY20yODM1X2dwaW9fZHRfaWRzW10gPSB7Cj4gIAl7Cj4gIAkJLmNvbXBh
dGlibGUgPSAiYnJjbSxiY20yODM1LWdwaW8iLAo+ICsJCS5kYXRhID0gJmJjbTI4MzVfcGxhdF9k
YXRhLAo+ICsJfSwgewo+ICsJCS5jb21wYXRpYmxlID0gImJyY20sYmNtMjcxMS1ncGlvIiwKPiAr
CQkuZGF0YSA9ICZiY20yNzExX3BsYXRfZGF0YSwKPiAgCX0sIHsKPiAgCQkvKiBzZW50aW5lbCAq
Lwo+ICAJfQo+IAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAg
ICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAg
fCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=

