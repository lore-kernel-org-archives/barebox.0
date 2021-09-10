Delivery-date: Fri, 10 Sep 2021 10:46:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOcAb-0005OT-4e
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 10:46:01 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOcAa-0005rM-8X
	for lore@pengutronix.de; Fri, 10 Sep 2021 10:46:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u1CAZgEuCS3bSkoW4XW2dZ07QLalsQBerh62vWRVygo=; b=SzQelmtGZ/jQBCDMqxklts1pxB
	mNKEsAD4EYXjJBFYvIoERTyl13zFPG+KKsw7buP0SE+kps/3vA7omGod0clk3qqAI1P318GXKL75/
	ONViP5jtIvPdhIHBFhoK6WDKTfMDJmAbtfaSj4OBTdfkAp/CEvaMkdDzStJdObvbstGK8OOpMabmM
	+c12ZriLTzrtNOR2pAApr2MccDpum+rUlLcro3vFAFkR+/OSPWygRlv6dUW0p77Iz+gfJxCNePHJu
	3/OuDeORnA5Xy9HpghDktbqUx/SSwGIv7Cubke3yID26wx6CQ+NYSXZdSmP48inMdjBGdQWVgj+M7
	Y209A6Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOc8v-00CESo-0M; Fri, 10 Sep 2021 08:44:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOc8p-00CES7-Ey
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 08:44:13 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mOc8k-0005Yw-Ew; Fri, 10 Sep 2021 10:44:06 +0200
To: 20210830144835.27458-1-jmaselbas@kalray.eu, barebox@lists.infradead.org
References: <20210830144835.27458-1-jmaselbas@kalray.eu>
 <07375b1c-7bd8-2936-3e8a-21e0dc75e7a3@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b5415eea-946a-0e30-bb91-efd5f40fcebd@pengutronix.de>
Date: Fri, 10 Sep 2021 10:44:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <07375b1c-7bd8-2936-3e8a-21e0dc75e7a3@norik.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_014411_547557_01312466 
X-CRM114-Status: GOOD (  15.81  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,
	RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAwOC4wOS4yMSAxNDo0NSwgQW7FvmUgTGXFoW5payB3cm90ZToKPiBXZSBoYXZlIHRl
c3RlZCB0aGlzIHBhdGNoIG9uIGEgUEhZVEVDIHBoeUNPUkUtaS5NWDYgVUxMIFNPTSBydW5uaW5n
IGJhcmVib3ggMjAyMS4wNCAodXNpbmcgdGhlIGlteC11c2IgZHJpdmVyKSBhbmQgaXQgc2VlbXMg
dG8gcmVzb2x2ZSB0aGUgaXNzdWUuIERGVSB0cmFuc2ZlciBub3cgd29ya3MgYXMgaW50ZW5kZWQu
CgpHcmVhdC4gU28gaXQncyBvayBmb3IgU2FzY2hhIHRvIGFkZAoKVGVzdGVkLWJ5OiBBbsW+ZSBM
ZcWhbmlrIDxhbnplLmxlc25pa0Bub3Jpay5jb20+Cgp0byB0aGUgY29tbWl0IGxvZz8KCj4gSWYg
b25lIHJlY2VpdmVzIHRpbWVvdXRzIG9uIHRoZSBob3N0IGNvbXB1dGVyLCB0cnkgc2V0dGluZyB1
c2Jjb3JlLmF1dG9zdXNwZW5kPS0xLgoKRGlkIHlvdSBuZWVkIHRoaXMga2VybmVsIHBhcmFtZXRl
ciB3aXRoIHRoZSBvbGQgZGZ1IGNvbW1hbmQgYXMgd2VsbD8KSWYgb25seSBuZXcgZGZ1IGNvbW1h
bmQgbWFrZXMgdGhpcyBwYXJhbWV0ZXIgbmVjZXNzYXJ5LCB3ZSBtaWdodCBuZWVkIHRvIGxvb2sK
d2h5IHRoZSB0aW1pbmcgYmVoYXZpb3IgY2hhbmdlZC4KCkNoZWVycywKQWhtYWQKCj4gCj4gCj4g
QW7FvmUKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgoK
LS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0s
IEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDkt
NTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

