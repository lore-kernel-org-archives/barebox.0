Delivery-date: Fri, 30 Jul 2021 09:02:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m9MWz-0003yg-WE
	for lore@lore.pengutronix.de; Fri, 30 Jul 2021 09:02:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m9MWy-0005m1-Vf
	for lore@pengutronix.de; Fri, 30 Jul 2021 09:02:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG6Ah3F9D0mFfSM453wIYJg70X9mQZl7haCeZR/Ejek=; b=jg2xAjKMZXVgKE
	UjeSUNEpyANoe6y1iwYPJsZmPbAmbl/k/KolKbrloSdOB+euNH0aqjKkJyPbnIAXdtRVGWxDpjDAE
	zYkdd44/0Wg4h2Q12o0u3muWq6OtTbqwhOyhvbsLzaCAitRsDrVZn4Zh2WS94rIdPdeR/L8KX8fx1
	XU8HJ52MJvNZfhjJYqBCTZhvMiUU05vSsDR4MozBRTPDKSFdqXZX0o140qop19pPY0QTqeG3z1tZA
	SkcReRKiEIa3NEviESzg3v4ltWVK7xrfTfu9NvdU8Xe4jJGexm7y2suCeQxgvsqb4Cyq28JUoqiGM
	pWpn1r/lZFFWpx9+3MMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9MVD-007Z0g-UD; Fri, 30 Jul 2021 07:00:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9MV8-007Yof-Ai
 for barebox@lists.infradead.org; Fri, 30 Jul 2021 07:00:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m9MV1-0005LE-FQ; Fri, 30 Jul 2021 09:00:03 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m9MV0-0004lG-Vi; Fri, 30 Jul 2021 09:00:02 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m9MV0-0005Tc-Uw; Fri, 30 Jul 2021 09:00:02 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Jul 2021 09:00:01 +0200
Message-Id: <20210730070001.1441742-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210518091644.2519581-1-u.kleine-koenig@pengutronix.de>
References: <20210518091644.2519581-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_000010_415219_309F132C 
X-CRM114-Status: GOOD (  12.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] arm/mvebu: sync barebox-arm-head.h to generic variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RW4gcGFzc2FudCB0aGlzIGFkZHMgc3VwcG9ydCBmb3IgUEJMX0JSRUFLLiBXaGlsZSB0aGVyZSBp
cyBubyA2NCBiaXQKc3VwcG9ydCBhdmFpbGFibGUgZm9yIG12ZWJ1LCBrZWVwaW5nIHRoZSBkaWZm
ZXJlbmNlIGJldHdlZW4KYXJjaC9hcm0vbWFjaC1tdmVidS9pbmNsdWRlL21hY2gvYmFyZWJveC1h
cm0taGVhZC5oIGFuZAphcmNoL2FybS9pbmNsdWRlL2FzbS9iYXJlYm94LWFybS1oZWFkLmggbWlu
aW1hbCBpcyBhIGdvb2QgdGhpbmcuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KQ2hhbmdlcyBpbiB0aGlzIHYyOiBP
bmx5IHNvbWUgd2hpdGVzcGFjZSBjaGFuZ2VzIHRvIHJlZHVjZSB0aGUgZGlmZgpiZXR3ZWVuIHRo
ZSB0d28gaGVhZGVycyBldmVuIG1vcmUuCi0tLQogLi4uL2luY2x1ZGUvbWFjaC9iYXJlYm94LWFy
bS1oZWFkLmggICAgICAgICAgIHwgMjUgKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDI0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9tYWNoLW12ZWJ1L2luY2x1ZGUvbWFjaC9iYXJlYm94LWFybS1oZWFkLmggYi9hcmNoL2FybS9t
YWNoLW12ZWJ1L2luY2x1ZGUvbWFjaC9iYXJlYm94LWFybS1oZWFkLmgKaW5kZXggMzAzNWY0MGRk
ZjNiLi43MjNlMmFiNGM4YjUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtbXZlYnUvaW5jbHVk
ZS9tYWNoL2JhcmVib3gtYXJtLWhlYWQuaAorKysgYi9hcmNoL2FybS9tYWNoLW12ZWJ1L2luY2x1
ZGUvbWFjaC9iYXJlYm94LWFybS1oZWFkLmgKQEAgLTQsNiArNCw3IEBACiBzdGF0aWMgaW5saW5l
IHZvaWQgX19iYXJlYm94X2FybV9oZWFkKHZvaWQpCiB7CiAJX19hc21fXyBfX3ZvbGF0aWxlX18g
KAorI2lmZGVmIENPTkZJR19DUFVfMzIKICNpZmRlZiBDT05GSUdfVEhVTUIyX0JBUkVCT1gKIAkJ
Ii5hcm1cbiIKIAkJImFkciByOSwgMWYgKyAxXG4iCkBAIC0yMywxMSArMjQsMjMgQEAgc3RhdGlj
IGlubGluZSB2b2lkIF9fYmFyZWJveF9hcm1faGVhZCh2b2lkKQogCQkiMTogYiAxYlxuIgogCQki
MTogYiAxYlxuIgogCQkiMTogYiAxYlxuIgorI2VuZGlmCisjZWxzZQorCQkiYiAyZlxuIgorCQki
bm9wXG4iCisJCSJub3BcbiIKKwkJIm5vcFxuIgorCQkibm9wXG4iCisJCSJub3BcbiIKICNlbmRp
ZgogCQkiLmFzY2l6IFwiYmFyZWJveFwiXG4iCisjaWZkZWYgQ09ORklHX0NQVV8zMgogCQkiLndv
cmQgX3RleHRcbiIJCQkJLyogdGV4dCBiYXNlLiBJZiBjb3BpZWQgdGhlcmUsCiAJCQkJCQkJICog
YmFyZWJveCBjYW4gc2tpcCByZWxvY2F0aW9uCiAJCQkJCQkJICovCisjZWxzZQorCQkiLndvcmQg
MHhmZmZmZmZmZlxuIgorI2VuZGlmCiAJCSIud29yZCBfYmFyZWJveF9pbWFnZV9zaXplXG4iCQkv
KiBpbWFnZSBzaXplIHRvIGNvcHkgKi8KIAogCQkvKgpAQCAtNDIsOSArNTUsMTkgQEAgc3RhdGlj
IGlubGluZSB2b2lkIF9fYmFyZWJveF9hcm1faGVhZCh2b2lkKQogCQkiLndvcmQgMHg1NTU1NTU1
NVxuIgogCQkiLmVuZHJcbiIKIAkJIjI6XG4iCisjaWZkZWYgQ09ORklHX1BCTF9CUkVBSworI2lm
ZGVmIENPTkZJR19DUFVfVjgKKwkJImJyayAjMTdcbiIKKyNlbHNlCisJCSJia3B0ICMxN1xuIgor
I2VuZGlmCisJCSJub3BcbiIKKyNlbHNlCisJCSJub3BcbiIKKwkJIm5vcFxuIgorI2VuZGlmCiAJ
KTsKIH0KLQogc3RhdGljIGlubGluZSB2b2lkIGJhcmVib3hfYXJtX2hlYWQodm9pZCkKIHsKIAlf
X2JhcmVib3hfYXJtX2hlYWQoKTsKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK

