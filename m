Delivery-date: Fri, 13 Aug 2021 16:06:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEXpC-0004Il-8Z
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 16:06:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEXp7-0003e1-HC
	for lore@pengutronix.de; Fri, 13 Aug 2021 16:06:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WAWC2yJmggGfdAp85sYBLUvMSW5vV+JQsIlUE8dgTOY=; b=w1wLRIKgJfP48w
	5JIzjYmu7WPV5i8rUMRBOvg63/7ZxQm1dN/Kj8YjpDYyXx/13G4ONwy5i/UHz+t/ZNBrjGyI3Bwsc
	HIVF7FZI/W7c+eVI8/5eOFbsGr1tN2IccyFXEmq23EXgtH5fvbGKYEEBkmN93NWwE8fwtKFOmy40H
	iGOZDIfQnz3sU72xy2eis9pR7iMpobmS5a2VWk/IR+7Fc3nwYZPXXkhUvTAb4KkLBfi7Ndqt00Wrt
	iT7gKtFIMNUlqai0exwFlVtEREwPwaKMmfN/OHUcEw/J8tp4q1bKepFbR+HktipVpHW3UZ18WlhTM
	/IiJ3DiuVMDd19YvrGVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEXn2-00CkMR-RB; Fri, 13 Aug 2021 14:04:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEXmy-00CkLL-1u
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 14:04:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEXmu-0003Iq-3Z; Fri, 13 Aug 2021 16:03:56 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEXms-0006OT-J2; Fri, 13 Aug 2021 16:03:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEXms-00032T-I3; Fri, 13 Aug 2021 16:03:54 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Aug 2021 16:03:52 +0200
Message-Id: <20210813140352.13233-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=kpHCq6MDVt/G3ZJ+sadiaIqagPkJloOkgkl4ZaUHubc=;
 m=PY2QmD3kzLJpPzlT7o2WfepF2RSh6d1mWZ9rCD7A6MU=;
 p=o7qEyszRYJDJ9AqdbGNAqc35umoM29ANmRSPS0Np5LM=;
 g=24783eee9330a1fc6dbc2de2b2382e284edce630
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEWe7oACgkQwfwUeK3K7AnG0ggAoYV
 o4P+Di1iPPsAnDP/HqBE91XfaPyQ/p+W5XZIjQcU9kFzDhsYqJ94+gFdxxCVIHaANWJQ/xLuYpXvv
 tVudMZRE61z4FPJ1XJ7d9CiGnmTitVZoSgqU6+yxA66aX3bkzUqFfZsPxEfluskXlMfIz/mi5zEIm
 JVpwdMJAcmN4dtJibuXguE1LkqeaQCGpR+hm1YK4rfYy9pCXFsPWHKg53VApA1vJ6XrFfdDNOs8ig
 wxrHGnOqMbue8E7T9EzFz+oTEFpAsGsXa1XQFEPrZ8io3JP0/x5OnyZDyT+8YDX+20CxM9u90bvnK
 cShzjV4u4uW2nKVdhdVIQOELgr2NPPg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_070400_172797_290918D1 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] mci: imx-esdhc-pbl: Fix two typos in a comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL21jaS9pbXgtZXNkaGMtcGJsLmMgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tY2kvaW14LWVzZGhjLXBibC5jIGIvZHJpdmVycy9tY2kvaW14LWVzZGhjLXBibC5j
CmluZGV4IGQ3MTM2ZjU0OTIyYy4uYjI1MzY3M2RmZTFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL21j
aS9pbXgtZXNkaGMtcGJsLmMKKysrIGIvZHJpdmVycy9tY2kvaW14LWVzZGhjLXBibC5jCkBAIC0x
NDMsOCArMTQzLDggQEAgZXNkaGNfbG9hZF9pbWFnZShzdHJ1Y3QgZnNsX2VzZGhjX2hvc3QgKmhv
c3QsIHB0cmRpZmZfdCBhZGRyZXNzLAogCQkgKgogCQkgKiAgICAgYnVmICsgb2ZzID0gZW50cnkK
IAkJICoKLQkJICogc29sdmluZyB0aGUgYWJvdmUgZm9yICdidWYnIGd2aWVzIHVzIHRoZQotCQkg
KiBhZGp1c3RlbWVudCB0aGF0IG5lZWRzIHRvIGJlIG1hZGU6CisJCSAqIHNvbHZpbmcgdGhlIGFi
b3ZlIGZvciAnYnVmJyBnaXZlcyB1cyB0aGUKKwkJICogYWRqdXN0bWVudCB0aGF0IG5lZWRzIHRv
IGJlIG1hZGU6CiAJCSAqCiAJCSAqICAgICBidWYgPSBlbnRyeSAtIG9mcwogCQkgKgoKYmFzZS1j
b21taXQ6IDcyNDI0ZmQwNTdkMTM1ZWMwZTQxMTM5ZmU0Y2I1NzQwNDcxZDMzYTUKLS0gCjIuMzAu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

