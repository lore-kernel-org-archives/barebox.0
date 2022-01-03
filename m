Delivery-date: Mon, 03 Jan 2022 16:26:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4PDx-009xMr-HN
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 16:26:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4PDw-0004Sr-34
	for lore@pengutronix.de; Mon, 03 Jan 2022 16:26:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4GkI0qGNKUmocsWrulVEX/jDi0xOfu48Edw6nV4Bfo=; b=hnSh0TMQZlwhPx
	xkzt3dzc9cYdJoNqhcY/tnHOea/smUJZGVAqPma4eTQIUqewE8Uad3wNT/51M0e0z/Yplqc80bkCD
	iHNK8dg87b2q/yAoW2RIzEXQnfIQBWv1QsuzXskRbbrBjHN8jwohWGVc+0o1kdqRhLBtf0pfC0m+P
	jxp3LibiUrYAfO6QBAVStOD0BrYlAoU7f3X4LrhwBGRQ4905V4b6l0s5HDXN8eIdNo1nJ2sJ8YdfV
	KM3rti8wnfT8R2Ef9veQfUWu4DjcoLttpVMkDMCpEE77+NG6+K6Fftw23CAo4K2vKIdLs3m2zogEQ
	dOZJX0YRZ3ItTmojmRgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4PC6-009JuM-M4; Mon, 03 Jan 2022 15:24:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4PC0-009Jse-TK
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 15:24:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1n4PBx-0004AZ-4i; Mon, 03 Jan 2022 16:24:09 +0100
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1n4PBw-0002GG-Is; Mon, 03 Jan 2022 16:24:08 +0100
Date: Mon, 3 Jan 2022 16:24:08 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Message-ID: <20220103152408.xllanhgvyoozhsxq@pengutronix.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
 <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
 <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_072412_985732_AE6B5727 
X-CRM114-Status: GOOD (  28.38  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gV2VkLCBEZWMgMTUsIDIwMjEgYXQgMTE6NTY6MjFBTSArMDEwMCwgQWhtYWQgRmF0b3VtIHdy
b3RlOgo+IE9uIDE0LjEyLjIxIDIyOjQwLCBLb25zdGFudGluIEtsZXRzY2hrZSB3cm90ZToKPiA+
IE9uIDIwMjEtMTItMDUgMjM6NTUsIFJvbGFuZCBIaWViZXIgd3JvdGU6Cj4gPiAKPiA+PiBZb3Ug
cHJvYmFibHkgYWxzbyB3YW50IHRvIGRlbGV0ZSB5b3VyIGJvb3RjaG9vc2VyIHZhcmlhYmxlcyBm
cm9tIHRoZSBlbnYKPiA+IAo+ID4gQXJlIHlvdSBzaHVyZSBhYm91dCB0aGF0PyBJIHJlYWQgc29t
ZSBleGFtcGxlL2RvY3VtZW50YXRpb24gYXQgYm9vdGxpbi5jb20KPiA+IGRvaW5nL3ByZXNlbnRp
bmcgYSBuaWNlIHBoeXRlYyBkZXZpY2UgdHJlZSBmb3IgRUVQUk9NIHN0YXRlIGJ1dCBsYXRlciBv
biBpdCBwb2ludHMgb3V0IHRvCj4gPiAiWy4uLl1hZGQgYm9vdGNob29zZXIgdmFyaWFibGVzIGFz
c29jaWF0ZWQgdG8gYm90aCB0YXJnZXRzIGluIGFyY2gvYXJtLzxib2FyZD4vZW52L252Wy4uLl0i
Cj4gCj4gSSB0aGluayBSb2xhbmQgbWVhbnQgdGhhdCB5b3Ugc2hvdWxkbid0IHJlbHkgb24gdGhl
IF9tdXRhYmxlXyBlbnZpcm9ubWVudAo+IGZvciBwcm9kdWN0aW9uLiBJdCdzIG5pY2UgdG8gdGVz
dCBvdXQgc3R1ZmYsIGJ1dCBvbmNlIHlvdSBoYXZlIGZpZ3VyZWQKPiBvdXQgd2hhdCB5b3UgbmVl
ZCwgYWRkIGl0IHRvIHRoZSBidWlsdC1pbiBlbnZpcm9ubWVudCAoZS5nLgo+IGFyY2gvYXJtLzxi
b2FyZC9teWVudiBvciBDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVF9QQVRIKS4KPiAKPiBNdXRh
dGluZyB0aGUgZW52aXJvbm1lbnQgaXMgbW9zdGx5IGEgZGV2ZWxvcG1lbnQgY29udmVuaWVuY2Uu
CgpObywgSSB3YXMgY29uZnVzaW5nIHRoZSAiYm9vdGNob29zZXIiIHZhcmlhYmxlcyB3aXRoICJi
b290c3RhdGUiCnZhcmlhYmxlcywgd2hpY2ggc2hvdWxkIGNvbWUgZnJvbSBzdGF0ZSwgbm90IGZy
b20gbnYuIEJ1dCBnZW5lcmFsbHkgd2hhdApBaG1hZCB3cml0ZXMgc291bmRzIHJlYXNvbmFibGUg
dG8gbWUgOi0pIFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uIQoKIC0gUm9sYW5kCgo+ICAKPiA+IFdo
ZW4gSSB1dGlsaXplICJkZXZpbmZvIHN0YXRlIiAod2l0aCBhbGwgZ2xvYmFsL252IGJvb3RjaG9z
ZXIgdmFyaWFibGVzIHJlbW92ZWQpIEkgZ2V0Cj4gPiAKPiA+IGJhcmVib3hAVEkgQU0zMzV4IEJl
YWdsZUJvbmUgYmxhY2s6LyBkZXZpbmZvIHN0YXRlCj4gPiBQYXJhbWV0ZXJzOgo+ID4gwqAgYm9v
dHN0YXRlLmxhc3RfY2hvc2VuOiAwICh0eXBlOiB1aW50MzIpCj4gPiDCoCBib290c3RhdGUuc3lz
dGVtMC5vazogMCAodHlwZTogdWludDMyKQo+ID4gwqAgYm9vdHN0YXRlLnN5c3RlbTAucHJpb3Jp
dHk6IDIxICh0eXBlOiB1aW50MzIpCj4gPiDCoCBib290c3RhdGUuc3lzdGVtMC5yZW1haW5pbmdf
YXR0ZW1wdHM6IDMgKHR5cGU6IHVpbnQzMikKPiA+IMKgIGJvb3RzdGF0ZS5zeXN0ZW0xLm9rOiAw
ICh0eXBlOiB1aW50MzIpCj4gPiDCoCBib290c3RhdGUuc3lzdGVtMS5wcmlvcml0eTogMjAgKHR5
cGU6IHVpbnQzMikKPiA+IMKgIGJvb3RzdGF0ZS5zeXN0ZW0xLnJlbWFpbmluZ19hdHRlbXB0czog
MyAodHlwZTogdWludDMyKQo+ID4gwqAgZGlydHk6IDAgKHR5cGU6IGJvb2wpCj4gPiDCoCBpbml0
X2Zyb21fZGVmYXVsdHM6IDAgKHR5cGU6IGJvb2wpCj4gPiDCoCBzYXZlX29uX3NodXRkb3duOiAx
ICh0eXBlOiBib29sKQo+ID4gCj4gPiAKPiA+IElzIGJvb3RjaG9vc2VyIHNtYXJ0IGVub3VnaCB0
byBnYXRoZXIgc3lzdGVtMCBhbmQgc3lzdGVtMSBhcyBib290YWJsZSBlbnRyaWVzL3Bvc3NpYmls
aXRpZXM/Cj4gPiBGb3IgYm9vdGNob29zZXIudGFyZ2V0cy4uLgo+ID4gCj4gPiBNeSBzeXN0ZW0g
aXMgbm90IHByb3ZlbiB0byB3b3JrIChJIGp1c3Qgc2VudCBhIGRpZmZlcmVudCBtYWlsIHdpdGgg
bXkgb3RoZXIgaXNzdWVzIHRvIHRoaXMgdGhyZWFkKQo+ID4geWV0LCBtYXkgYmUgdGhlcmUgYXJl
IG90aGVyIGlzc3VlcyBoaWRkZW4sIGJ1dCBJIGRvIG5vdCBnZXQgdGhpcyBwYXJ0Lgo+ID4gCj4g
PiBJIGNyZWF0ZWQgdHdvIGJvb3QgZW50cmllcyBzeXN0ZW0wIGFuZCBzeXN0ZW0xIGluIC9lbnYv
Ym9vdC8gd2l0aCBjb250ZW50IG1tYzEuMSAoZm9yIHN5c3RlbTApIGFuZAo+ID4gbW1jMS4yIChm
b3Igc3lzdGVtMS4yKS4gQm90aCBhcmUgYm9vdGxvYWRlci1zcGVjLWVuYWJsZWQgcGFydGl0aW9u
cy4gV2hhdCBtZSBib3RoZXJzIGlzLCAiYm9vdCBtbWMxLjEiIHdvcmtzLAo+ID4gImJvb3Qgc3lz
dGVtMCIgbm90LiBIb3cgZG8gSSBwcm9wZXJseSBtYWtlIGEgYm9vdGNob3NlciBlbnRyeSBmb3Ig
bW1jMS4xPwo+ID4gCj4gPiBJZiBubyB2YXJpYWJsZXMgYXJlIHJlcXVpcmVkLCB3aGVyZSBjb3Vs
ZCBiZSB0aGUgY3VwbHJpdCBmb3IgdGhpczoKPiA+IAo+ID4gYmFyZWJveEBUSSBBTTMzNXggQmVh
Z2xlQm9uZSBibGFjazovIGJvb3RjaG9vc2VyCj4gPiBFUlJPUjogYm9vdGNob29zZXI6IFRhcmdl
dCBsaXN0ICRnbG9iYWwuYm9vdGNob29zZXIudGFyZ2V0cyBpcyBlbXB0eQo+ID4gTm8gYm9vdGNo
b29zZXIgZm91bmQKPiAKPiBEb2luZyBpdCBpbiB0aGUgZW52aXJvbm1lbnQgaXMgaG93IGl0J3Mg
bWVhbnQgdG8gYmUgdXNlZC4KPiBKdXN0IGRvIGl0IGF0IGNvbXBpbGUtdGltZS4gSGF2aW5nIGRl
dmljZXMgaW4gdGhlIGZpZWxkIHdpdGggZGlmZmVyaW5nCj4gbXV0YXRlZCBlbnZpcm9ubWVudHMg
aXMgYSBsb3Qgb2YgaGVhZGFjaGUuIERpZmZlcmluZyBiYXJlYm94LXN0YXRlIG9uIHRoZSBvdGhl
cgo+IGhhbmQgaXMgbWFuYWdlYWJsZSwgYmVjYXVzZSB5b3UgcmVzdHJpY3Qgd2hhdCB2YXJpYWJs
ZXMgYXJlIGF2YWlsYWJsZQo+IGFuZCBob3cgdGhleSBpbnRlcmFjdCB3aXRoIHRoZSByZXN0IG9m
IHRoZSBzeXN0ZW0uCj4gCj4gQ2hlZXJzLAo+IEFobWFkCj4gCj4gPiAKPiA+IAo+ID4gCj4gPiBL
aW5kIFJlZ2FyZHMsCj4gPiBLb25zdGkKCi0tIApSb2xhbmQgSGllYmVyLCBQZW5ndXRyb25peCBl
LksuICAgICAgICAgIHwgci5oaWViZXJAcGVuZ3V0cm9uaXguZGUgICAgIHwKU3RldWVyd2FsZGVy
IFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK

