Delivery-date: Thu, 03 Jun 2021 07:36:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1log2F-0000PX-1s
	for lore@lore.pengutronix.de; Thu, 03 Jun 2021 07:36:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1log2D-0003ln-W7
	for lore@pengutronix.de; Thu, 03 Jun 2021 07:36:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqwVqQ+MhJ5WGKXyaaDr3CcSPMF3hNfOne2qO7WfLmM=; b=nQB2tU7a4vcN8l
	SCItiYC+pc5+L/qUZUJuimfGgEcD3zEqb/+xUka0FqfwGLnfOr/ykCc9Gd0nvGpFG4TT4UGJX+Jye
	lPc10PN6bgaHfyZytGLx38EtNC4ggwdx3qYTDx/Ly/KlpSHbtH6sIihhel9ROWY9CHDxK/oKKBbeg
	+BzHM5JpXj0qrwWuluXAL8TIyQoULltD9Q3XkZbApRYrs4ooMxr24aIfWdlE15LpuBOnuOhWLcoe+
	8bhsNydTsnioG/DaxGQ9qJwXlnQahofbSkZoKk3wrDUO53xPt8wXTlsRzkKp9ncVcMl8aJKRdkqmf
	Ce/tnT/EJm1dUXcD2XQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1log0g-007D4Z-8Q; Thu, 03 Jun 2021 05:35:14 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1log0a-007D3a-Ix
 for barebox@lists.infradead.org; Thu, 03 Jun 2021 05:35:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 80907F2F
 for <barebox@lists.infradead.org>; Thu,  3 Jun 2021 07:35:04 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEtyIzbMzKoD for <barebox@lists.infradead.org>;
 Thu,  3 Jun 2021 07:35:00 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id A772DF1B; Thu,  3 Jun 2021 07:35:00 +0200 (CEST)
Date: Thu, 3 Jun 2021 07:34:53 +0200
From: Alexander Dahl <ada@thorsis.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mgr@pengutronix.de, ore@pengutronix.de
Message-ID: <YLhp/edqhhkc5hEp@ada-deb-carambola.ifak-system.com>
Mail-Followup-To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org, mgr@pengutronix.de, ore@pengutronix.de
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
 <20210602102524.20034-2-a.fatoum@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20210602102524.20034-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_223508_985464_D13C3700 
X-CRM114-Status: GOOD (  31.23  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: at91: mmc-xload: allow overriding card capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQWhtYWQsCgpqdXN0IGdsYW5jZWQgb3ZlciB0aGlzIHNlcmllcyBieSBhY2NpZGVudCwg
c29tZXRoaW5nIGNhdGNoZWQgbXkgZXllIOKApgoKQW0gV2VkLCBKdW4gMDIsIDIwMjEgYXQgMTI6
MjU6MjNQTSArMDIwMCBzY2hyaWViIEFobWFkIEZhdG91bToKPiBUaGUgUEJMIE1NQyBkcml2ZXIg
d29ya3Mgd2l0aCB0aGUgYXNzdW1wdGlvbiB0aGF0IHRoZSBCb290Uk9NIGhhcyBsZWZ0Cj4gdGhl
IFNELUNhcmQgaW4gdHJhbnNmZXIgbW9kZS4gVGhlcmUgc2VlbXMgdG8gYmUgbm8gZGVmaW5pdGl2
ZSB3YXkKPiB0byBmaW5kIG91dCB3aGV0aGVyIGEgcnVubmluZyBjYXJkIGlzIGhpZ2ggY2FwYWNp
dHkgKD4gMkcpIG9yIG5vdCwKPiBidXQgd2UgbmVlZCB0aGlzIGluZm8gd2hlbiByZWFkaW5nLCBi
ZWNhdXNlIGRlZmF1bHQgY2FwYWNpdGllcyBhY2NlcHQKPiB0aGVpciByZWFkIG9mZnNldCBpbiBi
eXRlcyB3aGlsZSBoaWdoIGNhcGFjaXR5IGRlYWwgaW4gNTEyIGJ5dGUgYmxvY2tzLgoKSSdtIGEg
bGl0dGxlIHN1cnByaXNlZCB0aGVyZSdzIG5vdC4gIE9uY2UgbGlrZSB0ZW4geWVhcnMgYWdvIEkg
aGFkIHRvCndyaXRlIGEgU0QgY2FyZCBkcml2ZXIgZm9yIGEgc21hbGwgbWljcm9jb250cm9sbGVy
LiAgSW4gdGhlIGZpcm13YXJlIEkKc3dpdGNoZWQgdG8gaGlnaCBjYXBhY2l0eSBtb2RlIGp1c3Qg
YmFzZWQgb24gdGhlIENhcmQgQ2FwYWNpdHkgU3RhdHVzCihDQ1MpIGJpdCBpbiB0aGUgT3BlcmF0
aW9uIENvbmRpdGlvbnMgUmVnaXN0ZXIgKE9DUikgb2YgdGhlIFNEIGNhcmQuCkdvdCB0aGF0IGFm
dGVyIHNlbmRpbmcgYWR2YW5jZWQgY29tbWFuZCA0MSAoc2VuZCBvcCBjb25kKSB0byB0aGUgY2Fy
ZC4KTm90IHN1cmUgaWYgaXQncyB0aGF0IGVhc3ksIG9yIGlmIHRoYXQgY29tbWFuZCB3YXMgb25s
eSBzZW50IHVuZGVyCmNlcnRhaW4gY29uZGl0aW9ucywgYnV0IEkgY2FuIG5vdCByZW1lbWJlciBq
dXN0IGd1ZXNzaW5nIGhpZ2ggY2FwYWNpdHkKYmFzZWQgb24gc29tZSBoZXVyaXN0aWNzIG5vciBo
YXJkIGNvZGUgaXQuICBXZSBjZXJ0YWlubHkgdXNlZCBsb3cKY2FwYWNpdHkgKGxpa2UgMzIgTUIg
Zm9yIGV4YW1wbGUpIGFuZCBoaWdoIGNhcGFjaXR5IGNhcmRzICg0RyBvciBtb3JlKQp3aXRoIHRo
YXQgc3lzdGVtLgoKWW91IHByb2JhYmx5IGFscmVhZHkgbG9va2VkIGZvciBhIHJlbGlhYmxlIHdh
eSB0byBkZXRlY3QgdGhpcy4gIEkgd2FzCmp1c3QgY3VyaW91cyB3aHkgdGhpcyBuZWVkcyB0byBi
ZSBoYXJkY29kZWQuCgpIYXZlIGEgbmljZSBkYXkKQWxleAoKPiBGb3IgaS5NWCwgdGhpcyBpcyBl
bGVnYW50bHkgc29sdmVkIGJ5IGp1c3QgcmVhZGluZyBmcm9tIHNlY3RvciAwLgo+IEZvciBBVDkx
LCB3ZSBjaGFpbmxvYWQgYmFyZWJveCBmcm9tIEZBVCwgc28gd2UgbmVlZCB0byBzZWVrIGFyb3Vu
ZC4KPiBTbyBmYXIsIHdlIGp1c3QgaGFkIGFuIGFzc3VtcHRpb24gYnVyaWVkIGluIHRoZSBkcml2
ZXIgdGhhdCB3ZSBhcmUKPiBhbHdheXMgaGlnaGNhcGFjaXR5Lgo+IAo+IEV4cG9ydCBhIGtub2Ig
dG8gY2hhbmdlIHRoaXMsIHNvIHdlIGNhbiBtb3ZlIHRoZSBoYXJkY29kaW5nIGZyb20KPiBkcml2
ZXIgdG8gYm9hcmQgY29kZSwgd2hlcmUgaXQncyBtb3JlIHByb21pbmVudC4gVGhpcyBpcyBkb25l
Cj4gaW4gYSBmb2xsb3ctdXAgY29tbWl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91
bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL21hY2gtYXQ5MS9p
bmNsdWRlL21hY2gveGxvYWQuaCB8IDMgKysrCj4gIGRyaXZlcnMvbWNpL2F0bWVsLXNkaGNpLXBi
bC5jICAgICAgICAgICB8IDggKysrKysrKy0KPiAgZHJpdmVycy9tY2kvYXRtZWxfbWNpX3BibC5j
ICAgICAgICAgICAgIHwgOCArKysrKysrLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5
MS9pbmNsdWRlL21hY2gveGxvYWQuaCBiL2FyY2gvYXJtL21hY2gtYXQ5MS9pbmNsdWRlL21hY2gv
eGxvYWQuaAo+IGluZGV4IGJiYzcwYWYyMTA4YS4uMDM4ZjMyNTU0NTY4IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL21hY2gtYXQ5MS9pbmNsdWRlL21hY2gveGxvYWQuaAo+ICsrKyBiL2FyY2gvYXJt
L21hY2gtYXQ5MS9pbmNsdWRlL21hY2gveGxvYWQuaAo+IEBAIC0xMiw0ICsxMiw3IEBAIGludCBh
dDkxX3NkaGNpX2Jpb19pbml0KHN0cnVjdCBwYmxfYmlvICpiaW8sIHZvaWQgX19pb21lbSAqYmFz
ZSk7Cj4gIGludCBhdDkxX21jaV9iaW9faW5pdChzdHJ1Y3QgcGJsX2JpbyAqYmlvLCB2b2lkIF9f
aW9tZW0gKmJhc2UsCj4gIAkJICAgICAgdW5zaWduZWQgaW50IGNsb2NrLCB1bnNpZ25lZCBpbnQg
c2xvdCk7Cj4gIAo+ICt2b2lkIGF0OTFfbWNpX3NldF9oaWdoY2FwYWNpdHkoc3RydWN0IHBibF9i
aW8gKmJpbywgYm9vbCBoaWdoY2FwKTsKPiArdm9pZCBhdDkxX3NkaGNpX3NldF9oaWdoY2FwYWNp
dHkoc3RydWN0IHBibF9iaW8gKmJpbywgYm9vbCBoaWdoY2FwKTsKPiArCj4gICNlbmRpZiAvKiBf
X01BQ0hfWExPQURfSCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21jaS9hdG1lbC1zZGhjaS1w
YmwuYyBiL2RyaXZlcnMvbWNpL2F0bWVsLXNkaGNpLXBibC5jCj4gaW5kZXggNjI2ZTQwMDhmZTg1
Li4zMTdmMjZmOGFmMGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tY2kvYXRtZWwtc2RoY2ktcGJs
LmMKPiArKysgYi9kcml2ZXJzL21jaS9hdG1lbC1zZGhjaS1wYmwuYwo+IEBAIC05OSw2ICs5OSwx
MiBAQCBzdGF0aWMgaW50IGF0OTFfc2RoY2lfYmlvX3JlYWQoc3RydWN0IHBibF9iaW8gKmJpbywg
b2ZmX3Qgc3RhcnQsCj4gIAlyZXR1cm4gYmxvY2tzX2RvbmU7Cj4gIH0KPiAgCj4gK3ZvaWQgYXQ5
MV9zZGhjaV9zZXRfaGlnaGNhcGFjaXR5KHN0cnVjdCBwYmxfYmlvICpiaW8sIGJvb2wgaGlnaGNh
cCkKPiArewo+ICsJc3RydWN0IGF0OTFfc2RoY2lfcHJpdiAqcHJpdiA9IGJpby0+cHJpdjsKPiAr
CXByaXYtPmhpZ2hjYXBhY2l0eV9jYXJkID0gaGlnaGNhcDsKPiArfQo+ICsKPiAgc3RhdGljIHN0
cnVjdCBhdDkxX3NkaGNpX3ByaXYgYXRtZWxfc2RjYXJkOwo+ICAKPiAgaW50IGF0OTFfc2RoY2lf
YmlvX2luaXQoc3RydWN0IHBibF9iaW8gKmJpbywgdm9pZCBfX2lvbWVtICpiYXNlKQo+IEBAIC0x
MjIsNyArMTI4LDcgQEAgaW50IGF0OTFfc2RoY2lfYmlvX2luaXQoc3RydWN0IHBibF9iaW8gKmJp
bywgdm9pZCBfX2lvbWVtICpiYXNlKQo+ICAJcmV0ID0gYXQ5MV9zZGhjaV9zZXRfaW9zKGhvc3Qs
ICZpb3MpOwo+ICAKPiAgCSAvLyBGSVhNRSBjYW4gd2UgZGV0ZXJtaW5lIHRoaXMgd2l0aG91dCBs
ZWF2aW5nIFNEIHRyYW5zZmVyIG1vZGU/Cj4gLQlwcml2LT5oaWdoY2FwYWNpdHlfY2FyZCA9IDE7
Cj4gKwlhdDkxX3NkaGNpX3NldF9oaWdoY2FwYWNpdHkoYmlvLCB0cnVlKTsKPiAgCj4gIAlyZXR1
cm4gMDsKPiAgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21jaS9hdG1lbF9tY2lfcGJsLmMgYi9k
cml2ZXJzL21jaS9hdG1lbF9tY2lfcGJsLmMKPiBpbmRleCA3NjdkNmYzY2UyZDcuLjgyZTQ1ZmQ0
ZTg5ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21jaS9hdG1lbF9tY2lfcGJsLmMKPiArKysgYi9k
cml2ZXJzL21jaS9hdG1lbF9tY2lfcGJsLmMKPiBAQCAtODIsNiArODIsMTIgQEAgc3RhdGljIGlu
dCBhdDkxX21jaV9iaW9fcmVhZChzdHJ1Y3QgcGJsX2JpbyAqYmlvLCBvZmZfdCBzdGFydCwKPiAg
CXJldHVybiBibG9ja3NfZG9uZTsKPiAgfQo+ICAKPiArdm9pZCBhdDkxX21jaV9zZXRfaGlnaGNh
cGFjaXR5KHN0cnVjdCBwYmxfYmlvICpiaW8sIGJvb2wgaGlnaGNhcCkKPiArewo+ICsJc3RydWN0
IGF0bWVsX21jaV9wcml2ICpwcml2ID0gYmlvLT5wcml2Owo+ICsJcHJpdi0+aGlnaGNhcGFjaXR5
X2NhcmQgPSBoaWdoY2FwOwo+ICt9Cj4gKwo+ICBpbnQgYXQ5MV9tY2lfYmlvX2luaXQoc3RydWN0
IHBibF9iaW8gKmJpbywgdm9pZCBfX2lvbWVtICpiYXNlLAo+ICAJCSAgICAgIHVuc2lnbmVkIGlu
dCBjbG9jaywgdW5zaWduZWQgaW50IHNsb3QpCj4gIHsKPiBAQCAtMTEwLDcgKzExNiw3IEBAIGlu
dCBhdDkxX21jaV9iaW9faW5pdChzdHJ1Y3QgcGJsX2JpbyAqYmlvLCB2b2lkIF9faW9tZW0gKmJh
c2UsCj4gIAo+ICAJYXRtY2lfY29tbW9uX3NldF9pb3MoaG9zdCwgJmlvcyk7Cj4gIAo+IC0JcHJp
di0+aGlnaGNhcGFjaXR5X2NhcmQgPSAxOwo+ICsJYXQ5MV9tY2lfc2V0X2hpZ2hjYXBhY2l0eShi
aW8sIHRydWUpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gLS0gCj4gMi4yOS4yCj4gCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJlYm94
IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

