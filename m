Delivery-date: Fri, 11 Feb 2022 16:38:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIXzm-00Cvyq-El
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 16:38:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIXzl-0005WB-A4
	for lore@pengutronix.de; Fri, 11 Feb 2022 16:38:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z9dQyU6sND70xdZvcYPZdlHXIRfY+G6ExS6DaEwt3q0=; b=eAKiSSi16I607z17oU1jDgh3Fy
	z8jYG8jptQWYh6kSdoo231+lBHgtWYY0LbIzW/Qz/AzcnrlwU0Xx7sCR66no2ea2m9yK9v5mZSY/o
	+F5xbE8ovUi8U9GeEyn4BnQnzsG77d39dd0WOBD8+cAUEBWjvnBdQY7JZHhOfkbgAb3c0wwy0JB+V
	AmZcMpOlIo5vEjkfyyLIRqbPHtHLIxe9XG1EukhBoNgvxRs4ZXS2B4pFrHHn2N8h+jPQCMG4lZczu
	bgyKdQEsjSNHMaI5loHQORFdMAFqLYrlVu8AoCQ1Iwh302FY9Eg538ItAFENFcJjTN5Sx9bXhT+O3
	baIgC87w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXyU-007pSx-PU; Fri, 11 Feb 2022 15:36:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXyM-007pSd-E7
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 15:36:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIXyI-0005L9-Tu; Fri, 11 Feb 2022 16:36:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIXyI-0005ZV-J4; Fri, 11 Feb 2022 16:36:30 +0100
Date: Fri, 11 Feb 2022 16:36:30 +0100
To: wodev@progra.biz.pl
Cc: barebox@lists.infradead.org
Message-ID: <20220211153630.GJ18637@pengutronix.de>
References: <1bee39a15fd98b399a28fbf8fed363da@progra.biz.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bee39a15fd98b399a28fbf8fed363da@progra.biz.pl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:34:55 up 63 days, 20 min, 86 users,  load average: 0.05, 0.12,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_073634_501284_E32FD432 
X-CRM114-Status: GOOD (  29.08  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: ubiattach reserves too many BEBs for each volume attached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBGZWIgMTEsIDIwMjIgYXQgMDQ6MjM6NDZQTSArMDEwMCwgd29kZXZAcHJvZ3JhLmJp
ei5wbCB3cm90ZToKPiBJZiB0aGVyZSBpcyBtb3JlIHRoYW4gb25lIHZvbHVtZSBvbiB0aGUgZGV2
aWNlLCB1YmlhdHRhY2ggcmVzZXJ2ZXMgYW1vdW50IG9mCj4gQkVCcyBhcyBmb3IgdGhlIHdob2xl
IGRldmljZSwgZWFjaCB0aW1lLiBTbWFsbCB2b2x1bWVzIGNhbiBiZSBjb3ZlcmVkIG1haW5seQo+
IGJ5IHJlc2VydmVkIGJsb2NrcyBvbiBiaWcgZGV2aWNlcy4KPiBXaXRoIHRoaXMgdGhlIGFtb3Vu
dCBvZiBCRUJzIGlzIHByb3BvcnRpb25hbCB0byB0aGUgdm9sdW1lIHNpemUuCgpUaGlzIGlzIGRv
bmUgb24gcHVycG9zZSwgc2VlIHRoZSBjb21tZW50IGFib3ZlIHRoZSBwbGFjZSB5b3UgY2hhbmdl
ZDoKCgkvKgoJICogSGVyZSB3ZSBhcmUgdXNpbmcgc2l6ZSBvZiB0aGUgZW50aXJlIGZsYXNoIGNo
aXAgYW5kCgkgKiBub3QganVzdCB0aGUgTVREIHBhcnRpdGlvbiBzaXplIGJlY2F1c2UgdGhlIG1h
eGltdW0KCSAqIG51bWJlciBvZiBiYWQgZXJhc2VibG9ja3MgaXMgYSBwZXJjZW50YWdlIG9mIHRo
ZQoJICogd2hvbGUgZGV2aWNlIGFuZCBiYWQgZXJhc2VibG9ja3MgYXJlIG5vdCBmYWlybHkKCSAq
IGRpc3RyaWJ1dGVkIG92ZXIgdGhlIGZsYXNoIGNoaXAuIFNvIHRoZSB3b3JzdCBjYXNlCgkgKiBp
cyB0aGF0IGFsbCB0aGUgYmFkIGVyYXNlYmxvY2tzIG9mIHRoZSBjaGlwIGFyZSBpbgoJICogdGhl
IE1URCBwYXJ0aXRpb24gd2UgYXJlIGF0dGFjaGluZyAodWJpLT5tdGQpLgoJICovCgpTYXNjaGEK
Cj4gCj4gLS0tCj4gIGRyaXZlcnMvbXRkL3ViaS9idWlsZC5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvdWJpL2J1aWxkLmMgYi9kcml2ZXJzL210ZC91YmkvYnVpbGQuYwo+IGluZGV4IDk0
YjQyMzEuLjU0ZTE2ZjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvdWJpL2J1aWxkLmMKPiAr
KysgYi9kcml2ZXJzL210ZC91YmkvYnVpbGQuYwo+IEBAIC0yMzcsNyArMjM3LDcgQEAgc3RhdGlj
IGludCBnZXRfYmFkX3BlYl9saW1pdChjb25zdCBzdHJ1Y3QgdWJpX2RldmljZQo+ICp1YmksIGlu
dCBtYXhfYmViX3BlcjEwMjQpCj4gIAllbHNlCj4gIAkJZGV2aWNlX3NpemUgPSB1YmktPm10ZC0+
c2l6ZTsKPiAKPiAtCWRldmljZV9wZWJzID0gbXRkX2Rpdl9ieV9lYihkZXZpY2Vfc2l6ZSwgdWJp
LT5tdGQpOwo+ICsJZGV2aWNlX3BlYnMgPSBtdGRfZGl2X2J5X2ViKHViaS0+bXRkLT5zaXplLCB1
YmktPm10ZCk7Cj4gIAlsaW1pdCA9IG11bHRfZnJhYyhkZXZpY2VfcGVicywgbWF4X2JlYl9wZXIx
MDI0LCAxMDI0KTsKPiAKPiAgCS8qIFJvdW5kIGl0IHVwICovCj4gLS0gCj4gMi4zNS4xCj4gCj4g
UmVnYXJkcywKPiBNaWNoYcWCCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

