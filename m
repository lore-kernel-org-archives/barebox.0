Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbPqG-0002Aq-5h
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 06:00:54 +0000
From: =?UTF-8?q?=E5=BC=A0=E5=BF=A0=E5=B1=B1?= <zzs213@126.com>
Date: Thu, 22 Nov 2012 14:01:36 +0800
Message-Id: <1353564096-18861-1-git-send-email-zzs213@126.com>
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
Subject: [PATCH] read cfi device id according the bus width
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTog5byg5b+g5bGxIDx6enMyMTNAMTI2LmNvbT4KLS0tCiBkcml2ZXJzL25v
ci9jZmlfZmxhc2hfYW1kLmMgfCAgICA3ICsrKysrLS0KIDEgZmlsZXMgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbm9yL2NmaV9m
bGFzaF9hbWQuYyBiL2RyaXZlcnMvbm9yL2NmaV9mbGFzaF9hbWQuYwppbmRleCA0NWM1OWI5Li4z
YWI0YmUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMKKysrIGIvZHJp
dmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jCkBAIC02Miw4ICs2MiwxMSBAQCBzdGF0aWMgdm9pZCBh
bWRfcmVhZF9qZWRlY19pZHMgKHN0cnVjdCBmbGFzaF9pbmZvICppbmZvKQogCXVkZWxheSgxMDAw
KTsgLyogc29tZSBmbGFzaCBhcmUgc2xvdyB0byByZXNwb25kICovCiAKIAlpbmZvLT5tYW51ZmFj
dHVyZXJfaWQgPSBqZWRlY19yZWFkX21mcihpbmZvKTsKLQlpbmZvLT5kZXZpY2VfaWQgPSBmbGFz
aF9yZWFkX3VjaGFyIChpbmZvLAotCQkJCQlGTEFTSF9PRkZTRVRfREVWSUNFX0lEKTsKKwlpZihp
bmZvLT5jaGlwd2lkdGggPT0gRkxBU0hfQ0ZJX0JZMTYpCisJCWluZm8tPmRldmljZV9pZCA9IGZs
YXNoX3JlYWQxNihmbGFzaF9tYWtlX2FkZHIoaW5mbywgMCwgRkxBU0hfT0ZGU0VUX0RFVklDRV9J
RCkpOworCWVsc2UKKwkJaW5mby0+ZGV2aWNlX2lkID0gZmxhc2hfcmVhZF91Y2hhciAoaW5mbywK
KwkJCQkJCUZMQVNIX09GRlNFVF9ERVZJQ0VfSUQpOwogCWlmIChpbmZvLT5kZXZpY2VfaWQgPT0g
MHg3RSkgewogCQkvKiBBTUQgMy1ieXRlIChleHBhbmRlZCkgZGV2aWNlIGlkcyAqLwogCQlpbmZv
LT5kZXZpY2VfaWQyID0gZmxhc2hfcmVhZF91Y2hhciAoaW5mbywKLS0gCjEuNy40LjQKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
