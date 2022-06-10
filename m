Delivery-date: Fri, 10 Jun 2022 09:30:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZ6P-009mpM-3p
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:30:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZ6N-0006Dz-Uc
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:30:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYdmN7w5fVL7vgzVb6EuPeA6H/J4YjNTlqU5HM5Qgio=; b=hlwbvuyDTXkNgO
	VAAqXt3JtfP9mhTmeTW5liclPpzVmL34SpHJ6gABMy9N8Z4Tjb2w95hmg7qHu+/WxT1H9YOLcwa5X
	hLCXfJ2vgP9QKWo2uesabz78oneFkluQdodTngWg3zHHsgHPgj1Rha7WkoIHwXszddH6X/VPgty59
	ecEqTKr28IoC0lKBEaARunqY6B0Rp9HP2lJEtCcvlQ73lZNCjb3Kt4KBv9BnpCpIwDTNm5OfrPuJh
	ywugra0ve6waVqW/QGVNj+CVzR4HAMx+enNDqZ4d+y97w2W4/tT7c4VVy+dgoS8S5bCuQSXB7nesr
	LvWUJx2LazdLDXy27yGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ4v-006QjZ-4M; Fri, 10 Jun 2022 07:29:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ4q-006Qi8-NB
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:29:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=circona.localnet)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jbe@pengutronix.de>)
	id 1nzZ4n-0005xD-70; Fri, 10 Jun 2022 09:29:01 +0200
From: =?ISO-8859-1?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 10 Jun 2022 09:28:54 +0200
Message-ID: <11992981.O9o76ZdvQC@circona>
Organization: Pengutronix e.K.
In-Reply-To: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
References: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_002904_792655_74F60CA6 
X-CRM114-Status: GOOD (  14.86  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7/8M: Make sure the output parameter is always assigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRnJlaXRhZywgMTAuIEp1bmkgMjAyMiwgMDk6MDU6NTcgQ0VTVCBzY2hyaWViIFV3ZSBLbGVp
bmUtS8O2bmlnOgo+IENhbGxlcnMgb2YgKl9nZXRfYm9vdF9zb3VyY2UgKGUuZy4gc3RhcnRfYXRm
KCkgb2YKPiBueHAtaW14OG1tLWV2ayBvciBwcm90b25pYy1pbXg4bSkgZXhwZWN0IHNyYyB0byBo
b2xkIHRoZSBib290c291cmNlCj4gYWZ0ZXIgcmV0dXJuLiBTbyBhc3NpZ24gYSB2YWx1ZSByZWxp
YWJseS4KPiAKPiBGaXhlczogZWE1NTc3MDMwOGMwICgiQVJNOiBpLk1YOiBBZGQgaS5NWDcgYmFz
ZSBhcmNoaXRlY3R1cmUgc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgYXJjaC9hcm0vbWFj
aC1pbXgvYm9vdC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9ib290LmMgYi9hcmNoL2FybS9tYWNoLWlt
eC9ib290LmMKPiBpbmRleCA2M2FmZGYxZWY0ZWQuLjY1MmUyODY5ZjJkNyAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybS9tYWNoLWlteC9ib290LmMKPiArKysgYi9hcmNoL2FybS9tYWNoLWlteC9ib290
LmMKPiBAQCAtNTI2LDYgKzUyNiw3IEBAIHN0YXRpYyB2b2lkIF9faW14N19nZXRfYm9vdF9zb3Vy
Y2UoZW51bSBib290c291cmNlICpzcmMsCj4gaW50ICppbnN0YW5jZSwgKnNyYyA9IEJPT1RTT1VS
Q0VfU0VSSUFMOwo+ICAJCWJyZWFrOwo+ICAJZGVmYXVsdDoKPiArCQkqc3JjID0gQk9PVFNPVVJD
RV9VTktOT1dOOwo+ICAJCWJyZWFrOwo+ICAJfQo+ICB9CgpUaGlzIGNoYW5nZXMgdGhlIEFQSSBh
bmQgLSBpZiByZWFsbHkgcmVxdWlyZWQgLSBzaG91bGQgYmUgZG9uZSBmb3IgYWxsIFNvQyAKc3Bl
Y2lmaWMgKl9nZXRfYm9vdF9zb3VyY2VzIGFuZCBub3QgZm9yIHRoZSBpbXg3IG9ubHkgKElNSE8p
LgoKamIKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICB8IEp1ZXJn
ZW4gQm9ybGVpcyAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAg
ICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTEyOCAgfApBbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5
MTctOSAgICB8CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

