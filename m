Delivery-date: Thu, 09 Jun 2022 08:01:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE6-008S07-OV
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE4-0000bL-3s
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoBHEOO2ZKnPX9AzvyXh2FR0biSOfFIIeJuyKRHyjFo=; b=fjMAP3n3TaDcJG
	l0GRwI3Qrw6pqH7H4EQ3ZkX2nPwfZ4YWwf7gTIjOGd7MlWTFcB1E3uQvDmDEoQks2XsHrja2fjL3c
	IJ6C6TfWDDKfH7aMaBWdlhiGKqk+1Vey6jH8btls+VfzsVTZjKjea306aSh1unM41na2i6Mqdg8fn
	01DoLikyzyfcMEdheFFeVsxI9ccq1W5EAtkaQ1m1PbiJFl9mNK6XCfGXvX+UFxA4fkYwM7Hbngfv8
	VToCbIql5DPqCW40+6qzQcg2wHxiXo6H3oi5HFxS+4XObSDBJNSggAvWN0sc9JfUfcCYFUu7itPe1
	fSQO3gAiILwy1NlmxI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCo-00Gv8r-41; Thu, 09 Jun 2022 05:59:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00Guyk-DO
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008GL-7U; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-007K91-LS; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002naC-De; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:17 +0200
Message-Id: <20220609055922.667016-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_490596_99CED233 
X-CRM114-Status: GOOD (  12.46  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 16/21] mci: bcm2835: add bcm2711-emmc2 (Rpi4) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
CldoaWxlIG9sZGVyIFJhc3BiZXJyeSBQaXMgZGlkbid0IG1pbmQgdGhlIFBPV0VSX0NPTlRST0wg
cmVnaXN0ZXIgYmVpbmcKMHgwMCwgdGhlIEJDTTI3MTEgb24gdGhlIFJhc3BiZXJyeSBQaSA0IGRv
ZXMgbWluZCwgc28gaW5pdGlhbGl6ZSBpdCBmb3IKMy4zViBsaWtlIHdlIGRvIGluIG1hbnkgb3Ro
ZXIgU0RIQ0kgZHJpdmVycy4gV2l0aCB0aGUgY29tcGF0aWJsZSBhZGRlZCwKdGhpcyBjYW4gYWNj
ZXNzIHRoZSBTRC1DYXJkIG9uIHRoZSBSYXNwYmVycnkgUGkgNC4gQ2hhbmdlIHRlc3RlZCBvbiBi
b3RoClJhc3BiZXJyeSBQaSAzYiBhbmQgUmFzcGJlcnJ5IFBpIDRiLgoKU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVk
LW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL21jaS9tY2ktYmNtMjgzNS5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvbWNpLWJjbTI4
MzUuYyBiL2RyaXZlcnMvbWNpL21jaS1iY20yODM1LmMKaW5kZXggMzM4MGZhMmFmYzE4Li5mMDky
MTU2ZjlhODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWNpL21jaS1iY20yODM1LmMKKysrIGIvZHJp
dmVycy9tY2kvbWNpLWJjbTI4MzUuYwpAQCAtMzI0LDcgKzMyNCw3IEBAIHN0YXRpYyBpbnQgYmNt
MjgzNV9tY2lfcmVzZXQoc3RydWN0IG1jaV9ob3N0ICptY2ksIHN0cnVjdCBkZXZpY2VfZCAqbWNp
X2RldikKIAogCXNkaGNpX3dyaXRlMzIoJmhvc3QtPnNkaGNpLAogCQkJU0RIQ0lfSE9TVF9DT05U
Uk9MX19QT1dFUl9DT05UUk9MX19CTE9DS19HQVBfQ09OVFJPTCwKLQkJCTB4MDApOworCQkJKFNE
SENJX0JVU19WT0xUQUdFXzMzMCB8IFNESENJX0JVU19QT1dFUl9FTikgPDwgOCk7CiAJc2RoY2lf
d3JpdGUzMigmaG9zdC0+c2RoY2ksIFNESENJX0FDTUQxMl9FUlJfX0hPU1RfQ09OVFJPTDIsCiAJ
CQkweDAwKTsKIAlzZGhjaV93cml0ZTMyKCZob3N0LT5zZGhjaSwKQEAgLTQyMyw2ICs0MjMsOCBA
QCBzdGF0aWMgaW50IGJjbTI4MzVfbWNpX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqaHdfZGV2KQog
c3RhdGljIF9fbWF5YmVfdW51c2VkIHN0cnVjdCBvZl9kZXZpY2VfaWQgYmNtMjgzNV9tY2lfY29t
cGF0aWJsZVtdID0gewogCXsKIAkJLmNvbXBhdGlibGUgPSAiYnJjbSxiY20yODM1LXNkaGNpIiwK
Kwl9LCB7CisJCS5jb21wYXRpYmxlID0gImJyY20sYmNtMjcxMS1lbW1jMiIsCiAJfSwgewogCQkv
KiBzZW50aW5lbCAqLwogCX0KLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK

