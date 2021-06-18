Delivery-date: Fri, 18 Jun 2021 08:56:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu8Q4-0006VR-WD
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 08:56:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu8Q3-0001GB-Fd
	for lore@pengutronix.de; Fri, 18 Jun 2021 08:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0kv8OLH1kGEX03t+S+KJW3uYGobp3eRe/2VqYUJAy9c=; b=3YJF30vvEyCL9kb5rBU6ydzklN
	g54dhRZZYfbVIjGwBrarW8g8OHg+z/KngqPz7lylwZr6x7GGNS5+Oqi7WdxpERC/nNNyBPsFUv7zQ
	kgYQXXATPZcwuEZ9nZiaGPrN1awRECPmg9nMaz/n2kblX5XBg92cCS3ekqnpW7TaMpnLzeF1ii725
	04b86GPw+vQTWgUvqTr0F/guODKePTfnfHk9xCDcJOr9GHzAeHG7j0H+k7OasHuhn2Boiytm8K8Bw
	HdyxhPikwYIut3SaamFuLNryRyq6YRNslkajojSyhtyrSQPGwEsymXIzd+cSe/V64gx6Vy4/VPWr1
	DGjR4dOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu8OE-00CyNl-1Q; Fri, 18 Jun 2021 06:54:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu8JD-00CwDE-Rt
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 06:48:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lu8J9-0000IR-TU; Fri, 18 Jun 2021 08:48:51 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 barebox@lists.infradead.org
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <391fd504-14b8-6278-cbfe-25a5dd32ed42@pengutronix.de>
Date: Fri, 18 Jun 2021 08:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_234855_950225_F888FC85 
X-CRM114-Status: GOOD (  22.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gS29uc3RhbnRpbiwKCk9uIDE2LjA2LjIxIDEwOjEwLCBLb25zdGFudGluIEtsZXRzY2hr
ZSB3cm90ZToKPiBEZWFyIGNvbW11bml0eSwKPiAKPiBhY3R1YWxseSBJIHdvbmRlciBob3cgdG8g
cHJlcGFyZSBhIHJlc2V0L2Jvb3QgdXAgZGVmYXVsdCBib290IGVudmlyb25tZW50IGNvbXBpbGVk
IGluLgo+IAo+IElzIGl0IGNvcnJlY3QsIHRoYXQgbXkgMXN0IHRhc2sgdG8gYWNoaWV2ZSB0aGlz
IGlzIHRvIGFkZCBhIG5ldyBmaWxlIGluIGRlZmF1bHRlbnYvZGVmYXVsdGVudi0yLWJhc2UvYm9v
dAo+IGxpa2Ug4oCcaW5zaWRlbTJt4oCdIGZvciBleGFtcGxlPyBJIG1hbmFnZWQgdG8gbW9kaWZ5
IHRoZSBleGlzdGluZyDigJxzZOKAnSBlbnRyeSB0byBiZSBhYmxlIHRvIGJvb3QKPiBhbmQgcGVy
c2lzdCB0aGlzLCB0aGF0cyBob3cgbXkgbmV3IGVudHJ5IHNob3VsZCBsb29rOgo+IAo+ICMhL2Jp
bi9zaAo+IAo+IGdsb2JhbC5ib290bS5pbWFnZT0vYm9vdC91SW1hZ2UKPiBnbG9iYWwuYm9vdG0u
b2Z0cmVlPS9ib290L2FtMzM1eC1ib25lYmxhY2suZHRiCj4gZ2xvYmFsLmxpbnV4LmJvb3Rhcmdz
LmR5bi5yb290PSJjYXBlX2VuYWJsZT1jYXBlbWdyLmVuYWJsZV9wYXJ0bm89QkItVUFSVDEsQkIt
VUFSVDQgYm9uZV9jYXBlbWdyLnVib290X2NhcGVtZ3JfZW5hYmxlZD0xIHJvb3Q9L2Rldi9tbWNi
bGswcDIgcm9vdGZzdHlwZT1leHQ0IHJvb3R3YWl04oCdCj4gCj4gcmlnaHQ/Cj4gCj4gCj4gSSBj
YW4gZWRpdCBhbmQgbW9kaWZ5IHRob3NlIGZpbGUgYW5kIHBlcnNpc3QgdGhlbSwgd2hlcmUgaXMg
dGhpcyBzYXZlZD8gSW4gbXkgY2FzZSBpdCBsb29rcyBtb2RpZmllZCBzdHVmZiBzaG93cwo+IHVw
IGluIGJhcmVib3guZW52IGluIG15IC9ib290Lgo+IAo+IEVzcGVjaWFsbHkgbXkgcXVlc3Rpb24g
aXMsIHdoZW4gSSBhZGQgYSBib290IGVudHJ5IGNvbXBpbGVkIGluLCB0aGUgYm9vdC5kZWZhdWx0
IHZhcmlhYmxlIHNob3VsZCBnZXQgdGhpcyBlbnRyeQo+IGFuZCB0aGlzIG11c3QgYmUgcmVzZXQv
ZGVmYXVsdCBjb21waWxlZC1pbiwgaG93IGlzIHRoaXMgZG9uZT8KPiAKPiBNeSBzZWNvbmQgaXNz
dWUgaXMsIGN1cnJlbnRseSBJIG5lZWQgdG8gYXBwbHkgdHdvIGR0Ym8gZmlsZXMgdG8gdGhlIGtl
cm5lbCBib290aW5nLCBob3cgZG8gSSBkbyB0aGlzIGluIGJhcmVib3g/Cj4gCj4gSW4gdS1ib290
IHRoaXMgbG9va3MgbGlrZQo+IAo+IHVib290X292ZXJsYXlfYWRkcjA9L2xpYi9maXJtd2FyZS9C
Qi1VQVJUMS0wMEEwLmR0Ym8KPiB1Ym9vdF9vdmVybGF5X2FkZHIxPS9saWIvZmlybXdhcmUvQkIt
VUFSVDQtMDBBMC5kdGJvCj4gCj4gaW4gdUVudi50eHQsIEkgZGlkIG5vdCBmaW5kIGEgcGVuZGFu
dCBpbiB0aGUgYmFyZWJveCB3b3JsZCB5ZXQuCgpZb3UgY291bGQgYWRkIGEgYm9vdHNwZWMgZmls
ZSB3aXRoCgpkZXZpY2V0cmVlLW92ZXJsYXkgQkItVUFSVDEtMDBBMC5kdGJvIEJCLVVBUlQ0LTAw
QTAuZHRibwoKSWYgeW91IHdhbnQgdGhlIG92ZXJsYXkgYXBwbGljYXRpb24gdG8gaGFwcGVuIGlu
IHRoZSBib290bG9hZGVyLCBidXQKZGVjaWRlIHRoZSBvdmVybGF5IHNlbGVjdGlvbiBwb2xpY3kg
aW4gdXNlcnNwYWNlLgoKPiBUaGUgY2FwZW1nci9zbG90IGtlcm5lbCBjb21tYW5kbGluZSBzdHVm
ZiBpcwo+IGRlcHJlY2F0ZWQsIHJpZ2h0PyAKPiAKPiAKPiAKPiAKPiBJTlNJREUgTTJNIEdtYkgK
PiBLb25zdGFudGluIEtsZXRzY2hrZQo+IEJlcmVuYm9zdGVsZXIgU3RyYcOfZSA3NiBCCj4gMzA4
MjMgR2FyYnNlbgo+IAo+IFRlbGVmb246ICs0OSAoMCkgNTEzNyA5MDk1MDEzNgo+IE1vYmlsOiAr
NDkgKDApIDE1MSAxNTI1NjIzOAo+IEZheDogKzQ5ICgwKSA1MTM3IDkwOTUwMTAKPiAKPiBrb25z
dGFudGluLmtsZXRzY2hrZUBpbnNpZGUtbTJtLmRlCj4gaHR0cDovL3d3dy5pbnNpZGUtbTJtLmRl
IAo+IAo+IEdlc2Now6RmdHNmw7xocnVuZzogTWljaGFlbCBFbW1lcnQsIEluZ28gSGFhc2UsIERy
LiBGcmVkIEvDtm5lbWFubiwgRGVyZWsgVWhsaWcKPiBIUkI6IDExMTIwNCwgQUcgSGFubm92ZXIK
PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cj4gCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

