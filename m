Delivery-date: Wed, 28 Apr 2021 10:08:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbfFX-0007pO-ND
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 10:08:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbfFV-0006o0-SX
	for lore@pengutronix.de; Wed, 28 Apr 2021 10:08:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUk5fRZ7UbgbdKoY/mTfr7Ee6T+Pq7NkN1IKQ2t3xDM=; b=AdIowX0N/r49zu9n+Jw7ww9Ig
	NfWbQdslQXkbRsBrQviq+KPhd3uQqkL+JOrn+zbwPeG9zkWDliGJ2ublV7bVtZTwE9XKxGe0I9u5a
	mG3DuyWRmVPxR3sVjkIhd/i1FXppOHWodu3sdnegqZSdS/vlfsH1HV98zE8P1pYUa1QuvVWoz1pPY
	i1f3JWs2hqBvS5TKsvJNzYt2H/vs2lMg0sJtR46MoXO5E+pGCyItsml7NP9J8PX80ABNoDAViHjbK
	r8vjAER2y1heiHBht4XX1PcbmRCvKdAN7hU+Nn5aXY+o+fvf2H2zC+oJfCyA/rEDmfsePT3MA1Vwg
	Ww1UwtkPg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbfEE-0035N8-6F; Wed, 28 Apr 2021 08:07:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfE8-0035Ml-8h
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 08:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=1Wqe+au9cw3CqpgBKpcWh20ziFYNqGVT2uNyGaQk1g4=; b=HkowflbL6aSWeoLWfjrLJP7wgK
 CKHsAgBOaSPwCFPZ1U76b/x7yIqjBipzcg7K/aXE96mwIAzdXeHrSsPqOYLcuZnFg7iFn8kQFkopc
 zyX0WN5l+sCDP+d9mtlNGiEQ/1+Uj7Z6GCayccIPpxZQY5jOmhPflpoz2a+EkLrxseCH8dRjwX7CF
 8+QN3UQH+G+gttIXFx6p09bPJxIFqzlGgh0sXn6Vzr3Tx/7a/ljl1kma97i4MwEbS1HEVL4PGAFim
 G1GknlY5osB9XaBN2APrIF9D6NB55aF2Y8WtLqdS6v0tHcQaRE55bKserR4P5fSazRRaiitRsSNNf
 WuKT9W7g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfE5-00HGoL-OB
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 08:07:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lbfE1-0006j3-Sd; Wed, 28 Apr 2021 10:07:13 +0200
Message-ID: <e1084c136b8053ee848cd5293596450ff699224b.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
Date: Wed, 28 Apr 2021 10:07:12 +0200
In-Reply-To: <20210428073911.122e5bd2dd27df3ec6bf6873@gmail.com>
References: <20210416091404.92251-1-antonynpavlov@gmail.com>
 <20210428073911.122e5bd2dd27df3ec6bf6873@gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_010717_808943_A234AEB8 
X-CRM114-Status: GOOD (  18.07  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/spdxcheck.py: Use Python 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgQW50b255LAoKQW0gTWl0dHdvY2gsIGRlbSAyOC4wNC4yMDIxIHVtIDA3OjM5ICswMzAwIHNj
aHJpZWIgQW50b255IFBhdmxvdjoKPiBPbiBGcmksIDE2IEFwciAyMDIxIDEyOjE0OjA0ICswMzAw
Cj4gQW50b255IFBhdmxvdiA8YW50b255bnBhdmxvdkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IHBp
bmcKClBsZWFzZSBiZSBwYXRpZW50LiBTYXNjaGEgaXMgb3V0IHNpY2ssIGJ1dCBzaG91bGQgYmUg
YmFjayBuZXh0IHdlZWsuCgpSZWdhcmRzLApMdWNhcwoKPiA+IEJhc2VkIG9uIHRoaXMgbGludXgg
a2VybmVsIGNvbW1pdDoKPiA+IAo+ID4gPiBjb21taXQgZDAyNTljNDJhYmZmNTFiNTg2NDk2YTA1
OTQ5MzNlMzk0ZWZlZmJjNQo+ID4gPiBBdXRob3I6IEJlcnQgVmVybWV1bGVuIDxiZXJ0QGJpb3Qu
Y29tPgo+ID4gPiBEYXRlOiAgIFRodSBKYW4gMjEgMDk6NTQ6MTIgMjAyMSArMDEwMAo+ID4gPiAK
PiA+ID4gwqDCoMKgc3BkeGNoZWNrLnB5OiBVc2UgUHl0aG9uIDMKPiA+ID4gCj4gPiA+IMKgwqDC
oFB5dGhvbiAyLnggaGFzIGJlZW4gb2ZmaWNpYWxseSBFT0wnZWQgZm9yIHNvbWUgdGltZSwgYW5k
IGluIGFueSBjYXNlCj4gPiA+IMKgwqDCoHRoZSBnaXQgbW9kdWxlIGZvciBpdCBpcyBoYXJkIHRv
IGNvbWUgYnkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFudG9ueW5w
YXZsb3ZAZ21haWwuY29tPgo+ID4gLS0tCj4gPiDCoHNjcmlwdHMvY2hlY2twYXRjaC5wbCB8IDQg
KystLQo+ID4gwqBzY3JpcHRzL3NwZHhjaGVjay5weSAgfCAyICstCj4gPiDCoDIgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvc2NyaXB0cy9jaGVja3BhdGNoLnBsIGIvc2NyaXB0cy9jaGVja3BhdGNoLnBsCj4gPiBpbmRl
eCBiOGJkNGUxYTU5Li4zNmUzZDc2OGYzIDEwMDc1NQo+ID4gLS0tIGEvc2NyaXB0cy9jaGVja3Bh
dGNoLnBsCj4gPiArKysgYi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwKPiA+IEBAIC04ODUsMTAgKzg4
NSwxMCBAQCBzdWIgaXNfbWFpbnRhaW5lZF9vYnNvbGV0ZSB7Cj4gPiDCoHN1YiBpc19TUERYX0xp
Y2Vuc2VfdmFsaWQgewo+ID4gwqAJbXkgKCRsaWNlbnNlKSA9IEBfOwo+ID4gwqAKPiA+IAo+ID4g
Cj4gPiAKPiA+IC0JcmV0dXJuIDEgaWYgKCEkdHJlZSB8fCB3aGljaCgicHl0aG9uIikgZXEgIiIg
fHwgISgtZSAiJHJvb3Qvc2NyaXB0cy9zcGR4Y2hlY2sucHkiKSB8fCAhKC1lICIkcm9vdC8uZ2l0
IikpOwo+ID4gKwlyZXR1cm4gMSBpZiAoISR0cmVlIHx8IHdoaWNoKCJweXRob24zIikgZXEgIiIg
fHwgISgtZSAiJHJvb3Qvc2NyaXB0cy9zcGR4Y2hlY2sucHkiKSB8fCAhKC1lICIkcm9vdC8uZ2l0
IikpOwo+ID4gwqAKPiA+IAo+ID4gCj4gPiAKPiA+IMKgCW15ICRyb290X3BhdGggPSBhYnNfcGF0
aCgkcm9vdCk7Cj4gPiAtCW15ICRzdGF0dXMgPSBgY2QgIiRyb290X3BhdGgiOyBlY2hvICIkbGlj
ZW5zZSIgfCBweXRob24gc2NyaXB0cy9zcGR4Y2hlY2sucHkgLWA7Cj4gPiArCW15ICRzdGF0dXMg
PSBgY2QgIiRyb290X3BhdGgiOyBlY2hvICIkbGljZW5zZSIgfCBweXRob24zIHNjcmlwdHMvc3Bk
eGNoZWNrLnB5IC1gOwo+ID4gwqAJcmV0dXJuIDAgaWYgKCRzdGF0dXMgbmUgIiIpOwo+ID4gwqAJ
cmV0dXJuIDE7Cj4gPiDCoH0KPiA+IGRpZmYgLS1naXQgYS9zY3JpcHRzL3NwZHhjaGVjay5weSBi
L3NjcmlwdHMvc3BkeGNoZWNrLnB5Cj4gPiBpbmRleCA2Mzc0ZTA3OGE1Li4wZjgxMzM3Mzk0IDEw
MDc1NQo+ID4gLS0tIGEvc2NyaXB0cy9zcGR4Y2hlY2sucHkKPiA+ICsrKyBiL3NjcmlwdHMvc3Bk
eGNoZWNrLnB5Cj4gPiBAQCAtMSw0ICsxLDQgQEAKPiA+IC0jIS91c3IvYmluL2VudiBweXRob24K
PiA+ICsjIS91c3IvYmluL2VudiBweXRob24zCj4gPiDCoCMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKPiA+IMKgIyBDb3B5cmlnaHQgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0
cm9uaXguZGU+Cj4gPiDCoAo+ID4gCj4gPiAKPiA+IAo+ID4gLS0gCj4gPiAyLjMxLjAKPiA+IAo+
IAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

