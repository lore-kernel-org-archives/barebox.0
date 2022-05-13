Delivery-date: Fri, 13 May 2022 14:22:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npUJ0-00BxPD-CX
	for lore@lore.pengutronix.de; Fri, 13 May 2022 14:22:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npUIz-0004cZ-6p
	for lore@pengutronix.de; Fri, 13 May 2022 14:22:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4A1uF7aBiJVZZV+RYQFT7zNOS4yUWJe3op3hiqfkMTU=; b=RgkNMaXTYM/N1+
	x4tbhY3z+hWDrxde2id4WtMfiDareLNlmBpuxJPMKU49Ez75BRUbRFOEm6HROPhoIbh3n0w6Ejsbf
	+eEroWdeBGISNMP0VK356rN3bOTUPLnc3AdIJAyQbW/vLmDRI73EPJNUzsQDPJxfcMp12Mv2w6jG0
	UUxBpb8sVvVTMrqBMSiMH8KFKu8Lgp/0RIc1csywBOb8jgxIi0DryDGwllap9gl9M1Gmz5chiTvr+
	eKmNKZPwOLF9yhUzjQRyOsxOQRZ1BEpmS9s4bb+CU/ABL8tI8ml7qusIk+Pr32rVaQj9cv+qqubqd
	KOdG2wC6r3LhU682NzRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npUHh-00Fyxa-4b; Fri, 13 May 2022 12:20:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npUHc-00Fywu-15
 for barebox@lists.infradead.org; Fri, 13 May 2022 12:20:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1npUHW-0004NB-5U; Fri, 13 May 2022 14:20:30 +0200
Message-ID: <8ac33383-0da9-7609-0ba0-61cf02fd4034@pengutronix.de>
Date: Fri, 13 May 2022 14:20:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Matthias Fend <matthias.fend@emfend.at>, Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
 <Yn4zMYZte5E6XBXl@ravnborg.org>
 <2d23b3c4-8374-6e17-05ab-ed3829d985a0@emfend.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <2d23b3c4-8374-6e17-05ab-ed3829d985a0@emfend.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_052036_111008_9B759B52 
X-CRM114-Status: GOOD (  20.60  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWF0dGhpYXMsCgpPbiAxMy4wNS4yMiAxNDowOCwgTWF0dGhpYXMgRmVuZCB3cm90ZToK
PiBIZWxsbyBTYW0sCj4gCj4gQW0gMTMuMDUuMjAyMiB1bSAxMjozMCBzY2hyaWViIFNhbSBSYXZu
Ym9yZzoKPj4gSGkgTWF0dGhpYXMKPj4KPj4gT24gRnJpLCBNYXkgMTMsIDIwMjIgYXQgMTA6NTU6
MDJBTSArMDIwMCwgTWF0dGhpYXMgRmVuZCB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IEknbSBsb29r
aW5nIGZvciBhIHNvbHV0aW9uIHRvIHN1cHBvcnQgbXVsdGlwbGUgYm9hcmRzIHdpdGgganVzdCBv
bmUgYmFyZWJveAo+Pj4gaW1hZ2UuIFRoZSBmZXcgY29yZSBjb21wb25lbnRzIHRoYXQgYXJlIHJl
bGV2YW50IGZvciBiYXJlYm94IGFyZSB0aGUgc2FtZSBvbgo+Pj4gYWxsIGJvYXJkcywgc28gdGhh
dCB0aGUgc2FtZSBiYXJlYm94IGltYWdlIHJ1bnMgb24gYWxsIGJvYXJkcy4gSXQgaXMKPj4+IHBv
c3NpYmxlIHRvIGR5bmFtaWNhbGx5IGRldGVjdCB0aGUgYm9hcmQgdHlwZSBpbnNpZGUgYmFyZWJv
eCwgYnV0IGFzIHRoaXMKPj4+IHJlcXVpcmVzIHNvbWUgaW5mcmFzdHJ1Y3R1cmUgaXQgaXMgbm90
IHBvc3NpYmxlIGR1cmluZyBsb3dsZXZlbCBpbml0Lgo+Pgo+PiBUaGUgc2tvdi1pbXg2IGJvYXJk
cyB3YXMgaW4gYSBzaW1pbGFyIHNpdHVhdGlvbiAtIGhlcmUgdGhlIHNvbHV0aW9uIHdhcwo+PiB0
byBhZGQgZW5vdWdoIGluZnJhc3RydWN0dXJlIHRvIGxvd2xldmVsIHRvIGJlIGFibGUgdG8gZGV0
ZXJtaW5lIHRoZQo+PiBib2FyZCB2YXJpYW50Lgo+Pgo+PiBOb3Qgd2hhdCB5b3UgYXNrZWQgZm9y
IGJ1dCBtYXliZSBkdXBsaWNhdGluZyB0aGUgbWluaW1hbCBzZXQgb2YKPj4gaW5mcmFzdHJ1Y3R1
cmUgYWxsb3dzIHlvdSB0byBkZXRlcm1pbmUgdGhlIGJvYXJkIHR5cGUgYW55d2F5IGluIGxvd2xl
dmVsPwo+IAo+IFRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgb3V0IHRoaXMgaW50ZXJlc3RpbmcgZXhh
bXBsZS4KPiBTaW5jZSBpbiB0aGlzIGNhc2UgdGhpbmdzIGxpa2UgSTJDIGRldmljZXMgYXJlIG5l
ZWRlZCBmb3IgYm9hcmQgZGV0ZWN0aW9uLCBJIHRoaW5rIHB1dHRpbmcgdGhlbSBpbiBsb3dsZXZl
bCBpbml0IGlzIG5vdCBhIGdvb2QgaWRlYS4KClRoZSBpLk1YOE1OLUVWSyB1c2VzIGkyYyB0byBk
aWZmZXJlbnRpYXRlIGJldHdlZW4gdHdvIHZhcmlhbnRzLApsb29rIGZvciBwb3dlcl9pbml0X2Jv
YXJkX3BjYTk0NTAgYW5kIHBvd2VyX2luaXRfYm9hcmRfYmQ3MTgzNy4KCldlIGRvbid0IHBhc3Mg
ZGlmZmVyZW50IGRldmljZSB0cmVlcyB0aGVyZSwgYnV0IHRoaXMgY2FuIGVhc2lseQpiZSByZXRy
b2ZpdHRlZCBvbmNlIGl0J3MgdXNlZnVsIChpLmUuIG9uY2Ugd2UgaGF2ZSBQTUlDIGRyaXZlcnMK
Zm9yIG9uZSBvZiB0aGVzZSBjaGlwcykuCgpDaGVlcnMsCkFobWFkCgo+IAo+IFRoYW5rcwo+IMKg
fk1hdHRoaWFzCj4gCj4+Cj4+IMKgwqDCoMKgU2FtCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo+IAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxk
ZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4
LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9u
ZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4
NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

