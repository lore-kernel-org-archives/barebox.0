Delivery-date: Wed, 21 Apr 2021 10:52:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8af-0001o3-6M
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 10:52:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8ae-0003xv-AC
	for lore@pengutronix.de; Wed, 21 Apr 2021 10:52:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWBOeglHHJZdfmgVzB9b2SIYF8eEKQb4a4a0jcNhYZs=; b=NfDNbGW01yxyruVrd4R/TrChL
	WOzqLUl4G7PJyvXW/XedirHdQnJo1S9rLu3kPupoP/bc5WkWoR19wekTR4UcsPUE2rAXbeqQVbrJN
	xCMtlp9gF/HMVqQvFoLmv/HswjxRAJcp/63hQ3U7Xg2aq08iz0UsRLOsxnxtis5sMcUDz04/0sAps
	dwJH9LfZmq4dNVnxRqzuf2b6qQcHJZ0KUAL6XKCnur0lNMFzoU5iNdovEqksV0vjrNZQGIbBVPsJO
	HG9M6HzhOHCxncuEtDxPUgjnwVcWM1sHAC9JKVmLaK7GM3KGZQJZli6kC2sBfOubU4IcSFSi53eWq
	xN7saWG4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8Zf-00E0tb-Ft; Wed, 21 Apr 2021 08:51:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8ZY-00E0tD-6m
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 08:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=14QtezX54YWGuvrFxyAiQI3yIOODqWy/niPGFK6jS1U=; b=jLcFPuy8pnKwyJo99F6YQzKxk+
 BIMWTL6pw9Zssq1FS8/FJthjzmiCEao5kF99zVGRphGKwV8XX8P5xzhAJAGFvrJbYTFY4JA6ebw6M
 Q6C1QC/kODE9ZLrRzwCt9dGFvTlvi0jWZaSszWC2AWd0mlwRM5UNoQlu7O9H56doUMIONrwmp+tUw
 g5gWEga0x0sRKk5EQVFtZIyJAaHoigmlzZ2PmBxxAFQTeLNpaByjyXJpP3mh2Av2W7F+DvKHsNMN4
 ILWMpCmAqTaedtFJaWOmpgXKwfAsRoF9Vlm75l9HOCyOE/bhjYYKS3Z+0bVI4c6S02FxeDOdwlPih
 5N8eb4Iw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8ZV-00Cits-4p
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 08:50:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lZ8ZQ-0003km-Re; Wed, 21 Apr 2021 10:50:52 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
References: <20210421072704.520-1-a.fatoum@pengutronix.de>
 <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
Date: Wed, 21 Apr 2021 10:50:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_015057_207155_0A349A80 
X-CRM114-Status: GOOD (  30.52  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] usb: dwc2: increase timeout for waiting on host
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gSnVsZXMsCgpPbiAyMS4wNC4yMSAxMDo0NywgSnVsZXMgTWFzZWxiYXMgd3JvdGU6Cj4g
SGkgQWhtYWQsCj4gCj4gT24gV2VkLCBBcHIgMjEsIDIwMjEgYXQgMDk6Mjc6MDRBTSArMDIwMCwg
QWhtYWQgRmF0b3VtIHdyb3RlOgo+PiBDb21taXQgMjY0NTlhYjc4MDNhICgidXNiOiBkd2MyOiBS
ZXdvcmsgd2FpdCBmb3IgaG9zdCBtb2RlIGR1cmluZwo+PiBjb3JlIHJlc2V0IikgZWZmZWN0aXZl
bHkgcmVkdWNlZCB0aGUgdGltZW91dCBvbiBzd2l0Y2ggdG8gaG9zdCBtb2RlCj4+IGZyb20gMjAw
bXMgdG8gMTEwIHVzLCB3aGljaCBpcyBpbnN1ZmZpY2llbnQgZm9yIHRoZSBJUCBvbiB0aGUgUmFz
cGJlcnJ5Cj4+IFBpIDNiLCBsZWFkaW5nIHRvOgo+Pgo+PiAgIGR3YzIgM2Y5ODAwMDAudXNiQDdl
OTgwMDAwLm9mOiBkd2MyX3dhaXRfZm9yX21vZGU6IENvdWxkbid0IHNldCBob3N0IG1vZGUKPj4K
Pj4gYW5kIGFuIHVudXNhYmxlIFVTQiAoYW5kIEV0aGVybmV0KSBhZnRlci4KPj4KPj4gQnVtcCB1
cCB0aGUgdGltZW91dCB0byAyMDBtcyBhbmQgaGVscCBmdXR1cmUgZGVidWdnaW5nIGJ5IGxvZ2dp
bmcgaG93Cj4+IG11Y2ggdGltZSBpdCBhY3R1YWxseSB0b29rLiBGb3IgdGhlIFJhc3BiZXJyeSAz
YiBJIGdvdCBhIHZhbHVlIG9mIDQ5bXMuCj4gSW5kZWVkLCBJJ3ZlIGNoYW5nZWQgdGhlIHRpbWVv
dXQgaW4gQ29tbWl0IDI2NDU5YWI3ODAzYSwgSSd2ZSB0cmllZCB0bwo+IGZvbGxvdyB3aGF0J3Mg
ZG9uZSBpbiBMaW51eCBpbiBkcml2ZXJzL3VzYi9kd2MyL2NvcmUuYywgc2VlCj4gaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL3VzYi9kd2MyL2Nv
cmUuYyNMMzg1Cj4gCj4gVHVybnMgb3V0IEkndmUgbWFkZSBhIG1pc3Rha2UsIExpbnV4IGlzIHVz
aW5nIDExMCBtcyBhbmQgbm90IMK1cy4KPiBTbyBtYXliZSB3ZSBjYW4gdXNlIDExMCAqIE1TRUNP
TkQgPyBpdCB3aWxsIHN0aWxsIGJlIGdyZWF0ZXIgdGhhbiB3aGF0J3MKPiByZXF1aXJlZCBmb3Ig
dGhlIFJhc3BiZXJyeSAzYi4gIEluIHRoZSBvdGhlciBoYW5kIHRoZSB3YWl0IHdpbGwgc3RvcCBh
cwo+IHNvb24gYXMgdGhlIG1vZGUgaXMgc2V0LiBpdCB3aWxsIG9ubHkgbWFrZSB0aGUgd29yc3Qg
Y2FzZSBmYXN0ZXIuLi4KPiB3aGljaCBpcyBub3QgYSBiaWcgZGVhbC4KCkkgYW0gZmluZSB3aXRo
IGFsaWduaW5nIG91cnNlbHZlcyB3aXRoIHdoYXQgTGludXggaXMgZG9pbmcuCkNhbiB5b3UgcG9z
dCB0aGF0IGFzIGEgc2VwYXJhdGUgcGF0Y2g/IFRoYXQgd2F5IHRoaXMgaGVyZSBjYW4gZ28gaW50
bwp2MjAyMS4wNS4wIHRvIGZpeCB0aGUgaW1tZWRpYXRlIGJyZWFrYWdlIGFuZCB5b3VycyBjYW4g
Z28gaW50byB2MjAyMC4wNi4wLAp3aGljaCB3aWxsIGhvcGVmdWxseSBhZmZvcmQgdXNlcnMgc29t
ZSBtb3JlIHRpbWUgdG8gdGVzdC4KCkNoZWVycywKQWhtYWQKCj4+Cj4+IE5vdGUgdGhhdCB0aGlz
IGlzIGFsc28gY2FsbGVkIGZyb20gZHdjMl9mb3JjZV9tb2RlLCBzbyB3b3JzdCBjYXNlIGlzCj4+
IHRoYXQgYSBzdHVjayBJUCBkZWxheXMgYmFyZWJveCBzdGFydHVwIGJ5IDIwMG1zLgo+PiBBbiBl
cnJvciBtZXNzYWdlIHdvdWxkIGFsZXJ0IHRvIHRoaXMgZmFjdCwgc28gaXQgY2FuIGJlIGNvcnJl
Y3RlZC4KPiBPaywgdGhpcyBjYW4gYmUgdXNlZnVsLgo+IAo+PiBGaXhlczogMjY0NTlhYjc4MDNh
ICgidXNiOiBkd2MyOiBSZXdvcmsgd2FpdCBmb3IgaG9zdCBtb2RlIGR1cmluZyBjb3JlIHJlc2V0
IikKPj4gU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5k
ZT4KPj4gLS0tCj4+ICBkcml2ZXJzL3VzYi9kd2MyL2NvcmUuYyB8IDIwICsrKysrKysrKysrKy0t
LS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzIvY29yZS5jIGIvZHJpdmVycy91
c2IvZHdjMi9jb3JlLmMKPj4gaW5kZXggNWQwNGEwN2IwMzkzLi43ODEzMzQ0ZmZhNjUgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzIvY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvdXNiL2R3
YzIvY29yZS5jCj4+IEBAIC02ODgsMTkgKzY4OCwyMyBAQCBpbnQgZHdjMl9nZXRfZHJfbW9kZShz
dHJ1Y3QgZHdjMiAqZHdjMikKPj4gICAqLwo+PiAgdm9pZCBkd2MyX3dhaXRfZm9yX21vZGUoc3Ry
dWN0IGR3YzIgKmR3YzIsIGJvb2wgaG9zdF9tb2RlKQo+PiAgewo+PiAtCXVuc2lnbmVkIGludCB0
aW1lb3V0ID0gMTEwICogVVNFQ09ORDsKPj4gLQlpbnQgcmV0Owo+PiArCXVuc2lnbmVkIGludCB0
aW1lb3V0ID0gMjAwICogTVNFQ09ORDsKPj4gKwl1aW50NjRfdCBzdGFydDsKPj4gIAo+PiAgCWRl
dl92ZGJnKGR3YzItPmRldiwgIldhaXRpbmcgZm9yICVzIG1vZGVcbiIsCj4+ICAJCSBob3N0X21v
ZGUgPyAiaG9zdCIgOiAiZGV2aWNlIik7Cj4+ICAKPj4gLQlyZXQgPSB3YWl0X29uX3RpbWVvdXQo
dGltZW91dCwgZHdjMl9pc19ob3N0X21vZGUoZHdjMikgPT0gaG9zdF9tb2RlKTsKPj4gLQlpZiAo
cmV0KQo+PiAtCQlkZXZfZXJyKGR3YzItPmRldiwgIiVzOiBDb3VsZG4ndCBzZXQgJXMgbW9kZVxu
IiwKPj4gLQkJCQkgX19mdW5jX18sIGhvc3RfbW9kZSA/ICJob3N0IiA6ICJkZXZpY2UiKTsKPj4g
KwlzdGFydCA9IGdldF90aW1lX25zKCk7Cj4+ICsJd2hpbGUgKGR3YzJfaXNfaG9zdF9tb2RlKGR3
YzIpICE9IGhvc3RfbW9kZSkgewo+PiArCQlpZiAoaXNfdGltZW91dChzdGFydCwgdGltZW91dCkp
IHsKPj4gKwkJCWRldl9lcnIoZHdjMi0+ZGV2LCAiJXM6IENvdWxkbid0IHNldCAlcyBtb2RlXG4i
LAo+PiArCQkJCV9fZnVuY19fLCBob3N0X21vZGUgPyAiaG9zdCIgOiAiZGV2aWNlIik7Cj4+ICsJ
CQlyZXR1cm47Cj4+ICsJCX0KPj4gKwl9Cj4+ICAKPj4gLQlkZXZfdmRiZyhkd2MyLT5kZXYsICIl
cyBtb2RlIHNldFxuIiwKPj4gLQkJIGhvc3RfbW9kZSA/ICJIb3N0IiA6ICJEZXZpY2UiKTsKPj4g
KwlkZXZfdmRiZyhkd2MyLT5kZXYsICIlcyBtb2RlIHNldCBhZnRlciAlbGx1bnNcbiIsCj4+ICsJ
CSBob3N0X21vZGUgPyAiSG9zdCIgOiAiRGV2aWNlIiwgZ2V0X3RpbWVfbnMoKSAtIHN0YXJ0KTsK
Pj4gIH0KPj4gIAo+PiAgLyoqCj4+IC0tIAo+PiAyLjI5LjIKPj4KPj4KPiAKPiAKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

