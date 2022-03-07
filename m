Delivery-date: Mon, 07 Mar 2022 13:29:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRCU6-003Qo6-2M
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 13:29:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRCU3-00029H-U9
	for lore@pengutronix.de; Mon, 07 Mar 2022 13:29:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjyf5eGRgQjmMR/PsTA/dZhz9h9BAhQvnCaEICuG8xM=; b=lZqcY32Y7wx7y7
	QBA2GYJISH86ecJ5qYTMH/duq6fHmby3GdzCI21IELNgvxnnd2xHOt/nCQ3nHtsmMTl/7y+MV/ewK
	LVtBVIrz3ItZyzpgeHicCAtFg/iV9xpdB944WZU/YI6NlnHOeN+5wFtVeyrfn0o7D36VupGgXY6oV
	8hVCAiwuIdvO3FHYVLiXStKq3LeMRpKpRKZt25T3GSFi67uFG5uy0u0kyQuhWfZKkJw30ZxJpj3ip
	YZOCJmli6nLvmLVPvXr1M50stn8lOciL7XdI3YRidhm6a2NZciqf/IrZdGSFJ44g5LDh9NaNZqL5I
	kq+4lMakLcFfXDJNsJVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRCSW-00Ha8I-BK; Mon, 07 Mar 2022 12:27:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRCKn-00HWvQ-Da
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 12:19:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nRCKl-0000he-QC; Mon, 07 Mar 2022 13:19:27 +0100
Message-ID: <5bec70f6-8963-2b79-9f81-3e0a3dd30b7c@pengutronix.de>
Date: Mon, 7 Mar 2022 13:19:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
 <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
 <20220307120441.5ku64yzxqzmuh6ua@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220307120441.5ku64yzxqzmuh6ua@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_041929_537377_FDDFDA87 
X-CRM114-Status: GOOD (  32.97  )
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

SGVsbG8gVXdlLAoKT24gMDcuMDMuMjIgMTM6MDQsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+
IEhlbGxvIEFobWFkLAo+IAo+IE9uIE1vbiwgTWFyIDA3LCAyMDIyIGF0IDEyOjM0OjE5UE0gKzAx
MDAsIEFobWFkIEZhdG91bSB3cm90ZToKPj4gT24gMDcuMDMuMjIgMTI6MjMsIFV3ZSBLbGVpbmUt
S8O2bmlnIHdyb3RlOgo+Pj4gSGF2aW5nIHRoZSBtbWMgYWxpYXNlcyBpbiBzdG0zMm1wMTUxLmR0
c2kgaXMgc3VycHJpc2luZyBhcyBkZXBlbmRpbmcgb24KPj4+IHRoZSBvcmRlciBvZiBpbmNsdWRl
cyB0aGVzZSBvdmVycmlkZSB0aGUgbW1jIG9yZGVyaW5nIGluCj4+PiA8YXJtL3N0bTMybXAxNTdj
LW15Ym9hcmQuZHRzPi4gQWxzbyB0aGUgb3JkZXJpbmcgb2YgbW1jIGRldmljZXMgaXMgYWN0dWFs
bHkKPj4+IGJvYXJkIHNwZWNpZmljLCBzbyBpdCdzIGFsc28gcmlnaHQgdG8gaGF2ZSB0aGlzIGlu
IHRoZSBib2FyZC5kdHMgZmlsZXMuCj4+Cj4+IE5BQ0suCj4gCj4gSSBmZWFyZWQgeW91J2Qgb3Bw
b3NlLiA6LVwKPiAKPiBNeSBtb3RpdmF0aW9uIHRvIGRldmlhdGUgZnJvbSB0aGUgZGVmYXVsdCBv
cmRlcmluZyBpcyB0aGF0IEkgd2FudCB0bwo+IGhhdmUgZU1NQyBhcyBmaXJzdCBkZXZpY2UgYW5k
IFNEIGFzIHNlY29uZCwgc28gb24gdGhlIGJvYXJkIEkgaGF2ZSBoZXJlCj4gSSdkIGxpa2UgdG8g
aGF2ZQo+IAo+IAltbWMwID0gJnNkbW1jMjsgLyogZU1NQyAqLwo+IAltbWMxID0gJnNkbW1jMTsg
LyogwrVTRCAqLwo+IAo+IEhvd2V2ZXIgaW4gY29tYmluYXRpb24gd2l0aCBhcmNoL2FybS9kdHMv
c3RtMzJtcDE1MS5kdHNpIHRoaXMgcmVzdWx0cyBpbgo+IAo+IAltbWMwID0gJnNkbW1jMjsgLyog
ZU1NQyAqLwo+IAltbWMxID0gJnNkbW1jMTsgLyogwrVTRCAqLwo+IAltbWMyID0gJnNkbW1jMzsK
PiAKPiB3aGljaCBpcyBhIGJpdCB1Z2x5IGJlY2F1c2Ugc2RtbWMzIGlzbid0IHVzZWQgYXQgYWxs
IG9uIHRoZSBib2FyZCBpbgo+IHF1ZXN0aW9uLiBEb2luZyBhIC9kZWxldGUtcHJvcGVydHkvbW1j
MiBpc24ndCB0aGF0IG5pY2UsIHRvby4gT3BlbiBmb3IKPiBhbHRlcm5hdGl2ZXMgLi4uCgpXaHkg
dGhvdWdoPyBJcyB0aGlzIGZvciBjb21wYXRpYmlsaXR5IHdpdGggb2xkZXIvb3RoZXIgaGFyZHdh
cmU/CgpSZW51bWJlcmluZyBpcyB3aGF0IEknZCBzdWdnZXN0IHRob3VnaC4KCj4+IE1NQyBJUHMg
aGF2ZSBmaXhlZCBudW1iZXJpbmcsIGJlY2F1c2UgVEYtQSAoYW5kIEJvb3RST00gYmVmb3JlIGl0
KQo+PiByZXBvcnQgdG8gYmFyZWJveCB0aGUgbnVtYmVyIG9mIHRoZSBNTUMgZGV2aWNlIHRoYXQg
aXQgc3VjY2VzZnVsbHkgYm9vdGVkIGZyb20uCj4+IFRoZSBhbGlhc2VzIG1hcCB0aGVzZSBJRHMg
dG8gZGV2aWNlIHRyZWUgbm9kZXMsIHNvIGJhcmVib3ggY2FuIGZpeCB1cCBhIGNvcnJlY3QKPj4g
L2Nob3Nlbi9ib290c291cmNlLgo+IAo+IEFuZCBtYXBwaW5nIHRoZSBudW1iZXIgZnJvbSBURi1B
IChvciBCb290Uk9NKSBkZXBlbmRzIG9uIHRoZSBhbGlhc2VzCj4gZGVmaW5lZCBpbiB0aGUgZHRz
PyBTb3VuZHMgbGlrZSBhIGJ1ZyB0byBtZS4KCldlIGNhbiBjaGFuZ2Ugb2ZfYWxpYXNfZ2V0X2lk
IHRvIGxvb2t1cCAvYWxpYXNlcy9iYXJlYm94LCRhbGlhcyBhcyBhIGZhbGxiYWNrLgpUaGVuIGFk
ZCBhIG5ldyBmdW5jdGlvbiB0aGF0IGxvb2tzIHVwIGJhcmVib3ggYWxpYXMgZmlyc3QgYW5kIHRo
ZW4gbm9uLWJhcmVib3gKYWRvcm5lZCBhcyBmYWxsYmFjayBhbmQgdXNlIHRoYXQgZm9yIGJvb3Rz
b3VyY2UgY2FsY3VsYXRpb24uIEFmdGVyd2FyZHMsIHdlIGNhbgpwcmVmaXggU29DIGxldmVsIE1N
QyBhbGlhc2VzIHdpdGggYmFyZWJveCwgYW5kIGJvYXJkcyBjYW4gc3BlY2lmeSB0aGVpcgphbGlh
c2VzIGFzIHRoZXkgcGxlYXNlLiBUaGlzIG1heSBiZSB0aGUgbW9zdCBzdHJhaWdodC1mb3J3YXJk
IHdheQp0byBkZWNvdXBsZS4gSGF2aW5nIG1hcHBpbmcgdGFibGVzIGluIFNvQyBzdXBwb3J0IGlz
IG5vdCBteSBmYXZvcml0ZS4KCj4+IEFkZGl0aW9uYWxseSBoYXZpbmcgYW55IGFsaWFzIGF0IGFs
bCBlbnN1cmVzIGZpeGVkIG5hbWluZyB0aGF0J3MKPj4gbm90IGRlcGVuZGVudCBvbiBwcm9iZSBv
cmRlci4KPiAKPiBGaW5lIGZvciBtZS4gQW5kIGlmIHRoZSBib2FyZCBkb2Vzbid0IGRlZmluZSB0
aGUgYWxpYXNlcywgeW91IGdldCByYW5kb20KPiBvcmRlcmluZy4KCkkgcHJlZmVyIHNhbmUgZGVm
YXVsdHMuCgo+PiBJIGtub3cgdGhhdCBMaW51eCBtYWludGFpbmVycyBzZWVtIHRvIGRpc2FncmVl
IHdpdGggdGhpcywgYnV0IGFzIGZhcgo+PiBhcyBiYXJlYm94IGlzIGNvbmNlcm5lZCwgYWxpYXNl
cyBhcmUgU29DLXNwZWNpZmljLCBub3QgYm9hcmQtc3BlY2lmaWMKPj4gaW4gZ2VuZXJhbC4gWW91
IGNhbiBvdmVycmlkZSB0aGlzIGJvYXJkLWxldmVsIGlmIHlvdSBsaWtlLCBidXQgdGhlCj4+IGRl
ZmF1bHQgc2hvdWxkIHJlbWFpbi4KPj4KPj4+IFRoZXJlIGlzIG5vIChyZWxldmFudCkgY2hhbmdl
IGludGVuZGVkIGJ5IHRoaXMgcGF0Y2guCj4+Cj4+IEkgaGF2ZSBub24tdXBzdHJlYW0gYm9hcmRz
IHRoYXQgd291bGQgYmUgYnJva2VuIGJ5IHRoaXMuCj4gCj4gVGhpcyBpcyBub3QgYSByZWFzb24g
dG8gbm90IHRha2UgdGhpcyBwYXRjaCwgaXMgaXQ/CgpJIHRoaW5rIG1vc3QgcGVvcGxlIGludm9s
dmVkIGhhdmUgYm9hcmRzIChvZnRlbiB3aXRoIHRyaXZpYWwgYm9hcmQgc3VwcG9ydCkKdGhhdCBh
cmUgbm90IHVwc3RyZWFtLiBJIGRvIHRoaW5rIHdlIHNob3VsZCBhdm9pZCBicmVha2luZyB0aGVt
IGZvciBubyBnb29kCnJlYXNvbi4KCj4+IFRoZXJlJ3MgYWxzbyBhIFBoeXRlYyBib2FyZCBpbiBu
ZXh0IHRoYXQgd291bGQgYmUgYnJva2VuIGJ5IHRoaXMuCj4+IFdoZXJlYXMgdGhleSBoYWQgYSBm
aXhlZCBtbWNYIGJlZm9yZSwgdGhleSB3b3VsZCBub3cgaGF2ZSBkaXNrMCwgZGlzazEKPj4gb3Ig
ZGlzazIgZGVwZW5kaW5nIG9uIHByb2JlIG9yZGVyIHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkLgo+
IAo+IEFncmVlZCwgY29kZSBpbiBuZXh0IHNob3VsZCBiZSBhZGFwdGVkLgpDaGVlcnMsCkFobWFk
Cgo+IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+IAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1
ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAg
fCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

