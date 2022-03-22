Delivery-date: Tue, 22 Mar 2022 10:01:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWaOp-002NWT-OJ
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 10:01:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWaOr-00027v-Rn
	for lore@pengutronix.de; Tue, 22 Mar 2022 10:01:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBmXI1iZkKA+NZtZWSmBKyQMusBe8jju7PCuMneec2s=; b=g2TlkoO13vc438
	pslylVjbQXAcSsVfxNpncQXgIeqcbT3zzyeB60Rfdvvhu3WEZ5fUYkuMRo8F+AHvVTwELSGs3Hop8
	dkCpfOGUIf+He50691gwaE32S3Bbc5tXZknY4wRJ+WheId0kEA3PcCD1G+I28+IopSLm/ZsNdyq9/
	vKeucL8hQoycP2oLY/TPatm0mBlwP9Lo3wwomL6/yrGl6ksj6q7FbJp0yJjAJsS+PGyYn6LCCShdU
	VEIDp/8mDEDE8hzZMN+32wpN7MdUGIX04slPcMG3eVWE3a1bLklrvdZwsf2PM9Wv+9XeosaWkxl7U
	oefnkvV6Tzcaz/BgYcrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWaNP-00AVh7-Pv; Tue, 22 Mar 2022 09:00:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWaNK-00AVgG-PM
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 09:00:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nWaNH-0001hc-5O; Tue, 22 Mar 2022 10:00:19 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nWaNC-002G4T-Re; Tue, 22 Mar 2022 10:00:17 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nWaNE-00ArvX-HJ; Tue, 22 Mar 2022 10:00:16 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	barebox@lists.infradead.org
Date: Tue, 22 Mar 2022 10:00:07 +0100
Message-Id: <20220322090007.233155-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <32d47eaa-df0b-c949-ffd0-89e19ca1f244@pengutronix.de>
References: <32d47eaa-df0b-c949-ffd0-89e19ca1f244@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2932; h=from:subject;
 bh=uN5xAl5RjgjqEyNR86lYAQ2Nxw1shCybVJE2oTKe4Xg=;
 b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiOZATWRrN7RSpL4PvylnmpBhW582KcB4sZlkG7V89
 W81JUM+JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYjmQEwAKCRDB/BR4rcrsCTTVCA
 CF1rB9jweeoCkRxzh81MMnxrP+xJQhJWPnm1S/X23GVrDA4hvMNFlJbGSjemiWmVBBkPdye20y6iCR
 CddFmZNiQb8PvkDB7Vv/EF1LO4GdoEzxqDpI7jDWjAjmqs+25yxJfV73Wiav8hKzPJrmwZTz/PDdXv
 H7WL+VIFiu+9185H9wgfh9WcnBUecREeiMvL4ZLjmDPdfMeZu1oFc3ACa3MZQSXFKbzhs62lV9W2XO
 arG+p9wg7NveGlj14pwm7wajro1uNq9MCiyyytCjiVByi9oEI0f0VBLRR4FNpAhJtyXNSH+IgrqrPr
 w8lFzA4iftgaj8J8yV662RZRkZJC4l
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_020022_869292_40B55543 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] crypto: Followup to crypto symbol renaming for algo
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIHN5bWJvbHMgd2VyZSByZW5hbWVkIHRvIGEgbmljZXIgYW5kIGNvbnNpc3RlbnQgbmFtaW5n
IHNjaGVtZSwgYnV0IEkKbWlzc2VkIHRvIGFkYXB0IGEgZmV3IHVzYWdlcy4KClRoaXMgd2FzIGRv
bmUgdXNpbmc6CgoJcGVybCAtcCAtaSAtZSAncy9cYkNPTkZJR18oPzpESUdFU1RfKT8oTUQ1fFNI
QTF8U0hBMjI0fFNIQTI1NnxTSEEzODR8U0hBNTEyfEhNQUMpXGIvQ09ORklHX0hBVkVfRElHRVNU
XyQxLzsnIGNyeXB0by9obWFjLmMgY3J5cHRvL3NoYTIuYyBjcnlwdG8vc2hhNC5jCgpOb3cgdGhl
cmUgZG9uJ3Qgc2VlbSB0byBiZSBhbnkgb2xkIG5hbWVzIGxlZnQ6CgpSZXBvcnRlZC1ieTogUmVu
YXVkIEJhcmJpZXIgPFJlbmF1ZC5CYXJiaWVyQGFtZXRlay5jb20+CkZpeGVzOiAwM2ZiNTUyNGIw
NjQgKCJjcnlwdG86IGNvbnNpc3RlbnRseSBuYW1lIHRoZSBhbGdvIGRpZ2VzdCBzeW1ib2xzIEhB
VkVfRElHRVNUXy4uLiIpClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogY3J5cHRvL2htYWMuYyB8IDEyICsrKysrKy0t
LS0tLQogY3J5cHRvL3NoYTIuYyB8ICA0ICsrLS0KIGNyeXB0by9zaGE0LmMgfCAgNCArKy0tCiAz
IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2NyeXB0by9obWFjLmMgYi9jcnlwdG8vaG1hYy5jCmluZGV4IDM3YjI3MGRmN2E5NS4u
MjBmYzQ3MGQ5MDU5IDEwMDY0NAotLS0gYS9jcnlwdG8vaG1hYy5jCisrKyBiL2NyeXB0by9obWFj
LmMKQEAgLTE4MSwxNyArMTgxLDE3IEBAIHN0YXRpYyBpbnQgZGlnZXN0X2htYWNfcmVnaXN0ZXIo
Y2hhciAqbmFtZSwgdW5zaWduZWQgaW50IHBhZF9sZW5ndGgpCiAKIHN0YXRpYyBpbnQgZGlnZXN0
X2htYWNfaW5pdGNhbGwodm9pZCkKIHsKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfTUQ1KSkKKwlp
ZiAoSVNfRU5BQkxFRChDT05GSUdfSEFWRV9ESUdFU1RfTUQ1KSkKIAkJZGlnZXN0X2htYWNfcmVn
aXN0ZXIoIm1kNSIsIDY0KTsKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfU0hBMSkpCisJaWYgKElT
X0VOQUJMRUQoQ09ORklHX0hBVkVfRElHRVNUX1NIQTEpKQogCQlkaWdlc3RfaG1hY19yZWdpc3Rl
cigic2hhMSIsIDY0KTsKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfU0hBMjI0KSkKKwlpZiAoSVNf
RU5BQkxFRChDT05GSUdfSEFWRV9ESUdFU1RfU0hBMjI0KSkKIAkJZGlnZXN0X2htYWNfcmVnaXN0
ZXIoInNoYTIyNCIsIDY0KTsKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfU0hBMjU2KSkKKwlpZiAo
SVNfRU5BQkxFRChDT05GSUdfSEFWRV9ESUdFU1RfU0hBMjU2KSkKIAkJZGlnZXN0X2htYWNfcmVn
aXN0ZXIoInNoYTI1NiIsIDY0KTsKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfU0hBMzg0KSkKKwlp
ZiAoSVNfRU5BQkxFRChDT05GSUdfSEFWRV9ESUdFU1RfU0hBMzg0KSkKIAkJZGlnZXN0X2htYWNf
cmVnaXN0ZXIoInNoYTM4NCIsIDEyOCk7Ci0JaWYgKElTX0VOQUJMRUQoQ09ORklHX1NIQTUxMikp
CisJaWYgKElTX0VOQUJMRUQoQ09ORklHX0hBVkVfRElHRVNUX1NIQTUxMikpCiAJCWRpZ2VzdF9o
bWFjX3JlZ2lzdGVyKCJzaGE1MTIiLCAxMjgpOwogCiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9j
cnlwdG8vc2hhMi5jIGIvY3J5cHRvL3NoYTIuYwppbmRleCAwMTNmNWJiM2IyNDguLmNhYzUwOTU2
NDgxNCAxMDA2NDQKLS0tIGEvY3J5cHRvL3NoYTIuYworKysgYi9jcnlwdG8vc2hhMi5jCkBAIC0z
MzgsNyArMzM4LDcgQEAgc3RhdGljIHN0cnVjdCBkaWdlc3RfYWxnbyBtMjI0ID0gewogCiBzdGF0
aWMgaW50IHNoYTIyNF9kaWdlc3RfcmVnaXN0ZXIodm9pZCkKIHsKLQlpZiAoIUlTX0VOQUJMRUQo
Q09ORklHX1NIQTIyNCkpCisJaWYgKCFJU19FTkFCTEVEKENPTkZJR19IQVZFX0RJR0VTVF9TSEEy
MjQpKQogCQlyZXR1cm4gMDsKIAogCXJldHVybiBkaWdlc3RfYWxnb19yZWdpc3RlcigmbTIyNCk7
CkBAIC0zNjUsNyArMzY1LDcgQEAgc3RydWN0IGRpZ2VzdF9hbGdvIG0yNTYgPSB7CiAjaWZuZGVm
IF9fUEJMX18KIHN0YXRpYyBpbnQgc2hhMjU2X2RpZ2VzdF9yZWdpc3Rlcih2b2lkKQogewotCWlm
ICghSVNfRU5BQkxFRChDT05GSUdfU0hBMjU2KSkKKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0hB
VkVfRElHRVNUX1NIQTI1NikpCiAJCXJldHVybiAwOwogCiAJcmV0dXJuIGRpZ2VzdF9hbGdvX3Jl
Z2lzdGVyKCZtMjU2KTsKZGlmZiAtLWdpdCBhL2NyeXB0by9zaGE0LmMgYi9jcnlwdG8vc2hhNC5j
CmluZGV4IGEyZTkwYzBhMmNhZS4uOGM5NGY1MDExZGMyIDEwMDY0NAotLS0gYS9jcnlwdG8vc2hh
NC5jCisrKyBiL2NyeXB0by9zaGE0LmMKQEAgLTI1OCw3ICsyNTgsNyBAQCBzdGF0aWMgc3RydWN0
IGRpZ2VzdF9hbGdvIG0zODQgPSB7CiAKIHN0YXRpYyBpbnQgc2hhMzg0X2RpZ2VzdF9yZWdpc3Rl
cih2b2lkKQogewotCWlmICghSVNfRU5BQkxFRChDT05GSUdfU0hBMzg0KSkKKwlpZiAoIUlTX0VO
QUJMRUQoQ09ORklHX0hBVkVfRElHRVNUX1NIQTM4NCkpCiAJCXJldHVybiAwOwogCiAJcmV0dXJu
IGRpZ2VzdF9hbGdvX3JlZ2lzdGVyKCZtMzg0KTsKQEAgLTI4NCw3ICsyODQsNyBAQCBzdGF0aWMg
c3RydWN0IGRpZ2VzdF9hbGdvIG01MTIgPSB7CiAKIHN0YXRpYyBpbnQgc2hhNTEyX2RpZ2VzdF9y
ZWdpc3Rlcih2b2lkKQogewotCWlmICghSVNfRU5BQkxFRChDT05GSUdfU0hBNTEyKSkKKwlpZiAo
IUlTX0VOQUJMRUQoQ09ORklHX0hBVkVfRElHRVNUX1NIQTUxMikpCiAJCXJldHVybiAwOwogCiAJ
cmV0dXJuIGRpZ2VzdF9hbGdvX3JlZ2lzdGVyKCZtNTEyKTsKLS0gCjIuMzUuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

