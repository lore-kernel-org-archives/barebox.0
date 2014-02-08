Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC8k8-0004mk-UY
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 14:18:54 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 2668DD480A1
 for <barebox@lists.infradead.org>; Sat,  8 Feb 2014 15:16:19 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  8 Feb 2014 15:16:06 +0100
Message-Id: <1391868972-31978-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/7] sata-imx: i.MX53, use the internal 120MHz clock by default
To: barebox@lists.infradead.org

dGhpcyBhbGxvd3MgU0FUQSB0byB3b3JrIG9uIGkuTVg1MyBRU0ItUiA6CmJhcmVib3hARnJlZXNj
YWxlIGkuTVg1MyBRdWljayBTdGFydC1SIEJvYXJkOi8gYXRhMC5wcm9iZT0xCmlteC1zYXRhIDEw
MDAwMDAwLnNhdGE6IHBvcnQgMDogU0FUQSBsaW5rIG9rCmlteC1zYXRhIDEwMDAwMDAwLnNhdGE6
IHBvcnQgMDogU3Bpbm5pbmcgdXAgZGV2aWNlLi4uCmlteC1zYXRhIDEwMDAwMDAwLnNhdGE6IHBv
cnQgMDogb2suCmF0YTA6IHJlZ2lzdGVyZWQgL2Rldi9hdGEwCgpiZWZvcmUgdGhpcyBmaXggdGhl
IGxvZyB3YXMgOgpiYXJlYm94QEZyZWVzY2FsZSBpLk1YNTMgUXVpY2sgU3RhcnQtUiBCb2FyZDov
IGF0YTAucHJvYmU9MQppbXgtc2F0YSAxMDAwMDAwMC5zYXRhOiBwb3J0IDA6IFNBVEEgbGluayB0
aW1lb3V0CnNldCBwYXJhbWV0ZXI6IENvbm5lY3Rpb24gdGltZWQgb3V0CgpTaWduZWQtb2ZmLWJ5
OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL2F0YS9zYXRhLWlt
eC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hdGEvc2F0YS1pbXguYyBiL2RyaXZlcnMvYXRhL3NhdGEt
aW14LmMKaW5kZXggYjdiZDExMC4uNDUwY2Y0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEvc2F0
YS1pbXguYworKysgYi9kcml2ZXJzL2F0YS9zYXRhLWlteC5jCkBAIC01OSw3ICs1OSw3IEBAIHN0
YXRpYyBpbnQgaW14NTNfc2F0YV9pbml0KHN0cnVjdCBpbXhfYWhjaSAqaW14X2FoY2kpCiAJICov
CiAJdmFsID0gcmVhZGwoYmFzZSArIDB4MTgwYyk7CiAJdmFsICY9ICgweDMgPDwgMSk7Ci0JdmFs
IHw9ICgweDEgPDwgMSk7CisJdmFsIHw9ICgweDIgPDwgMSk7CiAJd3JpdGVsKHZhbCwgYmFzZSAr
IDB4MTgwYyk7CiAKIAlyZXR1cm4gMDsKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
