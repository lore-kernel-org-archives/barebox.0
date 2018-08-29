Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSt-0005UT-FA
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1F481A00DDA
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:01 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:55 +0200
Message-Id: <1535545212-18871-40-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 39/56] UBI: Fix crash in try_recover_peb()
To: barebox@lists.infradead.org

RnJvbTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KCiAgICBkcml2
ZXJzL210ZC91YmkvZWJhLmM6IEluIGZ1bmN0aW9uIOKAmHRyeV9yZWNvdmVyX3BlYuKAmToKICAg
IGRyaXZlcnMvbXRkL3ViaS9lYmEuYzo3NDQ6IHdhcm5pbmc6IOKAmHZpZF9oZHLigJkgaXMgdXNl
ZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24KClRoZSBwb2ludGVyIHZpZF9oZHIgaXMg
aW5kZWVkIG5vdCBpbml0aWFsaXplZCwgbGVhZGluZyB0byBhIGNyYXNoIHdoZW4KaXQgaXMgZGVy
ZWZlcmVuY2VkLgoKRml4IHRoaXMgYnkgb2J0YWluaW5nIHRoZSBwb2ludGVyIGZyb20gdGhlIFZJ
RCBidWZmZXIsIGxpa2UgaXMgZG9uZQpldmVyeXdoZXJlIGVsc2UuCgpGaXhlczogMzI5MWI1MmY5
ZmYwYWNjOCAoIlVCSTogaW50cm9kdWNlIHRoZSBWSUQgYnVmZmVyIGNvbmNlcHQiKQpTaWduZWQt
b2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgpSZXZpZXdl
ZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AZnJlZS1lbGVjdHJvbnMuY29t
PgpTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PgpTaWdu
ZWQtb2ZmLWJ5OiBUZXJlc2EgUmVtbWV0IDx0LnJlbW1ldEBwaHl0ZWMuZGU+Ci0tLQogZHJpdmVy
cy9tdGQvdWJpL2ViYS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL210ZC91YmkvZWJhLmMgYi9kcml2ZXJzL210ZC91YmkvZWJhLmMK
aW5kZXggN2MwZmRlZmEyNTc2Li5kNWI0N2NjMjA1MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRk
L3ViaS9lYmEuYworKysgYi9kcml2ZXJzL210ZC91YmkvZWJhLmMKQEAgLTY1Miw2ICs2NTIsNyBA
QCBzdGF0aWMgaW50IHRyeV9yZWNvdmVyX3BlYihzdHJ1Y3QgdWJpX3ZvbHVtZSAqdm9sLCBpbnQg
cG51bSwgaW50IGxudW0sCiAJCWdvdG8gb3V0X3B1dDsKIAl9CiAKKwl2aWRfaGRyID0gdWJpX2dl
dF92aWRfaGRyKHZpZGIpOwogCXViaV9hc3NlcnQodmlkX2hkci0+dm9sX3R5cGUgPT0gVUJJX1ZJ
RF9EWU5BTUlDKTsKIAogCW1lbXNldCh1YmktPnBlYl9idWYgKyBvZmZzZXQsIDB4RkYsIGxlbik7
Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
