Delivery-date: Thu, 21 Apr 2022 10:31:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhSDx-009wJX-GD
	for lore@lore.pengutronix.de; Thu, 21 Apr 2022 10:31:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhSDu-0000CB-Fd
	for lore@pengutronix.de; Thu, 21 Apr 2022 10:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ML3mvXlSNgoyurEcyxaW1qBZpV947TAkC7zutTAuwY=; b=TY+W7/ujF90a61
	ug2vNu0hc0T6EiH9xkqE10pcg24jTF+t8FOzu1fSDVFGI60Se/UzUveX8NBSaFcdFdbrMEXeIcA3K
	wOTzKYf8Xub4oDqB/Sz3LonYTVdgGnOKPNtLTLBhh/S/+JpaT2Q73YMD9vGIbOPoAPuUlxqnByBhG
	3pivfD3nCdq2ImzLqobx6n6F3H0NzoXAD8icVzZMY8dHdKXsh9JbSnU6sodFV6Xme5W9acM4nhJ0G
	ByuVVOzcAyGvPDUwToQo5Y1/OcF6G6I/UB0VlAgMf4mX/QqH9EuOMgcdUf3SeOPCRr5piylFgwpg6
	7H9iU8ZVWvpHrGcHmaDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhSCY-00CR0Y-B7; Thu, 21 Apr 2022 08:30:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhSCT-00CQzt-Np
 for barebox@lists.infradead.org; Thu, 21 Apr 2022 08:30:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhSCR-0008GU-RC; Thu, 21 Apr 2022 10:30:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhSCR-0003RT-IP; Thu, 21 Apr 2022 10:30:03 +0200
Date: Thu, 21 Apr 2022 10:30:03 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220421083003.GY4012@pengutronix.de>
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
 <20220421073546.GV4012@pengutronix.de>
 <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:23:08 up 21 days, 20:52, 73 users,  load average: 0.12, 0.31, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_013005_818693_DFBAF68E 
X-CRM114-Status: GOOD (  27.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for MYIR MYD-AM335X Development
 Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBBcHIgMjEsIDIwMjIgYXQgMTA6NTc6MzNBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDRh9GCLCAyMSDQsNC/0YAuIDIwMjIg0LMuINCyIDEwOjM1LCBTYXNjaGEgSGF1
ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46Cj4gPgo+ID4gT24gV2VkLCBBcHIgMjAsIDIwMjIgYXQg
MTI6NTM6MjJQTSArMDMwMCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+ID4gVGhlIE1ZRC1B
TTMzNVggRGV2ZWxvcG1lbnQgQm9hcmQgZGVzaWduZWQgYnkgTVlJUiBpcyBhIGhpZ2gtcGVyZm9y
bWFuY2UKPiA+ID4gQVJNIEV2YWx1YXRpb24gTW9kdWxlIChFVk0pIHVzaW5nIHRoZSBNWUMtQU0z
MzVYIENQVSBtb2R1bGUgYXMgdGhlIGNvcmUKPiA+ID4gY29udHJvbGxlciBib2FyZC4gSXQgaXMg
YmFzZWQgb24gdXAgdG8gMUdIeiBUZXhhcyBJbnN0cnVtZW50cyAoVEkpCj4gPiA+IFNpdGFyYSBB
TTMzNXggZmFtaWx5IG9mIEFSTSBDb3J0ZXgtQTggTWljcm9wcm9jZXNzb3JzIChNUFVzKSB0aGF0
IGRlbGl2ZXIKPiA+ID4gaGlnaCBETUlQcyBhdCBhIGxvdyBjb3N0IHdoaWxlIGFsc28gZGVsaXZl
cmluZyBvcHRpb25hbCAzRCBncmFwaGljcwo+ID4gPiBhY2NlbGVyYXRpb24gYW5kIGtleSBwZXJp
cGhlcmFscy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8ZWFn
bGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4KPiAuLi4KPiA+ID4gK3N0YXRpYyBzdHJ1Y3Qgb21h
cF9iYXJlYm94X3BhcnQgbXlpcl9iYXJlYm94X3BhcnQgPSB7Cj4gPiA+ICsgICAgIC5uYW5kX29m
ZnNldCA9IFNaXzEyOEssCj4gPiA+ICsgICAgIC5uYW5kX3NpemUgPSBTWl81MTJLLAo+ID4gPiAr
fTsKPiA+Cj4gPiBJc24ndCB0aGlzIGEgYml0IHRvbyBzbWFsbD8gUHV0dGluZyBhIGJhcmVib3gg
aW50byAxMjhrIHNlZW1zIHZlcnkKPiA+IGFtYmljb3VzLgo+IAo+IFRoZSBib290IGltYWdlIChN
TE8pIHNob3VsZCBub3QgZXhjZWVkIDEyOCBLQiBpbiBzaXplLAo+IHNvIEkgdGhpbmsgdGhpcyBz
aG91bGQgYmUgZW5vdWdoLgo+IEluIGFueSBjYXNlIHRoaXMgc2l6ZSBpcyBhbHJlYWR5IHNwZWNp
ZmllZCBmb3IgdGhlIGJvb3QgcGFydGl0aW9uCj4gaW4ga2VybmVsIERUUyBmb3IgdGhpcyBib2Fy
ZC4gOikKCk9oLCBJIGFjY2lkZW50bHkgbWlzcmVhZCBuYW5kX3NpemUgYXMgU1pfMTI4Sy4gSW5k
ZWVkIGl0J3MgU1pfNTEySyB3aGljaAppcyBzbWFsbCwgYnV0IHN1ZmZpY2llbnQuIEFueXdheSwg
dGhlIEJCVSBjb2RlIGFzc3VtZXMgNCBlcmFzZWJsb2NrcyBmb3IKdGhlIGZvdXIgTUxPIGltYWdl
cy4gVGhhdCB3b3VsZCBiZSBhIG5hbmRfb2Zmc2V0IG9mIFNaXzUxMksgYWxzbywgd2hpY2gKd291
bGQgdGhlbiBhbHNvIG1hdGNoIHRoZSB1cHN0cmVhbSBkZXZpY2UgdHJlZSBmb3IgdGhlIGJvYXJk
OgoKJm5hbmQwIHsKICAgICAgICBwYXJ0aXRpb25AMCB7CiAgICAgICAgICAgICAgICBsYWJlbCA9
ICJNTE8iOwogICAgICAgICAgICAgICAgcmVnID0gPDB4MDAwMDAgMHgyMDAwMD47CiAgICAgICAg
fTsKCiAgICAgICAgcGFydGl0aW9uQDIwMDAwIHsKICAgICAgICAgICAgICAgIGxhYmVsID0gImJv
b3QiOwogICAgICAgICAgICAgICAgcmVnID0gPDB4MjAwMDAgMHg4MDAwMD47CiAgICAgICAgfTsK
fTsKCjUxMmsgaXMgc3RpbGwgdmVyeSBzbWFsbCBub3dhZGF5cy4gVGhlIGltYWdlcyBidWlsdCB3
aXRoIG9tYXBfZGVmY29uZmlnCmFyZSBqdXN0IGEgYml0IHNtYWxsZXIgdGhhbiB0aGF0LgoKU2Fz
Y2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVz
aGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK

