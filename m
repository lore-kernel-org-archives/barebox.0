Delivery-date: Thu, 09 Jun 2022 10:58:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzE01-008aQ3-ME
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:58:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzE00-0005bL-3x
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:58:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNJqYwmuQbXbOW4Vyovl21oMHwdwDJSmcN/ufYsw1Fk=; b=O5rxvEdDRcIYBY
	CdICE/PWElh2UxPaifqjqFANtsmtlcKRUDZsx+n0XaxiCwE3p7Shb0U48zge3gDtfRvfu3QoYpm4d
	u5FgynPyB4odJklIOubKSJlyngVSqalOeAon/LJml0PqCgF7SgUIxHuhG3uyYoNhoAo/HgYxtAAz5
	j+ltGIhYmRCndITQzQGYU/vAD4oN4VNeIDhOI4qZ4LL6L3Xmq5YRLj6nHNGhWKkqd9KV8yyfDJiPP
	YhZKMFDMTP1QM5a4M+QeyLhiuzqlY6NktnMHuCFNb/8c/NgsPcraPO3nbt+DHw88UVgUGVryTMtOz
	qhRJ6MLOG1l06OmMvUkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDyY-000SKu-Qk; Thu, 09 Jun 2022 08:57:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDiq-000K1w-2B
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:40:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDio-0002Lo-4S; Thu, 09 Jun 2022 10:40:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDin-0001cf-Rk; Thu, 09 Jun 2022 10:40:53 +0200
Date: Thu, 9 Jun 2022 10:40:53 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220609084053.GI1615@pengutronix.de>
References: <20220608051244.2318-1-eagle.alexander923@gmail.com>
 <20220609073210.GA1615@pengutronix.de>
 <CAP1tNvTqwH+Fwfw395oC2wUXHHNnz6BfnGPuDBuK7uBayZHLVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvTqwH+Fwfw395oC2wUXHHNnz6BfnGPuDBuK7uBayZHLVg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_014056_160145_65CB7A51 
X-CRM114-Status: GOOD (  23.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove
 of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBKdW4gMDksIDIwMjIgYXQgMTA6Mzg6NTVBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDRh9GCLCA5INC40Y7QvS4gMjAyMiDQsy4g0LIgMTA6MzIsIFNhc2NoYSBIYXVl
ciA8c2hhQHBlbmd1dHJvbml4LmRlPjoKPiA+IE9uIFdlZCwgSnVuIDA4LCAyMDIyIGF0IDA4OjEy
OjQ0QU0gKzAzMDAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiA+IG9mX2dldF9yZXNldF9z
b3VyY2VfcHJpb3JpdHkoKSBoYXMgbm8gdXNlcnMsCj4gPiA+IHNvIGl0IGNhbiBiZSBzYWZlbHkg
cmVtb3ZlZC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8ZWFn
bGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBjb21tb24vcmVzZXRf
c291cmNlLmMgIHwgMjAgKysrLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIGluY2x1ZGUvcmVzZXRf
c291cmNlLmggfCAgNyAtLS0tLS0tCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMjQgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9jb21tb24vcmVz
ZXRfc291cmNlLmMgYi9jb21tb24vcmVzZXRfc291cmNlLmMKPiA+ID4gaW5kZXggMzU1NGNiZDBm
Yi4uZGNjYjY4MzIzMSAxMDA2NDQKPiA+ID4gLS0tIGEvY29tbW9uL3Jlc2V0X3NvdXJjZS5jCj4g
PiA+ICsrKyBiL2NvbW1vbi9yZXNldF9zb3VyY2UuYwo+ID4gPiBAQCAtNzYsNyArNzYsOSBAQCBF
WFBPUlRfU1lNQk9MKHJlc2V0X3NvdXJjZV9zZXRfcHJpbnN0KTsKPiA+ID4KPiA+ID4gIHZvaWQg
cmVzZXRfc291cmNlX3NldF9kZXZpY2Uoc3RydWN0IGRldmljZV9kICpkZXYsIGVudW0gcmVzZXRf
c3JjX3R5cGUgc3QpCj4gPiA+ICB7Cj4gPiA+IC0gICAgIGludCBwcmlvcml0eSA9IG9mX2dldF9y
ZXNldF9zb3VyY2VfcHJpb3JpdHkoZGV2LT5kZXZpY2Vfbm9kZSk7Cj4gPiA+ICsgICAgIHVuc2ln
bmVkIGludCBwcmlvcml0eSA9IFJFU0VUX1NPVVJDRV9ERUZBVUxUX1BSSU9SSVRZOwo+ID4KPiA+
IFlvdSBzYWlkIG9mX2dldF9yZXNldF9zb3VyY2VfcHJpb3JpdHkoKSBoYXMgbm8gdXNlcnMsIGJ1
dCBoZXJlIHlvdSBhcmUKPiA+IHJlbW92aW5nIG9uZS4KPiAKPiBIZWxsby4KPiAKPiBIZXJlIEkg
bWVhbnQgdXNlcnMgb3V0c2lkZSBvZiB0aGUgdW5pdCA6KQoKT2gsIEkgbWlzcmVhZCB0aGUgcGF0
Y2guIEkgdGhvdWdodCB0aGF0IGl0IHJlbW92ZXMgdGhlCgoJb2ZfcHJvcGVydHlfcmVhZF91MzIo
bm9kZSwgInJlc2V0LXNvdXJjZS1wcmlvcml0eSIsICZwcmlvcml0eSk7CgpUaGF0J3Mgbm90IHRo
ZSBjYXNlLCB5b3UganVzdCBwbGFjZWQgdGhlIGxpbmUgaW5saW5lLgoKT2sgdGhlbiwgYXBwbGll
ZCwgdGhhbmtzCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3Ry
LiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=

