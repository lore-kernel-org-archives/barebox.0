Delivery-date: Wed, 22 Sep 2021 12:27:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzTH-0003Xv-GV
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 12:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSzTG-0004wp-Hg
	for lore@pengutronix.de; Wed, 22 Sep 2021 12:27:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BXezbJbQjnIGs+7BWJKgUpCj+gflvLfiXDUh2pXHe94=; b=Oj5gUNFvatJwRKUU6CvY6zjOxF
	40MInGkZkYBrARHupOtR+3lipZV+GfFXXBP6VjjKdigi6B20FIOy+axyudAjCH/Lw1H3AU1QAj4Zh
	EIMkIVKeifjMgPC4YLS+KPuOZD4A6FF+8K598G6KqqXXlQ2+Yf/PSnzObJFy2i3y+RuLo1pd9lUMO
	qE4DIKuF6OoEbdAbji5I/wsfe0ySYEJCY8hlq8lFuUQh4cHw6ePNJpyW+btnJF9t7fzXQ04eo8u8b
	8ILPQvxhxm4jruXhuSgEnSrI79H1fW3r3adkK/B7yR/+yQFBQgp6EBrdrSzQ7S+/vpWXEg2Uxmd9x
	ELAXnDDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSzRt-007nsX-MT; Wed, 22 Sep 2021 10:25:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSzRo-007nrK-8W
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 10:25:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSzRm-0004b9-QG; Wed, 22 Sep 2021 12:25:50 +0200
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
References: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f1e31a49-6828-2cd9-e29b-c9ad842688ba@pengutronix.de>
Date: Wed, 22 Sep 2021 12:25:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_032552_353325_E2B4EBA2 
X-CRM114-Status: GOOD (  19.66  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pinctrl: bcm2835: Probe driver earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTcuMDkuMjEgMTE6NDEsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEZyb206IEFobWFk
IEZhdG91bSA8YWhtYWRAYTNmLmF0Pgo+IAo+IGNvcmVkZXZpY2UgaXMgdG9vIGxhdGUgZm9yIHRo
ZSBjb25zb2xlIGRyaXZlciBhbmQgYWxsIG90aGVyIHBpbmN0cmwgZHJpdmVycwo+IGFyZSB1c2lu
ZyAiY29yZSIsIHRvby4KClNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8YWhtYWRAYTNmLmF0
PgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMgYi9k
cml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKPiBpbmRleCBkNjJjNzM1MTgxODkuLjM4
Yzc4OGM4Mjk0NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1
LmMKPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKPiBAQCAtMjA1LDQg
KzIwNSw0IEBAIHN0YXRpYyBzdHJ1Y3QgZHJpdmVyX2QgYmNtMjgzNV9ncGlvX2RyaXZlciA9IHsK
PiAgCS5vZl9jb21wYXRpYmxlID0gRFJWX09GX0NPTVBBVChiY20yODM1X2dwaW9fZHRfaWRzKSwK
PiAgfTsKPiAgCj4gLWNvcmVkZXZpY2VfcGxhdGZvcm1fZHJpdmVyKGJjbTI4MzVfZ3Bpb19kcml2
ZXIpOwo+ICtjb3JlX3BsYXRmb3JtX2RyaXZlcihiY20yODM1X2dwaW9fZHJpdmVyKTsKPiAKCgot
LSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAg
ICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwK
QW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01
MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

