Delivery-date: Thu, 06 May 2021 15:11:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledmy-00027x-Io
	for lore@lore.pengutronix.de; Thu, 06 May 2021 15:11:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledmx-0002xm-Px
	for lore@pengutronix.de; Thu, 06 May 2021 15:11:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wAxxfsm6j2y9VqpJ63Zi5vPZiTymiB3NX7kvNowzJ1M=; b=jr+GK1SMilIMGnPbJJ0ta0x6M
	aazY5v09DBSS0nIRb9U5q79bj5KAm2Yi+smmZleMcS7CS5wXe+RFfMpwtMuI8m9HLanFKkZg6zgHu
	HnqrvoyRCt1yA4GRFeGtJoFfOfIlIxbo6VShsoJbgQB6Xx4A2Q8lVR1GvZzb5Po+RerKUyV2g/IOd
	ioCSLLgO3wFCGxdjCnAdJO1wC6wo7U98l6acquMm2Ikq/bfS/SEsEFxBlLl1eBBUG6QXv9L9EwvJm
	WksiXMIStwb4SM94C5ZtE6L9x7oB6X2DtZ5kCSDYwfZsmsn20zgmPCvg5oVNCgYKHN6VM0pL/YqgG
	OIWKbrt+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledmE-004Hb1-3Z; Thu, 06 May 2021 13:10:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledm9-004Hag-RY
 for barebox@desiato.infradead.org; Thu, 06 May 2021 13:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=UN3mN377/DGy4xsZLFIzVYgKBUC7NhPEizWj63w5Ktg=; b=j6z8pHeryjdEVlgPxWsvOTdnB6
 b7IblwF1S//e1yU7Ex381j3viexmdqqUOtTDqTeWrBFeL+ZovzhVQc1nKbclFCOkIWbPxEskh82FD
 IVz09p+/cTq9/0cJVITv4sg2TE1KSMhqhzSeOUKzOHSFBgm5AS/n1DLp+hKml3mE5UZC9I4lvXmHo
 4rDzRsJed1kVX66SNUw83DWxbA2QRuAOY3OgeBwQUyhP1FRdz40sW+B10oKOb5exvf9tpq72HIQ4w
 dm5Fdao+tk94RD+TSY5ajT+S4xmQGVGKvmo+bDR6CukfsmhS3pGtcpYQXtEUZ49+20yA5SeQRsJdN
 UBFNG35w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledm7-00633j-61
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:10:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ledm5-0002Uv-Ti; Thu, 06 May 2021 15:10:41 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <20210506112219.27114-2-m.felsch@pengutronix.de>
 <75ff4a6d-85c3-0229-ec4f-b6b95444e09a@pengutronix.de>
 <20210506130758.fqatlfegvsnccix5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0404c837-136e-93c6-6a72-aa5cd93e13cb@pengutronix.de>
Date: Thu, 6 May 2021 15:10:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506130758.fqatlfegvsnccix5@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_061043_255580_EDE77441 
X-CRM114-Status: GOOD (  19.59  )
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

T24gMDYuMDUuMjEgMTU6MDcsIE1hcmNvIEZlbHNjaCB3cm90ZToKPiBPbiAyMS0wNS0wNiAxNDow
NiwgQWhtYWQgRmF0b3VtIHdyb3RlOgo+PiBIZWxsbywKPj4KPj4gT24gMDYuMDUuMjEgMTM6MjIs
IE1hcmNvIEZlbHNjaCB3cm90ZToKPj4+IFNldCB0aGUgbmV3IGludHJvZHVjZWQgZmxhZyB0byBi
ZSBhYmxlIHRvIGNoZWNrIGlmIHRoZSBjZGV2IGlzIGFuCj4+PiBtbWMvbWNpIGRldmljZS4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRl
Pgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9tY2kvbWNpLWNvcmUuYyB8IDEgKwo+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21jaS9t
Y2ktY29yZS5jIGIvZHJpdmVycy9tY2kvbWNpLWNvcmUuYwo+Pj4gaW5kZXggMDE3ZjI1ZDM1Zi4u
YzBmYmNiMzg1ZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKPj4+ICsr
KyBiL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKPj4+IEBAIC00MjAsNiArNDIwLDcgQEAgc3RhdGlj
IHZvaWQgbWNpX3BhcnRfYWRkKHN0cnVjdCBtY2kgKm1jaSwgdWludDY0X3Qgc2l6ZSwKPj4+ICAJ
cGFydC0+c2l6ZSA9IHNpemU7Cj4+PiAgCXBhcnQtPmJsay5jZGV2Lm5hbWUgPSBuYW1lOwo+Pj4g
IAlwYXJ0LT5ibGsuY2Rldi5wYXJ0bmFtZSA9IHBhcnRuYW1lOwo+Pj4gKwlwYXJ0LT5ibGsuY2Rl
di5mbGFncyB8PSBERVZGU19JU19NQ0lfREVWOwo+Pj4gIAlwYXJ0LT5ibGsuYmxvY2tiaXRzID0g
U0VDVE9SX1NISUZUOwo+Pj4gIAlwYXJ0LT5ibGsubnVtX2Jsb2NrcyA9IG1jaV9jYWxjX2Jsa19j
bnQoc2l6ZSwgcGFydC0+YmxrLmJsb2NrYml0cyk7Cj4+PiAgCXBhcnQtPmFyZWFfdHlwZSA9IGFy
ZWFfdHlwZTsKPj4KPj4gVGhpcyBpcyBjYWxsZWQgZm9yIGhhcmR3YXJlIHBhcnRpdGlvbnMsIGxp
a2UgYm9vdCBhbmQgZ2VuZXJhbAo+PiBwdXJwb3NlIHBhcnRpdGlvbnMuCj4+Cj4+IEZvciBib290
IHBhcnRpdGlvbnMsIHRoZSBsYXRlciBjb21taXQgaXMgd3JvbmcuIEkgZG9uJ3Qga25vdyB3aGF0
IHRoZSBkZWZhdWx0Cj4+IGZpbGUgbmFtZSBmb3IgbW1jIEdQUCBibG9jayBwYXJ0aXRpb25zIGlz
LCBKw7xyZ2VuPwo+IAo+IEFyZyByaWdodCwgdGhlIGJvb3QgcGFydGl0aW9uIG5hbWUgc2NoZW1l
IGRpZmZlcnMuIEZvciBHUFAgdGhlcmUgc2hvdWxkCj4gYmUgc2VwZXJhdGVkIGRldmljZXMsIGRv
bid0IGtub3cgdGhhdCBkaXJlY3RseS4KPiAKPiBTaG91bGQgd2UgZmlyc3QgYWRkIHRoZSBzdXBw
b3J0IGZvciBNTUNfQkxLX0RBVEFfQVJFQV9NQUlOIG9ubHk/IFRoaXMgaXMKPiB0aGUgbW9zdCB0
ZXN0ZWQgcGF0aC4KCkFjay4KCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3Ry
LiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=

