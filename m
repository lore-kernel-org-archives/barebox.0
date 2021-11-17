Delivery-date: Wed, 17 Nov 2021 10:33:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHJp-00035d-At
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 10:33:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHJn-0001RC-Rn
	for lore@pengutronix.de; Wed, 17 Nov 2021 10:33:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sjgIUkLT2g2qGZ+XEF1ec7ADWAd7dbDOz3xg3Hwk9Z4=; b=mM4LT3tzjuTiUoRU+CzG3+fZMm
	H8cnGurStm3hIej51sdOmlAO5hIVwRAdqXHo0yLIrlAH/AEIEX//z9RNjXq4nMCzXvqwxQw1xVjaS
	AcZXFZJfA9fr8o/XivngjQZODWqSFXZuO6m8WTUbioUOqQlGnrWp6O/Iv6/fqzIFIUmTJlfA+GFV+
	yRqJB4M6EaFC9UseyxAjxufUSmv0hcnnhn0HWYp8la1JEV8aZ1yHDl37BFfWeNVGHt1wrS9TI1wXC
	9+eTkweUm5+LYwMaQGeLSq/auHi9pZnbx7lqQ2tNPVPs9IQPdHaYjGpBd/WBmgSEx3lrJeljguZxt
	Jcq6ixRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnHHn-004GQa-PP; Wed, 17 Nov 2021 09:31:24 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnHFm-004Feo-F7
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 09:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uYlWZV3QJI3fIL/DthMrNhI9nyeyPEx0qww4W2hn8b4=; b=TUVlJNNBDQ2FhKI1GGhoThtxep
 jklZNmB1/gTfEx5xjtn4M678d+tyCnVGeSaHeMuqKtKi2K+F5dPeMKtJmYWevwRe9lSQPhdcfIDW6
 dCP/qWdKhyWfjW32rJauK7RNwj39AXqA5NFWMkYrAwbU/ZKeXr0BkBLv53slrxiBoeaEU8SA9/kaO
 mFrD3dKCO2oAGqP7XTMvy5YH2T3vm0nMX6SV5ZopvaE/niQLJePwqUV0/BPetGTdQPAHGH6SQNhuC
 qQLrmI2/L86rnzxd8/UBeEEW+8Jdks+YhxBnw0kJ0LXCoWBieT0sGHUEx69/Zgf7cmtoaVec0U88W
 A3XjX4xw==;
Received: from [89.212.21.243] (port=38380 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mnHFY-003UZy-3v; Wed, 17 Nov 2021 10:29:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Y.Bas@phytec.de, s.riedmueller@phytec.de
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-4-andrej.picej@norik.com>
 <20211117072118.GH6556@pengutronix.de>
 <bc395f93-7380-cc0c-9aad-78fd81d1dba6@norik.com>
Message-ID: <f68a9f57-9e88-1d9c-0389-f6377168d0a0@norik.com>
Date: Wed, 17 Nov 2021 10:29:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <bc395f93-7380-cc0c-9aad-78fd81d1dba6@norik.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_012918_878140_2D3713FB 
X-CRM114-Status: GOOD (  25.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTcuIDExLiAyMSAwOToxMSwgQW5kcmVqIFBpY2VqIHdyb3RlOgo+IAo+IAo+IE9uIDE3LiAx
MS4gMjEgMDg6MjEsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4gT24gTW9uLCBOb3YgMTUsIDIwMjEg
YXQgMDI6MDI6MDZQTSArMDEwMCwgQW5kcmVqIFBpY2VqIHdyb3RlOgo+Pj4gSXQgaXMgcXVpdGUg
Y29tbW9uIGZvciB1c2VycyB0byBkZWxldGUgcG93ZXIgc3VwcGx5IG5vZGVzIG9mIHJlZ3VsYXRv
cnMKPj4+IHdoaWNoIGFyZW4ndCB5ZXQgc3VwcG9ydGVkLgo+Pj4gVGhlIGlkZWEgb2YgYSBmdW5j
dGlvbiBjYWxsIG9yIGRldmljZXRyZWUgcHJvcGVydHkgd2hpY2ggYWxsb3dzIHVzZSBvZgo+Pj4g
ZHVtbXkgcmVndWxhdG9yIGlzIG5vdCBuZXcuIFRoaXMgaW1wbGVtZW50YXRpb24gdXNlcyBiYXJl
Ym94IHNwZWNpZmljCj4+PiBkZXZpY2V0cmVlIHByb3BlcnR5ICJiYXJlYm94LGFsbG93LWR1bW15
LXN1cHBseSIgdG8gYWxsb3cgc3dpdGNoaW5nIHRvCj4+PiBkdW1teSBwb3dlciByZWd1bGF0b3Iu
Cj4+PiBCYXNpY2FsbHkganVzdCBjYXRjaCB0aGUgcmVndWxhdG9ycyBlbnN1cmVfcHJvYmVkIGVy
cm9yLCBpZiB0aGlzCj4+PiBwcm9wZXJ0eSBpcyBzZXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
QW5kcmVqIFBpY2VqIDxhbmRyZWoucGljZWpAbm9yaWsuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2
ZXJzL3JlZ3VsYXRvci9jb3JlLmMgfCA5ICsrKysrKysrLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3JlZ3VsYXRvci9jb3JlLmMgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKPj4+IGluZGV4
IDA5N2Y3ZDc3OS4uMWM1ODkzMmUxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9yZWd1bGF0b3Iv
Y29yZS5jCj4+PiArKysgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKPj4+IEBAIC0yMzEsOCAr
MjMxLDE1IEBAIHN0YXRpYyBzdHJ1Y3QgcmVndWxhdG9yX2ludGVybmFsIAo+Pj4gKm9mX3JlZ3Vs
YXRvcl9nZXQoc3RydWN0IGRldmljZV9kICpkZXYsIGNvbnN0IGMKPj4+IMKgwqDCoMKgwqAgfQo+
Pj4gwqDCoMKgwqDCoCByZXQgPSBvZl9kZXZpY2VfZW5zdXJlX3Byb2JlZChub2RlKTsKPj4+IC3C
oMKgwqAgaWYgKHJldCkKPj4+ICvCoMKgwqAgaWYgKHJldCkgewo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGlmIChvZl9nZXRfcHJvcGVydHkoZGV2LT5kZXZpY2Vfbm9kZSwgCj4+PiAiYmFyZWJveCxhbGxv
dy1kdW1teS1zdXBwbHkiLCBOVUxMKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2RiZyhkZXYsICJBbGxvdyB1c2Ugb2YgZHVtbXkgcmVndWxhdG9yIGZvciAiIFwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiVzLXN1cHBseVxuIiwgc3VwcGx5KTsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJpID0gTlVMTDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGdvdG8gb3V0Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gRVJSX1BUUihyZXQpOwo+Pgo+PiBJIHdvbmRlciBpZiB3ZSBzaG91bGQgcmF0aGVy
IGFkZCBhIHByb3BlcnR5IG9uIHRoZSBwcm9kdWNlciBzaWRlIHRoYW4gb24KPj4gdGhlIGNvbnN1
bWVyIHNpZGUsIGkuZS4gQWRkIGEgYmFyZWJveCxzdGF0dXMgPSAiZGlzYWJsZWQiIHByb3BlcnR5
IHRvCj4+IHRoZSByZWd1bGF0b3Igbm9kZS4gV2UgaGFkIHRoZSBzYW1lIGRpc2N1c3Npb24gd2l0
aCBwaHlzIHJlY2VudGx5LCBtYXliZQo+PiB3ZSBjYW4gdXNlIHRoZSBzYW1lIGFwcHJvYWNoIGZv
ciBib3RoIGlzc3Vlcy4KPj4KPiAKPiBJIHdhcyB3YW5kZXJpbmcgdGhhdCB0b28uIEJ1dCBkZWNp
ZGVkIHRvIGdvIHdpdGggY29uc3VtZXIgc2lkZSBzbyB1c2VycyAKPiB3aGljaCBtaWdodCB3YW50
IHRvIHVzZSB0aGlzIGhhdmUgdG8gZW5hYmxlIHRoaXMgZm9yIGV2ZXJ5IGNvbnN1bWVycyAKPiB3
aGljaCBjYW4gdXNlIGR1bW15IHJlZ3VsYXRvcnMuIElNTyB0aGlzIHdvdWxkIG1lYW4gbW9yZSB0
aG91Z2h0IHdvdWxkIAo+IGdvIGludG8gdGhpcyBhbmQgd291bGQgYmUgY29uc2VxdWVudGx5IG1v
cmUgZXJyb3IgcHJvbmUuCj4gCj4gU28gZm9yIHByb2R1Y2VyIHNpZGUgZGlkIHlvdSBoYXZlIGlu
IG1pbmQgdGhhdCB0aGlzIHNldHRpbmcgd2lsbCBiZSBzZXQgCj4gZm9yIGV2ZXJ5IHJlZ3VsYXRv
ciwgbGlrZSB0aGlzPwo+IAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVndWxh
dG9ycyB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dmRkY29yZV9yZWc6IGJjb3JlMSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmFyZWJveCxhbGxvdy1kdW1teS1zdXBwbHk7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDczMDAwMD47Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEzODAwMDA+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItYWx3
YXlzLW9uOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4gCj4gT3Igc2hvdWxkIHRoaXMgc2V0dGluZyBiZSBzZXQgZm9yIGFsbCByZWd1bGF0b3Jz
IHByb3ZpZGVkIGJ5IHRoZSBzYW1lIAo+IElDLCBsaWtlIHRoaXM/Cj4gCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3JzIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJhcmVib3gsYWxsb3ctZHVtbXktc3VwcGx5Owo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZkZGNvcmVfcmVn
OiBiY29yZTEgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3MzAwMDA+Owo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzgwMDAwPjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVn
dWxhdG9yLWFsd2F5cy1vbjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9Owo+IAo+IEkgZ3Vlc3Mgd2UgY291bGQgbWFrZSBib3RoIGNhc2VzIHdvcmss
IGZpcnN0IGNoZWNrIGlmIAo+ICJiYXJlYm94LGFsbG93LWR1bW15LXN1cHBseSIgaXMgcHJlc2Vu
dCBpbiB0aGUgcmVndWxhdG9yIG5vZGUgYW5kIHRoZW4gCj4gYWxzbyBjaGVjayBwYXJlbnQgbm9k
ZSAocmVndWxhdG9ycyk/IFdoYXQgZG8geW91IHRoaW5rPwo+IAoKTGlrZSB0aGlzOgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jIGIvZHJpdmVycy9yZWd1bGF0b3IvY29y
ZS5jCj4gaW5kZXggMDk3ZjdkNzc5Li40ZmY3ZTFjMmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9y
ZWd1bGF0b3IvY29yZS5jCj4gKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCj4gQEAgLTE5
Nyw3ICsxOTcsNyBAQCBzdGF0aWMgc3RydWN0IHJlZ3VsYXRvcl9pbnRlcm5hbCAqb2ZfcmVndWxh
dG9yX2dldChzdHJ1Y3QgZGV2aWNlX2QgKmRldiwgY29uc3QgYwo+ICB7Cj4gICAgICAgICBjaGFy
ICpwcm9wbmFtZTsKPiAgICAgICAgIHN0cnVjdCByZWd1bGF0b3JfaW50ZXJuYWwgKnJpOwo+IC0g
ICAgICAgc3RydWN0IGRldmljZV9ub2RlICpub2RlOwo+ICsgICAgICAgc3RydWN0IGRldmljZV9u
b2RlICpub2RlLCAqbm9kZV9wYXJlbnQ7Cj4gICAgICAgICBpbnQgcmV0Owo+ICAKPiAgICAgICAg
IHByb3BuYW1lID0gYmFzcHJpbnRmKCIlcy1zdXBwbHkiLCBzdXBwbHkpOwo+IEBAIC0yMzEsOCAr
MjMxLDIzIEBAIHN0YXRpYyBzdHJ1Y3QgcmVndWxhdG9yX2ludGVybmFsICpvZl9yZWd1bGF0b3Jf
Z2V0KHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBjb25zdCBjCj4gICAgICAgICB9Cj4gIAo+ICAgICAg
ICAgcmV0ID0gb2ZfZGV2aWNlX2Vuc3VyZV9wcm9iZWQobm9kZSk7Cj4gLSAgICAgICBpZiAocmV0
KQo+ICsgICAgICAgaWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICAvKiBJZiAiYmFyZWJveCxh
bGxvdy1kdW1teS1zdXBwbHkiIHByb3BlcnR5IGlzIHNldCBmb3IgcmVndWxhdG9yCj4gKyAgICAg
ICAgICAgICAgICAqIHByb3ZpZGVyLCBhbGxvdyB1c2Ugb2YgZHVtbXkgcmVndWxhdG9yIC0+IE5V
TEwgaXMgcmV0dXJuZWQuCj4gKyAgICAgICAgICAgICAgICAqIENoZWNrIHJlZ3VsYXRvciBub2Rl
IGFuZCBpdHMgcGFyZW50LCBpZiB0aGlzIHNldHRpbmcgaXMgc2V0Cj4gKyAgICAgICAgICAgICAg
ICAqIFBNSUMgd2lkZS4KPiArICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAgICAgIG5v
ZGVfcGFyZW50ID0gb2ZfZ2V0X3BhcmVudChub2RlKTsKPiArICAgICAgICAgICAgICAgaWYgKG9m
X2dldF9wcm9wZXJ0eShub2RlLCAiYmFyZWJveCxhbGxvdy1kdW1teS1zdXBwbHkiLCBOVUxMKSB8
fAo+ICsgICAgICAgICAgICAgICAgICAgb2ZfZ2V0X3Byb3BlcnR5KG5vZGVfcGFyZW50LCAiYmFy
ZWJveCxhbGxvdy1kdW1teS1zdXBwbHkiLCBOVUxMKSkgewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRldl9kYmcoZGV2LCAiQWxsb3cgdXNlIG9mIGR1bW15IHJlZ3VsYXRvciBmb3IgIiBcCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiJXMtc3VwcGx5XG4iLCBzdXBwbHkpOwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHJpID0gTlVMTDsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBnb3RvIG91dDsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAg
cmV0dXJuIEVSUl9QVFIocmV0KTsKPiArICAgICAgIH0KPiAgCj4gICAgICAgICBsaXN0X2Zvcl9l
YWNoX2VudHJ5KHJpLCAmcmVndWxhdG9yX2xpc3QsIGxpc3QpIHsKPiAgICAgICAgICAgICAgICAg
aWYgKHJpLT5ub2RlID09IG5vZGUpIHsKCkJSLApBbmRyZWoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK

