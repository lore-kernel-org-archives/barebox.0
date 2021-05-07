Delivery-date: Fri, 07 May 2021 12:29:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexk3-0004Fm-7q
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:29:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexk2-0001kg-5f
	for lore@pengutronix.de; Fri, 07 May 2021 12:29:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hK6isGzf2n6fr6REDY1qoNmMZ4PgjC8UNZ2JTuWxV0Q=; b=WuMQnP1YISwY1J2LK7brzj9z5
	vGqd+BLesydE8SIP/wscW15MPYLt0FCLI+uC5tY/2waiSTOTZgynwCYmoZVYabTwtzO3M7d3JoA4n
	3/NVD7OutE9f0vF3C62bnJygyF2b+e0NQ68g9KpDfEJLfgh9hQaC0MgGSzoFRWzmamNariGxV2r0j
	uib1glY7Fqzpger9SYcHPQlNd0tcM47K+8+9nCTTcXhEEhzoQ+ItFDaAf7McjY/IayN95NqehxoUH
	eii61QEp5lf2QQ94qsiP2iQDIvgrEVI8N1FEMzybi7MMsGb4t1N6gGoQ6i3vugUNqUu8Grhv871wn
	qZ2qAGyrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lexj9-006pcP-NS; Fri, 07 May 2021 10:29:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexhw-006pBh-Or
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=73+mfocdyMtq4yirEdNiVetjmocxA/4Av1gMUWzWiaM=; b=mbEuONyxuR+bSHKGnzwlgZB9Ud
 WyzYg+fXmK2RxZJV9GkgQjvOKyn/da0ekmjAqzRIPVDsspm5d9Aeo4iQZang8JeknSbGl7qom4Ivs
 CsCbBV/odEgcQv/KZSlyEn0oVsTQXOmoJev/IvqbGt71qiSnbAHbVPu1QZI0FJD9zQrYP42n0TnJw
 GzNwvUS/JgiYZ9ayaGWBqJ+7eFOBvjlI9g0IOHkEiJbKpbzcUu089Rw7m+e75yFyv2FoFlLJXa0fo
 5YLSfjBY+VSWoujx6JprQ7dp66ns64kZ9xciyE/saVxaR7yULLxWscf7fHuUSPoopnH7lXjJyiIjm
 GEg5eFew==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexhu-006mV5-5s
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:27:43 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lexhs-0001LW-Ug; Fri, 07 May 2021 12:27:40 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-12-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ab123ee6-5d6d-57f9-14d2-77e3e10cf4bf@pengutronix.de>
Date: Fri, 7 May 2021 12:27:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506220834.223350-12-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_032742_235961_BC892F64 
X-CRM114-Status: GOOD (  20.38  )
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
Subject: Re: [PATCH v2 11/11] RISC-V: make it possible to build RV32I
 multi-image with DEBUG_LL=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbCBBbnRvbnksCgpPbiAwNy4wNS4yMSAwMDowOCwgQW50b255IFBhdmxvdiB3cm90ZToKPiBC
dWlsZGluZyBtdWx0aS1pbWFnZSB3aXRoIHRoZXNlIG9wdGlvbnM6Cj4gCj4gQ09ORklHX0FSQ0hf
UlYzMkk9eQo+IENPTkZJR19SSVNDVl9NX01PREU9eQo+IENPTkZJR19TT0NfRVJJWk89eQo+IENP
TkZJR19CT0FSRF9FUklaT19HRU5FUklDPXkKPiBDT05GSUdfU09DX0xJVEVYPXkKPiBDT05GSUdf
Qk9BUkRfTElURVhfTElOVVg9eQo+IENPTkZJR19ERUJVR19MTD1uCj4gCj4gbGVhZHMgdG8gdGhl
IGJ1aWxkIGVycm9yOgo+IAo+IGFyY2gvcmlzY3YvYm9hcmRzL2VyaXpvL2xvd2xldmVsLmM6IElu
IGZ1bmN0aW9uIOKAmF9fc3RhcnRfZXJpem9fZ2VuZXJpY+KAmToKPiBhcmNoL3Jpc2N2L2JvYXJk
cy9lcml6by9sb3dsZXZlbC5jOjExOjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZgo+
IGZ1bmN0aW9uIOKAmGRlYnVnX2xsX25zMTY1NTBfaW5pdOKAmSBbLVdlcnJvcj1pbXBsaWNpdC1m
dW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgICAxMSB8ICBkZWJ1Z19sbF9uczE2NTUwX2luaXQoKTsK
PiAgICAgICB8ICBefn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAKPiBUaGlzIHBhdGNoIGZpeGVzIHRo
ZSBwcm9ibGVtIGJ5IHVzaW5nIHByZXByb2Nlc3NvcidzIGRpcmVjdGl2ZS4KCkkgbm90aWNlZCB0
aGF0IHRvby4gSSBqdXN0IHNlbnQgb3V0IGEgZml4dXAgZm9yIHRoaXMuCgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPgo+IC0tLQo+ICBh
cmNoL3Jpc2N2L2JvYXJkcy9lcml6by9sb3dsZXZlbC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvYm9hcmRzL2Vy
aXpvL2xvd2xldmVsLmMgYi9hcmNoL3Jpc2N2L2JvYXJkcy9lcml6by9sb3dsZXZlbC5jCj4gaW5k
ZXggZmQ4OTljODY3OS4uYmFiNDlkM2M4NyAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L2JvYXJk
cy9lcml6by9sb3dsZXZlbC5jCj4gKysrIGIvYXJjaC9yaXNjdi9ib2FyZHMvZXJpem8vbG93bGV2
ZWwuYwo+IEBAIC05LDcgKzksOSBAQCBFTlRSWV9GVU5DVElPTihzdGFydF9lcml6b19nZW5lcmlj
LCBhMCwgYTEsIGEyKQo+ICB7Cj4gIAlleHRlcm4gY2hhciBfX2R0Yl96X2VyaXpvX2dlbmVyaWNf
c3RhcnRbXTsKPiAgCj4gKyNpZiBkZWZpbmVkIENPTkZJR19ERUJVR19MTAo+ICAJZGVidWdfbGxf
bnMxNjU1MF9pbml0KCk7Cj4gKyNlbmRpZgo+ICAJYmFyZWJveF9ubW9uX2VudHJ5KCk7Cj4gIAo+
ICAJcHV0Y19sbCgnPicpOwo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBT
dHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUv
ICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiAr
NDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAg
ICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==

