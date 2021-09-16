Delivery-date: Thu, 16 Sep 2021 11:38:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnqD-0006fM-1d
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:38:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnqC-0007Zb-3h
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:38:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jWMAkn6YMaD2azd5lxVLuSMeMDYZ4eLbsie1LOG99tU=; b=YC4DnF7BqMfYJu
	CsCdXf2AfmgW6NqIMNCDGEDyaPFRfg+RJhsGKtCBqGseGR7CxdJcz6XltzXA0Z9yUlXDq9NiCfpm8
	ECacy6calZZNOug6wEyq908aLAMa6FY1B7lbFYG6NrG8djTz1gaiYbFJqj8LLgxVh8OUUZz6Z7czK
	hqlDk9VEwYfoi01SphFJhO5r46/bBAh6HJHymocWM69nFm0odxZP7XGbhBSa+3ygq9PIICZvLb5IW
	UxKRelG/MFejp5IZkAbq5cJER5kqWX0n4OxY/07t2c45EmrvB0Pwf+9HHMJHeKsGf1/V55cnvWYub
	ADeES3Rd1c3qaFiJYa9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnp0-00AjFF-Hh; Thu, 16 Sep 2021 09:36:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnov-00AjDd-JG
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:36:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnou-0007DZ-Cu; Thu, 16 Sep 2021 11:36:40 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnot-0003ga-Rp; Thu, 16 Sep 2021 11:36:39 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnot-0007zO-Qp; Thu, 16 Sep 2021 11:36:39 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Sep 2021 11:36:26 +0200
Message-Id: <20210916093627.173566-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=REjCfxAIQGs15CPeSwb0Z38VDzfEeJeVyr7t0MihbM0=;
 m=M3+nxlqUyiagjtA4tEcVMQiBngkmFpZfIxpJE3P6D2M=;
 p=vzIsmluK8iOd9Fc27FpMJqUzZfspHJv4sqRMf5J4x8g=;
 g=1b74280dc208350cab5766ded74b561a76ed601b
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFDEBQACgkQwfwUeK3K7AkNmQf7B6h
 ++aKfoFmczoAdnQkjRLc2HbXKRzELRUwNCaGNDceIWd2cfxpK7QttndqxqYraW5b416a9l1AmYGIM
 s8ZzsGz+VCJ8H/YnfniTPFuwNyXCsApmg6WZE5YJPkVtw6LBG3xrjJcGqfclZ4ZexX+l0AeU4lX1K
 KYugtdOcw7hW2xgHlr+9Rjl09YesWNjB/xnO++pdFqf0ExarQPfmoHEKIWclWu3ASQNU0R8L8Ovaz
 6cdK8d/b7Ke6SGk8KUJKmUWTLhOcFLgamNdLOpxXmAX+G+lMXZB4TLBBvJPkkQnVrJVxqURP3x/lZ
 5QQjqAVBB3KwSnj4huWGWbWHFLi3OeQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023641_677580_88D4C7E9 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci-bcm2835: Don't block infinitely while waiting for a
 command completion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SW5zdGVhZCBhYm9ydCB3aXRoIGEgdGltZW91dCBlcnJvci4gVGhpcyBwcmV2ZW50cyBnZXR0aW5n
IGEgaHVuZyBiYXJlYm94CndoZW4gYSBjb21tYW5kIGRvZXNuJ3QgY29tcGxldGUuCgpTaWduZWQt
b2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRl
PgotLS0KIGRyaXZlcnMvbWNpL21jaS1iY20yODM1LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21jaS9tY2ktYmNtMjgzNS5j
IGIvZHJpdmVycy9tY2kvbWNpLWJjbTI4MzUuYwppbmRleCAwNDUwZjg5OWM2MGEuLjEyZjdjYjZl
YTM5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tY2kvbWNpLWJjbTI4MzUuYworKysgYi9kcml2ZXJz
L21jaS9tY2ktYmNtMjgzNS5jCkBAIC04NywxMyArODcsMTcgQEAgc3RhdGljIHUzMiBiY20yODM1
X3NkaGNpX3JlYWQzMihzdHJ1Y3Qgc2RoY2kgKnNkaGNpLCBpbnQgcmVnKQogc3RhdGljIHUzMiBi
Y20yODM1X21jaV93YWl0X2NvbW1hbmRfZG9uZShzdHJ1Y3QgYmNtMjgzNV9tY2lfaG9zdCAqaG9z
dCkKIHsKIAl1MzIgaW50ZXJydXB0ID0gMDsKKwl1aW50NjRfdCBzdGFydDsKIAorCXN0YXJ0ID0g
Z2V0X3RpbWVfbnMoKTsKIAl3aGlsZSAodHJ1ZSkgewogCQlpbnRlcnJ1cHQgPSBzZGhjaV9yZWFk
MzIoJmhvc3QtPnNkaGNpLCBTREhDSV9JTlRfU1RBVFVTKTsKIAkJaWYgKGludGVycnVwdCAmIFNE
SENJX0lOVF9JTkRFWCkKIAkJCXJldHVybiAtRVBFUk07CiAJCWlmIChpbnRlcnJ1cHQgJiBTREhD
SV9JTlRfQ01EX0NPTVBMRVRFKQogCQkJYnJlYWs7CisJCWlmIChpc190aW1lb3V0KHN0YXJ0LCBT
RUNPTkQpKQorCQkJcmV0dXJuIC1FVElNRURPVVQ7CiAJfQogCXJldHVybiAwOwogfQoKYmFzZS1j
b21taXQ6IGM5NDVkMjRlYzVkYWQ2OTEwYjAyNjk3ZTRkMWRmMDlmODlkMmI5NTAKLS0gCjIuMzAu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

