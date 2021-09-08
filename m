Delivery-date: Wed, 08 Sep 2021 20:38:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2Sr-0007xH-1Y
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 20:38:29 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2Sq-0002Kb-1e
	for lore@pengutronix.de; Wed, 08 Sep 2021 20:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmC7MWKkk2l0XfiLSv6iakm5WVPoWyO17iAENc1P0+U=; b=sk2vN3bmskssVZ
	HUbsWtjTnlGXAU/Ariy4NYDXL1vejWjTYqU5pexrmi1aqANFisD9AN0g60/nZBpNxQc8luhxok/jR
	cwrPCZHzUqWJuD1Y6atJDoimCDEUv4L5+qiI+r8CDo+TWlikZpbMzBYyUP//EZpbkYd7IBsk+5J+x
	Fy6JB0sLs0d355w6K/cuPt5P4SrDDd4MEcDRglAAVHpelyAtVE3YtuRC9dP+R+IM1mWil8F52RBQo
	2B2g7rCN63SoaW/8Ld7qAnvWSZ9PAtpZFBp0lgeyDq+ZybHvxpYAl0I6mgxZsqqWeMhxXnROilRUx
	l1rCnVsD/B5lTn5TVjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO2R6-007Pbm-3f; Wed, 08 Sep 2021 18:36:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO2R0-007Pab-C9
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 18:36:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mO2Qw-0002Gf-Au; Wed, 08 Sep 2021 20:36:30 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mO2Qv-0000E6-PM; Wed, 08 Sep 2021 20:36:29 +0200
Date: Wed, 8 Sep 2021 20:36:29 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Daniel =?utf-8?B?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210908183629.at6ib34yrkbcykvi@pengutronix.de>
References: <20210907072915.18451-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210907072915.18451-1-danek.brat@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_113634_479620_6AE2E707 
X-CRM114-Status: GOOD (  27.24  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: Fix broken bcm2835 fb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVHVlLCBTZXAgMDcsIDIwMjEgYXQgMDk6Mjk6MTVBTSArMDIwMCwgRGFuaWVsIEJyw6F0IHdy
b3RlOgo+IFRoZSBiY20yODM1IGZyYW1lYnVmZmVyIGRyaXZlciB3YXMgYnJva2VuLCBiZWNhdXNl
IHRoZSBhZGRyZXNzIG9mIHZpZGVvCj4gYnVmZmVyIGFsbG9jYXRlZCBmb3IgdXMgYnkgdGhlIEdQ
VSBhbmQgcmV0dXJuZWQgdGhyb3VnaCBtYWlsYm94IHdhcwo+IHVzZWQgd2l0aG91dCBjb252ZXJ0
aW5nIGl0IGJhY2sgdG8gQVJNIGFkZHJlc3Mgc3BhY2UuIFRoYXQgdW5jb252ZXJ0ZWQKPiBhZGRy
ZXNzIHdhcyBhbHNvIGluIHRoZSByYW5nZSBvZiBwZXJpcGhlcmFsIGFkZHJlc3Nlcywgd2hpY2gg
Y2F1c2VkCj4gb3RoZXIgaXNzdWVzIGxhdGVyIG9uIGR1ZSB0byBpdCBiZWluZyBmaWxsZWQgd2l0
aCBnYXJiYWdlIGRhdGEuCj4gVGhlIG9mZnNldCBieSB3aGljaCB0byBjb252ZXJ0IHRoZSBhZGRy
ZXNzIGJhY2sgY2FuIHZhcnkgYnkgZGV2aWNlLAo+IHNvIHRoZSB2YWx1ZSBpcyByZWFkIGZyb20g
ZGV2aWNldHJlZSAnZG1hLXJhbmdlcycgZm9yIHNvbWV3aGF0IHBvcnRhYmxlCj4gb3BlcmF0aW9u
Lgo+IFRoaXMgZml4IHdhcyB0ZXN0ZWQgb24gUmFzcGJlcnJ5IFBJIEIrIGFuZCBSYXNwYmVycnkg
UEkgM0IrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBCcsOhdCA8ZGFuZWsuYnJhdEBnbWFp
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdmlkZW8vYmNtMjgzNS5jIHwgMjEgKysrKysrKysrKysr
KysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2JjbTI4MzUuYyBiL2RyaXZlcnMv
dmlkZW8vYmNtMjgzNS5jCj4gaW5kZXggZDgwOGJjNWM5Li4yZWJlOTEyZDAgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy92aWRlby9iY20yODM1LmMKPiArKysgYi9kcml2ZXJzL3ZpZGVvL2JjbTI4MzUu
Ywo+IEBAIC0xNCw2ICsxNCw3IEBACj4gICNpbmNsdWRlIDxtYWxsb2MuaD4KPiAgI2luY2x1ZGUg
PHhmdW5jcy5oPgo+ICAKPiArI2luY2x1ZGUgPG9mX2FkZHJlc3MuaD4KPiAgI2luY2x1ZGUgPG1h
Y2gvbWJveC5oPgo+ICAKPiAgc3RydWN0IGJjbTI4MzVmYl9pbmZvIHsKPiBAQCAtNTgsOSArNTks
MjQgQEAgc3RhdGljIGludCBiY20yODM1ZmJfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4g
IAlCQ00yODM1X01CT1hfU1RBQ0tfQUxJR04oc3RydWN0IG1zZ19mYl9xdWVyeSwgbXNnX3F1ZXJ5
KTsKPiAgCUJDTTI4MzVfTUJPWF9TVEFDS19BTElHTihzdHJ1Y3QgbXNnX2ZiX3NldHVwLCBtc2df
c2V0dXApOwo+ICAJc3RydWN0IGJjbTI4MzVmYl9pbmZvICppbmZvOwo+ICsJc3RydWN0IGRldmlj
ZV9ub2RlICpzb2M7Cj4gIAl1MzIgdywgaDsKPiArCXU2NCBkbWFfYWRkciwgY3B1X2FkZHIsIF9y
ZWdpb25fc2l6ZTsKPiArCXBoeXNfYWRkcl90IGJ1ZmZlcl9hZGRyOwo+ICAJaW50IHJldDsKPiAg
Cj4gKwlzb2MgPSBvZl9maW5kX25vZGVfYnlfcGF0aCgiL3NvYyIpOwo+ICsJaWYgKCFzb2MpIHsK
PiArCQlkZXZfZXJyKGRldiwgImNvdWxkIG5vdCBmaW5kIHJlcXVpcmVkIG9mIG5vZGUgL3NvY1xu
Iik7CgpOaXQ6IEknZCB1c2UgIk9GIiBpbiBjYXBpdGFscyB0byBlYXNlIGh1bWFuIHBhcnNpbmcg
YW5kIHByZXZlbnQKY29uZnVzaW5nIHdpdGggdGhlIEVuZ2xpc2ggcHJlcG9zaXRpb24uCgo+ICsJ
CXJldHVybiAtRU5PREVWOwo+ICsJfQo+ICsKPiArCXJldCA9IG9mX2RtYV9nZXRfcmFuZ2Uoc29j
LCAmZG1hX2FkZHIsICZjcHVfYWRkciwgJl9yZWdpb25fc2l6ZSk7Cj4gKwlpZiAocmV0KSB7Cj4g
KwkJZGV2X2VycihkZXYsICJvZiBub2RlIC9zb2MgaGFzIG5vIGRtYS1yYW5nZXNcbiIpOwoKSGVy
ZSB0b28uCgogLSBSb2xhbmQKCj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gIAlCQ00yODM1
X01CT1hfSU5JVF9IRFIobXNnX3F1ZXJ5KTsKPiAgCUJDTTI4MzVfTUJPWF9JTklUX1RBR19OT19S
RVEoJm1zZ19xdWVyeS0+cGh5c2ljYWxfd19oLAo+ICAJCQkJCUdFVF9QSFlTSUNBTF9XX0gpOwo+
IEBAIC05OSwxMCArMTE1LDExIEBAIHN0YXRpYyBpbnQgYmNtMjgzNWZiX3Byb2JlKHN0cnVjdCBk
ZXZpY2VfZCAqZGV2KQo+ICAJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+ICsJYnVmZmVyX2FkZHIg
PSAobXNnX3NldHVwLT5hbGxvY2F0ZV9idWZmZXIuYm9keS5yZXNwLmZiX2FkZHJlc3MgJiB+ZG1h
X2FkZHIpICsgY3B1X2FkZHI7Cj4gKwo+ICAJaW5mbyA9IHh6YWxsb2Moc2l6ZW9mICppbmZvKTsK
PiAgCWluZm8tPmZiaS5mYm9wcyA9ICZiY20yODM1ZmJfb3BzOwo+IC0JaW5mby0+ZmJpLnNjcmVl
bl9iYXNlID0KPiAtCSAgICh2b2lkICopbXNnX3NldHVwLT5hbGxvY2F0ZV9idWZmZXIuYm9keS5y
ZXNwLmZiX2FkZHJlc3M7Cj4gKwlpbmZvLT5mYmkuc2NyZWVuX2Jhc2UgPSBwaHlzX3RvX3ZpcnQo
YnVmZmVyX2FkZHIpOwo+ICAJaW5mby0+ZmJpLnhyZXMgPSBtc2dfc2V0dXAtPnBoeXNpY2FsX3df
aC5ib2R5LnJlc3Aud2lkdGg7Cj4gIAlpbmZvLT5mYmkueXJlcyA9IG1zZ19zZXR1cC0+cGh5c2lj
YWxfd19oLmJvZHkucmVzcC5oZWlnaHQ7Cj4gIAlpbmZvLT5mYmkuYml0c19wZXJfcGl4ZWwgPSAx
NjsKPiAtLSAKPiAyLjE3LjEKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94CgotLSAKUm9sYW5kIEhpZWJlciwgUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICB8
IHIuaGllYmVyQHBlbmd1dHJvbml4LmRlICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAozMTEzNyBIaWxk
ZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

