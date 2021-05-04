Delivery-date: Tue, 04 May 2021 11:52:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrjH-00050Y-Gx
	for lore@lore.pengutronix.de; Tue, 04 May 2021 11:52:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrjG-0003xD-Gu
	for lore@pengutronix.de; Tue, 04 May 2021 11:52:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lV7nMPSFSCoFlCWSdQRUWMpDsXFUv2RkYVRHcjVHRBQ=; b=HidJnS2VyB/cgwjXawG3tTYaq
	ZINn81JvSz4i/Y0svqGCySK2dMdy3Zz5zW/olw1eIpnyx0mp1ld+k4qIlTDn7FekHppf4JZgbV0qz
	ZPX7ksEKlf6OovxldWkxQnLg4j+U0kNyItNMdp2T2uKEsTBRZVq49hofuN3w3nVW0cIprRr8ZtqK3
	JSR9FNniuzE8wf5TqiMhtNAWoYI7raNcVferJDFhCsAKB8bRho/RgLvh1O6yQXun71SFmR+9flDE4
	fuai9s8k75RojrUxx5CAMuAGJCxd1vJfAsX7YRGtuwCcR7Qgt1b606lLNJ5NkB/CU8LKgcDSStHoD
	Xcw/TeWow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldriK-00Fumr-Ph; Tue, 04 May 2021 09:51:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldriE-00FumV-LM
 for barebox@desiato.infradead.org; Tue, 04 May 2021 09:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=O5xwyyvGo02WBEYMaClgN4MOmRvCkw0g66XFGD7TwoQ=; b=ndvisPK3CWv3G4zrs2ctxMQDv4
 eyHUpLmUcVnWFtqkSRqC0Wr6Y+v+S+c73Yf548Cd90psjYC1dWpsNHiXuodUd/81GD6oSFKMMM+La
 0gFwlowA4nhQRtdERTuaXwUGxO0qT5ruYPaAaegvrgoEpUY6Dkp4N61kDE4IhM+BZEH5ceMO2B70y
 YR/Um6+aB5TgfowHGk5mNneLUfwinPvnxs4UT17iWElM4iCrlussllmLgMHnSxpkE4sZCtAmtds8D
 oWKAGZOesBcEoDTRuelP7EVJuJ1AB01HF8PoNHW6lhGkhjB+gODl0luUOuDMLiJu7Y6eD71putpNY
 cHUFp2OQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldriB-003s34-Ow
 for barebox@lists.infradead.org; Tue, 04 May 2021 09:51:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ldri8-0003mk-PS; Tue, 04 May 2021 11:51:24 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
References: <20210504092654.5219-1-h.assmann@pengutronix.de>
 <00c790b9dd842a8b6ce6f0bd71869b45baba7e05.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d9cff667-e896-fb06-2f1a-254da72bf1ce@pengutronix.de>
Date: Tue, 4 May 2021 11:51:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <00c790b9dd842a8b6ce6f0bd71869b45baba7e05.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_025127_829996_1E57CDB2 
X-CRM114-Status: GOOD (  23.58  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAwNC4wNS4yMSAxMTozNiwgUm91dmVuIEN6ZXJ3aW5za2kgd3JvdGU6Cj4gSGkgSG9s
Z2VyLAo+IAo+IE9uIFR1ZSwgMjAyMS0wNS0wNCBhdCAxMToyNiArMDIwMCwgSG9sZ2VyIEFzc21h
bm4gd3JvdGU6Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvd2ViYXN0by1jY2J2
Mi9sb3dsZXZlbC5jIGIvYXJjaC9hcm0vYm9hcmRzL3dlYmFzdG8tY2NidjIvbG93bGV2ZWwuYwo+
PiBpbmRleCA4NTI5ZWEzNzM1Li5kM2M5ZmE3M2Y5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9i
b2FyZHMvd2ViYXN0by1jY2J2Mi9sb3dsZXZlbC5jCj4+ICsrKyBiL2FyY2gvYXJtL2JvYXJkcy93
ZWJhc3RvLWNjYnYyL2xvd2xldmVsLmMKPj4KPj4gLXN0YXRpYyB2b2lkIG5vaW5saW5lIHN0YXJ0
X2NjYnYyKHUzMiByMCkKPj4gK3N0YXRpYyB2b2lkIG5vaW5saW5lIHN0YXJ0X2NjYnYyKHUzMiBy
MCwgdW5zaWduZWQgbG9uZyBtZW1zaXplKQo+PiDCoHsKPj4gwqAJaW50IHRlZV9zaXplOwo+PiDC
oAl2b2lkICp0ZWU7Cj4+IEBAIC00OCw3ICs0OCw3IEBAIHN0YXRpYyB2b2lkIG5vaW5saW5lIHN0
YXJ0X2NjYnYyKHUzMiByMCkKPj4gwqAJICovCj4+IMKgCWlmKElTX0VOQUJMRUQoQ09ORklHX0ZJ
Uk1XQVJFX0NDQlYyX09QVEVFKQo+PiDCoAkgICAmJiAhKHIwID4gTVg2X01NRENfUDBfQkFTRV9B
RERSCj4+IC0JICAgICAgICAmJiAgcjAgPCBNWDZfTU1EQ19QMF9CQVNFX0FERFIgKyBTWl8yNTZN
KSkgewo+PiArCSAgICAgICAgJiYgIHIwIDwgTVg2X01NRENfUDBfQkFTRV9BRERSICsgbWVtc2l6
ZSkpIHsKCllvdSBjb3VsZCBoYXJkY29kZSBtZW1zaXplID09IFNaXzUxMk0gaGVyZS4KCj4+IMKg
CQlnZXRfYnVpbHRpbl9maXJtd2FyZShjY2J2Ml9vcHRlZV9iaW4sICZ0ZWUsICZ0ZWVfc2l6ZSk7
Cj4gCj4gVW5mb3J0dW5hdGVseSwgT1AtVEVFIGJ1aWxkIGZvciB0aGUgb2xkIDI1Nk1CIHZhcmlh
bnQgd29uJ3Qgd29yayBmb3IKPiB0aGUgbmV3IDUxMk1CIHZhcmlhbnQuIERlcGVuZGluZyBvbiB0
aGUgT1AtVEVFIE1lbW9yeSBzaXplIHdlIHNob3VsZAo+IGFkZCBhIG5ldyBGSVJNV0FSRSBLQ09O
RklHIHZhcmlhYmxlIGFuZCByZXRyaWV2ZSB0aGUgY29ycmVjdCBmaXJtd2FyZQo+IHBlciBib2Fy
ZCwgaS5lLgo+IAo+IGlmIChtZW1zaXplID09IFNaXzI1Nk0pIHsKPiAJZ2V0X2J1aWx0aW5fZmly
bXdhcmUoY2NidjJfb3B0ZWVfYmluLCAmdGVlLCAmdGVlX3NpemUpCj4gfSBlbHNlIHsKPiAJZ2V0
X2J1aWx0aW5fZmlybXdhcmUoY2NidjJfb3B0ZWVfNTEybV9iaW4sICZ0ZWUsICZ0ZWVfc2l6ZSkK
PiAKPiB3aXRoIGEgbmV3IEZJUk1XQVJFX0NDQlYyX09QVEVFXzUxMk0gc3ltYm9sLgo+IAo+IFRC
SCwgSSBkb24ndCBsaWtlIHRoaXMsIHNpbmNlIG91ciBmaXJtd2FyZSBLQ29uZmlnIHdpbGwgZXhw
YW5kCj4gbmVlZGxlc3NseSBmb3IgdGhlIHZhcmlhbnRzLiBIb3dldmVyIGN1cnJlbnRseSBPUC1U
RUUgaXMgbm90IHNldHVwIHRvCj4gYmUgYWJsZSB0byBib290IGJhc2VkIG9uIGRpZmZlcmVudCBt
ZW1vcnkgc2l6ZXPigKYKCllvdSBjb3VsZCBqdXN0IHNoaXAgYm90aCBmaXJtd2FyZXMgYWx3YXlz
IGlmIHRoZXkgYXJlIHNtYWxsIGVub3VnaD8KCklmIHlvdSBnb3Qgc29tZSBHUElPIHRvIGRpZmZl
cmVudGlhdGUgYmV0d2VlbiBib3RoIHZhcmlhbnRzLCB5b3UgY291bGQKYWxzbyB1c2UgdGhlIHNh
bWUgaW1hZ2UgZm9yIGJvdGggKGFuZCBkcm9wIHRoZSByMCBoYWNrIGFib3ZlKS4KCkNoZWVycywK
QWhtYWQKCj4gCj4gUmVnYXJkcywKPiBSb3V2ZW4gQ3plcndpbnNraQo+IAo+IAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWls
aW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiAKCi0tIApQZW5ndXRyb25peCBl
LksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8v
d3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAg
ICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxk
ZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUg
fAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

