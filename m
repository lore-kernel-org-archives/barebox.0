Delivery-date: Tue, 04 May 2021 11:37:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrV3-0004z5-Ji
	for lore@lore.pengutronix.de; Tue, 04 May 2021 11:37:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrV2-0002W0-R8
	for lore@pengutronix.de; Tue, 04 May 2021 11:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1dbzkVtZQwJMUA/tp+ijCN2BVmBtm+HX4tZycd81QZc=; b=DeeI+l+J7cZdxdlc6d6SWlZzh
	jE9jqh0ZMsFkeo5AofRssgLR0kROvpVmdk+WZLnmWjXTLV2ohQdcnzEcycrkCI4d1vHR76IkWZwWd
	u95tEyg3aPIMGqmG6al5quitpBvTwvxR6wvVPeK14b75lSe87np7qzlDFCZHYKJFcKJl7LmKpxmpV
	UOhpdj3Bojurh1dV/PZOrkbhE7tIl5ObWx+z1iPpPUE9X+Xgwly13IgyttKH3I62fKgT+1IDnXWpP
	JrCtQBVSuZXsbjBv+f1hqRVgyyqHpn7fooj6MAsl22xcQhEtIsyNJqGArVhQwz9zlbD2gSk5v+yiA
	Q19N3UWKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldrU6-00FtXD-Lv; Tue, 04 May 2021 09:36:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldrU0-00FtX2-P8
 for barebox@desiato.infradead.org; Tue, 04 May 2021 09:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=/wHHP+wpu+0wLkA2iPYO5xQ0jV0lCthVjm7+xKaY6B8=; b=fIb5hfI/LlfD5PYUbjaNIrxlM+
 5XLT9XvPxfH6OjuuPh9IOUPTItm7IvNaz+zlN1OKXaMp87V5QovZZJIr+woDH/IMcEGFOt9FaBZBs
 Q/OQ7jJRb27dcY6sjG2l2pq/U1pX/pByEqSYfOwuExwlZXNmcXNcEIKNHyTGK7tcLD/6gHitjLo/Z
 OqmN6mccWUvbh3b30urj/xF2eB0ig5D1iF9s97ascWUGF4SufbOnlrKnjUiZW2Wc5HnhshH25gJvW
 0wFZxrhvXuE0/XgAO9RqdTrznCvGkfG1xifmJFQev1JRmOT3MlqsYzoF4skBbW68aEELZx/cF5unD
 SmCp5Xig==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldrTy-003rW2-CN
 for barebox@lists.infradead.org; Tue, 04 May 2021 09:36:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1ldrTu-0002IQ-Vq; Tue, 04 May 2021 11:36:43 +0200
Message-ID: <00c790b9dd842a8b6ce6f0bd71869b45baba7e05.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 04 May 2021 11:36:42 +0200
In-Reply-To: <20210504092654.5219-1-h.assmann@pengutronix.de>
References: <20210504092654.5219-1-h.assmann@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_023646_439974_E3E48AEE 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgSG9sZ2VyLAoKT24gVHVlLCAyMDIxLTA1LTA0IGF0IDExOjI2ICswMjAwLCBIb2xnZXIgQXNz
bWFubiB3cm90ZToKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL3dlYmFzdG8tY2Ni
djIvbG93bGV2ZWwuYyBiL2FyY2gvYXJtL2JvYXJkcy93ZWJhc3RvLWNjYnYyL2xvd2xldmVsLmMK
PiBpbmRleCA4NTI5ZWEzNzM1Li5kM2M5ZmE3M2Y5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jv
YXJkcy93ZWJhc3RvLWNjYnYyL2xvd2xldmVsLmMKPiArKysgYi9hcmNoL2FybS9ib2FyZHMvd2Vi
YXN0by1jY2J2Mi9sb3dsZXZlbC5jCj4gCj4gLXN0YXRpYyB2b2lkIG5vaW5saW5lIHN0YXJ0X2Nj
YnYyKHUzMiByMCkKPiArc3RhdGljIHZvaWQgbm9pbmxpbmUgc3RhcnRfY2NidjIodTMyIHIwLCB1
bnNpZ25lZCBsb25nIG1lbXNpemUpCj4gwqB7Cj4gwqAJaW50IHRlZV9zaXplOwo+IMKgCXZvaWQg
KnRlZTsKPiBAQCAtNDgsNyArNDgsNyBAQCBzdGF0aWMgdm9pZCBub2lubGluZSBzdGFydF9jY2J2
Mih1MzIgcjApCj4gwqAJICovCj4gwqAJaWYoSVNfRU5BQkxFRChDT05GSUdfRklSTVdBUkVfQ0NC
VjJfT1BURUUpCj4gwqAJICAgJiYgIShyMCA+IE1YNl9NTURDX1AwX0JBU0VfQUREUgo+IC0JICAg
ICAgICAmJiAgcjAgPCBNWDZfTU1EQ19QMF9CQVNFX0FERFIgKyBTWl8yNTZNKSkgewo+ICsJICAg
ICAgICAmJiAgcjAgPCBNWDZfTU1EQ19QMF9CQVNFX0FERFIgKyBtZW1zaXplKSkgewo+IMKgCQln
ZXRfYnVpbHRpbl9maXJtd2FyZShjY2J2Ml9vcHRlZV9iaW4sICZ0ZWUsICZ0ZWVfc2l6ZSk7CgpV
bmZvcnR1bmF0ZWx5LCBPUC1URUUgYnVpbGQgZm9yIHRoZSBvbGQgMjU2TUIgdmFyaWFudCB3b24n
dCB3b3JrIGZvcgp0aGUgbmV3IDUxMk1CIHZhcmlhbnQuIERlcGVuZGluZyBvbiB0aGUgT1AtVEVF
IE1lbW9yeSBzaXplIHdlIHNob3VsZAphZGQgYSBuZXcgRklSTVdBUkUgS0NPTkZJRyB2YXJpYWJs
ZSBhbmQgcmV0cmlldmUgdGhlIGNvcnJlY3QgZmlybXdhcmUKcGVyIGJvYXJkLCBpLmUuCgppZiAo
bWVtc2l6ZSA9PSBTWl8yNTZNKSB7CglnZXRfYnVpbHRpbl9maXJtd2FyZShjY2J2Ml9vcHRlZV9i
aW4sICZ0ZWUsICZ0ZWVfc2l6ZSkKfSBlbHNlIHsKCWdldF9idWlsdGluX2Zpcm13YXJlKGNjYnYy
X29wdGVlXzUxMm1fYmluLCAmdGVlLCAmdGVlX3NpemUpCgp3aXRoIGEgbmV3IEZJUk1XQVJFX0ND
QlYyX09QVEVFXzUxMk0gc3ltYm9sLgoKVEJILCBJIGRvbid0IGxpa2UgdGhpcywgc2luY2Ugb3Vy
IGZpcm13YXJlIEtDb25maWcgd2lsbCBleHBhbmQKbmVlZGxlc3NseSBmb3IgdGhlIHZhcmlhbnRz
LiBIb3dldmVyIGN1cnJlbnRseSBPUC1URUUgaXMgbm90IHNldHVwIHRvCmJlIGFibGUgdG8gYm9v
dCBiYXNlZCBvbiBkaWZmZXJlbnQgbWVtb3J5IHNpemVz4oCmCgpSZWdhcmRzLApSb3V2ZW4gQ3pl
cndpbnNraQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

