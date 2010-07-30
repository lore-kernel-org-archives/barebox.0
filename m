Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OesYd-0004zH-BA
	for barebox@lists.infradead.org; Fri, 30 Jul 2010 16:35:40 +0000
From: =?utf-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 30 Jul 2010 18:35:32 +0200
Message-Id: <1280507732-1721-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb/gadget/fsl_udc.c: fix data corruption
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

dGhlIGF0dGFjaGVkIHBhdGNoIGZpeGVzIGEgZGF0YSBjb3JydXB0aW9uIG9uIHRoZSA4IGxhc3Qg
Ynl0ZXMgb2YgdGhlIGZpcnN0CnBhY2tldCByZWNlaXZlZCBkdXJpbmcgZGZ1IHdoaWNoIGFyZSBh
bHdheXMgd3Jvbmcgd2hlbiBkZnUgaXMgZXhlY3V0ZWQgZm9yCnRoZSBmaXJzdCB0aW1lLCB0aHVz
IHByZXZlbnRpbmcgZmxhc2hpbmcgdGhlIHJpZ2h0IGJpbmFyeSBvbiB0aGUgYm9hcmQuClRoaXMg
d2FzIGZvdW5kIGFuZCBpcyB0ZXN0ZWQgb24gYW4gaS5NWDI3LgoKU2lnbmVkLW9mZi1ieTogRXJp
YyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVycy91c2IvZ2FkZ2V0L2ZzbF91
ZGMuYyB8ICAgIDIgKysKIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC9mc2xfdWRjLmMgYi9kcml2
ZXJzL3VzYi9nYWRnZXQvZnNsX3VkYy5jCmluZGV4IDExOWFmY2IuLjc3ZDY1NDEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdXNiL2dhZGdldC9mc2xfdWRjLmMKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0
L2ZzbF91ZGMuYwpAQCAtMTE1NSw2ICsxMTU1LDggQEAgc3RhdGljIHN0cnVjdCBlcF90ZF9zdHJ1
Y3QgKmZzbF9idWlsZF9kdGQoc3RydWN0IGZzbF9yZXEgKnJlcSwgdW5zaWduZWQgKmxlbmd0aCwK
IAogCWR0ZC0+c2l6ZV9pb2Nfc3RzID0gY3B1X3RvX2xlMzIoc3dhcF90ZW1wKTsKIAorCWRtYV9p
bnZfcmFuZ2UocmVxLT5yZXEuYnVmLCByZXEtPnJlcS5idWYgKyByZXEtPnJlcS5sZW5ndGgpOwor
CiAJVkRCRygibGVuZ3RoID0gJWQgYWRkcmVzcz0gMHgleCIsICpsZW5ndGgsIChpbnQpKmRtYSk7
CiAKIAlyZXR1cm4gZHRkOwotLSAKMS42LjMuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
