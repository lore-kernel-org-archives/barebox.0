Delivery-date: Wed, 28 Jul 2021 10:58:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8fOn-0002Ec-PW
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 10:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8fOm-0000ey-Sb
	for lore@pengutronix.de; Wed, 28 Jul 2021 10:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8g3lvnA1JkPX7vGI6Qi4cW+WT7zsM6UZ/FXoXl22lFI=; b=Y5GO65BedtNjCVuXh2kkdiBCVS
	heZYO5chDqSp1wFpG/6RB53hQ0hSnGay8LTos1aePIGZUbby35E8LPMrWPu/9wm+lIAyJw1fLwHjD
	zom/aT6jCMZK7hiylwKpBB6cn8UnLW9WiJsA5mHRxI2PFWa1SHmKJ5AubgzpPF/ErL3qM4QfVwVf3
	eehbdBqsJBsOSU/wwfL1uD4XyNqjwAw2T1cAAfBQhg/O/O5eU2ZRTvO1fA29HoCPgeGcEQJa4nOxt
	b4U+FDqGYqaLXBntfgAj/+xS6ZOYNRa8ORSlZuIPiM4XpkFFuTrfGMdlTXt5o7E6vcZOSObU3Egyf
	RrZ2pPxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8fN2-0002sX-HM; Wed, 28 Jul 2021 08:56:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8fMy-0002ro-2Z
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 08:56:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m8fMu-0000YV-LE; Wed, 28 Jul 2021 10:56:48 +0200
To: Andrej Picej <andrej.picej@norik.com>,
 Barebox List <barebox@lists.infradead.org>
References: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2c7807b2-e709-8042-1945-bf4d06f77f28@pengutronix.de>
Date: Wed, 28 Jul 2021 10:56:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_015652_160727_EF3B53A9 
X-CRM114-Status: GOOD (  29.89  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Not successful if statements returning error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQW5kcmVqLAoKT24gMjMuMDcuMjEgMTI6MTgsIEFuZHJlaiBQaWNlaiB3cm90ZToKPiBI
aSBhbGwsCj4gCj4gSSBoYXZlIGEgcXVlc3Rpb24gYWJvdXQgSHVzaCBzaGVsbCBhbmQgdGhlIHVz
ZSBvZiBpdHMgY29uZGl0aW9uYWwgc3RhdGVtZW50cy4KPiBXZSBoYXZlIGNvbWUgdXBvbiBhbiBp
bnRlcmVzdGluZyBiZWhhdmlvdXIgd2l0aCBpdHMgcmV0dXJuIHZhbHVlcy4KPiAKPiBJZiB0aGUg
Y29uZGl0aW9uIG9mIHRoZSBpZiBzdGF0ZW1lbnQgaXMgbm90IHRydWUgdGhlbiB0aGUgcmV0dXJu
IHZhbHVlIGlzIDEgKGVycm9yIGNvZGUpLCBhbmQgaWYgdGhlIGNvbmRpdGlvbiBpcyB0cnVlIHRo
ZSByZXR1cm4gdmFsdWUgaXMgMCAoc3VjY2VzcykuCj4gCj4gU2ltcGxlIHRlc3Q6Cj4+ICMhL2Jp
bi9zaAo+PiBpZiBbIDAgLWd0IDEgXTsgdGhlbgo+PiDCoCBlY2hvICIwIGd0IDEsIFJldDogJD8i
Cj4+IGZpCj4+IGVjaG8gIlJldDogJD8iCj4+Cj4+IGlmIFsgMiAtZ3QgMSBdOyB0aGVuCj4+IMKg
IGVjaG8gIjIgZ3QgMSwgUmV0OiAkPyIKPj4gZmkKPj4gZWNobyAiUmV0OiAkPyIKPiAKPiBPdXRw
dXQ6Cj4+IFJldDogMQo+PiAyIGd0IDEsIFJldDogMAo+PiBSZXQ6IDAKPiAKPiBUaGlzIG1lYW5z
IHRoYXQgaWYsIGZvciBleGFtcGxlIHRoZSBmaXJzdCBpZiBzdGF0ZW1lbnQgKHdoZXJlIGNvbmRp
dGlvbiBpcyBub3QgbWV0KSB3b3VsZCBiZSBhdCB0aGUgZW5kIG9mIGEgc2NyaXB0IHRoZSByZXR1
cm4gdmFsdWUgb2YgdGhhdCB3aG9sZSBzY3JpcHQgd291bGQgYmUgMSAoZXJyb3IgY29kZSkuCj4g
SSBkb24ndCB0aGluayB0aGlzIGZvbGxvd3Mgc3RhbmRhcmQgc2hlbGwgYmVoYXZpb3VyLiBJZiBp
ZiBzdGF0ZW1lbnQgY29uZGl0aW9uIGlzIG5vdCBtZXQgdGhpcyBkb2Vzbid0IG1lYW4gdGhhdCB0
aGUgcmV0dXJuIHZhbHVlIHNob3VsZCBiZSBhbiBlcnJvciBjb2RlLCByaWdodD8KPiBVc2luZyBv
dGhlciBzaGVsbHMgKGJhc2ggZm9yIGV4YW1wbGUpIHdlIGNhbiBzZWUgdGhhdCB0aGUgcmV0dXJu
ZWQgdmFsdWUgaW4gYm90aCBjYXNlcyBpcyAwLCB3aGljaCBpcyBleHBlY3RlZCAoSU1PKS4KPiAK
PiBUaGlzIGJlaGF2aW91ciBpcyBub3QgbmV3IHRvIHRoZSBIdXNoIG9yIGJhcmVib3ggYXMgSSBj
b3VsZCByZXByb2R1Y2UgaXQgb24gdmFyaW91cyBwcmV2aW91cyBiYXJlYm94IHZlcnNpb25zICgy
MDEzLjA4LjAsIDIwMTcuMTIuMCBhbmQgMjAxOS4xMS4wKS4KPiAKPiBPZiBjb3Vyc2UsIHRoaXMg
cHJvYmxlbSBjYW4gYmUgZWFzaWx5IGF2b2lkZWQgaWYgYXQgdGhlIGVuZCBvZiBldmVyeSBzY3Jp
cHQgd2UgdXNlIGV4cGxpY2l0IGV4aXQgMC4gVGhpcyBpcyBkb2FibGUsIGJ1dCBhIGxpdHRsZSBh
bm5veWluZy4KPiAKPiBBbHRob3VnaCB0aGlzIGlzIG5vdCBhIGRlYWwtYnJlYWtlciBmb3IgdXMs
IEkgd2FzIHdvbmRlcmluZyB3aGF0IGlzIHRoZSByZWFzb24gYmVoaW5kIHRoaXM/IEhvdyBkbyB5
b3UgZ2V0IGFyb3VuZCB0aGlzIGFuZCBhcmUgdGhlcmUgYW55IHBsYW5zIHRvIGZpeC9tb2RpZnkg
dGhpcyBpbiB0aGUgZnV0dXJlIHNvIGl0IGZvbGxvd3MgdGhlIGJlaGF2aW91ciBvZiBvdGhlciBz
aGVsbHM/CgpJIHRhbGtlZCB3aXRoIFNhc2NoYSBvbmNlIGJlZm9yZSAob2ZmLWxpc3QpIGFib3V0
IGEgc2ltaWxhciBpc3N1ZS4gTWlzc2luZyBlcnJvciBoYW5kbGluZwpyZXN1bHRzIGluCgogIFsg
eDEgLWVxIHgyIF0gJiYgZWNobyB5ZXMgfHwgZWNobyBubwoKcHJpbnRpbmcgeWVzLgoKV2UgYWdy
ZWVkIHRoYXQgaXQncyBvayB0byBicmVhayBzY3JpcHRzIHJlbHlpbmcgb24gY2xlYXIgaHVzaCBi
dWdzIGxpa2UgdGhpcy4KCkknZCB0aHVzIHJlY29tbWVuZCB5b3UgdG8gc2VuZCBhIHBhdGNoIHRv
IGZpeCBodXNoIGluc3RlYWQgb2Ygd29ya2luZyBhcm91bmQgaXQuCgpDaGVlcnMsCkFobWFkCgo+
IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIuCj4gCj4gQmVzdCByZWdhcmRzLAo+IEFuZHJl
ago+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
YmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiAKCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

