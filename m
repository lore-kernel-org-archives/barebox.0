Delivery-date: Thu, 05 Aug 2021 17:24:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEK-0006HS-3D
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 17:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEJ-0003vo-7B
	for lore@pengutronix.de; Thu, 05 Aug 2021 17:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2/fcPXWevGp3D/K55cJIpejUKz2Yvsl8LZicFoH5Jw=; b=hInNcacGp/2IG3
	wTR/po5+BExLTY4Qiuj90Y7d1gO+j0F4nf0M5YSGfa/9Cvh9djX4P52u4wngepmi+TYRz5sAfz3U5
	1Px9zKNc2gWGDc58IQYzvsRYRcA2GAnqB740ebemYsn7LZniCISS/RHYVuts/Tlg/3920Sn0dwUDv
	C95OprAzKJgn0+6MudOhohrU1QXXqOSmtBpwwIXVskHL3M74M3V0TB6c6E/WljZvXvO6h/BLdlDTc
	W1PsezdDLgVlEb7T/Tglam5gANPpNqYkNRCCRqZenA5NDsxJb0admzZsAG6h3Pz9M01QG/uE6s3KL
	8zBUfyH0X6mvWeY1VXIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBfCf-00A2rJ-US; Thu, 05 Aug 2021 15:22:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBfCZ-00A2po-Tk
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 15:22:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCW-0003hs-DE; Thu, 05 Aug 2021 17:22:28 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCT-0003Hu-2e; Thu, 05 Aug 2021 17:22:25 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCT-0001RL-1Y; Thu, 05 Aug 2021 17:22:25 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  5 Aug 2021 17:22:17 +0200
Message-Id: <20210805152218.1901918-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=iKV5lA3d+bLQXmw92npyD73L1bfcMgUtvxWaTyFTeCE=;
 m=947vm6GeaQCQbN18FYZ1AqWCtxInfFqkNFQaARqXDyM=;
 p=Hngm4kEMFg3Z6uZvFxc3pJPcs1/aPFZDy9jISzAU/C4=;
 g=6ea117462b29eee9201b507468045345c8597fcd
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEMAgcACgkQwfwUeK3K7AmstQgAh5g
 pAO8e7zVSMLcKkIN5OGBMSPqJADCQ6N9k6sjiT5ki8vj4kMv48yyWoEZlHW2/7yPrZ9Nkp7X1hGFg
 nkdWLczSnz69UXRH3/LYkLIlKCxZ/pO0vJt11BK6Bvm8ovm93tB/9XsXW+/YEpN9swu3517UqHAOq
 VqQlN0lr0HNtmSITeItJNKE90Mc/+KgoXm5qt2nIWJ3l5I94k1g0hdq9U/B8G5v33b4NtQ2J7lnp6
 taq/sMtWwS5DxnrKmbCMlU9DO2+/8FLk0vWc6gDflbyMVcZuHQvJgPJ5oA7c2lQl+ejhxgx/6E1Ae
 Y3t8Fl5Y9PBYcli4hs9o1r8yLv3BN5A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_082232_026489_B21AF4B1 
X-CRM114-Status: GOOD (  12.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] arm/mvebu: sync barebox-arm-head.h to generic variant
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
X2JhcmVib3hfYXJtX2hlYWQoKTsKCmJhc2UtY29tbWl0OiA3MjQyNGZkMDU3ZDEzNWVjMGU0MTEz
OWZlNGNiNTc0MDQ3MWQzM2E1Ci0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==

