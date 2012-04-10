Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHOhF-0002tX-DG
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 00:12:34 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 613CDA6103
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 02:12:27 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Apr 2012 02:12:25 +0200
Message-Id: <1334016745-7914-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] cfi_flash_intel: fix buffer write for width > 2
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBkb2VzIHdoYXQgdGhlIGNvbW1lbnQgdGVsbHMgdGhlIGNvZGUgc2hvdWxkIGRv
LgpBY3R1YWwgY29kZSBmYWlscyBmb3Igd2lkdGggPSA0ICh2ZXJpZmllZCA6IG9ubHkgaGFsZiBv
ZiB0aGUgYnVmZmVyCmlzIGNvcGllZCBiZWNhdXNlIGxlbiBpcyBkaXZpZGVkIGJ5IDggaW5zdGVh
ZCBvZiA0KSBhbmQgOCB3aGVyZSBsZW4Kd2lsbCBiZSBkaXZpZGVkIGJ5IDEyOC4KVGhlIGJ1ZyB3
YXMgaW50cm9kdWNlZCBpbiAzZDNjMTNkOGY4MjM4ZDBlZDZlM2UyMzg0MTczN2RlNTNiMmM0MjRm
CgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2
ZXJzL25vci9jZmlfZmxhc2hfaW50ZWwuYyB8ICAgIDIgKy0KIDEgZmlsZXMgY2hhbmdlZCwgMSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbm9yL2Nm
aV9mbGFzaF9pbnRlbC5jIGIvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2ludGVsLmMKaW5kZXggNjMx
OGNmZS4uM2IzMjVjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2ludGVsLmMK
KysrIGIvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2ludGVsLmMKQEAgLTY4LDcgKzY4LDcgQEAgc3Rh
dGljIGludCBpbnRlbF9mbGFzaF93cml0ZV9jZmlidWZmZXIgKHN0cnVjdCBmbGFzaF9pbmZvICpp
bmZvLCB1bG9uZyBkZXN0LCBjb24KIAkJcmV0dXJuIHJldGNvZGU7CiAKIAkvKiByZWR1Y2UgdGhl
IG51bWJlciBvZiBsb29wcyBieSB0aGUgd2lkdGggb2YgdGhlIHBvcnQJKi8KLQljbnQgPSBsZW4g
Pj4gKGluZm8tPnBvcnR3aWR0aCAtIDEpOworCWNudCA9IGxlbiA+PiAoaW5mby0+cG9ydHdpZHRo
ID09IDggPyAzIDogaW5mby0+cG9ydHdpZHRoID4+IDEpOwogCiAJZmxhc2hfd3JpdGVfY21kKGlu
Zm8sIHNlY3RvciwgMCwgKHUzMiljbnQgLSAxKTsKIAl3aGlsZSAoY250LS0gPiAwKSB7Ci0tIAox
LjcuNy42CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
