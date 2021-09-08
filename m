Delivery-date: Wed, 08 Sep 2021 10:51:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNtJC-0006Lw-53
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 10:51:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNtJB-0008Fa-4k
	for lore@pengutronix.de; Wed, 08 Sep 2021 10:51:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aw1SMLN6UKVDQDRmsH2Y5IopxCR7zHJiAupMYWbztc=; b=Bj1OQdqD0n7JZ0
	DdkbZi/6b7m13uAT5cBSaOUmvOMHrZgmF+HB+Kk19Oy8kuLQWe6u97aKfnwMf7Quk25qQBxesi1Ig
	BWmfkAaUF3eAAKOSGYU90W4FzZBzqgmJKyi0rAauGCLCET0YiuGoVzBNvo9fUwnVXuHXwp3rZTkKH
	i1lefPeh7hqYcWVbooMF8rPMlaljN4ptjAaDvZB1mR03/b4Ooz4G/345jI0RNSTpHM09RC8zY7zii
	gaRquXXgTYpozE4+fRje4cxdkUYiqAnW2ItYccfQQt9qiGtnfQipPoVFbSholEP3lvEZxo0mvYRv5
	UBbMa/H0GNsGNnsw2yAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNtHo-006DW7-4I; Wed, 08 Sep 2021 08:50:28 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNtHi-006DV6-MO
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 08:50:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 0A43F3995B1
 for <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631091021;
 bh=dDhLxpne6cjXVIaDHeTpLpEjy0j9bwrCKhBrQOjCHBw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=lowJWfa3Tc5mWF7FQYdn1/rBugl2bZzFFK9CoYhgM7pFSz/w1R4xJJHwFZY7p/kIj
 jEeN0Maf2RHihZ2IKnsyZPujygETDpNqogiN7V8p+yESWwMoISylYi+Jeh5wc5UzDS
 lGuoYYtmrvpsqCdZjOKiqZsWMOO4p+eKYrWYBAuc=
Received: from fx306 (localhost [127.0.0.1]) by fx306.security-mail.net
 (Postfix) with ESMTP id C731939956E; Wed,  8 Sep 2021 10:50:20 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 6E443399503; Wed,  8 Sep
 2021 10:50:20 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 5803327E02DA; Wed,  8 Sep 2021
 10:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 41DCF27E02E5; Wed,  8 Sep 2021 10:50:20 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 PGIkqDRbDowT; Wed,  8 Sep 2021 10:50:20 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 31D6F27E02DA; Wed,  8 Sep 2021
 10:50:20 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <17afb.6138794c.6b4fb.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 41DCF27E02E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631091020;
 bh=AKu7da99lLh0Yv1W1rwSTqXkbpIXA56UJhGDvA3I2fM=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=QugOr88/eNOjx97qnZr/Tm1f7sWUkdMeMHdlzEjiGpH+Ct2z/OG1ihJoBBW+CEzdp
 H2W+XByVKBlILOWFSVhu2eLWTmoqfaIW9hEnpVF1sYkni6wPQTPty+XXCUGEFAAi4E
 AawnbUlNmqUFMS0K3bacH1flIAce5/7rSu0YDwYo=
Date: Wed, 8 Sep 2021 10:50:19 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Daniel =?utf-8?b?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210908085019.GB8023@tellis.lin.mbt.kalray.eu>
References: <20210908074622.3271-1-danek.brat@gmail.com>
 <20210908074622.3271-2-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908074622.3271-2-danek.brat@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_015022_926040_C164D753 
X-CRM114-Status: GOOD (  24.34  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgRGFuaWVsLAoKT24gV2VkLCBTZXAgMDgsIDIwMjEgYXQgMDk6NDY6MjFBTSArMDIwMCwgRGFu
aWVsIEJyw6F0IHdyb3RlOgo+IERlc3BpdGUgdXNpbmcgJ3BoeV9vcHRpb25hbF9nZXQnIHRvIGdl
dCBhICd1c2IyX3BoeScgaW5zaWRlIGl0cyBwcm9iZSwKPiB0aGUgZHJpdmVyIHdvdWxkIGZhaWwg
aWYgaXQgZGlkbnQgZmluZCBpdC4gQWxzbywgdGhlcmUgaXMgbm8gS2NvbmZpZwo+IGRlcGVuZGVu
Y3kgb24gJ0NPTkZJR19HRU5FUklDX1BIWScsIHNvIHdpdGhvdXQgaXQgZGVmaW5lZCB0ZSBwaHkK
PiBmdW5jdGlvbnMgYXJlIHVuaW1wbGVtZW50ZWQgYW5kIGFsd2F5cyByZXR1cm4gLUVOT1NZUyBt
YWtpbmcgZHdjMiBwcm9iZQo+IGFsd2F5cyBmYWlsIHRvby4gU2luY2UgdGhlICdkd2MyLT5waHkn
IGlzIG9wdGlvbmFsLCB0aGUgZHJpdmVyIHdhcwo+IG1vZGlmaWVkIHRvIHJlZmxlY3QgdGhpcy4K
PiBUZXN0ZWQgd29ya2luZyBvbiBSYXNwYmVycnkgUGkgM0IrLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IERhbmllbCBCcsOhdCA8ZGFuZWsuYnJhdEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdXNi
L2R3YzIvZHdjMi5jIHwgMzggKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYyBiL2RyaXZlcnMvdXNiL2R3YzIv
ZHdjMi5jCj4gaW5kZXggOTg5Mzk3N2I4Li44ZjNmOGRhMDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy91c2IvZHdjMi9kd2MyLmMKPiArKysgYi9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYwo+IEBAIC03
MiwyMCArNzIsMjIgQEAgc3RhdGljIGludCBkd2MyX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2
KQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGNsa19kaXNhYmxlOwo+ICAKPiAtCWR3YzItPnBoeSA9
IHBoeV9vcHRpb25hbF9nZXQoZGV2LCAidXNiMi1waHkiKTsKPiAtCWlmIChJU19FUlIoZHdjMi0+
cGh5KSkgewo+IC0JCXJldCA9IFBUUl9FUlIoZHdjMi0+cGh5KTsKPiAtCQlnb3RvIGNsa19kaXNh
YmxlOwo+ICsJaWYgKElTX0VOQUJMRUQoQ09ORklHX0dFTkVSSUNfUEhZKSkgewo+ICsJCWR3YzIt
PnBoeSA9IHBoeV9vcHRpb25hbF9nZXQoZGV2LCAidXNiMi1waHkiKTsKPiArCQlpZiAoIWR3YzIt
PnBoeSB8fCBJU19FUlIoZHdjMi0+cGh5KSkgewpJIHRoaW5rIGEgYmV0dGVyIHdheSB0byBmaXgg
dGhpcyB3b3VsZCBiZSBoYXZlIHBoeV9vcHRpb25hbF9nZXQgdG8KcmV0dXJuIE5VTEwgd2hlbiBD
T05GSUdfR0VORVJJQ19QSFkgaXMgbm90IGVuYWJsZWQuIFRoYXQgd2F5IHRoaXMKZml4IGlzIG5v
dCBsaW1pdGVkIHRvIGR3YzIgZHJpdmVyLgoKTlVMTCBpcyBhbiBleHBlY3RlZCByZXR1cm4gdmFs
dWUgZm9yIHBoeV9vcHRpb25hbF9nZXQgd2hlbiB0aGVyZSBpcwpubyBwaHksIHNvIHRoYXQgbXVz
dCBub3QgY2F1c2UgYW55IGlzc3VlIGluIHRoZSBkcml2ZXIuCgo+ICsJCQlkZXZfd2FybihkZXYs
ICJEaWRudCBmaW5kIGFueSAndXNiMi1waHknXG4iKTsKPiArCQkJZHdjMi0+cGh5ID0gTlVMTDsK
PiArCQl9IGVsc2Ugewo+ICsJCQlyZXQgPSBwaHlfcG93ZXJfb24oZHdjMi0+cGh5KTsKPiArCQkJ
aWYgKHJldCkKPiArCQkJCWdvdG8gY2xrX2Rpc2FibGU7Cj4gKwo+ICsJCQlyZXQgPSBwaHlfaW5p
dChkd2MyLT5waHkpOwo+ICsJCQlpZiAocmV0KQo+ICsJCQkJZ290byBwaHlfcG93ZXJfb2ZmOwo+
ICsJCX0KPiAgCX0KPiAgCj4gLQlyZXQgPSBwaHlfcG93ZXJfb24oZHdjMi0+cGh5KTsKPiAtCWlm
IChyZXQpCj4gLQkJZ290byBjbGtfZGlzYWJsZTsKPiAtCj4gLQlyZXQgPSBwaHlfaW5pdChkd2My
LT5waHkpOwo+IC0JaWYgKHJldCkKPiAtCQlnb3RvIHBoeV9wb3dlcl9vZmY7Cj4gLQo+ICAJcmV0
ID0gZHdjMl9jaGVja19jb3JlX3ZlcnNpb24oZHdjMik7Cj4gIAlpZiAocmV0KQo+ICAJCWdvdG8g
ZXJyb3I7Cj4gQEAgLTEyMCw5ICsxMjIsMTEgQEAgc3RhdGljIGludCBkd2MyX3Byb2JlKHN0cnVj
dCBkZXZpY2VfZCAqZGV2KQo+ICAKPiAgCXJldHVybiAwOwo+ICBlcnJvcjoKPiAtCXBoeV9leGl0
KGR3YzItPnBoeSk7Cj4gKwlpZiAoZHdjMi0+cGh5KQo+ICsJCXBoeV9leGl0KGR3YzItPnBoeSk7
ClRoaXMgaXMgbm90IG5lZWRlZCBhcyBwaHlfZXhpdCBhbHJlYWR5IHRlc3RzIGZvciBOVUxMIHBo
eS4KCj4gIHBoeV9wb3dlcl9vZmY6Cj4gLQlwaHlfcG93ZXJfb2ZmKGR3YzItPnBoeSk7Cj4gKwlp
ZiAoZHdjMi0+cGh5KQo+ICsJCXBoeV9wb3dlcl9vZmYoZHdjMi0+cGh5KTsKU2FtZSBmb3IgcGh5
X3Bvd2VyX29mZgoKPiAgY2xrX2Rpc2FibGU6Cj4gIAljbGtfZGlzYWJsZShkd2MyLT5jbGspOwo+
ICBjbGtfcHV0Ogo+IEBAIC0xNDAsOCArMTQ0LDEwIEBAIHN0YXRpYyB2b2lkIGR3YzJfcmVtb3Zl
KHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+ICAJZHdjMl9ob3N0X3VuaW5pdChkd2MyKTsKPiAgCWR3
YzJfZ2FkZ2V0X3VuaW5pdChkd2MyKTsKPiAgCj4gLQlwaHlfZXhpdChkd2MyLT5waHkpOwo+IC0J
cGh5X3Bvd2VyX29mZihkd2MyLT5waHkpOwo+ICsJaWYgKGR3YzItPnBoeSkgewo+ICsJCXBoeV9l
eGl0KGR3YzItPnBoeSk7Cj4gKwkJcGh5X3Bvd2VyX29mZihkd2MyLT5waHkpOwo+ICsJfQpTYW1l
IGFzIGFib3ZlCgo+ICB9Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBk
d2MyX3BsYXRmb3JtX2R0X2lkc1tdID0gewo+IC0tIAo+IDIuMTcuMQo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5n
IGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiAKPiAKPiBUbyBkZWNsYXJlIGEgZmls
dGVyaW5nIGVycm9yLCBwbGVhc2UgdXNlIHRoZSBmb2xsb3dpbmcgbGluayA6IGh0dHBzOi8vd3d3
LnNlY3VyaXR5LW1haWwubmV0L3JlcG9ydGVyLnBocD9taWQ9NjAxNy42MTM4NmUzYy5jNzguMCZy
PWptYXNlbGJhcyU0MGthbHJheS5ldSZzPWJhcmVib3gtYm91bmNlcyUyQmptYXNlbGJhcyUzRGth
bHJheS5ldSU0MGxpc3RzLmluZnJhZGVhZC5vcmcmbz0lNUJQQVRDSCsxJTJGMiU1RCt1c2IlM0Er
ZHdjMiUzQStNYWtlK2hhdmluZythK3BoeStvcHRpb25hbCZ2ZXJkaWN0PUMmYz1hMmNiMjk3ZWVm
YTk5NDI1ZjQzN2JkMWUxODJhMmViNWJhMWU1OGY4Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=

