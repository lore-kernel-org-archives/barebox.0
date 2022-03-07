Delivery-date: Mon, 07 Mar 2022 12:25:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRBUU-003N64-Qf
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 12:25:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRBUT-0000li-CR
	for lore@pengutronix.de; Mon, 07 Mar 2022 12:25:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yS3r+ZfC/umQeh2aStnilaUU9JbsG+K6A1Horm2qEAI=; b=GzTvigfPPhDF/z
	+JjGy8JuKtiXcIdl9gK+KjmpbTJaC8RPWUBHdLGZF8mo4K+KScSI6W5KUCD3otcOLqaUDwRGefsBQ
	+q2Y8FyFVqDu3S/CcXT91bLjz/UwAiWpnjw7mmMfAAhanp8P0SWi6j+pYygxXWKRJEsNg+jPMUmF2
	EvRP6NS0y4vaRNKwFRenb1CW/g1U+aDULSfPA2a7GW8feNFRwxm+3PkACKYauDHxO0V1h89EYGKUo
	Xql8SvQGLe+JynjTQYovCS2EgPhmgdtzJWGDgDodL5oQ5TaqvllsuYI9ujGk2tNV6C26kWW+F9xKg
	2Gy8THrlH8MVqKBf8ELg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRBSu-00HISJ-1M; Mon, 07 Mar 2022 11:23:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRBSp-00HIRQ-55
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 11:23:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRBSl-0000SL-Ki; Mon, 07 Mar 2022 12:23:39 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRBSl-003CYl-Fw; Mon, 07 Mar 2022 12:23:38 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRBSj-007XfS-Vh; Mon, 07 Mar 2022 12:23:37 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Mar 2022 12:23:31 +0100
Message-Id: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2842; h=from:subject;
 bh=pSVEOYhEUAIfgawx/KHJ8MN5ukKKJVyx3EDbqEIxSWg=;
 b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiJesv7vKymI1o/GBJO13n14UakUoTRvG4Yrp7DuXF
 8eWbU3WJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYiXrLwAKCRDB/BR4rcrsCa5sCA
 CV3ixreTpOEicY20BzdKvJSa46DhfZOetw1nIPYv6boAtRy1BoCRNyLylfY2oYG0lvcKyhNs6+Yzjv
 PemvOsb9nRdyHit71HGg97VBp2MO1oKGUhjCkNOiWihQsVY0IajCCP2NDbNgTJT4Hr0w0ntC7fPtoN
 8YX1sKn0cN8SxSKuMAd5uN2n6DNE9aewJg3YiT60c4An6185VG8QdlCzN4JmbWl5PHCdn0fM7mTZ+q
 E4qihQo/Fku/YB0pFxdQhSOmFimmo7SuN4Y1QiQt7dHHrefKmzN6ofrpCbofgIzNLf9YHTHSryQP35
 KGkclmAD78kc3e2CLIm+c4H8DmvQQM
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_032343_234950_5B6FB047 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: stm32mp15x: Move mmc aliases to board files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGF2aW5nIHRoZSBtbWMgYWxpYXNlcyBpbiBzdG0zMm1wMTUxLmR0c2kgaXMgc3VycHJpc2luZyBh
cyBkZXBlbmRpbmcgb24KdGhlIG9yZGVyIG9mIGluY2x1ZGVzIHRoZXNlIG92ZXJyaWRlIHRoZSBt
bWMgb3JkZXJpbmcgaW4KPGFybS9zdG0zMm1wMTU3Yy1teWJvYXJkLmR0cz4uIEFsc28gdGhlIG9y
ZGVyaW5nIG9mIG1tYyBkZXZpY2VzIGlzIGFjdHVhbGx5CmJvYXJkIHNwZWNpZmljLCBzbyBpdCdz
IGFsc28gcmlnaHQgdG8gaGF2ZSB0aGlzIGluIHRoZSBib2FyZC5kdHMgZmlsZXMuCgpUaGVyZSBp
cyBubyAocmVsZXZhbnQpIGNoYW5nZSBpbnRlbmRlZCBieSB0aGlzIHBhdGNoLgoKU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
LS0tCiBhcmNoL2FybS9kdHMvc3RtMzJtcDE1MS1wcnR0MWwuZHRzaSAgfCAzICsrLQogYXJjaC9h
cm0vZHRzL3N0bTMybXAxNTEuZHRzaSAgICAgICAgIHwgMyAtLS0KIGFyY2gvYXJtL2R0cy9zdG0z
Mm1wMTU3Yy1ldjEuZHRzICAgICB8IDYgKysrKysrCiBhcmNoL2FybS9kdHMvc3RtMzJtcDE1N2Mt
b2R5c3NleS5kdHMgfCA1ICsrKysrCiBhcmNoL2FybS9kdHMvc3RtMzJtcDE1eHgtZGt4LmR0c2kg
ICAgfCA1ICsrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEtcHJ0dDFsLmR0c2kg
Yi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1MS1wcnR0MWwuZHRzaQppbmRleCA4MGFlNzJkZWUyMmEu
LjY4MTNjYjE3NjdmMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEtcHJ0dDFs
LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEtcHJ0dDFsLmR0c2kKQEAgLTE2LDgg
KzE2LDkgQEAKIAl9OwogCiAJYWxpYXNlcyB7Ci0JCXNlcmlhbDAgPSAmdWFydDQ7CiAJCWV0aGVy
bmV0MCA9ICZldGhlcm5ldDA7CisJCW1tYzAgPSAmc2RtbWMxOworCQlzZXJpYWwwID0gJnVhcnQ0
OwogCX07CiAKIAl2M3YzOiBmaXhlZC1yZWd1bGF0b3ItdjN2MyB7CmRpZmYgLS1naXQgYS9hcmNo
L2FybS9kdHMvc3RtMzJtcDE1MS5kdHNpIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEuZHRzaQpp
bmRleCBmMWZkODg4ZmExYzYuLjYxYjAyMmM2Y2FiYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRz
L3N0bTMybXAxNTEuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1MS5kdHNpCkBAIC0x
Myw5ICsxMyw2IEBACiAJCWdwaW85ID0gJmdwaW9qOwogCQlncGlvMTAgPSAmZ3Bpb2s7CiAJCWdw
aW8yNSA9ICZncGlvejsKLQkJbW1jMCA9ICZzZG1tYzE7Ci0JCW1tYzEgPSAmc2RtbWMyOwotCQlt
bWMyID0gJnNkbW1jMzsKIAkJcHdtMSA9ICZ7L3NvYy90aW1lckA0NDAwMDAwMC9wd219OwogCQlw
d20yID0gJnsvc29jL3RpbWVyQDQwMDAwMDAwL3B3bX07CiAJCXB3bTMgPSAmey9zb2MvdGltZXJA
NDAwMDEwMDAvcHdtfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9zdG0zMm1wMTU3Yy1ldjEu
ZHRzIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKaW5kZXggNzQyZWNhN2EzM2M5
Li4xNzE4ZTg0N2ExZjQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9zdG0zMm1wMTU3Yy1ldjEu
ZHRzCisrKyBiL2FyY2gvYXJtL2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCkBAIC00LDYgKzQsMTIg
QEAKICNpbmNsdWRlICJzdG0zMm1wMTUxLmR0c2kiCiAKIC8geworCWFsaWFzZXMgeworCQltbWMw
ID0gJnNkbW1jMTsKKwkJbW1jMSA9ICZzZG1tYzI7CisJCW1tYzIgPSAmc2RtbWMzOworCX07CisK
IAljaG9zZW4gewogCQllbnZpcm9ubWVudC1zZCB7CiAJCQljb21wYXRpYmxlID0gImJhcmVib3gs
ZW52aXJvbm1lbnQiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTdjLW9keXNz
ZXkuZHRzIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTdjLW9keXNzZXkuZHRzCmluZGV4IDBlMzk1
YmRlYzk2MS4uOGE5MTU3NWI0NzJiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvc3RtMzJtcDE1
N2Mtb2R5c3NleS5kdHMKKysrIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTdjLW9keXNzZXkuZHRz
CkBAIC03LDYgKzcsMTEgQEAKICNpbmNsdWRlICJzdG0zMm1wMTUxLmR0c2kiCiAKIC8geworCWFs
aWFzZXMgeworCQltbWMwID0gJnNkbW1jMTsKKwkJbW1jMSA9ICZzZG1tYzI7CisJfTsKKwogCWNo
b3NlbiB7CiAJCWVudmlyb25tZW50LXNkIHsKIAkJCWNvbXBhdGlibGUgPSAiYmFyZWJveCxlbnZp
cm9ubWVudCI7CmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvc3RtMzJtcDE1eHgtZGt4LmR0c2kg
Yi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1eHgtZGt4LmR0c2kKaW5kZXggMTczZTY0ZTA0YzFiLi5l
ZGIzNzk3MDMzMWEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9zdG0zMm1wMTV4eC1ka3guZHRz
aQorKysgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1eHgtZGt4LmR0c2kKQEAgLTgsNiArOCwxMSBA
QAogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCiAvIHsKKwlhbGlhc2VzIHsK
KwkJbW1jMCA9ICZzZG1tYzE7CisJCW1tYzIgPSAmc2RtbWMzOworCX07CisKIAljaG9zZW4gewog
CQllbnZpcm9ubWVudCB7CiAJCQljb21wYXRpYmxlID0gImJhcmVib3gsZW52aXJvbm1lbnQiOwoK
YmFzZS1jb21taXQ6IDM4M2Y5ZjJkNWQ4ZGIxOWRjZTA1Yzk4MmZhN2ZiZmI0NDk4OWVmNTMKLS0g
CjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

