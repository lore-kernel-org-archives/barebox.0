Delivery-date: Wed, 03 Mar 2021 20:16:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHWzD-000052-Eh
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 20:16:43 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHWzC-0006bJ-Hs
	for lore@pengutronix.de; Wed, 03 Mar 2021 20:16:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KgPgHcgD22ANJ4BwyLIEo4noQCFKXQbBlgZ7hLCnuMQ=; b=QGvA0zPkdhSSvFE674+yt8jKv
	C/Q4jGl89atrt3TPJlo9yrtTeKGaX5vBQkn+BBup9VPq+fSM2EYpJEOef3R+0qdmXOZyr73m3msw/
	yzUb66DqE8v9wTI+XS1c3egh4qEMRCa1txPuYmRe5s480ST23ynGIv7LYhTxia1ROtWdO+VtFMUrS
	ZgBhbsGnxN5+mmqU1iqlwxDrR8l9G3rG2qdZ8v0kZREiW1QfPB3Ec/h6hIV/beVnnWP5TAclpBWQw
	LFieKWKoKDFksxXmVtrWqAVIVTmJDyJGD9sK5ltKT4mFfzQ3ufq1QGRvBGQujIOzN4QyBQmoBaCWK
	HAthMvKWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHWxB-006AKn-E6; Wed, 03 Mar 2021 19:14:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT2h-005Hnz-By
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=VH3jmKpsRs6eradTIHOIgfrV7RYDxpWOhgMTFj5Ybew=; b=fqQ8Gre7Uf1S6EQ591/0cl3x11
 R+qbxd+xzkz0qgZ+p8AbnkGrIo/iTlwYLKXT1UA22oN8lY2GIZ5blH1sw/qq+NqAfHd+AXe9FiWD4
 lP/9wFzB0d5HFq0P9b0p8NIyc1Dz8h0gT+cyvPYqZnQNODs6bS7AJ5Mfso/v7bgv5xpNY0wcXaTPD
 1b+6tkSuoaJCZ+X6U4qL5y6Wzi48cb63NYnzBCXFG9/J1JJxXdWgMCzNZJ1qQ6Ecx/0MrmVy/Aw2r
 PRj+orhX/D6yqVzsJh1Is0bRlXZdu51KphD5mOSxwINncUrFqqj+2NZ03oTRAkOM4emKU6XYTrDQV
 SlzyrDYw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHOD6-0025R2-8P
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 09:54:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lHOAw-0006aP-G2; Wed, 03 Mar 2021 10:52:14 +0100
To: Yann Sionneau <ysionneau@kalray.eu>, Lucas Stach
 <l.stach@pengutronix.de>, Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
 <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
 <595cae1711b8bdc79876371194cadd772f8646e6.camel@pengutronix.de>
 <20210302105827.GD9273@tellis.lin.mbt.kalray.eu>
 <927983935004c68be871fe2182b0e33fd0dff381.camel@pengutronix.de>
 <df2f974e-74f5-6054-8b68-03bcad091aad@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <65b70824-db37-8e63-c6df-52c835b4f9ea@pengutronix.de>
Date: Wed, 3 Mar 2021 10:52:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <df2f974e-74f5-6054-8b68-03bcad091aad@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_095430_383432_66A8A296 
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gWWFubiwKCk9uIDAzLjAzLjIxIDEwOjMzLCBZYW5uIFNpb25uZWF1IHdyb3RlOgo+IE9u
IDAzLzAzLzIwMjEgMTA6MTQsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+Pj4gUmlnaHQgbm93IHdlIGFy
ZW4ndCB1c2luZyBhbnkgZHJpdmVyIHRoYXQgcmVxdWlyZSBkbWFfYWxsb2NfY29oZXJlbnQsCj4+
PiBidXQgd2UgdXNlIGRyaXZlcnMgdGhhdCByZXF1aXJlcyBkbWFfYWxsb2MgYW5kIGRtYV9tYXBf
c2luZ2xlIGluc3RlYWQuCj4+IEkgd291bGQgdm90ZSBmb3IgYSBCVUlMRF9CVUdfT05fTVNHIGlu
IHRoaXMgZnVuY3Rpb24sIHNvIHlvdSBnZXQgYQo+PiBjb21waWxlIHRpbWUgZXJyb3IgYW5kIHlv
dSBjYW4gc3RhdGUgd2hhdCBuZWVkcyB0byBiZSBkb25lIGluIG9yZGVyIHRvCj4+IGdldCByaWQg
b2YgdGhlIGZhaWx1cmUuCj4gCj4gSWYgd2UgZGVmaW5lIHRoZSBmdW5jdGlvbiBhbmQgcHV0IGEg
QlVJTERfQlVHX09OX01TRygpIGluc2lkZSwgSSBhbSBndWVzc2luZyB0aGF0IGFsbCBidWlsZHMg
d2lsbCBmYWlsLCByaWdodD8KPiAKPiBCdXQgd2Ugb25seSB3YW50IHRoZSBidWlsZHMgdGhhdCBh
Y3R1YWxseSBjYWxsIHRoaXMgZnVuY3Rpb24gdG8gZmFpbC4KPiAKPiBNYXliZSB3ZSBjYW4ganVz
dCBkZWZpbmUgZG1hX2FsbG9jX2NvaGVyZW50KCkgYXMgYmVpbmcgYSBtYWNybywgdG8gQlVJTERf
QlVHX09OX01TRy4KPiAKPiBMaWtlOgo+IAo+ICNkZWZpbmUgZG1hX2FsbG9jX2NvaGVyZW50KGEs
IGIpIEJVSUxEX0JVR19PTl9NU0coMSwgImRtYV9hbGxvY19jb2hlcmVudCBpcyBub3Qgc3VwcG9y
dGVkIHlldCBvbiBLVlguIFlvdSB3b3VsZCBuZWVkIHRvIGFkZCBNTVUgc3VwcG9ydCB0byBiZSBh
YmxlIHRvIG1hcCB1bmNhY2hlZCBwYWdlcyIpCgpJZiB0aGUgbWFjcm8gaXMgZXhwYW5kZWQsIGl0
IHdpbGwgZmFpbC4gRXZlbiBpZiB0aGUgY29kZSBpcyB1bHRpbWF0ZWx5IHVudXNlZCBiZWNhdXNl
Cm9mIGxpbmtlciBzZWN0aW9uIGdhcmJhZ2UgY29sbGVjdGlvbi4gWW91IGNvdWxkIGRlZmluZSBk
bWFfYWxsb2NfY29oZXJlbnQgd2l0aCBmb2xsb3dpbmcKYm9keToKCnsKCWV4dGVybiB2b2lkICpj
b2hlcmVudF9hbGxvY2F0aW9uX25vdF9pbXBsZW1lbnRlZF9vbl9rdngodm9pZCk7CgkvKiBZb3Ug
d291bGQgbmVlZCB0byBhZGQgTU1VIHN1cHBvcnQgdG8gYmUgYWJsZSB0byBtYXAgdW5jYWNoZWQg
cGFnZXMgKi8KCXJldHVybiBjb2hlcmVudF9hbGxvY2F0aW9uX25vdF9pbXBsZW1lbnRlZF9vbl9r
dngoKTsKfQoKSWYgYWZ0ZXIgbGlua2VyIEdDLCBhIHJlZmVyZW5jZSB0byBkbWFfYWxsb2NfY29o
ZXJlbnQgcmVtYWlucywgeW91IHdpbGwgZ2V0IGEgbGlua2VyCmVycm9yIGV4cGxhaW5pbmcgd2h5
LgoKQ2hlZXJzLApBaG1hZAoKPiAKPiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPj4KPj4+Pj4+ICsv
Kgo+Pj4+Pj4gKyAqIFRoZSBpbXBsZW1lbnRhdGlvbiBvZiBhcmNoIHNob3VsZCBmb2xsb3cgdGhl
IGZvbGxvd2luZyBydWxlczoKPj4+Pj4+ICsgKsKgwqDCoMKgwqDCoMKgIG1hcMKgwqDCoMKgwqDC
oMKgIGZvcl9jcHXCoMKgwqDCoMKgwqDCoCBmb3JfZGV2aWNlwqDCoMKgIHVubWFwCj4+Pj4+PiAr
ICogVE9fREVWwqDCoMKgIHdyaXRlYmFja8KgwqDCoCBub25lwqDCoMKgwqDCoMKgwqAgd3JpdGVi
YWNrwqDCoMKgIG5vbmUKPj4+Pj4+ICsgKiBGUk9NX0RFVsKgwqDCoCBpbnZhbGlkYXRlwqDCoMKg
IGludmFsaWRhdGUoKinCoMKgwqAgaW52YWxpZGF0ZcKgwqDCoCBpbnZhbGlkYXRlKCopCj4+Pj4+
PiArICogQklESVLCoMKgwqAgd3JpdGViYWNrwqDCoMKgIGludmFsaWRhdGXCoMKgwqAgd3JpdGVi
YWNrwqDCoMKgIGludmFsaWRhdGUKPj4+Pj4+ICsgKgo+Pj4+Pj4gKyAqICgqKSAtIG9ubHkgbmVj
ZXNzYXJ5IGlmIHRoZSBDUFUgc3BlY3VsYXRpdmVseSBwcmVmZXRjaGVzLgo+Pj4+Pj4gKyAqCj4+
Pj4+PiArICogKHNlZSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOC81LzE4Lzk3OSkKPj4+Pj4+
ICsgKi8KPj4+Pj4+ICsKPj4+Pj4+ICt2b2lkIGRtYV9zeW5jX3NpbmdsZV9mb3JfZGV2aWNlKGRt
YV9hZGRyX3QgYWRkciwgc2l6ZV90IHNpemUsCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKPj4+Pj4+ICt7Cj4+Pj4+PiAr
wqDCoMKgIHN3aXRjaCAoZGlyKSB7Cj4+Pj4+PiArwqDCoMKgIGNhc2UgRE1BX0ZST01fREVWSUNF
Ogo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGt2eF9kY2FjaGVfaW52YWxpZGF0ZV9tZW1fYXJlYShh
ZGRyLCBzaXplKTsKPj4+PiBXaHkgZG8geW91IG5lZWQgdG8gZXhwbGljaXRseSBpbnZhbGlkYXRl
LCBidXQgbm90IGZsdXNoPyBFdmVuIGlmIHRoZQo+Pj4+IENQVSBzcGVjdWxhdGl2ZWx5IHByZWZl
dGNoZXMsIHRoZSBjb2hlcmVuY3kgcHJvdG9jb2wgc2hvdWxkIG1ha2Ugc3VyZQo+Pj4+IHRvIGlu
dmFsaWRhdGUgdGhlIHNwZWN1bGF0aXZlbHkgbG9hZGVkIGxpbmVzLCByaWdodD8KPj4+IFNpbmNl
IHdlIGRvbid0IGhhdmUgYSBjb2hlcmVudCBtZW1vcnksIGhlcmUgd2UgbmVlZCB0byBpbnZhbGlk
YXRlIEwxCj4+PiBkY2FjaGUgdG8gbGV0IHRoZSBDUFUgc2VlIGRlaXZjZSdzIHdyaXRlcyBpbiBt
ZW1vcnkuCj4+PiBBbHNvIGV2ZXJ5IHdyaXRlIGdvZXMgdGhyb3VnaCB0aGUgY2FjaGUsIGZsdXNo
IGlzIG5vdCByZXF1aXJlZC4KPj4gQWgsIGlmIGFsbCB5b3VyIGNhY2hlcyBhcmUgd3JpdGUtdGhy
b3VnaCB0aGF0IG1ha2VzIHNlbnNlLiBDYW4geW91IGFkZAo+PiBhIGNvbW1lbnQgc29tZXdoZXJl
IHN0YXRpbmcgdGhhdCB0aGlzIGltcGxlbWVudGF0aW9uIGFzc3VtZXMgV1QgY2FjaGVzCj4+IG9u
IEtWWD8gVGhpcyB3YXkgd2UgY2FuIGF2b2lkIHRoZSBjb25mdXNpb24gQWhhbWQgYW5kIG15c2Vs
ZiBmZWxsIGludG8KPj4gd2hlbiBnbGFuY2luZyBvdmVyIHRoZSBjb2RlLgo+Pgo+PiBSZWdhcmRz
LAo+PiBMdWNhcwo+Pgo+Pgo+IAo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRl
ciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXgu
ZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25l
OiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==

