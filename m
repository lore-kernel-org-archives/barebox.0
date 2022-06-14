Delivery-date: Tue, 14 Jun 2022 11:53:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o13FD-0025Xd-Gh
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:53:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o13FD-0002pF-Bk
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:53:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fUlhU5UZR/UysxQZn5vSF1hNLDJIpnuXMf52uC61tY=; b=uuUHxuz7vyq5gq
	lsS15sDpwaIM7jAEMAEi2t7dE/0FpZEfeF2oXJgBTaq3GRNdiPbNgPFiYXORkknO3OuZCySLQ5PD7
	w1QQF8bKSOEZw+80nOYl5bx/of9HuhCCL51jRd17JKrbpJuP35heXe/PYYr2+2rs9w1NK8lhqYDQO
	QUKcgJzpmi53u2tYRANSxxDTzIYdvuD1gOy4gOgywawwKlNv0EiPowgtV0v2cd8JENuo4aELlyUJ/
	Qg+GAfMlb+nv+ESnQmEtqoqU+WzsHEcgf4JIOJQZaN4PvYNhzOGskBePNw0puu/yaR1YIGpRqhrVc
	5wdZgOewlfqAxFyWnTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o13Du-008uT7-Ar; Tue, 14 Jun 2022 09:52:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o13Dp-008uSC-86
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 09:52:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o13Dm-0002dy-Cr; Tue, 14 Jun 2022 11:52:26 +0200
Message-ID: <4f2eca20-3afa-d521-fa02-55070140f759@pengutronix.de>
Date: Tue, 14 Jun 2022 11:52:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
References: <20220611212842.6413-1-danek.brat@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220611212842.6413-1-danek.brat@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_025229_325699_D805CC8B 
X-CRM114-Status: GOOD (  20.02  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: add bcm283x i2c host controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gRGFuaWVsLAoKVGhhbmtzIGZvciB5b3VyIHBhdGNoLgoKT24gMTEuMDYuMjIgMjM6Mjgs
IERhbmllbCBCcsOhdCB3cm90ZToKPiBBZGQgYSBkcml2ZXIgdG8gc3VwcG9ydCB0aGUgaTJjIGhv
c3QgY29udHJvbGxlciAoQlNDKQo+IGZvdW5kIG9uIGJjbTI4M3ggZmFtaWx5IG9zIFNvQ3MuCgpz
L29zL29mLwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQnLDoXQgPGRhbmVrLmJyYXRAZ21h
aWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9jb25maWdzL3JwaV92OGFfZGVmY29uZmlnIHwgICAz
ICstCgpZb3UgY2FuIGVuYWJsZSBpdCBmb3IgcnBpX2RlZmNvbmZpZyB0b28KCj4gIGRyaXZlcnMv
aTJjL2J1c3Nlcy9LY29uZmlnICAgICAgICAgfCAgIDQgKwo+ICBkcml2ZXJzL2kyYy9idXNzZXMv
TWFrZWZpbGUgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1iY20yODN4
LmMgICB8IDM3MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA0IGZpbGVzIGNoYW5n
ZWQsIDM3OSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWJjbTI4M3guYwo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9jb25maWdzL3JwaV92OGFfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9ycGlfdjhh
X2RlZmNvbmZpZwo+IGluZGV4IDY4Y2QyNDM4Yi4uZTIxODMxMWE3IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2NvbmZpZ3MvcnBpX3Y4YV9kZWZjb25maWcKPiArKysgYi9hcmNoL2FybS9jb25maWdz
L3JwaV92OGFfZGVmY29uZmlnCj4gQEAgLTgxLDYgKzgxLDggQEAgQ09ORklHX1NFUklBTF9BTUJB
X1BMMDExPXkKPiAgQ09ORklHX0RSSVZFUl9TRVJJQUxfTlMxNjU1MD15Cj4gIENPTkZJR19ORVRf
VVNCPXkKPiAgQ09ORklHX05FVF9VU0JfU01TQzk1WFg9eQo+ICtDT05GSUdfSTJDPXkKPiArQ09O
RklHX0kyQ19CQ00yODNYPXkKPiAgQ09ORklHX1VTQl9IT1NUPXkKPiAgQ09ORklHX1VTQl9EV0My
X0hPU1Q9eQo+ICBDT05GSUdfVVNCX0RXQzJfR0FER0VUPXkKPiBAQCAtMTA4LDQgKzExMCwzIEBA
IENPTkZJR19GU19GQVQ9eQo+ICBDT05GSUdfRlNfRkFUX1dSSVRFPXkKPiAgQ09ORklHX0ZTX0ZB
VF9MRk49eQo+ICBDT05GSUdfWkxJQj15Cj4gLUNPTkZJR19MWk9fREVDT01QUkVTUz15Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9LY29uZmlnIGIvZHJpdmVycy9pMmMvYnVzc2Vz
L0tjb25maWcKPiBpbmRleCA1OGY4NjU2MDYuLjQyOWY1YmE0MiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2kyYy9idXNzZXMvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9LY29uZmln
Cj4gQEAgLTE3LDYgKzE3LDEwIEBAIGNvbmZpZyBJMkNfQVQ5MQo+ICAJYm9vbCAiQVQ5MSBJMkMg
TWFzdGVyIGRyaXZlciIKPiAgCWRlcGVuZHMgb24gQVJDSF9BVDkxCj4gIAo+ICtjb25maWcgSTJD
X0JDTTI4M1gKPiArCWJvb2wgIkJDTTI4M1ggSTJDIE1hc3RlciBkcml2ZXIiCj4gKwlkZXBlbmRz
IG9uIEFSQ0hfQkNNMjgzWAoKfHwgQ09NUElMRV9URVNUCgo+ICsJCQlpZiAocmV0KSB7Cj4gKwkJ
CQlkZXZfZXJyKGRldiwgInRpbWVvdXQ6IDEwYml0IGFkZHIgIgo+ICsJCQkJCSAgICAgInJlYWQg
aW5pdGlsaXphdGlvblxuIik7CgpEb24ndCBsaW5lLWJyZWFrIHN0cmluZ3MuIEl0IG5lZWRsZXNz
bHkgY29tcGxpY2F0ZXMgc2VhcmNoaW5nIGZvciBtZXNzYWdlcwppbiB0aGUgY29kZS4gQWxzbyB5
b3UgZG9uJ3QgbmVlZCB0byBhZGhlcmUgcmVsaWdpb3VzbHkgdG8gODAgY2hhcmFjdGVycy4KVXAg
dG8gMTAwIGNoYXJhY3RlcnMgaXMgdXN1YWxseSBvay4gSWYgeW91IGdvIGJleW9uZCB0aGF0LCBy
ZWV2YWx1YXRlCmlmIGl0IHdvdWxkbid0IGJlIG1vcmUgcmVhZGFibGUgdG8gcmVkdWNlIGluZGVu
dGF0aW9uLgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

