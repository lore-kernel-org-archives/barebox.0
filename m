Delivery-date: Fri, 03 Dec 2021 19:54:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtDh4-0003SV-RZ
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 19:54:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtDh3-000563-TR
	for lore@pengutronix.de; Fri, 03 Dec 2021 19:54:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zky6XkdG4n3e3wDzwEfOLFiyWjbJy3aUZYpEfOmzVxg=; b=GxiunyR1mzUQUy
	tOOGr8IJlB34J2bF+mzoBNlxABSlIbw5726r5QCq7Ot6XTutJHyheVwE4Ragsj0zepUf8MaCqLZr2
	cMQN9vfq/HVLnak4C3vpIPLLY7lsYv7/ap5OHcsJkdYzjjA/WBcHY+GiEZkgdot6a68hANFc1MVxO
	Gtj0nX93bhVr90DG+ytc+Qqh3Oy0ShDcfFBu4oGrbbDYcC+P3y/n6dyVvdH2uCXrYCD5cZCkRYRhA
	q2fLtTNOlcIFBBofisVG49jATdnJjwRZRsWo7eQkOt2lMrKzsysB01Jd8MMe4SGcCFG18MYFY7LLs
	+gXYAX9jtUjk3xXmOHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtDfO-00Gnbh-GO; Fri, 03 Dec 2021 18:52:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtDfB-00Gnaf-Ek
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 18:52:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mtDf7-0004wP-5W; Fri, 03 Dec 2021 19:52:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mtDf3-001czF-Do; Fri, 03 Dec 2021 19:51:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  3 Dec 2021 19:51:54 +0100
Message-Id: <20211203185154.388145-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_105205_515133_44B0ED08 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH master] Revert "ARM: beaglebone: init MPU speed to 800Mhz"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Q29tbWl0IDEzMGM3ZDY3MTVlOSAoIkFSTTogYmVhZ2xlYm9uZTogaW5pdCBNUFUgc3BlZWQgdG8g
ODAwTWh6IikgY2F1c2VzCndhcm0gcmVib290IGZyb20gd2l0aGluIExpbnV4IHY1LjE0LjAgdG8g
bm8gbG9uZ2VyIHN1Y2NlZWQuCmJhcmVib3ggTUxPIGlzIGVudGVyZWQsIGJ1dCBoYW5ncy4gUmVz
ZXQgZnJvbSB3aXRoaW4gYmFyZWJveCBpcwp1bmFmZmVjdGVkLgpUaGlzIGNhbiBiZSByZXByb2R1
Y2VkIHVzaW5nIERpc3Ryb0tpdCA5NDljNWVmMmI5YTYgKCJ2N2E6IGJhcmVib3g6CnZlcnNpb24g
YnVtcCB2MjAyMS4wOC4wIOKGkiB2MjAyMS4xMS4wIikgb24gYSBCZWFnbGVib25lIEJsYWNrLgpV
bnRpbCB0aGF0J3MgZmlndXJlZCBvdXQsIHJldmVydCB0aGUgY29tbWl0OyBmdW5jdGlvbmFsIHJl
Ym9vdCBpcyBtb3JlCmltcG9ydGFudCB0aGFuIHRoZSBxdWlja2VyIGJvb3QgdXAuCgpUaGlzIHJl
dmVydHMgY29tbWl0IDEzMGM3ZDY3MTVlOTMyYTFlMGIzZTAyNmZlYTk3ZjcwMGFiMzNlYTkuCgpG
aXhlczogMTMwYzdkNjcxNWU5ICgiQVJNOiBiZWFnbGVib25lOiBpbml0IE1QVSBzcGVlZCB0byA4
MDBNaHoiKQpSZXBvcnRlZC1ieTogYXJ3aWUgIyBJUkMKQ2M6IE1hcmMgUmVpbGx5IDxtYXJjQGNw
ZGVzaWduLmNvbS5hdT4KU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5n
dXRyb25peC5kZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9uZS9sb3dsZXZlbC5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvbG93bGV2ZWwuYyBiL2FyY2gvYXJt
L2JvYXJkcy9iZWFnbGVib25lL2xvd2xldmVsLmMKaW5kZXggMzEyMTE0NDhmNWU4Li45MWQxNDNl
NDE1MGIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9iZWFnbGVib25lL2xvd2xldmVsLmMK
KysrIGIvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvbG93bGV2ZWwuYwpAQCAtMTI2LDcgKzEy
Niw3IEBAIHN0YXRpYyBub2lubGluZSBpbnQgYmVhZ2xlYm9uZV9zcmFtX2luaXQodm9pZCkKIAog
CS8qIFNldHVwIHRoZSBQTExzIGFuZCB0aGUgY2xvY2tzIGZvciB0aGUgcGVyaXBoZXJhbHMgKi8K
IAlpZiAoaXNfYmVhZ2xlYm9uZV9ibGFjaygpKSB7Ci0JCWFtMzN4eF9wbGxfaW5pdChNUFVQTExf
TV84MDAsIEREUlBMTF9NXzQwMCk7CisJCWFtMzN4eF9wbGxfaW5pdChNUFVQTExfTV81MDAsIERE
UlBMTF9NXzQwMCk7CiAJCWFtMzM1eF9zZHJhbV9pbml0KDB4MThCLCAmZGRyM19jbWRfY3RybCwg
JmRkcjNfcmVncywKIAkJCQkmZGRyM19kYXRhKTsKIAl9IGVsc2UgewotLSAKMi4zMC4yCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

