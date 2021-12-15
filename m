Delivery-date: Wed, 15 Dec 2021 11:58:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxRzC-007ECV-EO
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 11:58:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxRzB-0003Gh-3R
	for lore@pengutronix.de; Wed, 15 Dec 2021 11:58:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=swS5seZ+Uxw4ea8OilHY0yWWG1ums92K/SzKP3H7xXg=; b=dLzveJ23ibzn6n9V15n9sFb3+8
	nuuVd4SRsAROHB53XDWmhpDf7lW4MvtpsuPBC6cifltSjC0KqR/KvQgyLqgg7W33abysZqGcBG4Dr
	4XKTS80pV5RoJd5xAL5V7yvId0R/98HKXlwcL+y3/+Lt+SpSpnGm4PCVAU14t888jvcbQ29omdfoz
	V4tJHVYrcIHNKZTzFzEIexoGAcDIK39Ikvb9Id9XggCstGz2T9N8A5HC6ilr47XLF8o9OZLJdbscn
	F68zzeQ+FlAPVpl2U2QXksZaPiWAVoXKn0wk6HeN0D0uf+B6LyVJb3YJF63+4VDbSa/MKlsWEjmEQ
	x39ryZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxRxe-000Juz-Cq; Wed, 15 Dec 2021 10:56:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxRxR-000Jqc-Eu
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 10:56:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mxRxN-00034z-VD; Wed, 15 Dec 2021 11:56:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 Roland Hieber <rhi@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
 <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
Message-ID: <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
Date: Wed, 15 Dec 2021 11:56:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_025625_544541_1C7F28DD 
X-CRM114-Status: GOOD (  23.29  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTQuMTIuMjEgMjI6NDAsIEtvbnN0YW50aW4gS2xldHNjaGtlIHdyb3RlOgo+IE9uIDIwMjEt
MTItMDUgMjM6NTUsIFJvbGFuZCBIaWViZXIgd3JvdGU6Cj4gCj4+IFlvdSBwcm9iYWJseSBhbHNv
IHdhbnQgdG8gZGVsZXRlIHlvdXIgYm9vdGNob29zZXIgdmFyaWFibGVzIGZyb20gdGhlIGVudgo+
IAo+IEFyZSB5b3Ugc2h1cmUgYWJvdXQgdGhhdD8gSSByZWFkIHNvbWUgZXhhbXBsZS9kb2N1bWVu
dGF0aW9uIGF0IGJvb3RsaW4uY29tCj4gZG9pbmcvcHJlc2VudGluZyBhIG5pY2UgcGh5dGVjIGRl
dmljZSB0cmVlIGZvciBFRVBST00gc3RhdGUgYnV0IGxhdGVyIG9uIGl0IHBvaW50cyBvdXQgdG8K
PiAiWy4uLl1hZGQgYm9vdGNob29zZXIgdmFyaWFibGVzIGFzc29jaWF0ZWQgdG8gYm90aCB0YXJn
ZXRzIGluIGFyY2gvYXJtLzxib2FyZD4vZW52L252Wy4uLl0iCgpJIHRoaW5rIFJvbGFuZCBtZWFu
dCB0aGF0IHlvdSBzaG91bGRuJ3QgcmVseSBvbiB0aGUgX211dGFibGVfIGVudmlyb25tZW50CmZv
ciBwcm9kdWN0aW9uLiBJdCdzIG5pY2UgdG8gdGVzdCBvdXQgc3R1ZmYsIGJ1dCBvbmNlIHlvdSBo
YXZlIGZpZ3VyZWQKb3V0IHdoYXQgeW91IG5lZWQsIGFkZCBpdCB0byB0aGUgYnVpbHQtaW4gZW52
aXJvbm1lbnQgKGUuZy4KYXJjaC9hcm0vPGJvYXJkL215ZW52IG9yIENPTkZJR19ERUZBVUxUX0VO
VklST05NRU5UX1BBVEgpLgoKTXV0YXRpbmcgdGhlIGVudmlyb25tZW50IGlzIG1vc3RseSBhIGRl
dmVsb3BtZW50IGNvbnZlbmllbmNlLgogCj4gV2hlbiBJIHV0aWxpemUgImRldmluZm8gc3RhdGUi
ICh3aXRoIGFsbCBnbG9iYWwvbnYgYm9vdGNob3NlciB2YXJpYWJsZXMgcmVtb3ZlZCkgSSBnZXQK
PiAKPiBiYXJlYm94QFRJIEFNMzM1eCBCZWFnbGVCb25lIGJsYWNrOi8gZGV2aW5mbyBzdGF0ZQo+
IFBhcmFtZXRlcnM6Cj4gwqAgYm9vdHN0YXRlLmxhc3RfY2hvc2VuOiAwICh0eXBlOiB1aW50MzIp
Cj4gwqAgYm9vdHN0YXRlLnN5c3RlbTAub2s6IDAgKHR5cGU6IHVpbnQzMikKPiDCoCBib290c3Rh
dGUuc3lzdGVtMC5wcmlvcml0eTogMjEgKHR5cGU6IHVpbnQzMikKPiDCoCBib290c3RhdGUuc3lz
dGVtMC5yZW1haW5pbmdfYXR0ZW1wdHM6IDMgKHR5cGU6IHVpbnQzMikKPiDCoCBib290c3RhdGUu
c3lzdGVtMS5vazogMCAodHlwZTogdWludDMyKQo+IMKgIGJvb3RzdGF0ZS5zeXN0ZW0xLnByaW9y
aXR5OiAyMCAodHlwZTogdWludDMyKQo+IMKgIGJvb3RzdGF0ZS5zeXN0ZW0xLnJlbWFpbmluZ19h
dHRlbXB0czogMyAodHlwZTogdWludDMyKQo+IMKgIGRpcnR5OiAwICh0eXBlOiBib29sKQo+IMKg
IGluaXRfZnJvbV9kZWZhdWx0czogMCAodHlwZTogYm9vbCkKPiDCoCBzYXZlX29uX3NodXRkb3du
OiAxICh0eXBlOiBib29sKQo+IAo+IAo+IElzIGJvb3RjaG9vc2VyIHNtYXJ0IGVub3VnaCB0byBn
YXRoZXIgc3lzdGVtMCBhbmQgc3lzdGVtMSBhcyBib290YWJsZSBlbnRyaWVzL3Bvc3NpYmlsaXRp
ZXM/Cj4gRm9yIGJvb3RjaG9vc2VyLnRhcmdldHMuLi4KPiAKPiBNeSBzeXN0ZW0gaXMgbm90IHBy
b3ZlbiB0byB3b3JrIChJIGp1c3Qgc2VudCBhIGRpZmZlcmVudCBtYWlsIHdpdGggbXkgb3RoZXIg
aXNzdWVzIHRvIHRoaXMgdGhyZWFkKQo+IHlldCwgbWF5IGJlIHRoZXJlIGFyZSBvdGhlciBpc3N1
ZXMgaGlkZGVuLCBidXQgSSBkbyBub3QgZ2V0IHRoaXMgcGFydC4KPiAKPiBJIGNyZWF0ZWQgdHdv
IGJvb3QgZW50cmllcyBzeXN0ZW0wIGFuZCBzeXN0ZW0xIGluIC9lbnYvYm9vdC8gd2l0aCBjb250
ZW50IG1tYzEuMSAoZm9yIHN5c3RlbTApIGFuZAo+IG1tYzEuMiAoZm9yIHN5c3RlbTEuMikuIEJv
dGggYXJlIGJvb3Rsb2FkZXItc3BlYy1lbmFibGVkIHBhcnRpdGlvbnMuIFdoYXQgbWUgYm90aGVy
cyBpcywgImJvb3QgbW1jMS4xIiB3b3JrcywKPiAiYm9vdCBzeXN0ZW0wIiBub3QuIEhvdyBkbyBJ
IHByb3Blcmx5IG1ha2UgYSBib290Y2hvc2VyIGVudHJ5IGZvciBtbWMxLjE/Cj4gCj4gSWYgbm8g
dmFyaWFibGVzIGFyZSByZXF1aXJlZCwgd2hlcmUgY291bGQgYmUgdGhlIGN1cGxyaXQgZm9yIHRo
aXM6Cj4gCj4gYmFyZWJveEBUSSBBTTMzNXggQmVhZ2xlQm9uZSBibGFjazovIGJvb3RjaG9vc2Vy
Cj4gRVJST1I6IGJvb3RjaG9vc2VyOiBUYXJnZXQgbGlzdCAkZ2xvYmFsLmJvb3RjaG9vc2VyLnRh
cmdldHMgaXMgZW1wdHkKPiBObyBib290Y2hvb3NlciBmb3VuZAoKRG9pbmcgaXQgaW4gdGhlIGVu
dmlyb25tZW50IGlzIGhvdyBpdCdzIG1lYW50IHRvIGJlIHVzZWQuCkp1c3QgZG8gaXQgYXQgY29t
cGlsZS10aW1lLiBIYXZpbmcgZGV2aWNlcyBpbiB0aGUgZmllbGQgd2l0aCBkaWZmZXJpbmcKbXV0
YXRlZCBlbnZpcm9ubWVudHMgaXMgYSBsb3Qgb2YgaGVhZGFjaGUuIERpZmZlcmluZyBiYXJlYm94
LXN0YXRlIG9uIHRoZSBvdGhlcgpoYW5kIGlzIG1hbmFnZWFibGUsIGJlY2F1c2UgeW91IHJlc3Ry
aWN0IHdoYXQgdmFyaWFibGVzIGFyZSBhdmFpbGFibGUKYW5kIGhvdyB0aGV5IGludGVyYWN0IHdp
dGggdGhlIHJlc3Qgb2YgdGhlIHN5c3RlbS4KCkNoZWVycywKQWhtYWQKCj4gCj4gCj4gCj4gS2lu
ZCBSZWdhcmRzLAo+IEtvbnN0aQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gKPiAKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEg
ICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzEx
MzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIx
LTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK

