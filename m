Delivery-date: Sat, 19 Jun 2021 05:47:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwp-0003P3-Fk
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwo-0002gd-0k
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgoUZGLlt+ndcUOfw+OOYWzFvI12BAgAEiwmLcxX7q0=; b=HQUYO65hlcBDS3
	WJPqAs58MrCwkZzId3bl9oBAS/jo21PoCYtHbeUHuKslqM7vZ1aYNOkcv0MmK99ra1YzD/F+xXB2J
	Y+YzF1DyXoia5ZUtPt6u9wWIAW9OqZX49DHfN9IoaTN6ubLng2y5+n3V3OvfMznZEY0aTRR8VbLV9
	pAsdiMfGCXlSlnWG1oPUHn2JCCcG6Dxf67GDen1Ap24CDhr67QEqy+dc4H0In+83CXJKX7rjBQ6hJ
	SZasN8bwu0YQr+onFHtx1SnS81ZPwPdPY2nZrEJBiK7J2MkCCqP1EJDZXiPvxpmMhc7gjaBltB2ON
	99kJcsDEht67xPlwgZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvX-00GCAg-RS; Sat, 19 Jun 2021 03:45:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxq-8Z
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v9-TZ; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029o-Vz; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:12 +0200
Message-Id: <20210619034516.6737-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_436221_8D486913 
X-CRM114-Status: GOOD (  16.63  )
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
Subject: [PATCH 09/13] nvmem: add command to list nvmem devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

V2hlbiBkb2luZyBkZXZlbG9wbWVudCBhcm91bmQgbnZtZW0gZGV2aWNlcywgaXQgY2FuIGJlIHVz
ZWZ1bCB0byBsaXN0CndoaWNoIG9uZXMgZXhpc3QuIEFkZCBhIGNvbW1hbmQgdG8gZmFjaWxpdGF0
ZSB0aGlzLiBJdCBjYW4gYmUgZXh0ZW5kZWQKaW4gZnV0dXJlIGFzIHRoZSBuZWVkIGFyaXNlcyAo
ZS5nLmV4cG9ydCBjZWxscyBpbnRvIHRoZSBlbnZpcm9ubWVudD8pLgoKU2lnbmVkLW9mZi1ieTog
QWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tYW5kcy9LY29u
ZmlnICAgICAgICAgICAgICAgfCAgNyArKysrKysrCiBjb21tYW5kcy9NYWtlZmlsZSAgICAgICAg
ICAgICAgfCAgMSArCiBjb21tYW5kcy9udm1lbS5jICAgICAgICAgICAgICAgfCAyNCArKysrKysr
KysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbnZtZW0vY29yZS5jICAgICAgICAgICB8ICA5ICsr
KysrKysrKwogaW5jbHVkZS9saW51eC9udm1lbS1jb25zdW1lci5oIHwgIDIgKysKIDUgZmlsZXMg
Y2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGNvbW1hbmRzL252
bWVtLmMKCmRpZmYgLS1naXQgYS9jb21tYW5kcy9LY29uZmlnIGIvY29tbWFuZHMvS2NvbmZpZwpp
bmRleCA1YWUzY2IzZGQxNDUuLjdiYjM2ZDZlNDE3ZSAxMDA2NDQKLS0tIGEvY29tbWFuZHMvS2Nv
bmZpZworKysgYi9jb21tYW5kcy9LY29uZmlnCkBAIC0yMDYsNiArMjA2LDEzIEBAIGNvbmZpZyBD
TURfUkVHVUxBVE9SCiAJICB0aGUgcmVndWxhdG9yIGNvbW1hbmQgbGlzdHMgdGhlIGN1cnJlbnRs
eSByZWdpc3RlcmVkIHJlZ3VsYXRvcnMgYW5kCiAJICB0aGVpciBjdXJyZW50IHN0YXRlLgogCitj
b25maWcgQ01EX05WTUVNCisJYm9vbAorCWRlcGVuZHMgb24gTlZNRU0KKwlwcm9tcHQgIm52bWVt
IGNvbW1hbmQiCisJaGVscAorCSAgdGhlIG52bWVtIGNvbW1hbmQgbGlzdHMgdGhlIGN1cnJlbnRs
eSByZWdpc3RlcmVkIG52bWVtIGRldmljZXMuCisKIGNvbmZpZyBDTURfTFNQQ0kKIAlib29sCiAJ
ZGVwZW5kcyBvbiBQQ0kKZGlmZiAtLWdpdCBhL2NvbW1hbmRzL01ha2VmaWxlIGIvY29tbWFuZHMv
TWFrZWZpbGUKaW5kZXggNGI0NWQyNjZmZDU2Li5iYTVlYTE5ZWIyMDIgMTAwNjQ0Ci0tLSBhL2Nv
bW1hbmRzL01ha2VmaWxlCisrKyBiL2NvbW1hbmRzL01ha2VmaWxlCkBAIC00Nyw2ICs0Nyw3IEBA
IG9iai0kKENPTkZJR19DTURfU0FWRUVOVikJKz0gc2F2ZWVudi5vCiBvYmotJChDT05GSUdfQ01E
X0xPQURFTlYpCSs9IGxvYWRlbnYubwogb2JqLSQoQ09ORklHX0NNRF9OQU5EKQkJKz0gbmFuZC5v
CiBvYmotJChDT05GSUdfQ01EX05BTkRURVNUKQkrPSBuYW5kdGVzdC5vCitvYmotJChDT05GSUdf
Q01EX05WTUVNKQkJKz0gbnZtZW0ubwogb2JqLSQoQ09ORklHX0NNRF9NRU1URVNUKQkrPSBtZW10
ZXN0Lm8KIG9iai0kKENPTkZJR19DTURfTUVNVEVTVEVSKQkrPSBtZW10ZXN0ZXIvCiBvYmotJChD
T05GSUdfQ01EX1RSVUUpCQkrPSB0cnVlLm8KZGlmZiAtLWdpdCBhL2NvbW1hbmRzL252bWVtLmMg
Yi9jb21tYW5kcy9udm1lbS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uYTBlM2QwOTJlM2NmCi0tLSAvZGV2L251bGwKKysrIGIvY29tbWFuZHMvbnZtZW0uYwpAQCAt
MCwwICsxLDI0IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAorLy8gU1BE
WC1GaWxlQ29weXJpZ2h0VGV4dDogwqkgMjAyMSBBaG1hZCBGYXRvdW0sIFBlbmd1dHJvbml4CisK
KyNpbmNsdWRlIDxjb21tb24uaD4KKyNpbmNsdWRlIDxjb21tYW5kLmg+CisjaW5jbHVkZSA8bGlu
dXgvbnZtZW0tY29uc3VtZXIuaD4KKworc3RhdGljIGludCBkb19udm1lbShpbnQgYXJnYywgY2hh
ciAqYXJndltdKQoreworCW52bWVtX2RldmljZXNfcHJpbnQoKTsKKworCXJldHVybiAwOworfQor
CitCQVJFQk9YX0NNRF9IRUxQX1NUQVJUKG52bWVtKQorQkFSRUJPWF9DTURfSEVMUF9URVhUKCJV
c2FnZTogbnZtZW0iKQorQkFSRUJPWF9DTURfSEVMUF9FTkQKKworQkFSRUJPWF9DTURfU1RBUlQo
bnZtZW0pCisJLmNtZAkJPSBkb19udm1lbSwKKwlCQVJFQk9YX0NNRF9ERVNDKCJsaXN0IG52bWVt
IGRldmljZXMiKQorCUJBUkVCT1hfQ01EX0dST1VQKENNRF9HUlBfSFdNQU5JUCkKKwlCQVJFQk9Y
X0NNRF9IRUxQKGNtZF9udm1lbV9oZWxwKQorQkFSRUJPWF9DTURfRU5ECmRpZmYgLS1naXQgYS9k
cml2ZXJzL252bWVtL2NvcmUuYyBiL2RyaXZlcnMvbnZtZW0vY29yZS5jCmluZGV4IGMwNjBlNjI3
ZGI0Zi4uYWU5Yzk2NWMyNWUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWVtL2NvcmUuYworKysg
Yi9kcml2ZXJzL252bWVtL2NvcmUuYwpAQCAtNDksNiArNDksMTUgQEAgc3RydWN0IG52bWVtX2Nl
bGwgewogc3RhdGljIExJU1RfSEVBRChudm1lbV9jZWxscyk7CiBzdGF0aWMgTElTVF9IRUFEKG52
bWVtX2RldnMpOwogCit2b2lkIG52bWVtX2RldmljZXNfcHJpbnQodm9pZCkKK3sKKwlzdHJ1Y3Qg
bnZtZW1fZGV2aWNlICpkZXY7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGRldiwgJm52bWVtX2Rl
dnMsIG5vZGUpIHsKKwkJcHJpbnRmKCIlc1xuIiwgZGV2X25hbWUoJmRldi0+ZGV2KSk7CisJfQor
fQorCiBzdGF0aWMgc3NpemVfdCBudm1lbV9jZGV2X3JlYWQoc3RydWN0IGNkZXYgKmNkZXYsIHZv
aWQgKmJ1Ziwgc2l6ZV90IGNvdW50LAogCQkJICAgICAgIGxvZmZfdCBvZmZzZXQsIHVuc2lnbmVk
IGxvbmcgZmxhZ3MpCiB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L252bWVtLWNvbnN1bWVy
LmggYi9pbmNsdWRlL2xpbnV4L252bWVtLWNvbnN1bWVyLmgKaW5kZXggNWY0NGNmMDBjZGZmLi5i
OTc5ZjIzMzcyYTYgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbnZtZW0tY29uc3VtZXIuaAor
KysgYi9pbmNsdWRlL2xpbnV4L252bWVtLWNvbnN1bWVyLmgKQEAgLTQ5LDYgKzQ5LDggQEAgc3Np
emVfdCBudm1lbV9kZXZpY2VfY2VsbF9yZWFkKHN0cnVjdCBudm1lbV9kZXZpY2UgKm52bWVtLAog
aW50IG52bWVtX2RldmljZV9jZWxsX3dyaXRlKHN0cnVjdCBudm1lbV9kZXZpY2UgKm52bWVtLAog
CQkJICAgIHN0cnVjdCBudm1lbV9jZWxsX2luZm8gKmluZm8sIHZvaWQgKmJ1Zik7CiAKK3ZvaWQg
bnZtZW1fZGV2aWNlc19wcmludCh2b2lkKTsKKwogI2Vsc2UKIAogc3RhdGljIGlubGluZSBzdHJ1
Y3QgbnZtZW1fY2VsbCAqbnZtZW1fY2VsbF9nZXQoc3RydWN0IGRldmljZV9kICpkZXYsCi0tIAoy
LjI5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

