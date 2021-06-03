Delivery-date: Thu, 03 Jun 2021 17:33:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lopLz-00013W-K2
	for lore@lore.pengutronix.de; Thu, 03 Jun 2021 17:33:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lopLw-00078t-Hf
	for lore@pengutronix.de; Thu, 03 Jun 2021 17:33:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xGV2mSrrcmKDGDRzgnyqg7MOmmTxX4C/7xrN4RTUroI=; b=4oaOy7BRiVJjj89+z7+Yr9vC4t
	+QkzuwbXWesJqLYQbEPDzuJa90vWksvcbz4ijuwO15eNRSz6pk/fdWdoFHrNcLD6ealiDx0Q+egSv
	wSQeECl4yoEPjIq0RqVPHR5e57e5gotyS6GrH8hlARrYBl3OvS9GUZZ4dk0e7JlVNE8RVyFmAx53P
	xTi1zWvGd9yjzJaCT26mh9M7Bk6dW1MK1mIZqyRLfdGUEU5xr5GDVR/xpG2Q94Vh137vAmWQiJAx5
	MhQnjPIXG3AORMTxH9ktQ/F2afRDLE1Yyfk2SuP2AuMdUqEYahBy1M3a53ZffNITSrE3uQL6JvU5Q
	ReeL9wcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lopKK-009Nrz-3A; Thu, 03 Jun 2021 15:32:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lopKC-009NrW-Oc
 for barebox@lists.infradead.org; Thu, 03 Jun 2021 15:32:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lopKB-00072u-2J; Thu, 03 Jun 2021 17:31:59 +0200
To: =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
 <20210531065520.12385-11-a.fatoum@pengutronix.de>
 <6c118a9a88836394d4d35741a156f9933e1246d2.camel@pengutronix.de>
 <3be1d6de-ad08-f42b-557d-ebfd11006265@pengutronix.de>
 <b2efa5118953e06f34d236e6c9319f89bc1bd85b.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <61355db5-627e-0f60-050c-c98833a5c1e0@pengutronix.de>
Date: Thu, 3 Jun 2021 17:31:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <b2efa5118953e06f34d236e6c9319f89bc1bd85b.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_083200_826058_A56FA209 
X-CRM114-Status: GOOD (  16.90  )
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
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 10/13] test: add first sample tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gSmFuLAoKT24gMDMuMDYuMjEgMTc6MTQsIEphbiBMw7xiYmUgd3JvdGU6Cj4gT24gV2Vk
LCAyMDIxLTA2LTAyIGF0IDEzOjM1ICswMjAwLCBBaG1hZCBGYXRvdW0gd3JvdGU6Cj4+Pj4gK2Rl
ZiBnZXRfY29uZmlnKGNvbW1hbmQpOgo+Pj4+ICvCoMKgwqAgIiIiUmV0dXJucyB0aGUgZW5hYmxl
ZCBjb25maWcgb3B0aW9ucyBvZiBiYXJlYm94LCBlaXRoZXIgZnJvbQo+Pj4+ICvCoMKgwqAgYSBy
dW5uaW5nIGluc3RhbmNlIGlmIHN1cHBvcnRlZCBvciBieSBsb29raW5nIGludG8gLmNvbmZpZwo+
Pj4+ICvCoMKgwqAgaW4gdGhlIGJ1aWxkIGRpcmVjdG9yeS4KPj4+PiArwqDCoMKgIEFyZ3M6Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbW1hbmQgKEJhcmVib3hEcml2ZXIpOiBBbiBpbnN0YW5jZSBv
ZiB0aGUgQmFyZWJveERyaXZlcgo+Pj4+ICvCoMKgwqAgUmV0dXJuczoKPj4+PiArwqDCoMKgwqDC
oMKgwqAgbGlzdDogbGlzdCBvZiB0aGUgZW5hYmxlZCBjb25maWcgb3B0aW9ucwo+Pj4+ICvCoMKg
wqAgIiIiCj4+Pj4gK8KgwqDCoCBhc3NlcnQgaXNpbnN0YW5jZShjb21tYW5kLCBCYXJlYm94RHJp
dmVyKQo+Pj4+ICsKPj4+PiArwqDCoMKgIG91dCwgZXJyLCByZXR1cm5jb2RlID0gY29tbWFuZC5y
dW4oImNhdCAvZW52L2RhdGEvY29uZmlnIikKPj4+PiArwqDCoMKgIGlmIHJldHVybmNvZGUgIT0g
MDoKPj4+PiArwqDCoMKgwqDCoMKgwqAgdHJ5Ogo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHdpdGggb3Blbihvcy5lbnZpcm9uWydMR19CVUlMRERJUiddICsgIi8uY29uZmlnIikgYXMgZjoK
Pj4+Cj4+PiBQbGVhc2UgZG9uJ3QgdXNlIHRoZSBMR18gbmFtZXNwYWNlIGN1cnJlbnRseSB1c2Vk
IGJ5IGxhYmdyaWQsIHRoaXMKPj4+IHZhcmlhYmxlIGlzIGludHJvZHVjZWQgYnkgeW91ciB3cmFw
cGVyIHNjcmlwdCwgc29tZXRoaW5nIGxpa2UKPj4+IEJCX0xHX0JVSUxERElSIGluZGljYXRlcyB0
aGF0IHRoaXMgaXMgb25seSB1c2VkIGluIHRoZSBiYXJlYm94IHRlc3QKPj4+IHNjcmlwdHMuCj4+
Cj4+IExhYmdyaWQgZmlsdGVycyBvdXQgYW55dGhpbmcgdGhhdCBkb2Vzbid0IHN0YXJ0IHdpdGgg
TEdfIEFGQUlLLgo+IAo+IE5vLiBUaGUgZmlsdGVyIGlzIG9ubHkgZm9yIHRoZSBlbnZpcm9ubWVu
dCB0ZW1wbGF0aW5nLiBXZSBkb24ndCB0b3VjaCB0aGUKPiBvcy5lbnZpcm9uIGRpY3Rpb25hcnku
CgpJIGFtIHVzaW5nIExHX0JVSUxERElSIG91dCBvZiB0aGUgWUFNTCBjb25maWcgYXMgd2VsbC4K
Cj4gCj4gUmVnYXJkcywKPiBKYW4KPiAKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxk
ZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4
LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9u
ZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4
NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

