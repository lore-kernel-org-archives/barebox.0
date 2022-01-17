Delivery-date: Mon, 17 Jan 2022 23:22:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aO6-004zKO-Ug
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:22:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aO4-0005Wk-5k
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:22:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlufPBsnTw5VJ7ydd7R++FZtPCWmGMioO24MA2V+htg=; b=svTlomNxy+ZNG2
	6KtR22svX7IzwI9j70ksFD63r1hYVpMi+gnQRLtAYCJXtKOtyHQtKi5kEVJnWuWGpvnf2D4Icj4Z/
	Q4kgoYHSOaAO0znSogwuGl34EZea35PLkml+2qeIyay9+kEkzjkjP/SPQTo0gurWDLlIuAIHxTzf9
	MT3+iqbAbSlrPv8i3jUyAPgcQ1E/wozhkw4pfNTUaFf4t4E1N6e1ccxIUkwAKsF0d2ADhDKHO/Wk8
	JD3ctWiXkbYQ3mJEtkv/hb0gYZvWqMrsOfxiw/R01039Zvo6JyzDCDldPU74pIYg6ukbAPieaqGtd
	U+vwEi61MpNDDht7spgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMk-00GTQZ-3X; Mon, 17 Jan 2022 22:20:42 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6w-KI
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 6A1A73ACE27
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:58 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id A588A3ACC50; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 2933E3ACDC3; Mon, 17 Jan
 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 0AAC227E03FA; Mon, 17 Jan 2022
 23:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id E664227E03DD; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 tKeP_Jed_HWU; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id CE36727E03FE; Mon, 17 Jan 2022
 23:19:55 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <5e3c.61e5eb8c.27ff3.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E664227E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=p4O+eTkaewvDxJ2bRIuX9sYlqPKkz5ryU/UYUPHhitg=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=DK3EIugSZ/mBFSi3eXCL7KZHICmriZencM7Qx3ASZ9BxNiD5eBXRADfaL3UsZM/e3
 2GWhev8RzVW6G4c6rwVtBR4r6bx6Yc45FG0K8K1NJDioE9xISrieFQVo9IQ8/DaZ4/
 9Cs2WAEeXM24/VKy5FAHBleGbjZJ/N7HDXUbYNBE=
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>, Louis Morhet
 <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann Sionneau
 <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:14 +0100
Message-ID: <20220117221917.26970-9-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_831926_F906CAF8 
X-CRM114-Status: GOOD (  17.01  )
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
Subject: [PATCH v2 08/11] nvmem: add kvx otp non volatile regbank support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQ2xlbWVudCBMZWdlciA8Y2xlbWVudC5sZWdlckBib290bGluLmNvbT4KCkJhY2twb3J0
IExpbnV4IGRyaXZlciB0byBiYXJlYm94IHRvIGFjY2VzcyBudm1lbS4KClNpZ25lZC1vZmYtYnk6
IENsZW1lbnQgTGVnZXIgPGNsZW1lbnQubGVnZXJAYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6
IEp1bGVzIE1hc2VsYmFzIDxqbWFzZWxiYXNAa2FscmF5LmV1PgotLS0KY2hhbmdlcyBpbiB2MjoK
IC0gcmVtb3ZlZCBpZiAoYWxsd2F5cyBzZXQgc2tpcCB0byAwIGFmdGVyIHRoZSBtZW1jb3B5KQot
LS0KIGRyaXZlcnMvbnZtZW0vS2NvbmZpZyAgICAgIHwgIDcgKysrCiBkcml2ZXJzL252bWVtL01h
a2VmaWxlICAgICB8ICAzICsrCiBkcml2ZXJzL252bWVtL2t2eC1vdHAtbnYuYyB8IDk4ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDEwOCBp
bnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9udm1lbS9rdngtb3RwLW52
LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL0tjb25maWcgYi9kcml2ZXJzL252bWVtL0tj
b25maWcKaW5kZXggN2IxZWJlMWQ2OC4uMmU2MDczNDE1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
dm1lbS9LY29uZmlnCisrKyBiL2RyaXZlcnMvbnZtZW0vS2NvbmZpZwpAQCAtNzYsNiArNzYsMTMg
QEAgY29uZmlnIFNUTTMyX0JTRUNfV1JJVEUKIAkgICAgbXcgLWwgLWQgL2Rldi9zdG0zMi1ic2Vj
IDB4MDAwMDAwZTQrNCAweDc4NTYzNDEyCiAJICAgIG13IC1sIC1kIC9kZXYvc3RtMzItYnNlYyAw
eDAwMDAwMGU4KzQgMHgwMDAwYmM5YQogCitjb25maWcgS1ZYX09UUF9OVgorCXRyaXN0YXRlICJr
YWxyYXkgS1ZYIE9UUCBOb24gdm9sYXRpbGUgcmVncyBTdXBwb3J0IgorCWRlcGVuZHMgb24gS1ZY
CisJaGVscAorCSAgVGhpcyBpcyBhIHNpbXBsZSBkcml2ZXIgdG8gZHVtcCBzcGVjaWZpZWQgdmFs
dWVzIG9mIEtWWCBPVFAgbm9uCisJICB2b2xhdGlsZSByZWdzLgorCiBjb25maWcgU1RBUkZJVkVf
T1RQCiAJdHJpc3RhdGUgIlN0YXJmaXZlIE9UUCBTdXBwcm90IgogCWRlcGVuZHMgb24gU09DX1NU
QVJGSVZFCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL01ha2VmaWxlIGIvZHJpdmVycy9udm1l
bS9NYWtlZmlsZQppbmRleCA1ODY1OTE5NjEyLi42MmExZjkyNWRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL252bWVtL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvbnZtZW0vTWFrZWZpbGUKQEAgLTI0LDQg
KzI0LDcgQEAgbnZtZW1fZWVwcm9tXzkzeHg0Ni15CQk6PSBlZXByb21fOTN4eDQ2Lm8KIG9iai0k
KENPTkZJR19TVE0zMl9CU0VDKQkrPSBudm1lbV9ic2VjLm8KIG52bWVtX2JzZWMteQkJCTo9IGJz
ZWMubwogCitvYmotJChDT05GSUdfS1ZYX09UUF9OVikJKz0gbnZtZW0ta3Z4LW90cC1udi5vCitu
dm1lbS1rdngtb3RwLW52LXkJCTo9IGt2eC1vdHAtbnYubworCiBvYmotJChDT05GSUdfU1RBUkZJ
VkVfT1RQKQkrPSBzdGFyZml2ZS1vdHAubwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lbS9rdngt
b3RwLW52LmMgYi9kcml2ZXJzL252bWVtL2t2eC1vdHAtbnYuYwpuZXcgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCAwMDAwMDAwMDAwLi5kNjE0YzE2ZTFlCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9udm1lbS9rdngtb3RwLW52LmMKQEAgLTAsMCArMSw5OCBAQAorLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIwMjAgS2Fs
cmF5IEluYy4sIENsw6ltZW50IEzDqWdlcgorICovCisKKyNpbmNsdWRlIDxjb21tb24uaD4KKyNp
bmNsdWRlIDxkcml2ZXIuaD4KKyNpbmNsdWRlIDxtYWxsb2MuaD4KKyNpbmNsdWRlIDx4ZnVuY3Mu
aD4KKyNpbmNsdWRlIDxlcnJuby5oPgorI2luY2x1ZGUgPGluaXQuaD4KKyNpbmNsdWRlIDxuZXQu
aD4KKyNpbmNsdWRlIDxpby5oPgorCisjaW5jbHVkZSA8bGludXgvbnZtZW0tcHJvdmlkZXIuaD4K
KworI2RlZmluZSBPVFBfTlZfQUxJR04JCTQKKyNkZWZpbmUgT1RQX05WX0FMSUdOX01BU0sJKE9U
UF9OVl9BTElHTiAtIDEpCisKK3N0cnVjdCBrdnhfb3RwX252X3ByaXYgeworCXZvaWQgX19pb21l
bSAqYmFzZTsKK307CisKK3N0YXRpYyBpbnQga3Z4X290cF9udl9yZWFkKHZvaWQgKmNvbnRleHQs
IHVuc2lnbmVkIGludCBvZmZzZXQsCisJCQkgIHZvaWQgKl92YWwsIHNpemVfdCBieXRlcykKK3sK
KwlzdHJ1Y3Qga3Z4X290cF9udl9wcml2ICpwcml2ID0gY29udGV4dDsKKwl1OCAqdmFsID0gX3Zh
bDsKKwl1MzIgdG1wLCBjb3B5X3NpemU7CisJdTggc2tpcCA9IG9mZnNldCAmIE9UUF9OVl9BTElH
Tl9NQVNLOworCisJb2Zmc2V0ICY9IH5PVFBfTlZfQUxJR05fTUFTSzsKKworCXdoaWxlIChieXRl
cykgeworCQl0bXAgPSByZWFkbChwcml2LT5iYXNlICsgb2Zmc2V0KTsKKwkJaWYgKHNraXAgIT0g
MCkKKwkJCWNvcHlfc2l6ZSA9IG1pbihPVFBfTlZfQUxJR04gLSBza2lwLCAoaW50KSBieXRlcyk7
CisJCWVsc2UKKwkJCWNvcHlfc2l6ZSA9IG1pbihieXRlcywgc2l6ZW9mKHRtcCkpOworCisJCW1l
bWNweSh2YWwsICgodTggKikgJnRtcCkgKyBza2lwLCBjb3B5X3NpemUpOworCQlza2lwID0gMDsK
KworCQlieXRlcyAtPSBjb3B5X3NpemU7CisJCXZhbCArPSBjb3B5X3NpemU7CisJCW9mZnNldCAr
PSBPVFBfTlZfQUxJR047CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgbnZtZW1fYnVzIGt2eF9vdHBfbnZfYnVzID0geworCS5yZWFkID0ga3Z4X290cF9udl9yZWFk
LAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQga3Z4X290cF9udl9tYXRj
aFtdID0geworCXsgLmNvbXBhdGlibGUgPSAia2FscmF5LGt2eC1vdHAtbnYiIH0sCisJeyAvKiBz
ZW50aW5lbCAqL30sCit9OworCitzdGF0aWMgaW50IGt2eF9vdHBfbnZfcHJvYmUoc3RydWN0IGRl
dmljZV9kICpkZXYpCit7CisJc3RydWN0IHJlc291cmNlICpyZXM7CisJc3RydWN0IG52bWVtX2Rl
dmljZSAqbnZtZW07CisJc3RydWN0IG52bWVtX2NvbmZpZyBlY29uZmlnID0geyAwIH07CisJc3Ry
dWN0IGt2eF9vdHBfbnZfcHJpdiAqcHJpdjsKKworCXByaXYgPSBremFsbG9jKHNpemVvZigqcHJp
diksIEdGUF9LRVJORUwpOworCWlmICghcHJpdikKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlyZXMg
PSBkZXZfcmVxdWVzdF9tZW1fcmVzb3VyY2UoZGV2LCAwKTsKKwlpZiAoSVNfRVJSKHJlcykpCisJ
CXJldHVybiBQVFJfRVJSKHJlcyk7CisKKwlwcml2LT5iYXNlID0gSU9NRU0ocmVzLT5zdGFydCk7
CisKKwllY29uZmlnLm5hbWUgPSAia3Z4LW52LXJlZ2JhbmsiOworCWVjb25maWcuc3RyaWRlID0g
MTsKKwllY29uZmlnLndvcmRfc2l6ZSA9IDE7CisJZWNvbmZpZy5zaXplID0gcmVzb3VyY2Vfc2l6
ZShyZXMpOworCWVjb25maWcuZGV2ID0gZGV2OworCWVjb25maWcucHJpdiA9IHByaXY7CisJZWNv
bmZpZy5idXMgPSAma3Z4X290cF9udl9idXM7CisKKwlkZXYtPnByaXYgPSBwcml2OworCisJbnZt
ZW0gPSBudm1lbV9yZWdpc3RlcigmZWNvbmZpZyk7CisKKwlyZXR1cm4gUFRSX0VSUl9PUl9aRVJP
KG52bWVtKTsKK30KKworc3RhdGljIHN0cnVjdCBkcml2ZXJfZCBrdnhfb3RwX252X2RyaXZlciA9
IHsKKwkubmFtZQk9ICJrdngtb3RwLW52IiwKKwkucHJvYmUJPSBrdnhfb3RwX252X3Byb2JlLAor
CS5vZl9jb21wYXRpYmxlID0gRFJWX09GX0NPTVBBVChrdnhfb3RwX252X21hdGNoKSwKK307Citw
b3N0Y29yZV9wbGF0Zm9ybV9kcml2ZXIoa3Z4X290cF9udl9kcml2ZXIpOwotLSAKMi4xNy4xCgoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

