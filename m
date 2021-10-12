Delivery-date: Tue, 12 Oct 2021 10:40:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDL6-0004LD-Ac
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 10:40:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDL5-0006V7-H5
	for lore@pengutronix.de; Tue, 12 Oct 2021 10:40:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJh5mE+DXNm9JRk3KFV8e4P9WWUsPXVZLeORorNdN4g=; b=D9ZgEBF1qNb/YE
	L4PyjrA23LoAt61z49aCzimvA/eqtur7R/fRwFhI/Xm8udoNp/ZrK+zw+Cjy97g5BxmF0Bsb0/QdV
	BH0dsftIKY6o5wEMJgp7t3BgqC2bqaaWmyBD7OgH+pqxn7SslucUhOen6orNSHuwXDBSO5oKZWHuF
	q+v0WcY/AQ5xOZSg9I1SN0NUJOdOGOkvsqFBxpo0+9/dc/m4M60Gl6aDq/PVGJAozItYJqsEnUeLf
	FWylANEPQDK+E0/V6M3iMac2ElUs9+BgItQtYIg3SnWeYOed1RMA5Qb4fQTyHm4S9RRRhRKYEtCEL
	ScPPm1svWOD0QwNXI96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDJq-00C37k-Sr; Tue, 12 Oct 2021 08:39:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDJm-00C36O-Ud
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 08:39:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1maDJj-00069Q-VP; Tue, 12 Oct 2021 10:39:23 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1maDJj-0003g5-Lw; Tue, 12 Oct 2021 10:39:23 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Oct 2021 10:39:20 +0200
Message-Id: <20211012083920.14092-2-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012083920.14092-1-u.oelmann@pengutronix.de>
References: <20211012083920.14092-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_013927_007430_F4C08DBE 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] common: Kconfig: fix indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBjb21tb24vS2NvbmZpZyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9LY29uZmlnIGIvY29t
bW9uL0tjb25maWcKaW5kZXggZDhkMjA5MTdhYWI2Li5mNDEyMGIyMDgzZWUgMTAwNjQ0Ci0tLSBh
L2NvbW1vbi9LY29uZmlnCisrKyBiL2NvbW1vbi9LY29uZmlnCkBAIC05OTIsOSArOTkyLDkgQEAg
Y29uZmlnIEJUSFJFQUQKIAlzZWxlY3QgSEFTX1NDSEVECiAJZGVwZW5kcyBvbiBIQVNfQVJDSF9T
SkxKCiAJaGVscAotCSBiYXJlYm94IHRocmVhZHMgYXJlIGxpZ2h0d2VpZ2h0IGNvb3BlcmF0aXZl
IChncmVlbikgdGhyZWFkcyB0aGF0IGFyZQotCSBzY2hlZHVsZWQgd2l0aGluIGRlbGF5IGxvb3Bz
IGFuZCB0aGUgY29uc29sZSBpZGxlIHRvIGFzeW5jaHJvbm91c2x5Ci0JIGV4ZWN1dGUgYWN0aW9u
cywgbGlrZSBjaGVja2luZyBmb3IgbGluayB1cCBvciBmZWVkaW5nIGEgd2F0Y2hkb2cuCisJICBi
YXJlYm94IHRocmVhZHMgYXJlIGxpZ2h0d2VpZ2h0IGNvb3BlcmF0aXZlIChncmVlbikgdGhyZWFk
cyB0aGF0IGFyZQorCSAgc2NoZWR1bGVkIHdpdGhpbiBkZWxheSBsb29wcyBhbmQgdGhlIGNvbnNv
bGUgaWRsZSB0byBhc3luY2hyb25vdXNseQorCSAgZXhlY3V0ZSBhY3Rpb25zLCBsaWtlIGNoZWNr
aW5nIGZvciBsaW5rIHVwIG9yIGZlZWRpbmcgYSB3YXRjaGRvZy4KIAogY29uZmlnIFNUQVRFCiAJ
Ym9vbCAiZ2VuZXJpYyBzdGF0ZSBpbmZyYXN0cnVjdHVyZSIKLS0gCjIuMzAuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

