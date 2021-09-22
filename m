Delivery-date: Wed, 22 Sep 2021 12:20:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzMv-0003Kf-40
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 12:20:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzMu-0003nL-2W
	for lore@pengutronix.de; Wed, 22 Sep 2021 12:20:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiwQNuQc8+82kio7KPkOrFO55kLTwmXQ6v17ZjD8cd0=; b=H29LS5s1AxtS5p
	0nDyrqxXUA8QI/e/WkAQQD7Thfpvxp+5H3L5YxLN+H5gbF1ypWHWJEnyNisGfOupetGmVKtaCWShq
	n7IMa30LKmTx/t0pxmtrU7AymIToXCUhjE9OIqvtdNNNHG7i/ie++WY87S+l2HdfHXRQMwGv6v54M
	O9kdGitLe8POnCwgA7Jhg2XE6RBH086QvIOR5BphZgDr0lkNHMzgMbdKW42TCAv0c7vaRZXbY7c1c
	W5L1jcKQLMgtbY/1DpUbuBhDlvXs4VtKME10Kl84gp/7/fO9GdplxAOSd2MbBUOFBUMtJMXrclT7N
	cX2FMEdD4zVTZqHnLG9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSzLB-007ktG-Bj; Wed, 22 Sep 2021 10:19:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSzJV-007k8o-Ea
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 10:17:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mSzJQ-0003PF-Ow; Wed, 22 Sep 2021 12:17:12 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mSzJQ-0000dz-1D; Wed, 22 Sep 2021 12:17:12 +0200
Date: Wed, 22 Sep 2021 12:17:12 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20210922101711.jsssbde6pie743nt@pengutronix.de>
References: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
 <20210917094152.210494-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917094152.210494-2-u.kleine-koenig@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_031717_522949_CB390407 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] pinctrl: bcm2835: Add support for bcm2711
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBTZXAgMTcsIDIwMjEgYXQgMTE6NDE6NTJBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gRnJvbTogQWhtYWQgRmF0b3VtIDxhaG1hZEBhM2YuYXQ+Cj4gCj4gYmNtMjcx
MS1ycGktNC1iLmR0cyBsaXN0cyA1OCBncGlvIG5hbWVzIGFuZCB0aGUgbGludXggZHJpdmVyIGFs
c28gdXNlcwo+IDU4IEdQSU9zIGZvciBiY20yNzExLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpBaG1hZCdzIFMt
by1iIGlzIG1pc3Npbmcgb24gYm90aC4KCiAtIFJvbGFuZAoKPiAtLS0KPiAgZHJpdmVycy9waW5j
dHJsL3BpbmN0cmwtYmNtMjgzNS5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMgYi9kcml2ZXJzL3BpbmN0cmwv
cGluY3RybC1iY20yODM1LmMKPiBpbmRleCAzOGM3ODhjODI5NDUuLjY4NGVhZDJmOGU1ZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKPiArKysgYi9kcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKPiBAQCAtNTIsNiArNTIsMTAgQEAgc3RydWN0
IGJjbTI4MzVfZ3Bpb19jaGlwIHsKPiAgCXN0cnVjdCBwaW5jdHJsX2RldmljZSBwY3RsOwo+ICB9
Owo+ICAKPiArc3RydWN0IHBsYXRfZGF0YSB7Cj4gKwl1bnNpZ25lZCBuZ3Bpb3M7Cj4gK307Cj4g
Kwo+ICBzdGF0aWMgaW50IGJjbTI4MzVfc2V0X2Z1bmN0aW9uKHN0cnVjdCBncGlvX2NoaXAgKmNo
aXAsIHVuc2lnbmVkIGdwaW8sIGludCBmdW5jdGlvbikKPiAgewo+ICAJc3RydWN0IGJjbTI4MzVf
Z3Bpb19jaGlwICpiY21ncGlvID0gY29udGFpbmVyX29mKGNoaXAsIHN0cnVjdCBiY20yODM1X2dw
aW9fY2hpcCwgY2hpcCk7Cj4gQEAgLTE0OSwxMCArMTUzLDEzIEBAIHN0YXRpYyBzdHJ1Y3QgcGlu
Y3RybF9vcHMgYmNtMjgzNV9waW5jdHJsX29wcyA9IHsKPiAgCj4gIHN0YXRpYyBpbnQgYmNtMjgz
NV9ncGlvX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+ICB7Cj4gKwljb25zdCBzdHJ1Y3Qg
cGxhdF9kYXRhICpwbGF0X2RhdGE7Cj4gIAlzdHJ1Y3QgcmVzb3VyY2UgKmlvcmVzOwo+ICAJc3Ry
dWN0IGJjbTI4MzVfZ3Bpb19jaGlwICpiY21ncGlvOwo+ICAJaW50IHJldDsKPiAgCj4gKwlwbGF0
X2RhdGEgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiArCj4gIAliY21ncGlvID0geHph
bGxvYyhzaXplb2YoKmJjbWdwaW8pKTsKPiAgCWlvcmVzID0gZGV2X3JlcXVlc3RfbWVtX3Jlc291
cmNlKGRldiwgMCk7Cj4gIAlpZiAoSVNfRVJSKGlvcmVzKSkKPiBAQCAtMTYwLDcgKzE2Nyw4IEBA
IHN0YXRpYyBpbnQgYmNtMjgzNV9ncGlvX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+ICAJ
YmNtZ3Bpby0+YmFzZSA9IElPTUVNKGlvcmVzLT5zdGFydCk7Cj4gIAliY21ncGlvLT5jaGlwLm9w
cyA9ICZiY20yODM1X2dwaW9fb3BzOwo+ICAJYmNtZ3Bpby0+Y2hpcC5iYXNlID0gMDsKPiAtCWJj
bWdwaW8tPmNoaXAubmdwaW8gPSA1NDsKPiArCWJjbWdwaW8tPmNoaXAubmdwaW8gPSBwbGF0X2Rh
dGEtPm5ncGlvczsKPiArCj4gIAliY21ncGlvLT5jaGlwLmRldiA9IGRldjsKPiAgCWJjbWdwaW8t
PnBjdGwub3BzID0gJmJjbTI4MzVfcGluY3RybF9vcHM7Cj4gIAliY21ncGlvLT5wY3RsLmRldiA9
IGRldjsKPiBAQCAtMTkxLDkgKzE5OSwyMSBAQCBlcnI6Cj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4g
IAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRfZGF0YSBiY20yODM1X3BsYXRfZGF0YSA9IHsK
PiArCS5uZ3Bpb3MgPSA1NCwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdF9k
YXRhIGJjbTI3MTFfcGxhdF9kYXRhID0gewo+ICsJLm5ncGlvcyA9IDU4LAo+ICt9Owo+ICsKPiAg
c3RhdGljIF9fbWF5YmVfdW51c2VkIHN0cnVjdCBvZl9kZXZpY2VfaWQgYmNtMjgzNV9ncGlvX2R0
X2lkc1tdID0gewo+ICAJewo+ICAJCS5jb21wYXRpYmxlID0gImJyY20sYmNtMjgzNS1ncGlvIiwK
PiArCQkuZGF0YSA9ICZiY20yODM1X3BsYXRfZGF0YSwKPiArCX0sIHsKPiArCQkuY29tcGF0aWJs
ZSA9ICJicmNtLGJjbTI3MTEtZ3BpbyIsCj4gKwkJLmRhdGEgPSAmYmNtMjcxMV9wbGF0X2RhdGEs
Cj4gIAl9LCB7Cj4gIAkJLyogc2VudGluZWwgKi8KPiAgCX0KPiAtLSAKPiAyLjMwLjIKPiAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGJhcmVi
b3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgotLSAKUm9sYW5kIEhp
ZWJlciwgUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICB8IHIuaGllYmVyQHBlbmd1dHJvbml4LmRl
ICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgfCBodHRwczov
L3d3dy5wZW5ndXRyb25peC5kZS8gfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAg
ICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVz
aGVpbSwgSFJBIDI2ODYgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

