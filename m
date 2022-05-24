Delivery-date: Tue, 24 May 2022 14:05:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntTHl-007W9k-GR
	for lore@lore.pengutronix.de; Tue, 24 May 2022 14:05:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntTHh-0007fk-7w
	for lore@pengutronix.de; Tue, 24 May 2022 14:05:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNrfVTwwcblEFRoLjEtSmPzjgBUMc0SDxU0t294PCws=; b=U2U+SnkWM/F1RI
	leA1MxytGLHQH5rykMRV0sjcV8EpWAeO7xlZ9f7GHHeQkcB9pVnJRwzJpT9xAuWJR+U1bVtkfXn/4
	+4DvR73Vp0i1ebOkxGwr0Quj7oeqU8X9PQn2j94dbkkLQxPBWdRcpdMVfqVvO74YPuAj7m7x2h+wc
	kRNy0gd6u2niy5eV+GFfznANIxIM1I+8fbbj0PG8pY5t1wzVTD7gR2pxr3bFfUJEGeow2R8HWotLJ
	d2LS9DywWGOIHyrHSNb4QQ0+IVOPFoKgOv+QnL+SJV+gwbIZvc82rSWLP8QisOKz3GQ4KUNVV07DM
	0VLNc5Uuy5MKfDC6RoVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntTG4-007u1G-S6; Tue, 24 May 2022 12:03:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntTG0-007tyl-7Z
 for barebox@lists.infradead.org; Tue, 24 May 2022 12:03:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntTFt-0007KC-2I; Tue, 24 May 2022 14:03:17 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntTFs-0002CM-NX; Tue, 24 May 2022 14:03:16 +0200
Date: Tue, 24 May 2022 14:03:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220524120316.3vpnuglam6vofs7m@pengutronix.de>
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <20220524090314.sdb3tt6jhtjpmm6o@pengutronix.de>
 <CAP1tNvScB7n4u0HuEkqtM8_KVXy_izWuT2vkRk-bfqfVAjHA4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvScB7n4u0HuEkqtM8_KVXy_izWuT2vkRk-bfqfVAjHA4A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_050324_303912_7F16E525 
X-CRM114-Status: GOOD (  14.95  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMjItMDUtMjQsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4g0LLRgiwgMjQg0LzQsNGPIDIw
MjIg0LMuINCyIDEyOjAzLCBNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPjoK
PiA+IE9uIDIyLTA1LTI0LCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gPiBGb3IgdGhlIGNv
cnJlY3Qgd29yayBvZiBHUElPIGRyaXZlciwgd2UgbmVlZCB0byBkZWZpbmUgYWxpYXNlcy4KPiA+
ID4gTGV0J3MgYWRkIHRoZW0gdG8gdGhlIGRldmljZXRyZWUuCj4gLi4uCj4gPiA+ICsgICAgIGFs
aWFzZXMgewo+ID4gPiArICAgICAgICAgICAgIGdwaW8wID0gJmdwaW8wOwo+ID4gPiArICAgICAg
ICAgICAgIGdwaW8xID0gJmdwaW8xOwo+ID4gPiArICAgICAgICAgICAgIGdwaW8yID0gJmdwaW8y
Owo+ID4gPiArICAgICAgICAgICAgIGdwaW8zID0gJmdwaW8zOwo+ID4gPiArICAgICB9Owo+ID4K
PiA+IE91dCBvZiBjdXJpb3VzaXR5LCBhcmUgdGhvc2UgYWxpYXNlcyBub3QgZGVmaW5lZCBpbiB0
aGUgInVwc3RyZWFtIiBsaW51eAo+ID4gZGV2aWNlLXRyZWU/IElmIG5vdCwgd291bGRuJ3QgaXQg
YmUgYmV0dGVyIHRvIGRlZmluZWQgaXQgdGhlcmU/Cj4gCj4gSGVsbG8uCj4gCj4gVGhlIGxpbnV4
IGdwaW8tb21hcCBkcml2ZXIgZG9lcyBub3QgdXNlIGFsaWFzZXMsIGl0IHdvdWxkIGJlIGhhcmQg
Zm9yCj4gbWUgdG8gZXhwbGFpbiB0aGUgbmVlZCB0byBtYWtlIHN1Y2ggY2hhbmdlcyB0byB0aGUg
bGludXggZHRzIHRyZWUgOikKCkFoLi4gVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24sIG9mIGNv
dXJzZSB0aGlzIHdvdWxkIGJlIGEgYml0IGhhcmQgdG8KZXhwbGFpbi4gU28gZXZlcnl0aGluZyBm
aW5lIGZyb20gcG92IDopCgpSZWdhcmRzLAogIE1hcmNvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==

