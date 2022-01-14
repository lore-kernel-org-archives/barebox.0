Delivery-date: Fri, 14 Jan 2022 17:54:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqK-002DHo-3f
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqI-0004RM-8P
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tidsr7IYLwNb2wAPLpZbwZFUXFFe1aULRZQ/rgIQhpA=; b=2LtoMDsiYzmt6u
	zeDpBiHWnkxZlP6TPSAC6ewzTScc/5Z+JuDDdPj9rfvHpewPMPM0rzYLZQwm6qsUwamhdKgd7q0W0
	pytUwcSdjBhoI1wqAoU6G5WftTIQeVGpoH/s40iNsCh+xmcquHJT8ouw9ZPGS5osNUYSLzUvq6cIu
	ZQcRdKoTNNSwWa1CeXUIKBegZ5RQLhu+asY7BPvPxGDvIIy06D+B7H7YtxF8RQQDrOHjE0qjbbmLA
	T6EpOz1k9S2mQDRfv3yF3u2NBUx5qrNOWQ0MyQNISqYlNPgXlbTid1NRxO38lFgPYRv5cKwqWLG0Z
	0MxJqk3Y9n/dLOajxK6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Poi-009qMp-FB; Fri, 14 Jan 2022 16:52:44 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qHF-0e
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id AAFE61C74C3
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179145;
 bh=teKU03pstDYhD9XjxhKlH/Vwy7Lkn6YrUfgL468aCdo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=DE5fUVQNwzyDgT+QI66ctmtM4vbc8C11wo1S2v+NwHaVQE1vXnvCfL+ePZJie7xU/
 sibYVAGrD5ra6HtJ3cBkP2pP8caTgb83eb6R7trQ2LmAHA83tQRBUGgyezm7lreThj
 9gefVU6xJnmjuEz3lz1itrMhsgNGwmRnmronbMYM=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id A727A1C74B1; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx403.security-mail.net (Postfix) with ESMTPS id 47F7E1C74A1; Fri, 14 Jan
 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 2620427E034A; Fri, 14 Jan 2022
 17:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 10AC927E03AE; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 6BnqWqu-DU6u; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id E6F7527E03FA; Fri, 14 Jan 2022
 17:52:23 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <26b3.61e1aa48.46f9f.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 10AC927E03AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179144;
 bh=5q2Z3MvQZ/jIqE91fjv06GV0q/oTXYEwICFw9vHXsiI=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=oX0GD75t35Lz6fK+5wUg3CHIYvUEIsytb9+z62p48r+YfOk3inNjFlvHsNNGi/Z1q
 HRiaCWVIohbw+JA5AnxG9nHZ8UEW9TxgP1zHlEj4rQmQPF0vFoX+2ZYG0bB/sMrgXO
 hqIaG2MlaOk5oRNwCTmQpajK4Lxb1Xo1qyXkMQWY=
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>, Louis Morhet
 <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann Sionneau
 <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>, Jules Maselbas
 <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:07 +0100
Message-ID: <20220114165208.9980-9-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_320258_DEB350EA 
X-CRM114-Status: GOOD (  17.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/13] nvmem: add kvx otp non volatile regbank support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQ2xlbWVudCBMZWdlciA8Y2xlZ2VyQGthbHJheS5ldT4KCkJhY2twb3J0IExpbnV4IGRy
aXZlciB0byBiYXJlYm94IHRvIGFjY2VzcyBudm1lbS4KClNpZ25lZC1vZmYtYnk6IENsZW1lbnQg
TGVnZXIgPGNsZWdlckBrYWxyYXkuZXU+ClNpZ25lZC1vZmYtYnk6IEp1bGVzIE1hc2VsYmFzIDxq
bWFzZWxiYXNAa2FscmF5LmV1PgotLS0KIGRyaXZlcnMvbnZtZW0vS2NvbmZpZyAgICAgIHwgIDcg
KysrCiBkcml2ZXJzL252bWVtL01ha2VmaWxlICAgICB8ICAzICsrCiBkcml2ZXJzL252bWVtL2t2
eC1vdHAtbnYuYyB8IDk5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAz
IGZpbGVzIGNoYW5nZWQsIDEwOSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9udm1lbS9rdngtb3RwLW52LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL0tjb25m
aWcgYi9kcml2ZXJzL252bWVtL0tjb25maWcKaW5kZXggMDczMjAxMDFiOC4uMzYyNGNjNjRiNiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9udm1lbS9LY29uZmlnCisrKyBiL2RyaXZlcnMvbnZtZW0vS2Nv
bmZpZwpAQCAtNjYsNiArNjYsMTMgQEAgY29uZmlnIFNUTTMyX0JTRUMKIAkgIFRoaXMgYWRkcyBz
dXBwb3J0IGZvciB0aGUgU1RNMzIgT1RQIGNvbnRyb2xsZXIuIFJlYWRzIGFuZCB3cml0ZXMKIAkg
IHRvIHdpbGwgZ28gdG8gdGhlIHNoYWRvdyBSQU0sIG5vdCB0aGUgT1RQIGZ1c2VzIHRoZW1zZWx2
ZXJzLgogCitjb25maWcgS1ZYX09UUF9OVgorCXRyaXN0YXRlICJrYWxyYXkgS1ZYIE9UUCBOb24g
dm9sYXRpbGUgcmVncyBTdXBwb3J0IgorCWRlcGVuZHMgb24gS1ZYCisJaGVscAorCSAgVGhpcyBp
cyBhIHNpbXBsZSBkcml2ZXIgdG8gZHVtcCBzcGVjaWZpZWQgdmFsdWVzIG9mIEtWWCBPVFAgbm9u
CisJICB2b2xhdGlsZSByZWdzLgorCiBjb25maWcgU1RBUkZJVkVfT1RQCiAJdHJpc3RhdGUgIlN0
YXJmaXZlIE9UUCBTdXBwcm90IgogCWRlcGVuZHMgb24gU09DX1NUQVJGSVZFCmRpZmYgLS1naXQg
YS9kcml2ZXJzL252bWVtL01ha2VmaWxlIGIvZHJpdmVycy9udm1lbS9NYWtlZmlsZQppbmRleCBj
ZDk3MGFhZWExLi44MTYyOWRkYjI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWVtL01ha2VmaWxl
CisrKyBiL2RyaXZlcnMvbnZtZW0vTWFrZWZpbGUKQEAgLTI0LDQgKzI0LDcgQEAgbnZtZW1fZWVw
cm9tXzkzeHg0Ni15CQk6PSBlZXByb21fOTN4eDQ2Lm8KIG9iai0kKENPTkZJR19TVE0zMl9CU0VD
KQkrPSBudm1lbV9ic2VjLm8KIG52bWVtX2JzZWMteQkJCTo9IGJzZWMubwogCitvYmotJChDT05G
SUdfS1ZYX09UUF9OVikJKz0gbnZtZW0ta3Z4LW90cC1udi5vCitudm1lbS1rdngtb3RwLW52LXkJ
CTo9IGt2eC1vdHAtbnYubworCiBvYmotJChDT05GSUdfU1RBUkZJVkVfT1RQKQkrPSBzdGFyZml2
ZS1vdHAubwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lbS9rdngtb3RwLW52LmMgYi9kcml2ZXJz
L252bWVtL2t2eC1vdHAtbnYuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
Li5mOTk3ZjhhNjNiCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9udm1lbS9rdngtb3RwLW52
LmMKQEAgLTAsMCArMSw5OSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b3ItbGF0ZXIKKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIwMjAgS2FscmF5IEluYy4sIENsw6ltZW50
IEzDqWdlcgorICovCisKKyNpbmNsdWRlIDxjb21tb24uaD4KKyNpbmNsdWRlIDxkcml2ZXIuaD4K
KyNpbmNsdWRlIDxtYWxsb2MuaD4KKyNpbmNsdWRlIDx4ZnVuY3MuaD4KKyNpbmNsdWRlIDxlcnJu
by5oPgorI2luY2x1ZGUgPGluaXQuaD4KKyNpbmNsdWRlIDxuZXQuaD4KKyNpbmNsdWRlIDxpby5o
PgorCisjaW5jbHVkZSA8bGludXgvbnZtZW0tcHJvdmlkZXIuaD4KKworI2RlZmluZSBPVFBfTlZf
QUxJR04JCTQKKyNkZWZpbmUgT1RQX05WX0FMSUdOX01BU0sJKE9UUF9OVl9BTElHTiAtIDEpCisK
K3N0cnVjdCBrdnhfb3RwX252X3ByaXYgeworCXZvaWQgX19pb21lbSAqYmFzZTsKK307CisKK3N0
YXRpYyBpbnQga3Z4X290cF9udl9yZWFkKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBvZmZz
ZXQsCisJCQkgIHZvaWQgKl92YWwsIHNpemVfdCBieXRlcykKK3sKKwlzdHJ1Y3Qga3Z4X290cF9u
dl9wcml2ICpwcml2ID0gY29udGV4dDsKKwl1OCAqdmFsID0gX3ZhbDsKKwl1MzIgdG1wLCBjb3B5
X3NpemU7CisJdTggc2tpcCA9IG9mZnNldCAmIE9UUF9OVl9BTElHTl9NQVNLOworCisJb2Zmc2V0
ICY9IH5PVFBfTlZfQUxJR05fTUFTSzsKKworCXdoaWxlIChieXRlcykgeworCQl0bXAgPSByZWFk
bChwcml2LT5iYXNlICsgb2Zmc2V0KTsKKwkJaWYgKHNraXAgIT0gMCkKKwkJCWNvcHlfc2l6ZSA9
IG1pbihPVFBfTlZfQUxJR04gLSBza2lwLCAoaW50KSBieXRlcyk7CisJCWVsc2UKKwkJCWNvcHlf
c2l6ZSA9IG1pbihieXRlcywgc2l6ZW9mKHRtcCkpOworCisJCW1lbWNweSh2YWwsICgodTggKikg
JnRtcCkgKyBza2lwLCBjb3B5X3NpemUpOworCQlpZiAoc2tpcCAhPSAwKQorCQkJc2tpcCA9IDA7
CisKKwkJYnl0ZXMgLT0gY29weV9zaXplOworCQl2YWwgKz0gY29weV9zaXplOworCQlvZmZzZXQg
Kz0gT1RQX05WX0FMSUdOOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IG52bWVtX2J1cyBrdnhfb3RwX252X2J1cyA9IHsKKwkucmVhZCA9IGt2eF9vdHBfbnZfcmVh
ZCwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGt2eF9vdHBfbnZfbWF0
Y2hbXSA9IHsKKwl7IC5jb21wYXRpYmxlID0gImthbHJheSxrdngtb3RwLW52IiB9LAorCXsgLyog
c2VudGluZWwgKi99LAorfTsKKworc3RhdGljIGludCBrdnhfb3RwX252X3Byb2JlKHN0cnVjdCBk
ZXZpY2VfZCAqZGV2KQoreworCXN0cnVjdCByZXNvdXJjZSAqcmVzOworCXN0cnVjdCBudm1lbV9k
ZXZpY2UgKm52bWVtOworCXN0cnVjdCBudm1lbV9jb25maWcgZWNvbmZpZyA9IHsgMCB9OworCXN0
cnVjdCBrdnhfb3RwX252X3ByaXYgKnByaXY7CisKKwlwcml2ID0ga3phbGxvYyhzaXplb2YoKnBy
aXYpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIXByaXYpCisJCXJldHVybiAtRU5PTUVNOworCisJcmVz
ID0gZGV2X3JlcXVlc3RfbWVtX3Jlc291cmNlKGRldiwgMCk7CisJaWYgKElTX0VSUihyZXMpKQor
CQlyZXR1cm4gUFRSX0VSUihyZXMpOworCisJcHJpdi0+YmFzZSA9IElPTUVNKHJlcy0+c3RhcnQp
OworCisJZWNvbmZpZy5uYW1lID0gImt2eC1udi1yZWdiYW5rIjsKKwllY29uZmlnLnN0cmlkZSA9
IDE7CisJZWNvbmZpZy53b3JkX3NpemUgPSAxOworCWVjb25maWcuc2l6ZSA9IHJlc291cmNlX3Np
emUocmVzKTsKKwllY29uZmlnLmRldiA9IGRldjsKKwllY29uZmlnLnByaXYgPSBwcml2OworCWVj
b25maWcuYnVzID0gJmt2eF9vdHBfbnZfYnVzOworCisJZGV2LT5wcml2ID0gcHJpdjsKKworCW52
bWVtID0gbnZtZW1fcmVnaXN0ZXIoJmVjb25maWcpOworCisJcmV0dXJuIFBUUl9FUlJfT1JfWkVS
Tyhudm1lbSk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgZHJpdmVyX2Qga3Z4X290cF9udl9kcml2ZXIg
PSB7CisJLm5hbWUJPSAia3Z4LW90cC1udiIsCisJLnByb2JlCT0ga3Z4X290cF9udl9wcm9iZSwK
Kwkub2ZfY29tcGF0aWJsZSA9IERSVl9PRl9DT01QQVQoa3Z4X290cF9udl9tYXRjaCksCit9Owor
cG9zdGNvcmVfcGxhdGZvcm1fZHJpdmVyKGt2eF9vdHBfbnZfZHJpdmVyKTsKLS0gCjIuMTcuMQoK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

