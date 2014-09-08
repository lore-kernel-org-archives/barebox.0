Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQygC-0004JN-1a
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:08:24 +0000
Received: by mail-we0-f171.google.com with SMTP id x48so2070333wes.2
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 06:07:59 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  8 Sep 2014 15:07:57 +0200
Message-Id: <1410181677-17441-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1410181677-17441-1-git-send-email-poggi.raph@gmail.com>
References: <1410181677-17441-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] pinctrl: at91: retrieve device id in non dtb probe
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

V2UgbmVlZCB0byByZXRyaWV2ZSB0aGUgZGV2aWNlIGlkIGluIGRldmljZSB0cmVlL25vbiBkZXZp
Y2UgdHJlZSBjYXNlLgoKU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhA
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEuYyB8IDExICsrKysr
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEuYyBiL2RyaXZlcnMvcGlu
Y3RybC9waW5jdHJsLWF0OTEuYwppbmRleCAzZGM4MWM3Li5kMzQyM2QwIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkxLmMKKysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtYXQ5MS5jCkBAIC02MTgsOSArNjE4LDE0IEBAIHN0YXRpYyBpbnQgYXQ5MV9ncGlvX3Byb2Jl
KHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCXN0cnVjdCBhdDkxX2dwaW9fY2hpcCAqYXQ5MV9ncGlv
OwogCXN0cnVjdCBjbGsgKmNsazsKIAlpbnQgcmV0OwotCWludCBhbGlhc19pZHggPSBvZl9hbGlh
c19nZXRfaWQoZGV2LT5kZXZpY2Vfbm9kZSwgImdwaW8iKTsKKwlpbnQgYWxpYXNfaWR4OwogCi0J
QlVHX09OKGRldi0+aWQgPiBNQVhfR1BJT19CQU5LUyk7CisJaWYgKGRldi0+ZGV2aWNlX25vZGUp
CisJCWFsaWFzX2lkeCA9IG9mX2FsaWFzX2dldF9pZChkZXYtPmRldmljZV9ub2RlLCAiZ3BpbyIp
OworCWVsc2UKKwkJYWxpYXNfaWR4ID0gZGV2LT5pZDsKKworCUJVR19PTihhbGlhc19pZHggPiBN
QVhfR1BJT19CQU5LUyk7CiAKIAlhdDkxX2dwaW8gPSAmZ3Bpb19jaGlwW2FsaWFzX2lkeF07CiAK
QEAgLTY0Niw3ICs2NTEsNyBAQCBzdGF0aWMgaW50IGF0OTFfZ3Bpb19wcm9iZShzdHJ1Y3QgZGV2
aWNlX2QgKmRldikKIAlhdDkxX2dwaW8tPmNoaXAub3BzID0gJmF0OTFfZ3Bpb19vcHM7CiAJYXQ5
MV9ncGlvLT5jaGlwLm5ncGlvID0gTUFYX05CX0dQSU9fUEVSX0JBTks7CiAJYXQ5MV9ncGlvLT5j
aGlwLmRldiA9IGRldjsKLQlhdDkxX2dwaW8tPmNoaXAuYmFzZSA9IGRldi0+aWQgKiBNQVhfTkJf
R1BJT19QRVJfQkFOSzsKKwlhdDkxX2dwaW8tPmNoaXAuYmFzZSA9IGFsaWFzX2lkeCAqIE1BWF9O
Ql9HUElPX1BFUl9CQU5LOwogCiAJcmV0ID0gZ3Bpb2NoaXBfYWRkKCZhdDkxX2dwaW8tPmNoaXAp
OwogCWlmIChyZXQpIHsKLS0gCjIuMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
