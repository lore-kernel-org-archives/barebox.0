Delivery-date: Fri, 12 Mar 2021 11:23:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKewu-0004KT-7o
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 11:23:16 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKewt-0002mi-8j
	for lore@pengutronix.de; Fri, 12 Mar 2021 11:23:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=INjHZybkTS9kU1lHbI7YD1Zidp0epQk1ckaTSIz5e3U=; b=GVE+mlgdxYP3YDiXX1MlZQj9P
	D5BGYVz+ezzm0cr9HCexbZvTYg4ORRzEl5wLGp9J7ty8vKjB/cQbiM27wuGdYi5BcB436PmaM/Ehm
	kso+2sfNAzhmPwW/bAtes98/oZIdnGmUdMLcoBQKA2MZRRPfQGXHBhsE88X3szcj12Pdxn0teD/AC
	7xsPk+vjtEQNrxD5iAfmeN4zXFaYUJ6vgaDdwE+HkzNc7EOBgJ1mRn/NMIimrWe8amtVjlbBkIStO
	K0K9UiffARsQi5lco6GpB7ZrttAtO5AN34PGJZKwZDLkayHLH4wspUmrWQzzHPdGX9DNFNG+RpGeU
	gfW7+JQ+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKevn-00B9dl-Fk; Fri, 12 Mar 2021 10:22:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKevb-00B9cN-H0
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 10:21:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1lKeva-0002gP-Ty; Fri, 12 Mar 2021 11:21:54 +0100
Message-ID: <5cec528064955430448ef721fb4a351c0ac47c19.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Denis Osterland-Heim <denis.osterland@diehl.com>, 
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Date: Fri, 12 Mar 2021 11:21:54 +0100
In-Reply-To: <20210311170137.22411-1-denis.osterland@diehl.com>
References: <20210311170137.22411-1-denis.osterland@diehl.com>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_102156_381266_C0B74D18 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arch: arm: mach-imx: print HAB ROM code version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgRGVuaXMsCgpPbiBUaHUsIDIwMjEtMDMtMTEgYXQgMTc6MDcgKzAwMDAsIERlbmlzIE9zdGVy
bGFuZC1IZWltIHdyb3RlOgo+IEZyb206IERlbmlzIE9zdGVybGFuZC1IZWltIDxEZW5pcy5Pc3Rl
cmxhbmRAZGllaGwuY29tPgo+IAo+IEFkZCB0aGUgdHdvIG1pc3NpbmcgZnVuY3Rpb24gcG9pbnRl
cnMgYWNjb3JkaW5nIHRvIEhBQjRfQVBJLnBkZgo+IGZyb20gY3N0LTMuMS4wIGFuZCBwcmludCB0
aGUgdmVyc2lvbiBvZiBST00gY29kZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEZW5pcyBPc3Rlcmxh
bmQtSGVpbSA8RGVuaXMuT3N0ZXJsYW5kQGRpZWhsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvaGFi
L2hhYnY0LmMgfCA3ICsrKysrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9oYWIvaGFidjQuYyBiL2RyaXZlcnMvaGFiL2hhYnY0
LmMKPiBpbmRleCBjMmFjYjgxMzYuLmYzMGU1ZDY4YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2hh
Yi9oYWJ2NC5jCj4gKysrIGIvZHJpdmVycy9oYWIvaGFidjQuYwo+IEBAIC0xNjEsNiArMTYxLDcg
QEAgc3RydWN0IGhhYl9oZWFkZXIgewo+IMKgdWludDhfdCBwYXI7Cj4gwqB9IF9fcGFja2VkOwo+
IAo+ICt0eXBlZGVmIHZvaWQgKCpoYWJfaW1hZ2VfZW50cnlfZm4pKHZvaWQpOwo+IMKgdHlwZWRl
ZiBlbnVtIGhhYl9zdGF0dXMgaGFiX2xvYWRlcl9jYWxsYmFja19mbih2b2lkICoqc3RhcnQsIHVp
bnQzMl90ICpieXRlcywgY29uc3Qgdm9pZCAqYm9vdF9kYXRhKTsKPiAKPiDCoHN0cnVjdCBoYWJ2
NF9ydnQgewo+IEBAIC0xNzUsNiArMTc2LDggQEAgc3RydWN0IGhhYnY0X3J2dCB7Cj4gwqBlbnVt
IGhhYl9zdGF0dXMgKCpyZXBvcnRfZXZlbnQpKGVudW0gaGFiX3N0YXR1cyBzdGF0dXMsIHVpbnQz
Ml90IGluZGV4LCB2b2lkICpldmVudCwgdWludDMyX3QgKmJ5dGVzKTsKPiDCoGVudW0gaGFiX3N0
YXR1cyAoKnJlcG9ydF9zdGF0dXMpKGVudW0gaGFiX2NvbmZpZyAqY29uZmlnLCBlbnVtIGhhYl9z
dGF0ZSAqc3RhdGUpOwo+IMKgdm9pZCAoKmZhaWxzYWZlKSh2b2lkKTsKPiAraGFiX2ltYWdlX2Vu
dHJ5X2ZuICgqYXV0aGVudGljYXRlX2ltYWdlX25vX2RjZCkodWludDhfdCBjaWQsIHB0cmRpZmZf
dCBpdnRfb2Zmc2V0LCB2b2lkICoqc3RhcnQsIHNpemVfdCAqYnl0ZXMsIGhhYl9sb2FkZXJfY2Fs
bGJhY2tfZm4gbG9hZGVyKTsKPiArdWludDMyX3QgKCpnZXRfdmVyc2lvbikodm9pZCk7Cj4gwqB9
IF9fcGFja2VkOwo+IAo+IMKgI2RlZmluZSBGU0xfU0lQX0hBQiAgICAgICAgICAgICAweEMyMDAw
MDA3Cj4gQEAgLTUyOCw2ICs1MzEsNyBAQCBzdGF0aWMgaW50IGhhYnY0X2dldF9zdGF0dXMoY29u
c3Qgc3RydWN0IGhhYnY0X3J2dCAqcnZ0KQo+IMKgdWludDhfdCAqZGF0YTsKPiDCoHVpbnQzMl90
IGxlbjsKPiDCoGludCBpOwo+ICt1aW50MzJfdCB2ZXJzaW9uOwo+IMKgZW51bSBoYWJfc3RhdHVz
IHN0YXR1czsKPiDCoGVudW0gaGFiX2NvbmZpZyBjb25maWcgPSAweDA7Cj4gwqBlbnVtIGhhYl9z
dGF0ZSBzdGF0ZSA9IDB4MDsKPiBAQCAtNTM3LDYgKzU0MSw5IEBAIHN0YXRpYyBpbnQgaGFidjRf
Z2V0X3N0YXR1cyhjb25zdCBzdHJ1Y3QgaGFidjRfcnZ0ICpydnQpCj4gwqByZXR1cm4gLUVJTlZB
TDsKPiDCoH0KPiAKPiArdmVyc2lvbiA9IHJ2dC0+Z2V0X3ZlcnNpb24oKTsKClRoaXMgdW5jb25k
aXRpb25hbCBjYWxsIHdpbGwgYnJlYWsgSEFCIG9uIGkuTVg4TVEgd2hlcmUgaXQgaXNuJ3QKaW1w
bGVtZW50ZWQgaW4gdGhlIFJWVCwgSSBkb24ndCBrbm93IGlmIHRoZSBjYWxsIGlzIGV2ZW4gcm91
dGVkIGluIHRoZQpkb3duc3RyZWFtIFRGLUEuCgpBc2lkZSBmcm9tIHRoaXMgeW91ciBtYWlsZXIv
bWFpbHNlcnZlciBpcyBtYW5nbGluZyB0aGUgcGF0Y2hlcywgaWYgaXQKaXMgdGhlIG1haWxlciwg
bWF5YmUgeW91IGNhbiBzd2l0Y2ggdG8gZ2l0LXNlbmQtZW1haWwsIHNlZQpodHRwczovL2dpdC1z
ZW5kLWVtYWlsLmlvCgo+ICtwcl9pbmZvKCJ2ZXJzaW9uOiAldS4ldS4ldVxuIiwgKHZlcnNpb24g
Pj4gMTYpLCAoKHZlcnNpb24gPj4gOCkgJiAweGZmKSwgKHZlcnNpb24gJiAweGZmKSk7Cj4gKwo+
IMKgc3RhdHVzID0gcnZ0LT5yZXBvcnRfc3RhdHVzKCZjb25maWcsICZzdGF0ZSk7Cj4gwqBwcl9p
bmZvKCJTdGF0dXM6ICVzICgweCUwMngpXG4iLCBoYWJ2NF9nZXRfc3RhdHVzX3N0cihzdGF0dXMp
LCBzdGF0dXMpOwo+IMKgcHJfaW5mbygiQ29uZmlnOiAlcyAoMHglMDJ4KVxuIiwgaGFidjRfZ2V0
X2NvbmZpZ19zdHIoY29uZmlnKSwgY29uZmlnKTsKPiAtLQo+IDIuMzAuMgoKUmVnYXJkcywKUm91
dmVuIEN6ZXJ3aW5za2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

