Delivery-date: Wed, 05 May 2021 10:17:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leCig-0007QE-Nv
	for lore@lore.pengutronix.de; Wed, 05 May 2021 10:17:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leCif-0006gP-QV
	for lore@pengutronix.de; Wed, 05 May 2021 10:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vot/HrR0wBRxccgkS7l5gcwRCgzWHhxsQt12AsEDcvs=; b=FehTMmwLd7SEBYrjrXozl6aTS
	h3Z1gjA/aq9vrluLduzfzS5Krnq19qOcssdEKP5Xm6TwCdqSUsOINliIYfbbqoOxOTuvAggmPCfqL
	KO7wkdg+oUarJiJ52i7yCURIvKr5tMKSF2Rh3Dz90/M725MzuN9+Nd92tEQNouYyjSwNkA+zCyddG
	vWAE9M6GkbuRcPIf1k+H4mWUDsZcnoDypz/HRku1J1vko2AWWe1UB7dPtpm83HgVyIG9D/c/3Zcky
	WvOwZGbUBiNzEcfrDY/+tM2ctDvEygsdZqFp5VIHr7WSwYiEPy6H/CvKQl0YCcKCrdmd3mF8dsG90
	MPYttyWvw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leChP-000cso-QU; Wed, 05 May 2021 08:16:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leChJ-000csP-Q9
 for barebox@desiato.infradead.org; Wed, 05 May 2021 08:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=CKN+KU3pvznGSZ2Vn2xssk02FFCIkCIZQwqWpKzCFdE=; b=IC+BRSRgO0HOCDwSrrIQwp6hiH
 KLJQeNvE+0hIRdYG2eQq/yImsePdPQYM8Nx/7lXhgIaTgq5HX4+WRlTrPP5o+WGJFZ1pajTUe7Szi
 GX28OcPt5rA6mBOc1NxyOe27eGbNhW+r++8HlRihqZe26LkMzIV3e+elMIdW9jiW11itaetui9j1h
 Xrdq/n6DGFuV2qhU+EoLAQP1IuFHVjAIoTkx1p7ONPeUYdheQdppcahTV/Kxc2KDIUz07troMqESt
 LkBlppASYT++PXl3TW3vVrKqmEULX//eF1jhWDK5ELuMGwyoaaMSd0bNCUyWJCdVOf3xmUp7GIY/h
 y2suc54w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leChH-004Z15-05
 for barebox@lists.infradead.org; Wed, 05 May 2021 08:15:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1leChF-0006MV-EW; Wed, 05 May 2021 10:15:53 +0200
Message-ID: <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>, barebox
 <barebox@lists.infradead.org>
Date: Wed, 05 May 2021 10:15:52 +0200
In-Reply-To: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_011555_063633_DCA5C9C1 
X-CRM114-Status: GOOD (  18.79  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgTWljaGFlbCwKCkFtIE1vbnRhZywgZGVtIDAzLjA1LjIwMjEgdW0gMTA6MDcgKzAwMDAgc2No
cmllYiBNaWNoYWVsIEdyYWljaGVuOgo+IFNpbmNlIE9DUkFNIGlzIG9ubHkgMTkySyB0aGlzIGlu
dHJvZHVjZXMgQ09ORklHX1pZTlFfQlVJTERfRlNCTCBzbyB3ZSBjYW4gY2FuIGNoYWlubG9hZCBh
IG1vcmUgZmVhdHVyZSByaWNoIGJhcmVib3ggdmlhIGJvb3RtLgo+IAo+IEZyb20gMWYxYTk1ZWNh
NDIxOThkNzNjMzhjYzEyYjliNDRmMDYxOTgwY2VmOCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEK
PiBGcm9tOiBNaWNoYWVsIEdyYWljaGVuIDxtaWNoYWVsLmdyYWljaGVuQGhvdG1haWwuY29tPgo+
IERhdGU6IE1vbiwgMyBNYXkgMjAyMSAxMjowMzowNSArMDIwMAo+IFN1YmplY3Q6IFtQQVRDSF0g
enlucTogYWRkIHN1cHBvcnQgdG8gY2hhaW5sb2FkIGFub3RoZXIgYmFyZWJveAoKU2VlbXMgeW91
IGltcG9ydGVkIHRoaXMgcGF0Y2ggZnJvbSBzb21ld2hlcmUgYW5kIGl0IGxlZnQgc29tZSB0cmFj
ZXMgaW4KdGhlIGNvbW1pdCBtZXNzYWdlPwoKQWxzbyBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB0
aGlzIGNoYW5nZSBpcyBzdXBwb3NlZCB0byBiZSBkb2luZy4gWW91CmFyZSBidWlsZGluZyBqdXN0
IGFub3RoZXIgQmFyZWJveCBiaW5hcnksIHdpdGggbm8gcmVhbCBkaWZmZXJlbmNlcyBpbgp0aGUg
Y29uZmlndXJhdGlvbi4gSSB3b3VsZCBtdWNoIHByZWZlciBhIHByb3BlciAyLXN0YWdlIGxvYWRp
bmcgaW4gdGhlClBCTCwgYnV0IHRoYXQgcmVxdWlyZXMgRkFUIHN1cHBvcnQgZm9yIHRoZSBTRGNh
cmQgYm9vdCwgd2hpY2ggSSBkaWRuJ3QKZ2V0IGFyb3VuZCB0byB0YWtlIGEgbG9vayBhdCB5ZXQu
CgpSZWdhcmRzLApMdWNhcwoKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEdyYWljaGVuIDxtaWNo
YWVsLmdyYWljaGVuQGhvdG1haWwuY29tPgo+IC0tLQo+IMKgYXJjaC9hcm0vbWFjaC16eW5xL0tj
b25maWcgfCAgNiArKysrKy0KPiDCoGltYWdlcy9NYWtlZmlsZS56eW5xICAgICAgIHwgMjEgKysr
KysrKysrKysrKysrLS0tLS0tCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtenlucS9LY29u
ZmlnIGIvYXJjaC9hcm0vbWFjaC16eW5xL0tjb25maWcKPiBpbmRleCAzZTA3NjMzZTUuLjA4MDBi
NTVlNiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXp5bnEvS2NvbmZpZwo+ICsrKyBiL2Fy
Y2gvYXJtL21hY2gtenlucS9LY29uZmlnCj4gQEAgLTIxLDcgKzIxLDExIEBAIGNvbmZpZyBBUkNI
X1pZTlE3MDAwCj4gwqAJc2VsZWN0IE9GREVWSUNFCj4gwqAJc2VsZWN0IFJFTE9DQVRBQkxFCj4g
Cj4gLQo+ICtjb25maWcgWllOUV9CVUlMRF9GU0JMCj4gKwlwcm9tcHQgImJ1aWxkIEZTQkwgYmlu
YXJ5IChCT09ULkJJTikiCj4gKwlib29sCj4gKwloZWxwCj4gKwkgIFNheSBZIGhlcmUgaWYgeW91
IHdhbnQgdG8gYnVpbGQgYW4gRlNCTCBiaW5hcnkgZm9yIHRoZSBaeW5xLgo+IAo+IMKgbWVudSAi
c2VsZWN0IFp5bnEgYm9hcmRzIHRvIGJlIGJ1aWx0Igo+IAo+IGRpZmYgLS1naXQgYS9pbWFnZXMv
TWFrZWZpbGUuenlucSBiL2ltYWdlcy9NYWtlZmlsZS56eW5xCj4gaW5kZXggYjAwZTc0ODY5Li4z
OWM3MmJkODggMTAwNjQ0Cj4gLS0tIGEvaW1hZ2VzL01ha2VmaWxlLnp5bnEKPiArKysgYi9pbWFn
ZXMvTWFrZWZpbGUuenlucQo+IEBAIC03LDE3ICs3LDI2IEBAIHp5bnFjZmdfY3BwX2ZsYWdzICA9
IC1XcCwtTUQsJChkZXBmaWxlKSAtbm9zdGRpbmMgLXggYXNzZW1ibGVyLXdpdGgtY3BwIFwKPiAK
PiDCoHp5bnFjZmctdG1wID0gJChzdWJzdCAkKGNvbW1hKSxfLCQoZG90LXRhcmdldCkuenlucWNm
Zy50bXApCj4gCj4gLXF1aWV0X2NtZF96eW5xX2ltYWdlID0gWllOUUlNRyAgJEAKPiArcXVpZXRf
Y21kX3p5bnFfaW1hZ2UgPSBaWU5RSU1HICRACj4gwqDCoMKgwqDCoMKgwqBjbWRfenlucV9pbWFn
ZSA9IFwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoCQoQ1BQKSAkKHp5bnFjZmdfY3BwX2ZsYWdzKSAt
byAkKHp5bnFjZmctdG1wKSAkKENGR18kKEBGKSkgOyBcCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAk
KG9ianRyZWUpL3NjcmlwdHMvenlucV9ta2ltYWdlIC1jICQoenlucWNmZy10bXApIFwKPiAtICAg
ICAgICAgICAtZiAkKHN1YnN0IC56eW5xaW1nLCwkQCkgLW8gJEAKPiArICAgICAgICAgICAtZiAk
KHN1YnN0IC56eW5xaW1nX2ZzYmwsLCRAKSAtbyAkQAo+IAo+IC0kKG9iaikvJS56eW5xaW1nOiAk
KG9iaikvJSBGT1JDRQo+ICskKG9iaikvJS56eW5xaW1nX2ZzYmw6ICQob2JqKS8lIEZPUkNFCj4g
wqAJJChjYWxsIGlmX2NoYW5nZWQsenlucV9pbWFnZSkKPiAKPiDCoCMtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAKPiAtQ0ZHX3N0YXJ0X2F2bmV0X3plZGJvYXJkLnBibGIuenlucWltZyA9ICQoYm9h
cmQpL2F2bmV0LXplZGJvYXJkL3plZGJvYXJkLnp5bnFjZmcKPiAtRklMRV9iYXJlYm94LWF2bmV0
LXplZGJvYXJkLmltZyA9IHN0YXJ0X2F2bmV0X3plZGJvYXJkLnBibGIuenlucWltZwo+IC1pbWFn
ZS0kKENPTkZJR19NQUNIX1pFREJPQVJEKSArPSBiYXJlYm94LWF2bmV0LXplZGJvYXJkLmltZwo+
ICtGSUxFX2JhcmVib3gtYXZuZXQtemVkYm9hcmQuaW1nID0gc3RhcnRfYXZuZXRfemVkYm9hcmQu
cGJsYgo+ICt6eW5xLWJhcmVib3gtJChDT05GSUdfTUFDSF9aRURCT0FSRCkgKz0gYmFyZWJveC1h
dm5ldC16ZWRib2FyZC5pbWcKPiArCj4gK0NGR19zdGFydF9hdm5ldF96ZWRib2FyZC5wYmxiLnp5
bnFpbWdfZnNibCA9ICQoYm9hcmQpL2F2bmV0LXplZGJvYXJkL3plZGJvYXJkLnp5bnFjZmcKPiAr
RklMRV9iYXJlYm94LWF2bmV0LXplZGJvYXJkLWZzYmwuaW1nID0gc3RhcnRfYXZuZXRfemVkYm9h
cmQucGJsYi56eW5xaW1nX2ZzYmwKPiArenlucS1mc2JsLSQoQ09ORklHX01BQ0hfWkVEQk9BUkQp
ICs9IGJhcmVib3gtYXZuZXQtemVkYm9hcmQtZnNibC5pbWcKPiArCj4gK2lmZGVmIENPTkZJR19a
WU5RX0JVSUxEX0ZTQkwKPiAraW1hZ2UteSArPSAkKHp5bnEtZnNibC15KQo+ICtlbHNlCj4gK2lt
YWdlLXkgKz0gJCh6eW5xLWJhcmVib3gteSkKPiArZW5kaWYKPiAtLQo+IDIuMjUuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBt
YWlsaW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

