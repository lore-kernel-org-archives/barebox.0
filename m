Delivery-date: Thu, 05 May 2022 10:04:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSu-002UUJ-5V
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSr-0007xl-Jg
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoBHEOO2ZKnPX9AzvyXh2FR0biSOfFIIeJuyKRHyjFo=; b=BqLMxpHxP8/wsD
	j8MK6C4iYX/nyYXP3V5Grt8qut4g4xmgZHOvnWppcqy/YX70elGqzZLPnCuGrjIzjVlxOkgrw8MJk
	FMc44k2CnlGtkkw8TiB5C/UErwBnZwMVAqDyDNlKSyPkQWkm1xwz+Vz7rhqWZoKrM8UZv8475yKdr
	6pQNUSnBTBDRc2E8/fAzeMPS8r6dcy5jJY26ZvXp+HoUnnxXX9Bw4YipWgkGlyGGPcQjmrf1OJhRt
	jmAnbBbSu08/41fEYgHdLCOp3ZavfTXHErXilgdUmfTtiW9uGIIOGQ2EYwnMg3wrMYxQZnVWqN7DF
	hfM7oM3isezD0SFPkOqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRV-00EWtS-0p; Thu, 05 May 2022 08:02:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbR-Td
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-0006sx-7e; Thu, 05 May 2022 10:02:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-000TOI-OM; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004haz-Dd; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:45 +0200
Message-Id: <20220505080152.1068424-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010205_114839_8893B310 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/15] mci: bcm2835: add bcm2711-emmc2 (Rpi4) support
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

