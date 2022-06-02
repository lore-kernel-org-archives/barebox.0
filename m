Delivery-date: Thu, 02 Jun 2022 11:02:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgiu-000Npo-HD
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgis-0006ns-HS
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTIy0lkCFPjhkXY3UiS1mcOYtlCZoHgsz93mOpkv+Bo=; b=IYVR3WLXdSqOqX
	jTMXkg/TQEihjLDLS3ZUT0+CLNvagxkTS86MHZI5RxkVhZgDrnQ+WQUEKGoR0YA1/E3nMOf7I39dr
	NJgaEPlIUIpxn9fWKQ5bx5IAGNd6sAof50SDcfgqHAEgTLwoQNFATYz8SmuZSJsGKInhLI1ehEvUg
	I2e9QRFNdy3Fqb31ojob6I8F4wDnksQ2CsAmUv7Kbd8rvMKHElxgPUM9FrhtcAXdbakGc6UDd3+Zi
	aDYHvNKdlD9YzTyjfWF7oer7f9rfv1GH5sqqpty379M+rsnbYEneHg/rRAwg5XD2a0NY8k+by0tN3
	nktD9pjFCSJ+v3rpfk9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwghb-002KVH-Bo; Thu, 02 Jun 2022 09:01:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwghS-002KRs-Mo
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nwghR-0006EI-A7; Thu, 02 Jun 2022 11:01:01 +0200
Message-ID: <f4ef4f26-d4b8-85f5-e438-d51e0d9a109c@pengutronix.de>
Date: Thu, 2 Jun 2022 11:01:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20220601071452.17033-1-eagle.alexander923@gmail.com>
 <53dfc2e7-7271-e872-dbf9-ffb9ed7e7802@pengutronix.de>
 <CAP1tNvTeo5S3k4CPm3dFw7-TxJUFaS-82Cu=R+DN1VWwQY+iCg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvTeo5S3k4CPm3dFw7-TxJUFaS-82Cu=R+DN1VWwQY+iCg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020104_371556_AE67EF93 
X-CRM114-Status: GOOD (  15.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMDIuMDYuMjIgMTA6NTksIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gSGVsbG8uCj4gCj4g
SXQncyBqdXN0IHRoZSByZXN1bHQgb2YgdGhlIG15IG1hc3RlciBicmFuY2ggbm90IGJlaW5nIHVw
ZGF0ZWQKPiBmcm9tIHJlbW90ZSBiZWZvcmUgSSBtYWRlIHRoZSBjaGFuZ2VzLi4uIFNvcnJ5IDop
Cj4gCj4g0YfRgiwgMiDQuNGO0L0uIDIwMjIg0LMuINCyIDExOjA3LCBBaG1hZCBGYXRvdW0gPGEu
ZmF0b3VtQHBlbmd1dHJvbml4LmRlPjoKPj4gT24gMDEuMDYuMjIgMDk6MTQsIEFsZXhhbmRlciBT
aGl5YW4gd3JvdGU6Cj4+PiBhcm0tbGludXgtbGQ6IGFyY2gvYXJtL21hY2gtb21hcC94bG9hZC5v
OiBpbiBmdW5jdGlvbiByZWFkX210ZF9iYXJlYm94JzoKPj4+IC9ob21lL0FSTS9iYXJlYm94L2Fy
Y2gvYXJtL21hY2gtb21hcC94bG9hZC5jOjc1OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIG10ZF9w
ZWJfcmVhZF9maWxlJwo+Pgo+PiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nIG9yIGRvZXMgdGhpcyBw
YXRjaCBqdXN0IGNoYW5nZQo+Pgo+PiAgIGlmICgwKSB7CgpUeXBvOiBpZiAoMSkKCj4+ICAgICBy
ZXR1cm4gTlVMTDsKPj4gICB9Cj4+Cj4+ICAgLyogc29tZXRoaW5nICovOwo+PiAgIHJldHVybiB0
bzsKPj4KPj4gaW50bwo+Pgo+PiAgIGlmICgwKSB7Cj4+ICAgICAvKiBzb21ldGhpbmcgKi8KPj4g
ICAgIHJldHVybiB0bzsKPj4gICB9Cj4+ICAgcmV0dXJuIE5VTEw7Cj4+Cj4+Cj4+IFRoaXMgc2hv
dWxkbid0IHJlYWxseSBtYWtlIGEgZGlmZmVyZW5jZS4gSG93IG9sZCBpcyB5b3VyIEdDQz8KCmku
ZS4gdGhpcyBwYXRjaCBjYW4gYmUgZHJvcHBlZCBhZ2Fpbj8KCj4gCgoKLS0gClBlbmd1dHJvbml4
IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAg
ICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhp
bGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1
NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

