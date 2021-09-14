Delivery-date: Tue, 14 Sep 2021 13:24:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ6Y4-00077J-0Y
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 13:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ6Y3-0008Mn-5X
	for lore@pengutronix.de; Tue, 14 Sep 2021 13:24:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXuQ+2SLm57WQs73Qin7PPUOp/Pe+Ta8X89tOWk5mBk=; b=fWhGDGIA01a5Yo
	KE6SVYbEouaCdJT6YT0FWhvtrSZufr5L9c2dKtsCqRuo7vi9aPaqSfcJZstkDThHZwwTHGprbvUjf
	2qY+pA0zaZRbb9spCBDdoDhLP7e/F+7S62FKw2bC3SQBRZ7ZzzplOBZSb8kLukLWemPvN+8Xa90bX
	aIHeG1WFrkEJIv28x/iuOI5sUNgQ2i/Y1kAGSPBGsZNZawmPxqRXtmu+sGAancUhV3BcH5MKixGq6
	lMJIv7uiEt+XcXoLKKL8lLQnU/0Ea0oBv0gVgPsDZh5mnoUuCRKZDiYDVluUuhUvLHZldARVViSWA
	UF3aJc6FAtrg6Cq+FkxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ6WI-005Nt7-TO; Tue, 14 Sep 2021 11:22:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ6WE-005NsV-1c
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 11:22:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1mQ6WA-0008Hy-43; Tue, 14 Sep 2021 13:22:26 +0200
Message-ID: <72f9df3414bc9c20a2ff5681cf5bd4d775bee8b8.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, 
 barebox@lists.infradead.org
Date: Tue, 14 Sep 2021 13:22:25 +0200
In-Reply-To: <20210914090017.39627-1-u.kleine-koenig@pengutronix.de>
References: <20210914090017.39627-1-u.kleine-koenig@pengutronix.de>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_042230_131527_E8B5F70A 
X-CRM114-Status: GOOD (  17.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: Improve error message for non-existent vmmc regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVHVlLCAyMDIxLTA5LTE0IGF0IDExOjAwICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBUaGVyZSBhcmUgdGhyZWUgaW1wcm92ZW1lbnRzOiBhKSBVc2UgYSBhbHJlYWR5IGluaXRp
YWxpemVkIGRldmljZSBhcyBmaXJzdAo+IHBhcmFtZXRlciB0byBkZXZfZXJyKCkgYW5kIGIpIGlu
ZGljYXRlIHRoYXQgdGhlIGVycm9yIHdpbGwgYmUgaWdub3JlZCwgYW5kCj4gYykgZG93bmdyYWRl
IHRvIGEgd2FybmluZy4KPiAKPiBUaGlzIGNoYW5nZXMgdGhlIGVycm9yIG1lc3NhZ2UgZnJvbQo+
IAo+IAlFUlJPUjogPE5VTEw+OiBGYWlsZWQgdG8gZ2V0ICd2bW1jJyByZWd1bGF0b3IuCj4gCj4g
dG8KPiAKPiAJV0FSTklORzogYmNtMjgzNV9tY2kgZmUzNDAwMDAubW1jQDdlMzQwMDAwLm9mOiBG
YWlsZWQgdG8gZ2V0ICd2bW1jJyByZWd1bGF0b3IgKGlnbm9yZWQpLgo+IAo+IG9uIGEgUmFzcGJl
cnJ5IFBpIDQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgZHJpdmVycy9tY2kvbWNpLWNvcmUuYyB8
IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMgYi9kcml2ZXJzL21jaS9tY2kt
Y29yZS5jCj4gaW5kZXggOTJhNzNjOGYxZGZlLi44MmUyZjgyZjUzNzcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tY2kvbWNpLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKPiBA
QCAtMTkyMCw3ICsxOTIwLDcgQEAgaW50IG1jaV9yZWdpc3RlcihzdHJ1Y3QgbWNpX2hvc3QgKmhv
c3QpCj4gIAo+ICAJaG9zdC0+c3VwcGx5ID0gcmVndWxhdG9yX2dldChod19kZXYsICJ2bW1jIik7
Cj4gIAlpZiAoSVNfRVJSKGhvc3QtPnN1cHBseSkpIHsKPiAtCQlkZXZfZXJyKCZtY2ktPmRldiwg
IkZhaWxlZCB0byBnZXQgJ3ZtbWMnIHJlZ3VsYXRvci5cbiIpOwo+ICsJCWRldl93YXJuKGh3X2Rl
diwgIkZhaWxlZCB0byBnZXQgJ3ZtbWMnIHJlZ3VsYXRvciAoaWdub3JlZCkuXG4iKTsKPiAgCQlo
b3N0LT5zdXBwbHkgPSBOVUxMOwo+ICAJfQo+ICAKClJldmlld2VkLWJ5OiBSb3V2ZW4gQ3plcndp
bnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRlPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK

