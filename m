Delivery-date: Thu, 03 Jun 2021 17:16:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lop5e-0000eG-RI
	for lore@lore.pengutronix.de; Thu, 03 Jun 2021 17:16:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lop5a-0005NV-Rc
	for lore@pengutronix.de; Thu, 03 Jun 2021 17:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkqZpjChijIwepGrSEuzn86nf9UDxO9MAC2G7A1E1+8=; b=w+69znly70ywHI
	tS8PcD3nanuKa8HGh+GoOMgL8N6swmPdHvirIolPk5Si3UOKOvZomNjAR+uzLQwqVfbAx4LEZ232v
	Xeu74P/9CcKJS+RpYdX8KDSAMSyBu/nASm0Gwe+8lS7I52ojY4PCq5wEM96RJ6MuHTpsdrWfPZeDT
	yPz5vE6vDhMfJ1nKdn1Vhu4I7N5ohvBfUc+QTU1Ni9sqmr2aNYbvWwtUMSUNokw9/5uaFxQ6rQ7lR
	4yKoZpGRrHIDTrFx+QiI7uhuE68OU5dY0sBw8Z22tLzK+GVVz93UW2fLr1y9swDvkjJN4EPCZq3YT
	fWChJ47BjEkbVJKBg94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lop3d-009Jsd-Bs; Thu, 03 Jun 2021 15:14:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lop3V-009JrI-F2
 for barebox@lists.infradead.org; Thu, 03 Jun 2021 15:14:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1lop3S-0004r9-3U; Thu, 03 Jun 2021 17:14:42 +0200
Received: from localhost ([127.0.0.1])
 by ptx.hi.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1lop3R-0002Av-Mh; Thu, 03 Jun 2021 17:14:41 +0200
Message-ID: <b2efa5118953e06f34d236e6c9319f89bc1bd85b.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rouven Czerwinski
 <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 03 Jun 2021 17:14:41 +0200
In-Reply-To: <3be1d6de-ad08-f42b-557d-ebfd11006265@pengutronix.de>
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
 <20210531065520.12385-11-a.fatoum@pengutronix.de>
 <6c118a9a88836394d4d35741a156f9933e1246d2.camel@pengutronix.de>
 <3be1d6de-ad08-f42b-557d-ebfd11006265@pengutronix.de>
User-Agent: Evolution 3.40.1 (by Flathub.org) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_081445_523469_B80E3862 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/13] test: add first sample tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gV2VkLCAyMDIxLTA2LTAyIGF0IDEzOjM1ICswMjAwLCBBaG1hZCBGYXRvdW0gd3JvdGU6Cj4g
PiA+ICtkZWYgZ2V0X2NvbmZpZyhjb21tYW5kKToKPiA+ID4gK8KgwqDCoCAiIiJSZXR1cm5zIHRo
ZSBlbmFibGVkIGNvbmZpZyBvcHRpb25zIG9mIGJhcmVib3gsIGVpdGhlciBmcm9tCj4gPiA+ICvC
oMKgwqAgYSBydW5uaW5nIGluc3RhbmNlIGlmIHN1cHBvcnRlZCBvciBieSBsb29raW5nIGludG8g
LmNvbmZpZwo+ID4gPiArwqDCoMKgIGluIHRoZSBidWlsZCBkaXJlY3RvcnkuCj4gPiA+ICvCoMKg
wqAgQXJnczoKPiA+ID4gK8KgwqDCoMKgwqDCoMKgIGNvbW1hbmQgKEJhcmVib3hEcml2ZXIpOiBB
biBpbnN0YW5jZSBvZiB0aGUgQmFyZWJveERyaXZlcgo+ID4gPiArwqDCoMKgIFJldHVybnM6Cj4g
PiA+ICvCoMKgwqDCoMKgwqDCoCBsaXN0OiBsaXN0IG9mIHRoZSBlbmFibGVkIGNvbmZpZyBvcHRp
b25zCj4gPiA+ICvCoMKgwqAgIiIiCj4gPiA+ICvCoMKgwqAgYXNzZXJ0IGlzaW5zdGFuY2UoY29t
bWFuZCwgQmFyZWJveERyaXZlcikKPiA+ID4gKwo+ID4gPiArwqDCoMKgIG91dCwgZXJyLCByZXR1
cm5jb2RlID0gY29tbWFuZC5ydW4oImNhdCAvZW52L2RhdGEvY29uZmlnIikKPiA+ID4gK8KgwqDC
oCBpZiByZXR1cm5jb2RlICE9IDA6Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoCB0cnk6Cj4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdpdGggb3Blbihvcy5lbnZpcm9uWydMR19CVUlMRERJUidd
ICsgIi8uY29uZmlnIikgYXMgZjoKPiA+IAo+ID4gUGxlYXNlIGRvbid0IHVzZSB0aGUgTEdfIG5h
bWVzcGFjZSBjdXJyZW50bHkgdXNlZCBieSBsYWJncmlkLCB0aGlzCj4gPiB2YXJpYWJsZSBpcyBp
bnRyb2R1Y2VkIGJ5IHlvdXIgd3JhcHBlciBzY3JpcHQsIHNvbWV0aGluZyBsaWtlCj4gPiBCQl9M
R19CVUlMRERJUiBpbmRpY2F0ZXMgdGhhdCB0aGlzIGlzIG9ubHkgdXNlZCBpbiB0aGUgYmFyZWJv
eCB0ZXN0Cj4gPiBzY3JpcHRzLgo+IAo+IExhYmdyaWQgZmlsdGVycyBvdXQgYW55dGhpbmcgdGhh
dCBkb2Vzbid0IHN0YXJ0IHdpdGggTEdfIEFGQUlLLgoKTm8uIFRoZSBmaWx0ZXIgaXMgb25seSBm
b3IgdGhlIGVudmlyb25tZW50IHRlbXBsYXRpbmcuIFdlIGRvbid0IHRvdWNoIHRoZQpvcy5lbnZp
cm9uIGRpY3Rpb25hcnkuCgpSZWdhcmRzLApKYW4KLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVl
cndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8
IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhS
QSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

