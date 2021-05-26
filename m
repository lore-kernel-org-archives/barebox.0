Delivery-date: Wed, 26 May 2021 13:49:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lls2u-0007br-9u
	for lore@lore.pengutronix.de; Wed, 26 May 2021 13:49:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lls2s-0002qE-T7
	for lore@pengutronix.de; Wed, 26 May 2021 13:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hr6uXDQ1vleV0Jn7Bg6DsYxrVPOhZFslGjimTQzePBA=; b=LDthMOpMJbOWSV
	6souEV8RDiy0vyCCmzFttq7Y81OE+9BSv4euTRTWBdsCRtPaFasUJ/UjyiJHQGtS+ryF3QIq8grmh
	GUskVQt3EJnuPH4dyypIn9Fr9rN+ke8wnOsdj/2sqbnLnZdFv7Pu0j1rPdMtOLkql9vo3BNpRM7HY
	yT48gK5dh8jW7khMGOYu+L31eZLy8DzYWK17w3auxXFMJWfFR8GxTugnIjh+SO7pEkOqj9wZOsGLs
	vIA68RClWcaIgzxCur/e2NCGOcSc5mpNH9VD9klodfrtX9NfaH/dREP286rXeHxGsBEX9+m9qHkG1
	1VoLUBoP9iYnKPhG0gLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lls1W-00DgeU-O0; Wed, 26 May 2021 11:48:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llq5t-00CyiY-EE
 for barebox@lists.infradead.org; Wed, 26 May 2021 09:44:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1llq5q-0004Yt-CW; Wed, 26 May 2021 11:44:50 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1llq5p-0006Kb-TD; Wed, 26 May 2021 11:44:49 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 26 May 2021 11:44:48 +0200
Message-Id: <20210526094448.977342-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_024453_514819_4ACE7705 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: nfs: Decrease NFS timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gYSBjdXN0b21lciBzaXRlIHdlJ3JlIGV4cGVyaWVuY2UgYSBiaXQgb3ZlciAxJSBVRFAgcGFj
a2V0IGxvc3MuIFdoZW4Kd2lyZXNoYXJraW5nIGFuIE5GUyB0cmFuc2ZlciBvZiBhIGtlcm5lbCBp
bWFnZSAod2l0aCB0aGUgZ29hbCB0byBib290CnZpYSBORlMpIEkgc2F3IDY0IG9mIDI1NTUgUlBD
IGNhbGxzIHN0YXlpbmcgdW5hbnN3ZXJlZC4gV2l0aCB0aGUgY3VycmVudAp0aW1lb3V0IHNldHRp
bmcgZWFjaCBvZiB0aGVtIGludHJvZHVjZXMgYSBkZWxheSBvZiAyIHNlY29uZHMgYW5kIHRoZQp3
aG9sZSB0cmFuc2ZlciB0YWtlcyAxMzdzLiBXaXRoIHRoZSB0aW1lb3V0IHJlZHVjZWQgdG8gMC4x
cyB0aGUgdHJhbnNmZXIKdGltZSBpcyBub3Qgb3B0aW1hbCAoZ29pbmcgZG93biB0byBhcHByb3gg
MTUgc2Vjb25kcykgYnV0IGF0IGxlYXN0IGl0CmJlY29tZXMgYmVhcmFibGUuCgpTaWduZWQtb2Zm
LWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgot
LS0KIGZzL25mcy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZnMvbmZzLmMgYi9mcy9uZnMuYwppbmRleCAxMTMwNjMy
ZWIzZWIuLjFmZjgxYTVlZTFiZiAxMDA2NDQKLS0tIGEvZnMvbmZzLmMKKysrIGIvZnMvbmZzLmMK
QEAgLTExOSw3ICsxMTksNyBAQCBzdHJ1Y3QgcnBjX3JlcGx5IHsKIAl1aW50MzJfdCBkYXRhWzBd
OwogfTsKIAotI2RlZmluZSBORlNfVElNRU9VVAkoMiAqIFNFQ09ORCkKKyNkZWZpbmUgTkZTX1RJ
TUVPVVQJKDEwMCAqIE1TRUNPTkQpCiAjZGVmaW5lIE5GU19NQVhfUkVTRU5ECTUKIAogc3RydWN0
IG5mc19maCB7Ci0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

