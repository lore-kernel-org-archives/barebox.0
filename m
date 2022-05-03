Delivery-date: Tue, 03 May 2022 13:15:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlqUo-000VUh-PM
	for lore@lore.pengutronix.de; Tue, 03 May 2022 13:15:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlqUn-0006Qu-HM
	for lore@pengutronix.de; Tue, 03 May 2022 13:15:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTAXN24Mqe7IZzrwPekcy6jdAcIQqc/GijwKjytvRBo=; b=3d4GAY63N/qmey
	oziWPbumxT8eUENe1e+a2kvDSMNWpVb1L9mhLVQiFiUonwmhdAyXdSYkj8n/SPCSeC6w1oV2eD9/3
	lp9+e83vq4wvVKfW43ib18isOb1XWB27lbp/P0UMSyyJ4HgDl2GDe98LuAug3InHsm0qnH/TWp1IL
	kVLlDuD9215TIvjg2GmSkM3ZyZOFxZco+8pu6EM4KDCpgP8vBAcRRJQ2aC3A9oLujaPJVvfNnI5E7
	uJJUUCmQl9iVZnr3Pf35cNrGuQblO6P4PbOjjW7ZDWWRlXVK9dqDpf7q85KLocxq0azyNVJWweKs4
	B7AnVqLQIeE1Ty0eq49Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlqTB-005Z6W-9f; Tue, 03 May 2022 11:13:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlqT5-005Z4Q-OG
 for barebox@lists.infradead.org; Tue, 03 May 2022 11:13:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nlqT0-0006LS-FO; Tue, 03 May 2022 13:13:18 +0200
Message-ID: <9bcb9c38-248f-5370-4d9c-0619545e6eec@pengutronix.de>
Date: Tue, 3 May 2022 13:13:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthias Fend <matthias.fend@emfend.at>, barebox@lists.infradead.org
References: <01aea3ad-d18b-fa9f-ea11-e6bae8750695@emfend.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <01aea3ad-d18b-fa9f-ea11-e6bae8750695@emfend.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_041323_820314_002EB937 
X-CRM114-Status: GOOD (  15.64  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: i2c: Rockchip i2c controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWF0dGhpYXMsCgpPbiAwMy4wNS4yMiAxMjoxMSwgTWF0dGhpYXMgRmVuZCB3cm90ZToK
PiBIaSwKPiAKPiBpdCBsb29rcyB0byBtZSBsaWtlIHRoZSByb2NrY2hpcF9pMmNfeGZlciBmdW5j
dGlvbiByZXR1cm5zIDAgaWYgZXZlcnl0aGluZyB3YXMgc3VjY2Vzc2Z1bCwgYnV0IHNob3VsZG4n
dCB0aGUgaTJjIG1hc3Rlcl94ZmVyIGZ1bmN0aW9ucyByZXR1cm4gdGhlIG51bWJlciBvZiBtZXNz
YWdlcyBhY3R1YWxseSBwcm9jZXNzZWQ/Cj4gCj4gSSB3YXMganVzdCB3b25kZXJpbmcgYWJvdXQg
cmVhZGluZyBzb3VyY2VzIGFuZCBjYW4ndCBkbyByZWFsIHdvcmxkIHRlc3RpbmcgZHVlIHRvIGxh
Y2sgb2YgaGFyZHdhcmUuLi4KCkkgdGhpbmsgeW91J3JlIHJpZ2h0LiBJIHRlc3RlZCB0aGlzIG9u
bHkgd2l0aCB0aGUgUks4MDggUE1JQyBvbiB0aGUgTmFubyBQaSBOMTAKYW5kIG5vdGljZWQgbm8g
cHJvYmxlbXMsIGJ1dCBpdCBzZWVtcyB0aGF0IHdhcyBqdXN0IG1lIGJlaW5nIGx1Y2t5LgoKSSds
bCBnaXZlIGl0IGEgdGVzdCB3aXRoIGZpeGVkIHJldHVybiB2YWx1ZSBhbmQgc2VuZCBhIHBhdGNo
IGluIHRoZQpjb21pbmcgZGF5cy4KClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCkNoZWVycywKQWht
YWQKCj4gCj4gwqB+TWF0dGhpYXMKPiAKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2Fs
ZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25p
eC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhv
bmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2
ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

