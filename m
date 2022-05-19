Delivery-date: Thu, 19 May 2022 12:46:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrdfm-001xre-Th
	for lore@lore.pengutronix.de; Thu, 19 May 2022 12:46:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrdfl-0007w8-KT
	for lore@pengutronix.de; Thu, 19 May 2022 12:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2J/oEP//IegxWR5PYqFhvqwARSucfmFsmC9sA2I4OyM=; b=LD+aJ3GFCu6d1o
	m3INJbstF0p+rvH5HLG+8NEp2aHNM58G6Z0UfohWZzAJf+D5jlV5UGIeJ9O5ahCWiB2fMC7ygzqg5
	dcWv9CmCZywnObyUb8/wUuce68oYrsJd3PHqeo50lf/QV4sccQC3glOVEktoHK15WPNW3eRkqMjYL
	6IW6jx4AU6jRzSMAzPKf/S8AxvnEVXnrrOAn0w9k/eRShMwWD4iORQcRokBDVM3YCutsM9qoUtaL/
	tEpgV8V2Gp2o+mGp5VksI/5q6yvOxkoSyR0RjYcdFyxkL7TatY5unu4i9+DtaPZR7rTUbJl99A1+F
	/fEv1BWkVFC/Y2wsukOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrdeH-006LaE-37; Thu, 19 May 2022 10:44:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrdeC-006LYe-9x
 for barebox@lists.infradead.org; Thu, 19 May 2022 10:44:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrdeB-0007aa-4W; Thu, 19 May 2022 12:44:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrdeA-0007Ra-Ru; Thu, 19 May 2022 12:44:46 +0200
Date: Thu, 19 May 2022 12:44:46 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220519104446.GT25578@pengutronix.de>
References: <20220518125852.GS25578@pengutronix.de>
 <CAP1tNvT6RpQ5P4ZX4z0cObdOxL0ZBw9y_N9MSQv_9vB1NpTfPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvT6RpQ5P4ZX4z0cObdOxL0ZBw9y_N9MSQv_9vB1NpTfPA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:44:15 up 49 days, 23:13, 57 users,  load average: 0.14, 0.09, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_034448_379455_463DBF13 
X-CRM114-Status: GOOD (  19.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: v2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBNYXkgMTksIDIwMjIgYXQgMTE6MTE6MDZBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDRgdGALCAxOCDQvNCw0Y8gMjAyMiDQsy4g0LIgMTY6MDAsIFNhc2NoYSBIYXVl
ciA8c2hhQHBlbmd1dHJvbml4LmRlPjoKPiA+IEhpIEFsbCwKPiA+IGJhcmVib3gtMjAyMi4wNS4w
IGlzIG91dC4KPiAKPiBIZWxsby4KPiBBZnRlciB1cGRhdGluZyB0byB0aGUgbmV3IHZlcnNpb24s
IEkgZm91bmQgZXJyb3JzLi4uCj4gVGhpcyBpcyBwcm9iYWJseSB0aGUgcmVzdWx0IG9mIHRoZSAi
Z3BpbzogYWxsb2NhdGUgZHluYW1pYyBncGlvCj4gbnVtYmVycyB0b3AgZG93biIgcGF0Y2guCj4g
SW4gdGhlIGdwaW9jaGlwX2ZpbmRfYmFzZSBmdW5jdGlvbiwgaXQgc2VlbXMgdG8gbWUgdGhhdCB3
ZSBzaG91bGQKPiBjaGFuZ2UgdGhlIGFsZ29yaXRobQo+IGlmIHRoZSBjaGlwIGV4aXN0cywgc3Vj
aCBhczoKPiBpZiAoIWNoaXApIHsKPiAgIC4uLgo+IH0gZWxzZSB7Cj4gICBzcGFyZSA9IDA7Cj4g
ICBpKz0gY2hpcC0+bmdwaW8gLSAxOyAvLyBTaG91bGQgYmU6IGkgLT0gY2hpcC0+bmdwaW8gLSAx
OyA/Pz8KPiB9CgpZZXMsIGluZGVlZCA6KAoKSSBqdXN0IHNlbnQgYSBmaXguCgpTYXNjaGEKCgot
LSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAg
ICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwK
QW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01
MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

