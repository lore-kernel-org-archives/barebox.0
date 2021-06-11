Delivery-date: Fri, 11 Jun 2021 13:15:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrf87-00056f-Fc
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:15:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrf85-0006xI-RP
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:15:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B9mtK++ZYqGEY2FkjeLZTg/YwdZZyXOnA9jsqAP4LMw=; b=x1ws7htB42q8shPKo34zEBsQJg
	j4cQuUEsLvAb0xJ8qjHIPVJiS/xsfjpectpsnto5w7NFRhikN/6vyc8i21Mw8ZAcDa53d1Ykprp1z
	Kdqiwe5To4DDSAU+xoWgNDRh2c0h9+bXsl1chMnZBJpUSvZ+CLOnUqIwdkZdKOefngIDq/FyU9hPj
	ZYgA6iNychO0BGxMbdpb6k0fCo3/TC+/uhQPqVPT20WCjjjqkwMt0XtIk6zwoucigri9Bj5jRugKm
	uwdzrAi5eZAYlxkOR90X26851E0G+b1IQJdjWXlb8Xut1VvhPOqzriMjEJxoDFLxiTlHtpvknxmiI
	SFySpskQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrf6b-004wrS-9l; Fri, 11 Jun 2021 11:13:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrf24-004vEo-Qw
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 11:09:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrf22-0005co-4O; Fri, 11 Jun 2021 13:08:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrf21-0004Mr-RF; Fri, 11 Jun 2021 13:08:57 +0200
Date: Fri, 11 Jun 2021 13:08:57 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210611110857.GF22904@pengutronix.de>
References: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:25:56 up 113 days, 13:49, 121 users,  load average: 0.12, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_040900_909410_A3586DDD 
X-CRM114-Status: GOOD (  20.73  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Beaglebone Black defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgS29uc3RpLCBuaWNlIHRvIHNlZSB5b3UgaGVyZSA6KQoKT24gRnJpLCBKdW4gMTEsIDIwMjEg
YXQgMTI6MDU6NDNQTSArMDIwMCwgS29uc3RhbnRpbiBLbGV0c2Noa2Ugd3JvdGU6Cj4gSGVsbG8s
Cj4gCj4gSSBhbSBjdXJyZW50bHkgdHJ5aW5nIHRvIGJyaW5nIHVwIGJhcmVib3ggZm9yIG15IEJl
YWdsZWJvbmUgQmxhY2sgZGV2aWNlcy4KPiAKPiBJIGRpZCBhbiAiQVJDSD1hcm0gQ1JPU1NfQ09N
UElMRT1hcm0tYnVpbGRyb290LWxpbnV4LWdudWVhYmloZi0gbWFrZSBhbTMzNXhfbWxvX2RlZmNv
bmZpZ+KAnSwgbWFrZSBhbmQKPiBjb3BpZWQgcmVzdWx0aW5nIGJhcmVib3gtYW0zM3h4LWJlYWds
ZWJvbmUtbWxvLmltZyB0byBNTE8gaW50byBteSBGQVQgYm9vdCBwYXJ0aXRpb24uCgpZdXAsIGNv
cnJlY3QuCgo+IAo+IFRoZW4gSSBkaWQgIkFSQ0g9YXJtIENST1NTX0NPTVBJTEU9YXJtLWJ1aWxk
cm9vdC1saW51eC1nbnVlYWJpaGYtIG1ha2Ugb21hcDM1MzBfYmVhZ2xlX2RlZmNvbmZpZ+KAnSwg
bWFrZSAKPiBhbmQgY29waWVkIHJlc3VsdGluZyBiYXJlYm94LWJlYWdsZWJvYXJkLmltZyB0byBi
YXJlYm94LmJpbiBpbnRvIG15IGJvb3QgRkFULgoKVGhhdCdzIHRoZSBjb25maWcgZm9yIHRoZSBi
ZWFnbGVibyphcmQqLCBmb3IgdGhlIGJlYWdsZWJvKm5lKiB5b3UnbGwKaGF2ZSB0byB1c2UgdGhl
IG9tYXBfZGVmY29uZmlnLiBUaGlzIGlzIHRoZSBjb25maWcgZm9yIGFsbCBvbWFwL2FtMzN4eApi
b2FyZHMuIFRoZSByZXN1bHRpbmcgaW1hZ2UgaXMgaW1hZ2VzL2JhcmVib3gtYW0zM3h4LWJlYWds
ZWJvbmUuaW1nLgoKPiAKPiBJcyB0aGUgdGhlIGRpZmZlcmVudCBwcmVmaXggaW4gdGhlIGRlZmNv
bmZpZ3MgKGFtMzPigKYgdnMuIG9tYXAzNeKApikgcmVhc29uYWJsZT8gCj4gSXMgdGhpcyBhcHBy
b2FjaCBnZW5lcmFsbHkgcmVhc29uYWJsZT8KPiAKPiBNYW55IHJlZmVyZW5jZXMgaW4gaW50ZXJu
ZXQgdG8gbWF0Y2hpbmcKPiBkZWZjb25maWdzIEkgZm91bmQgcmVmZXIgdG8gbm9uIGV4aXN0aW5n
IG9uZXMsIHRoZXJlIHNlZW1zIHRvIGhhcHBlbiBncmVhdCBvdmVyaGF1bCBtZWFud2hpbGUuIAo+
IEkgYW0gYWxzbyBhc2tpbmcgYmVjYXVzZSwgd2VsbCwgaXQgZG9lcyBub3Qgd29yazoKPiAKPiBi
YXJlYm94IDIwMjEuMDUuMC0wMDA5My1nNzY4OTA1NWE4ICMyIEZyaSBKdW4gMTEgMDk6MDE6MzYg
Q0VTVCAyMDIxCj4gCj4gCj4gQm9hcmQ6IFRJIEFNMzM1eCBCZWFnbGVCb25lCj4gZGV0ZWN0ZWQg
J0JlYWdsZUJvbmUgQmxhY2snCj4gb21hcC1oc21tYyA0ODA2MDAwMC5tbWNAMC5vZjogcmVnaXN0
ZXJlZCBhcyBtbWMwCj4gb21hcC1oc21tYyA0ODFkODAwMC5tbWNAMC5vZjogcmVnaXN0ZXJlZCBh
cyBtbWMxCj4gYm9vdGluZyBmcm9tIE1NQwo+IG1tYzE6IGRldGVjdGVkIE1NQyBjYXJkIHZlcnNp
b24gNS4xCj4gbW1jMTogcmVnaXN0ZXJlZCBtbWMxCj4gdW5hYmxlIHRvIGhhbmRsZSBwYWdpbmcg
cmVxdWVzdCBhdCBhZGRyZXNzIDB4NDAyMGYwMTAKCkxvb2tzIGNvbnNpc3RlbnQuIDB4NDAyMGYw
MTAgaXMgT01BUDNfU1JBTV9TQ1JBVENIX1NQQUNFICsgMHgxMCB1c2VkIGluCmJlYWdsZV9ib2Fy
ZF9pbml0X3NkcmFtKCkuIEl0IHNlZW1zIHlvdSBzdGFydCBhIGJpbmFyeSBmb3IgdGhlCmJlYWds
ZWJvYXJkIG9uIHlvdXIgYmVhZ2xlYm9uZS4KClJlZ2FyZHMsCiBTYXNjaGEKCi0tIApQZW5ndXRy
b25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBo
dHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAg
ICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNo
dCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3
LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

