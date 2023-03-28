Delivery-date: Tue, 28 Mar 2023 14:33:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph8Vw-0001sF-AP
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 14:33:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph8Vw-0003U1-86
	for lore@pengutronix.de; Tue, 28 Mar 2023 14:33:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZXVtsEKLwyVDf5EV4ENbFI87OBGPB924JrQBVtfpAFU=; b=wQqVpYG9iGFVzihYhkCQ7yPMI8
	AIZVRtcgSto2UZlyRSlyIw/RLdt0c2u47tC7SEKsAAIydcn8UDX70FLEH03KxHvpOr80RYpEpnLJM
	5epF3GFUCluzRkfFmmIJKDhi6Jm1mJyCg5/d4eJN9kvch/nQJSbd7eeJAdKI1w/IuIcAYMm9TPigY
	OwlDplIGuXLUL8Xv2F1LiWh9ddNBCdZSjCBO2WtZzH6Z5aoFc36nOB+W4x0iNx7kUuaJA0yvo35zv
	nNdAX0yuP3Uo8/+k43tu7FT7ik0pDBXCsa1u/8VPCEM6kpSY85fpix6y2z2HgEQjUDM1BLGEl0Kv7
	yS6wneYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph8Up-00EOXp-0K;
	Tue, 28 Mar 2023 12:32:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph8Ul-00EOVn-2S
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 12:32:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1ph8Uj-0002EG-Ua; Tue, 28 Mar 2023 14:32:10 +0200
Message-ID: <2f0abe04553c43035d67d1304be1e51096a38c0d.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 14:32:08 +0200
In-Reply-To: <20230328101037.4101089-1-s.hauer@pengutronix.de>
References: <20230328101037.4101089-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_053211_800208_73F42FB9 
X-CRM114-Status: GOOD (  16.65  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: rockchip-dwcmshc-sdhci: use sdhci_reset()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiBUdWUsIDIwMjMtMDMtMjggYXQgMTI6MTAgKzAyMDAsIFNhc2NoYSBIYXVlciB3cm90
ZToKPiBXZSBoYXZlIHNkaGNpX3Jlc2V0KCkgd2hpY2ggZG9lcyB0aGUgc2FtZSBhcyB0aGUgZHJp
dmVyIHNwZWNpZmljCj4gdmFyaWFudC4gVXNlIHRoZSBjb21tb24gZnVuY3Rpb24gaW5zdGVhZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
Cgp0aGlzIGlzOgoKVGVzdGVkLWJ5OiBSb3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBl
bmd1dHJvbml4LmRlPgo+IC0tLQo+IMKgZHJpdmVycy9tY2kvcm9ja2NoaXAtZHdjbXNoYy1zZGhj
aS5jIHwgMjAgKysrLS0tLS0tLS0tLS0tLS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21jaS9y
b2NrY2hpcC1kd2Ntc2hjLXNkaGNpLmMKPiBiL2RyaXZlcnMvbWNpL3JvY2tjaGlwLWR3Y21zaGMt
c2RoY2kuYwo+IGluZGV4IGE5ODYwMGNjNGMuLmUxZWI0ZmM3ODggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9tY2kvcm9ja2NoaXAtZHdjbXNoYy1zZGhjaS5jCj4gKysrIGIvZHJpdmVycy9tY2kvcm9j
a2NoaXAtZHdjbXNoYy1zZGhjaS5jCj4gQEAgLTg3LDI2ICs4NywxMiBAQCBzdGF0aWMgaW50IHJr
X3NkaGNpX2NhcmRfcHJlc2VudChzdHJ1Y3QgbWNpX2hvc3QKPiAqbWNpKQo+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gISEoc2RoY2lfcmVhZDMyKCZob3N0LT5zZGhjaSwgU0RIQ0lfUFJFU0VOVF9T
VEFURSkgJgo+IFNESENJX0NBUkRfREVURUNUKTsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgaW50IHJr
X3NkaGNpX3Jlc2V0KHN0cnVjdCBya19zZGhjaV9ob3N0ICpob3N0LCB1OCBtYXNrKQo+IC17Cj4g
LcKgwqDCoMKgwqDCoMKgc2RoY2lfd3JpdGU4KCZob3N0LT5zZGhjaSwgU0RIQ0lfU09GVFdBUkVf
UkVTRVQsIG1hc2spOwo+IC0KPiAtwqDCoMKgwqDCoMKgwqAvKiB3YWl0IGZvciByZXNldCBjb21w
bGV0aW9uICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKHdhaXRfb25fdGltZW91dCgxMDAgKiBNU0VD
T05ELAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIShz
ZGhjaV9yZWFkOCgmaG9zdC0+c2RoY2ksCj4gU0RIQ0lfU09GVFdBUkVfUkVTRVQpICYgbWFzaykp
KXsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2X2Vycihob3N0LT5tY2kuaHdf
ZGV2LCAiU0RIQ0kgcmVzZXQgdGltZW91dFxuIik7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiAtRVRJTUVET1VUOwo+IC3CoMKgwqDCoMKgwqDCoH0KPiAtCj4gLcKgwqDC
oMKgwqDCoMKgcmV0dXJuIDA7Cj4gLX0KPiAtCj4gwqBzdGF0aWMgaW50IHJrX3NkaGNpX2luaXQo
c3RydWN0IG1jaV9ob3N0ICptY2ksIHN0cnVjdCBkZXZpY2UgKmRldikKPiDCoHsKPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IHJrX3NkaGNpX2hvc3QgKmhvc3QgPSB0b19ya19zZGhjaV9ob3N0KG1j
aSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqByZXQg
PSBya19zZGhjaV9yZXNldChob3N0LCBTREhDSV9SRVNFVF9BTEwpOwo+ICvCoMKgwqDCoMKgwqDC
oHJldCA9IHNkaGNpX3Jlc2V0KCZob3N0LT5zZGhjaSwgU0RIQ0lfUkVTRVRfQUxMKTsKPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiByZXQ7Cj4gwqAKPiBAQCAtMjc0LDggKzI2MCw4IEBAIHN0YXRpYyBpbnQgcmtfc2RoY2lf
c2VuZF9jbWQoc3RydWN0IG1jaV9ob3N0Cj4gKm1jaSwgc3RydWN0IG1jaV9jbWQgKmNtZCwKPiDC
oGVycm9yOgo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBwcmludF9lcnJvcihob3N0LCBjbWQtPmNtZGlkeCk7Cj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJrX3NkaGNpX3Jlc2V0KGhvc3QsIEJJVCgxKSk7IC8qIFNE
SENJX1JFU0VUX0NNRCAqLwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBya19zZGhj
aV9yZXNldChob3N0LCBCSVQoMikpOyAvKiBTREhDSV9SRVNFVF9EQVRBICovCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNkaGNpX3Jlc2V0KCZob3N0LT5zZGhjaSwgU0RIQ0lfUkVT
RVRfQ01EKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2RoY2lfcmVzZXQoJmhv
c3QtPnNkaGNpLCBTREhDSV9SRVNFVF9EQVRBKTsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoHNkaGNpX3dyaXRlMzIoJmhvc3QtPnNkaGNpLCBTREhDSV9JTlRfU1RB
VFVTLCB+MCk7Cgo=



