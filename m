Delivery-date: Fri, 22 Apr 2022 08:52:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhn9s-00Arga-Q2
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 08:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhn9p-0003ZE-PA
	for lore@pengutronix.de; Fri, 22 Apr 2022 08:52:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tT2ZXhZv18RCw01nRxh4kK/0FOJtNAoIFLGMl7nnzes=; b=e8oCcI6aTFsRgX
	ji0CZYbFmKQLcYG4VueICr2CvG1QXMAWlC8xNtixFmaNxxgLq/1r25PR6rV+16Li4zHUDRXp+unJX
	j04DIvH+KM8eDYVC489ShWKWMOZWyUJmcPSu5AmY4bwAjIGh3YcRIxWTmcSWaXLuqUX1lgW75VP9f
	WMniXfXF8OcaKS6bQLMVqKxnYW2Q80VeDoul+7uLkXpcm04ajnKD4nIiOxlMy717DOTSvnSTPfaX3
	fkaBwxxw1i9wxOL9p92pDi5u6VP5EZAC4jSTq0Ukv7+NQGcGpJqTPzuSEyDfhVotZ+uNF9DT4SLe/
	IhuWUBWNZ7QYriAbfSTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhn87-00Gff7-Oj; Fri, 22 Apr 2022 06:50:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhn81-00GfcG-MG
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 06:50:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhn7y-00038M-Jq; Fri, 22 Apr 2022 08:50:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhn7y-0008AY-2j; Fri, 22 Apr 2022 08:50:50 +0200
Date: Fri, 22 Apr 2022 08:50:50 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220422065050.GA4012@pengutronix.de>
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
 <20220421073546.GV4012@pengutronix.de>
 <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
 <20220421083003.GY4012@pengutronix.de>
 <CAP1tNvS4L7ZM7dYK+VZej56MdyMVXJiMVg3oLj2iYMVk9n0xcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvS4L7ZM7dYK+VZej56MdyMVXJiMVg3oLj2iYMVk9n0xcQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:46:57 up 22 days, 19:16, 68 users,  load average: 0.03, 0.09, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_235053_779774_DB81C6E7 
X-CRM114-Status: GOOD (  34.02  )
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

T24gVGh1LCBBcHIgMjEsIDIwMjIgYXQgMTE6NTg6MjZBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDRh9GCLCAyMSDQsNC/0YAuIDIwMjIg0LMuINCyIDExOjMwLCBTYXNjaGEgSGF1
ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46Cj4gPiBPbiBUaHUsIEFwciAyMSwgMjAyMiBhdCAxMDo1
NzozM0FNICswMzAwLCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gPiDRh9GCLCAyMSDQsNC/
0YAuIDIwMjIg0LMuINCyIDEwOjM1LCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46
Cj4gPiA+ID4KPiA+ID4gPiBPbiBXZWQsIEFwciAyMCwgMjAyMiBhdCAxMjo1MzoyMlBNICswMzAw
LCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gPiA+ID4gVGhlIE1ZRC1BTTMzNVggRGV2ZWxv
cG1lbnQgQm9hcmQgZGVzaWduZWQgYnkgTVlJUiBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UKPiA+ID4g
PiA+IEFSTSBFdmFsdWF0aW9uIE1vZHVsZSAoRVZNKSB1c2luZyB0aGUgTVlDLUFNMzM1WCBDUFUg
bW9kdWxlIGFzIHRoZSBjb3JlCj4gPiA+ID4gPiBjb250cm9sbGVyIGJvYXJkLiBJdCBpcyBiYXNl
ZCBvbiB1cCB0byAxR0h6IFRleGFzIEluc3RydW1lbnRzIChUSSkKPiA+ID4gPiA+IFNpdGFyYSBB
TTMzNXggZmFtaWx5IG9mIEFSTSBDb3J0ZXgtQTggTWljcm9wcm9jZXNzb3JzIChNUFVzKSB0aGF0
IGRlbGl2ZXIKPiA+ID4gPiA+IGhpZ2ggRE1JUHMgYXQgYSBsb3cgY29zdCB3aGlsZSBhbHNvIGRl
bGl2ZXJpbmcgb3B0aW9uYWwgM0QgZ3JhcGhpY3MKPiA+ID4gPiA+IGFjY2VsZXJhdGlvbiBhbmQg
a2V5IHBlcmlwaGVyYWxzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhh
bmRlciBTaGl5YW4gPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4gPiA+IC4uLgo+ID4g
PiA+ID4gK3N0YXRpYyBzdHJ1Y3Qgb21hcF9iYXJlYm94X3BhcnQgbXlpcl9iYXJlYm94X3BhcnQg
PSB7Cj4gPiA+ID4gPiArICAgICAubmFuZF9vZmZzZXQgPSBTWl8xMjhLLAo+ID4gPiA+ID4gKyAg
ICAgLm5hbmRfc2l6ZSA9IFNaXzUxMkssCj4gPiA+ID4gPiArfTsKPiA+ID4gPgo+ID4gPiA+IElz
bid0IHRoaXMgYSBiaXQgdG9vIHNtYWxsPyBQdXR0aW5nIGEgYmFyZWJveCBpbnRvIDEyOGsgc2Vl
bXMgdmVyeQo+ID4gPiA+IGFtYmljb3VzLgo+ID4gPgo+ID4gPiBUaGUgYm9vdCBpbWFnZSAoTUxP
KSBzaG91bGQgbm90IGV4Y2VlZCAxMjggS0IgaW4gc2l6ZSwKPiA+ID4gc28gSSB0aGluayB0aGlz
IHNob3VsZCBiZSBlbm91Z2guCj4gPiA+IEluIGFueSBjYXNlIHRoaXMgc2l6ZSBpcyBhbHJlYWR5
IHNwZWNpZmllZCBmb3IgdGhlIGJvb3QgcGFydGl0aW9uCj4gPiA+IGluIGtlcm5lbCBEVFMgZm9y
IHRoaXMgYm9hcmQuIDopCj4gPgo+ID4gT2gsIEkgYWNjaWRlbnRseSBtaXNyZWFkIG5hbmRfc2l6
ZSBhcyBTWl8xMjhLLiBJbmRlZWQgaXQncyBTWl81MTJLIHdoaWNoCj4gPiBpcyBzbWFsbCwgYnV0
IHN1ZmZpY2llbnQuIEFueXdheSwgdGhlIEJCVSBjb2RlIGFzc3VtZXMgNCBlcmFzZWJsb2NrcyBm
b3IKPiA+IHRoZSBmb3VyIE1MTyBpbWFnZXMuIFRoYXQgd291bGQgYmUgYSBuYW5kX29mZnNldCBv
ZiBTWl81MTJLIGFsc28sIHdoaWNoCj4gPiB3b3VsZCB0aGVuIGFsc28gbWF0Y2ggdGhlIHVwc3Ry
ZWFtIGRldmljZSB0cmVlIGZvciB0aGUgYm9hcmQ6Cj4gPgo+ID4gJm5hbmQwIHsKPiA+ICAgICAg
ICAgcGFydGl0aW9uQDAgewo+ID4gICAgICAgICAgICAgICAgIGxhYmVsID0gIk1MTyI7Cj4gPiAg
ICAgICAgICAgICAgICAgcmVnID0gPDB4MDAwMDAgMHgyMDAwMD47Cj4gPiAgICAgICAgIH07Cj4g
Pgo+ID4gICAgICAgICBwYXJ0aXRpb25AMjAwMDAgewo+ID4gICAgICAgICAgICAgICAgIGxhYmVs
ID0gImJvb3QiOwo+ID4gICAgICAgICAgICAgICAgIHJlZyA9IDwweDIwMDAwIDB4ODAwMDA+Owo+
ID4gICAgICAgICB9Owo+ID4gfTsKPiA+Cj4gPiA1MTJrIGlzIHN0aWxsIHZlcnkgc21hbGwgbm93
YWRheXMuIFRoZSBpbWFnZXMgYnVpbHQgd2l0aCBvbWFwX2RlZmNvbmZpZwo+ID4gYXJlIGp1c3Qg
YSBiaXQgc21hbGxlciB0aGFuIHRoYXQuCj4gCj4gRG8geW91IHByZWZlciB0aGF0IHdlIGZpeCB0
aGlzIGluIHRoZSBsb2NhbCBvdmVybGF5IG5vdywKPiBvciBsZWF2ZSBpdCBhcyBpcyB1bnRpbCBr
ZXJuZWwgRFRTIHVwc3RyZWFtIGNoYW5nZXM/CgpEbyBpdCBsb2NhbGx5IGZvciBub3cuIEJUVyB5
b3UgdXNlZCBhIGxlZ2FjeSBiaW5kaW5nIGhlcmUuIE5vd2FkYXlzIHRoZQpwYXJ0aXRpb25zIGFy
ZSB1bmRlciBhIHBhcnRpdGlvbnMgbm9kZSB3aXRoIGNvbXBhdGlibGUKImZpeGVkLXBhcnRpdGlv
bnMiLgoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEg
ICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzEx
MzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIx
LTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK

