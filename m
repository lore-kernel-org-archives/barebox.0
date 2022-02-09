Delivery-date: Wed, 09 Feb 2022 09:54:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHijh-00ATL1-6m
	for lore@lore.pengutronix.de; Wed, 09 Feb 2022 09:54:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHijf-0002cr-3u
	for lore@pengutronix.de; Wed, 09 Feb 2022 09:54:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsHQZ3mW0iLG23THE2I3JlqfI9WoAqRha/s63N/bHZA=; b=gKPA6j27QrruPv
	1xeq9M8bIAPewY0AtxCezI+aRkVipKA12F+S8skxqYd/6I/y1W6CSdUUvOmqaov3e6R2AjiVU4oSd
	050x5yWGdMeO11ko235Z2C/jhYOBRzxK6C5DtLyBCHAgdWDBzZHvQxhof4kX9S5RDko2AZOvjM75y
	kWkAokiKZJurs2m5JoIKEkEBRxPEx48HgpJqn+hxh9o61G51XDaKKJU3cFHsg7asBjBJGF3TRD6BP
	gJ+DQsegSCBO94BSHtMoWQaAsGmz/KIxhZWHrZqe681sKzPdZbeUXpXZDXJs2XlySbgs+IJYrF9Io
	qdfRb8iMyK7OkqoSM1iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHihy-00Gj75-1G; Wed, 09 Feb 2022 08:52:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHihI-00Gitp-SI
 for barebox@lists.infradead.org; Wed, 09 Feb 2022 08:51:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHihH-000282-8t; Wed, 09 Feb 2022 09:51:31 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHihH-00FT7p-0x; Wed, 09 Feb 2022 09:51:30 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHihF-00D0Ke-Iw; Wed, 09 Feb 2022 09:51:29 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Wed,  9 Feb 2022 09:51:25 +0100
Message-Id: <20220209085125.177442-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1428; h=from:subject;
 bh=af972Ha10JvW7dBiFzw1fVk7wp9oQT9cFSJ3PkVakyk=;
 b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiA4CE/MnZbpLD0cenGbjAcuwsDFwhGn3nNXd9fBVd
 5dsiPMiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYgOAhAAKCRDB/BR4rcrsCZZJB/
 9PIKRPMGO/dtNzqA4fGhIZLGyxxXUxnuu6Pf/WUmPhbZUjx1O/rtRUWdoHzASHklAKC6b4S0nausdr
 o/YMqBR9CT7SwFBi2aXr34Nv7hivNohSjnMnBNFVAWlKgTO0qtt5cEVSPu35ibkTws8mxli1wLbgYa
 +xvyoh8z4gjs2jFoFEONe2buYTO5eKlCRoYDFuXx6l3D/cswOEe6UdKPZHpkqk5f/fGAM5w4MJmhJw
 vpZDsiTVdR1Gvum1cS+bSXoRr+FrT4imQPF/qhypod0GD5EH29PRkA+TvmGFEKAgx2nKRUKDsLOdMU
 Va+FwGvjGNpSsdAvWNDBlqwOWzx156
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_005132_961538_B4063C9E 
X-CRM114-Status: GOOD (  10.45  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] common: let MACHINE_ID select SHA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U0hBMSBpcyBhIHN5bWJvbCB0aGF0IGNhbm5vdCBiZSBlbmFibGVkIG1hbnVhbGx5IGFuZCBhbGwg
b3RoZXIgc3ltYm9scwpuZWVkaW5nIGl0LCBzZWxlY3QgaXQ6CgokIGdpdCBncmVwIC1CMyAtRSAn
KGRlcGVuZHMgb258c2VsZWN0KSBTSEExXD4nIEhFQUQKSEVBRDpjb21tb24vS2NvbmZpZy1jb25m
aWcgTUFDSElORV9JRApIRUFEOmNvbW1vbi9LY29uZmlnLSAgICBib29sICJjb21wdXRlIHVuaXF1
ZSBtYWNoaW5lLWlkIgpIRUFEOmNvbW1vbi9LY29uZmlnLSAgICBkZXBlbmRzIG9uIEZMRVhJQkxF
X0JPT1RBUkdTCkhFQUQ6Y29tbW9uL0tjb25maWc6ICAgIGRlcGVuZHMgb24gU0hBMQotLQpIRUFE
OmNyeXB0by9LY29uZmlnLQpIRUFEOmNyeXB0by9LY29uZmlnLWNvbmZpZyBESUdFU1RfU0hBMV9H
RU5FUklDCkhFQUQ6Y3J5cHRvL0tjb25maWctICAgIGJvb2wgIlNIQTEiCkhFQUQ6Y3J5cHRvL0tj
b25maWc6ICAgIHNlbGVjdCBTSEExCi0tCkhFQUQ6Y3J5cHRvL0tjb25maWctY29uZmlnIERJR0VT
VF9TSEExX0FSTQpIRUFEOmNyeXB0by9LY29uZmlnLSAgICB0cmlzdGF0ZSAiU0hBMSBkaWdlc3Qg
YWxnb3JpdGhtIChBUk0tYXNtKSIKSEVBRDpjcnlwdG8vS2NvbmZpZy0gICAgZGVwZW5kcyBvbiBB
Uk0KSEVBRDpjcnlwdG8vS2NvbmZpZzogICAgc2VsZWN0IFNIQTEKCkZpeGVzOiBhYWRhODRlNzJl
MTUgKCJjb21tb246IG1hY2hpbmVfaWQ6IGludHJvZHVjZSBtYWNoaW5lIGlkIGdlbmVyYXRpb24i
KQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1
dHJvbml4LmRlPgotLS0KIGNvbW1vbi9LY29uZmlnIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL0tjb25maWcg
Yi9jb21tb24vS2NvbmZpZwppbmRleCBlNTQwY2JhN2ViYWEuLjc5ZjZhZmQ4ZGU4NSAxMDA2NDQK
LS0tIGEvY29tbW9uL0tjb25maWcKKysrIGIvY29tbW9uL0tjb25maWcKQEAgLTEwNDIsNyArMTA0
Miw3IEBAIGNvbmZpZyBSRVNFVF9TT1VSQ0UKIGNvbmZpZyBNQUNISU5FX0lECiAJYm9vbCAiY29t
cHV0ZSB1bmlxdWUgbWFjaGluZS1pZCIKIAlkZXBlbmRzIG9uIEZMRVhJQkxFX0JPT1RBUkdTCi0J
ZGVwZW5kcyBvbiBTSEExCisJc2VsZWN0IFNIQTEKIAloZWxwCiAJICBDb21wdXRlIGEgcGVyc2lz
dGVudCBtYWNoaW5lLXNwZWNpZmljIGlkIGFuZCBzdG9yZSBpdCB0byAkZ2xvYmFsLm1hY2hpbmVf
aWQuCiAJICBUaGUgaWQgaXMgYSBoYXNoIG9mIGRldmljZS1zcGVjaWZpYyBpbmZvcm1hdGlvbiBh
ZGRlZCB2aWEKCmJhc2UtY29tbWl0OiBmMTA3NzY0MDkzN2Y2ZTgxMzk0NjMxMzZlZGZmMjE1MTYz
NDY1NTk5Ci0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

