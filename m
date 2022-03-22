Delivery-date: Tue, 22 Mar 2022 09:26:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZqu-002Lc4-9J
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 09:26:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZqw-0005rN-Dz
	for lore@pengutronix.de; Tue, 22 Mar 2022 09:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WS36TNDZQVD3zTfiTc3DRgh5MP8Cs9kD0g0Nj/GwtYE=; b=3w3V1IbSgIZiR3
	IVFyZYKS0nKMP6a0MPVzvkpKMJczIcxEUC/q4YhuQ+pdn1+vWw4MnhR8Gaem3JvW/Q3+IwPsaGaFu
	nO+ZEBhTp9u/8haYGktUG/uqulCmlgS//Q+uKj8sQmjy3mmVdp0ZPnN+sf1mElLN0u+QpMHoPwxfH
	CH9tCVeimgkTh3oCRR9vJFjguTRfmeXTgFfqcyw4408hd9woCDsdlRY9MFiaGOq3yEzZ9kVHBNLYv
	U63Jn7YqK9XQ6KQgfgUOsVTXakogmKHgoCswLuJAWjyeAlvS1z25b5LHFBiCvzZuU8Ks6pskFhgb4
	T23+rN7C8npDZpHpz/wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWZpZ-00AOEk-9x; Tue, 22 Mar 2022 08:25:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWZpK-00AOBt-Fc
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 08:25:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nWZpJ-0005PI-1y; Tue, 22 Mar 2022 09:25:13 +0100
Message-ID: <1c74b901-fa87-e922-0f37-e50478ac905b@pengutronix.de>
Date: Tue, 22 Mar 2022 09:25:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, Sascha Hauer <sha@pengutronix.de>,
 barebox@lists.infradead.org
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at> <20210106100543.GO19063@pengutronix.de>
 <20220321221717.GJ11246@pengutronix.de>
 <4bbe2758-ff16-6694-8bad-b8df2c254a48@pengutronix.de>
 <20220322081905.GK11246@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220322081905.GK11246@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_012514_574262_B898EE58 
X-CRM114-Status: GOOD (  27.18  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWljaGFlbCwKCk9uIDIyLjAzLjIyIDA5OjE5LCBNaWNoYWVsIEdyemVzY2hpayB3cm90
ZToKPiBPbiBUdWUsIE1hciAyMiwgMjAyMiBhdCAwNjozNToyMkFNICswMTAwLCBBaG1hZCBGYXRv
dW0gd3JvdGU6Cj4+IE9uIDIxLjAzLjIyIDIzOjE3LCBNaWNoYWVsIEdyemVzY2hpayB3cm90ZToK
Pj4+IE9uIFdlZCwgSmFuIDA2LCAyMDIxIGF0IDExOjA1OjQzQU0gKzAxMDAsIFNhc2NoYSBIYXVl
ciB3cm90ZToKPj4+PiBPbiBNb24sIERlYyAyMSwgMjAyMCBhdCAwMTozMjo1MEFNICswMTAwLCBB
aG1hZCBGYXRvdW0gd3JvdGU6Cj4+Pj4+IExpbnV4IGRvZXNuJ3Qgc2VlbSB0byBlbmZvcmNlIGEg
Zml4ZWQgb3JkZXIgYmV0d2VlbiBwaHlfaW5pdCBhbmQKPj4+Pj4gcGh5X3Bvd2VyX29uLiBUaGUg
TGludXggZHdjMiBkcml2ZXIgZG9lcyBwb3dlcl9vbiBhbmQgdGhlbiBwaHlfaW5pdCwKPj4+Pj4g
d2hpY2ggaXMgdGhlIGludmVyc2Ugb2Ygd2hhdCBiYXJlYm94IGlzIGN1cnJlbnRseSBkb2luZy4K
Pj4+Pj4KPj4+Pj4gVGhlIFBIWXMgbm9ybWFsbHkgdXNlZCB3aXRoIGR3YzIgYXJlIHdyaXR0ZW4g
d2l0aCB0aGlzIGluIG1pbmQuCj4+Pj4+IEZvciBleGFtcGxlLCBvdXIgc3RtMzItdXNicGh5YyBk
cml2ZXIgZmFpbHMgdG8gZGlzYWJsZToKPj4+Pj4KPj4+Pj4gwqAgRVJST1I6IHN0bTMyLXVzYnBo
eWMgNWEwMDYwMDAudXNicGh5Y0A1YTAwNjAwMC5vZjogUExMIG5vdCByZXNldAo+Pj4+PiDCoCBF
UlJPUjogcGh5MTogcGh5IGV4aXQgZmFpbGVkIC0tPiAtNQo+Pj4+Pgo+Pj4+PiBCZWNhdXNlIExp
bnV4IGRvZXMgZXhpdCAtPiBwb3dlcl9vZmYsIGJ1dCBiYXJlYm94IGRvZXMgcG93ZXJfb2ZmIC0+
Cj4+Pj4+IGV4aXQuCj4+Pj4+Cj4+Pj4+IElzc3VlIHdhcyByYWlzZWQgdXBzdHJlYW06Cj4+Pj4+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvNmNkMDFlNzktZmRjMC0zYmQ0LTMyYjUtYTg1
MTQyNTMzZjhhQHBlbmd1dHJvbml4LmRlL1QvI3QKPj4+Pj4KPj4+Pj4gVW50aWwgdGhpcyBpcyBz
ZXR0bGVkLCBzd2FwIHRoZSBvcmRlciB0byBmb2xsb3cgd2hhdCBMaW51eCBkb2VzLgo+Pj4+PiBU
aGlzIGlzIHN1Ym9wdGltYWwsIGJlY2F1c2UgaXQgbWVhbnMgY29udHJvbGxlciBkcml2ZXJzIGhh
dmUgZGlmZmVyZW50Cj4+Pj4+IG9yZGVyIG9mIHRoZSBvcGVyYXRpb25zIGFuZCB0aGF0IHlvdSBj
YW4ndCBjb21iaW5lIGFyYml0cmFyeSBQSFlzIGFuZAo+Pj4+PiBjb250cm9sbGVycywgYnV0IGl0
IHNlZW1zIHVubGlrZWx5IHdlIHdpbGwgc3VwcG9ydCBjb21iaW5hdGlvbnMgdGhhdAo+Pj4+PiBh
cmVuJ3Qgc3VwcG9ydGVkIGJ5IExpbnV4IGluIHRoZSBmaXJzdCBwbGFjZSBhbnl3YXkuCj4+Pj4K
Pj4+PiBUaGlzIGlzIHZhbHVhYmxlIGluZm9ybWF0aW9uIGFuZCBJIGRvbid0IHdhbnQgaXQgdG8g
YmUgbG9zdCwgc28gaW5zdGVhZAo+Pj4+IG9mIGFwcGx5aW5nIHRoaXMgYXMgYSBmaXh1cCBJIHJl
d3JvdGUgdGhlIHN1YmplY3QgdG86Cj4+Pj4KPj4+PiB1c2I6IGR3YzI6IHN3YXAgb3JkZXIgb2Yg
cGh5X2luaXQgYW5kIHBoeV9wb3dlcl9vbiB0byB3aGF0IExpbnV4IGRvZXMKPj4+Pgo+Pj4+IGFu
ZCBhcHBsaWVkIGl0IGFzIGEgc2VwYXJhdGUgcGF0Y2guCj4+Pgo+Pj4gV2l0aCB0aGlzIHBhdGNo
IGFwcGxpZWQsIHNvbWUgc3RtMzJtcDEgZG8gc2VlbSB0byB0aW1lb3V0IHdoZW4KPj4+IGFkZHJl
c3NpbmcgdGhlIGNvcmUuCj4+Pgo+Pj4gV0FSTklORzogZHdjMiA0OTAwMDAwMC51c2Itb3RnQDQ5
MDAwMDAwLm9mOiBkd2MyX2NvcmVfcmVzZXQ6IFRpbWVvdXQhIFdhaXRpbmcgZm9yIENvcmUgU29m
dCBSZXNldAo+Pj4gRVJST1I6IGR3YzIgNDkwMDAwMDAudXNiLW90Z0A0OTAwMDAwMC5vZjogcHJv
YmUgZmFpbGVkOiBDb25uZWN0aW9uIHRpbWVkIG91dAo+Pj4KPj4+IFdoZW4gSSByZXZlcnQgdGhp
cyBwYXRjaC4gRXZlcnl0aGluZyB3b3JrcyBmaW5lIGFnYWluLgo+Pj4KPj4+IElzIGl0IHBvc3Np
YmxlIHRoYXQgd2UgY2FuIHJldmVydCBpdCBpbiBtYWlubGluZSBub3c/Cj4+Cj4+IFNpbmNlIDBl
MzdmOTRmYmUxYiAoInBoeTogc3RtMzI6IHN5bmMgd2l0aCB1cHN0cmVhbSIpLCB0aGUgcGh5LXN0
bTMyLXVzYnBoeWMgbm93Cj4+IGhhcyBubyBwb3dlcm9uL3Bvd2Vyb2ZmIGNhbGxiYWNrcywgc28g
YSByZXZlcnQgc2VlbXMgdG8gb25seSBzbGlnaHRseSBjaGFuZ2UKPj4gdGltaW5nLiBJJ2Qgc3Vn
Z2VzdCB5b3UgZGlnIHNvbWUgbW9yZS4KPiAKPiBUaGF0IGlzIG5vdCB0cnVlLiBwaHlfcG93ZXJf
b24gYWxzbyBlbmFibGVzIHRoZSBwaHlfcmVndWxhdG9yLiBDaGFuZ2luZwo+IHRoaXMgb3JkZXIg
aGFzIHRoZSBlZmZlY3QgdGhhdCB0aGUgcmVndWxhdG9yIGlzIGVuYWJsZWQgYWZ0ZXIgb3IgYmVm
b3JlCj4gcGh5X2luaXQgY2FsbC4KCk9oLCBnb29kIHBvaW50LiAKCj4+PiBIb3cgY2FuIEkgcmVw
cm9kdWNlIHRoZSBjYXNlIHRoaXMgd2FzIGZpeGluZyBpbiB0aGUgZmlyc3QgcGxhY2U/Cj4+Cj4+
IFRoZSBjYXNlIHdhcyB0aGF0IGJhcmVib3ggY2FsbHMgcG93ZXJvbi9pbml0IGluIGEgZGlmZmVy
ZW50IG9yZGVyIHRoYW4gTGludXguCj4+IFRoaXMgcG9pbnQgaXMgbW9vdCBub3cgdGhvdWdoIGJl
Y2F1c2UgcG93ZXJvbiBpcyBubyBsb25nZXIgcHJvdmlkZWQgYnkgdGhlCj4+IGRyaXZlci4KPiAK
PiBTdGlsbCBub3QgdHJ1ZSwgdGhvdWdoLgoKSXNuJ3QgdGhpcyB0aGUgc2FtZSBvcmRlciBMaW51
eCB1c2VzPyBQb3dlcmluZyBvbiByZWd1bGF0b3IgYW5kIHRoZW4gcGh5X2luaXQ/CldoeSBkb2Vz
IGl0IGxlYWQgdG8gaXNzdWVzIGluIGJhcmVib3gsIGJ1dCBub3QgaW4gTGludXg/CgpDaGVlcnMs
CkFobWFkCgo+IAo+IFJlZ2FyZHMsCj4gTWljaGFlbAo+IAoKCi0tIApQZW5ndXRyb25peCBlLksu
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3
LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAg
ICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNo
ZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

