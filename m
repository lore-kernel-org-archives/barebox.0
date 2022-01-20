Delivery-date: Thu, 20 Jan 2022 12:49:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAVw7-007bsK-Tz
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 12:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAVw6-0005Jd-LJ
	for lore@pengutronix.de; Thu, 20 Jan 2022 12:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KucnJQwQBAg2l8Ua/VaWsqcY/iZrAmfVVDUrK3jqtcs=; b=jyGeGvyVZMXa3B
	7jQEvqSwZoBnrv1GB6DHajmIKRU92dXlXEZB7v3ad0SZqjkGg3/OpcstTxmd+5WtkMfDiDzVeVr1f
	/qreUMDqjxsIbdRzZxYVFf4rX9OElOoWVr2OeoKCZYmY0eVusTVd3LRJqryoThQKkGFCTjCdSVPZH
	CexZOQh01IobnPWx3aFid8S6SUBRTUFktA1wR6uAshDIP4Lsbmk3S7xRV+y+yEcO1wPYwiK7YQhiE
	+j7HaKwj7MZAr6v6n2iA/NkOA10z2hViG2C4WpaY5WhX7tPvopjn+NKh/ZZm1/Y3zFV0PR9ptr0Nh
	NQLtH0vmJCi4d2jTjK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAVug-00B7Oe-Ed; Thu, 20 Jan 2022 11:47:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAVub-00B7O0-V0
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 11:47:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1nAVuZ-000565-N4; Thu, 20 Jan 2022 12:47:27 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <uol@pengutronix.de>)
 id 1nAVuZ-00ApSr-76; Thu, 20 Jan 2022 12:47:27 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Jan 2022 12:47:24 +0100
Message-Id: <20220120114725.2580392-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_034730_031235_F2A16243 
X-CRM114-Status: GOOD (  10.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Documentation: reboot-mode: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBEb2N1bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0IHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlci9yZWJvb3QtbW9kZS5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXIvcmVi
b290LW1vZGUucnN0CmluZGV4IDY4MTQzOGQ5NDQ5OC4uMjRkZWFlNzg3MjdlIDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0CisrKyBiL0RvY3VtZW50YXRpb24v
dXNlci9yZWJvb3QtbW9kZS5yc3QKQEAgLTI5LDkgKzI5LDkgQEAgVXNlciBBUEkKIERldmljZXMg
cmVnaXN0ZXJlZCB3aXRoIHRoZSByZWJvb3QgbW9kZSBBUEkgZ2FpbiB0d28gcGFyYW1ldGVyczoK
IAogIC0gYGAkZGV2X29mX3JlYm9vdF9tb2RlLnByZXZgYCAocmVhZC1vbmx5KTogVGhlIHJlYm9v
dCBtb2RlIHRoYXQgd2FzCi0gICBzZXQgcHJldmlvdXMgdG8gYmFyZWJveCBzdGFydHVwCisgICBz
ZXQgcHJldmlvdXNseSB0byBiYXJlYm94IHN0YXJ0dXAuCiAgLSBgYCRkZXZfb2ZfcmVib290X21v
ZGUubmV4dGBgOiBUaGUgbmV4dCByZWJvb3QgbW9kZSwgZm9yIHdoZW4gdGhlCi0gICBzeXN0ZW0g
aXMgcmVzZXQKKyAgIHN5c3RlbSBpcyByZXNldC4KIAogVGhlIHJlYm9vdCBtb2RlIGRyaXZlciBj
b3JlIHVzZSB0aGUgYWxpYXMgbmFtZSBpZiBhdmFpbGFibGUgdG8gbmFtZQogdGhlIGRldmljZS4g
QnkgY29udmVudGlvbiwgdGhpcyBzaG91bGQgZW5kIHdpdGggYGAucmVib290X21vZGVgYCwgZS5n
Ljo6Ci0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

