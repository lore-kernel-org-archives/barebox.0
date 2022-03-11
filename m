Delivery-date: Fri, 11 Mar 2022 10:33:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSbe2-001pJT-AL
	for lore@lore.pengutronix.de; Fri, 11 Mar 2022 10:33:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSbe1-0002wQ-4z
	for lore@pengutronix.de; Fri, 11 Mar 2022 10:33:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4D/sR+TWOBLkg/noa4XGx25OPUcy3MT7Xzr6OyQA4Ro=; b=AvFNaJAoP3sYHk
	xeIojMArks4OJtFVtYH+G9lo5Gon1sJvsNVJuhxkczpqC9Pf4sISdue7CKTlju+Vm5cYmBuBYwTMn
	v+cX1IEuShCnqc7oowGwKwilr3ha3DX9DWMwrxrNeYBvUBBrepFZEWCucIp/uTDDaUbDD8YbJhkV0
	imsweVUf9CSFkcaFSTtpSxWAbf1lFf0ZvehsR7BkzbYkzo6GFPTdHtDbgB9Ylmj9vR5YO5L6pr5fg
	jHkbBVGcpHvm5NwRKs4ZyvSnxMkejVrmHR6o5hFSR3sbWMxZyIxR5O4pBNaBIzhZkXi/ss7DoFGqX
	J8F5q5gUm9MPxqkxv53g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSbcT-00FoDY-D3; Fri, 11 Mar 2022 09:31:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSbcH-00Fo9b-Sv
 for barebox@lists.infradead.org; Fri, 11 Mar 2022 09:31:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nSbcD-0002Ub-86; Fri, 11 Mar 2022 10:31:17 +0100
Message-ID: <d6238280-f3c2-c1c1-d7d7-764c6fb52724@pengutronix.de>
Date: Fri, 11 Mar 2022 10:31:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
 <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
 <20220307120441.5ku64yzxqzmuh6ua@pengutronix.de>
 <5bec70f6-8963-2b79-9f81-3e0a3dd30b7c@pengutronix.de>
 <20220307132352.nimuo7vofgb3mhtd@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20220307132352.nimuo7vofgb3mhtd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_013121_965627_DA36C04A 
X-CRM114-Status: GOOD (  18.45  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: stm32mp15x: Move mmc aliases to board files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gVXdlLAoKT24gMDcuMDMuMjIgMTQ6MjMsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+
IEkgd291bGQgaGF2ZSBnb25lIHdpdGggdGhlIG1hcHBpbmcgdGFibGVzIGFuZCBJJ2QgY29uc2lk
ZXIKPiAvYWxpYXNlcy9iYXJlYm94LG1tYzAgPSAuLi4gbW9yZSB1Z2x5LiBCdXQgSSBhZ3JlZSB0
aGlzIHRvIGJlCj4gYSBiaXQgc3ViamVjdGl2ZS4KCk1hcHBpbmcgdGFibGUgd2lsbCBiZSBtb3Jl
IGVmZm9ydCBJTU8uIEF0IGxlYXN0IHRoZSBgYmFyZWJveCxgIHByZWZpeApjaGFuZ2Ugd291bGQg
YmUgbWVjaGFuaWNhbCBhbmQgbGVzcyBlcnJvci1wcm9uZS4KCj4gIElmIHRoZSBzb2MtY29kZSBj
b250aW51ZXMgdG8gZGVwZW5kIG9uIGhhdmluZyB0aGUgbW1jCj4gYWxpYXNlcyBhcyBkZWZpbmVk
IGluIHN0bTMybXAxNTEuZHRzaSwgdGhlcmUgc2hvdWxkIGJlIGEgY29tbWVudAo+IGRlc2NyaWJp
bmcgdGhhdCBJTUhPLgoKSXQncyBnZW5lcmljIGNvZGUgdGhhdCBkZXBlbmRzIG9uIHRoZSBhbGlh
c2VzIGZvciBmaXh1cC4KCj4+Pj4gQWRkaXRpb25hbGx5IGhhdmluZyBhbnkgYWxpYXMgYXQgYWxs
IGVuc3VyZXMgZml4ZWQgbmFtaW5nIHRoYXQncwo+Pj4+IG5vdCBkZXBlbmRlbnQgb24gcHJvYmUg
b3JkZXIuCj4+Pgo+Pj4gRmluZSBmb3IgbWUuIEFuZCBpZiB0aGUgYm9hcmQgZG9lc24ndCBkZWZp
bmUgdGhlIGFsaWFzZXMsIHlvdSBnZXQgcmFuZG9tCj4+PiBvcmRlcmluZy4KPj4KPj4gSSBwcmVm
ZXIgc2FuZSBkZWZhdWx0cy4KPiAKPiBJIHByZWZlciBzYW5lIGRlZmF1bHRzIGlmZiB0aGV5IGNh
biBiZSBlYXNpbHkgYWRhcHRlZCBieSBib2FyZCBjb2RlLiBJZgo+IHlvdSBjb25zaWRlciBpbiBi
b2FyZC5kdHM6Cj4gCj4gCW1tYzAgPSAmc2RtbWMyOwo+IAltbWMxID0gJnNkbW1jMzsKPiAKPiAo
Zm9yIHdoYXRldmVyIHJlYXNvbnMpLCB5b3UgZW5kIHVwIHdpdGggbW1jMSBhbmQgbW1jMiBib3Ro
IHBvaW50aW5nIHRvCj4gc2RtbWMzLiBVZ2x5LgoKL2RlbGV0ZS1wcm9wZXJ0eS8gaXMgZWFzaWx5
IGFkYXB0YWJsZSBJTU8sIGJ1dCB5ZXMsIG5vdCBwYXJ0aWN1bGFybHkgbmljZQp0byBsb29rIGF0
LgoKPj4gSSB0aGluayBtb3N0IHBlb3BsZSBpbnZvbHZlZCBoYXZlIGJvYXJkcyAob2Z0ZW4gd2l0
aCB0cml2aWFsIGJvYXJkIHN1cHBvcnQpCj4+IHRoYXQgYXJlIG5vdCB1cHN0cmVhbS4gSSBkbyB0
aGluayB3ZSBzaG91bGQgYXZvaWQgYnJlYWtpbmcgdGhlbSBmb3Igbm8gZ29vZAo+PiByZWFzb24u
Cj4gCj4gSSB0aGluayB0aGVzZSBwZW9wbGUgc2hvdWxkIG1haW5saW5lIHRoZWlyIHRyaXZpYWwg
Ym9hcmQgc3VwcG9ydCBpZiB0aGV5Cj4gd2FudCB0byBiZSBpbW11bmUgdG8gc3VjaCBicmVha2lu
Zy4KCk9uZSBjb3VsZCBob3BlLiA6LSkKCkNoZWVycywKQWhtYWQKCgotLSAKUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDov
L3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGls
ZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1
IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

