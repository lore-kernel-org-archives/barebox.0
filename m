Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNEDn-0007O9-Hw
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 11:55:04 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 29 Sep 2020 13:54:57 +0200
Message-Id: <20200929115457.5034-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of
 overwriting
To: barebox@lists.infradead.org

VGhpcyBjb3JyZXNwb25kcyB0byBMaW51eCBjb21taXQgN2UyNTIxYTg1Yzk4ICh0aGF0IGN1cnJl
bnRseSBzaXRzIGluCmxpbnV4LW5leHQpIHdpdGggdGhlIHNhbWUgc2hvcnQgbG9nLgoKV2hlbiBi
dWlsZGluZyB3aXRoCgoJJCBIT1NUX0VYVFJBQ0ZMQUdTPS1nIG1ha2UKCnRoZSBleHBlY3RhdGlv
biBpcyB0aGF0IGhvc3QgdG9vbHMgYXJlIGJ1aWx0IHdpdGggZGVidWcgaW5mb3JtYXRpb25zLgpU
aGlzIGhvd2V2ZXIgZG9lc24ndCBoYXBwZW4gaWYgdGhlIE1ha2VmaWxlIGFzc2lnbnMgYSBuZXcg
dmFsdWUgdG8gdGhlCkhPU1RfRVhUUkFDRkxBR1MgaW5zdGVhZCBvZiBhcHBlbmRpbmcgdG8gaXQu
IFNvIHVzZSArPSBpbnN0ZWFkIG9mIDo9IGZvcgp0aGUgZmlyc3QgYXNzaWdubWVudC4KClNpZ25l
ZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+Ci0tLQogc2NyaXB0cy9kdGMvTWFrZWZpbGUgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2R0Yy9NYWtl
ZmlsZSBiL3NjcmlwdHMvZHRjL01ha2VmaWxlCmluZGV4IDA2YTI2NWNmN2I1MS4uNzIxZThlMmI4
YzJlIDEwMDY0NAotLS0gYS9zY3JpcHRzL2R0Yy9NYWtlZmlsZQorKysgYi9zY3JpcHRzL2R0Yy9N
YWtlZmlsZQpAQCAtMTQsNyArMTQsNyBAQCBsaWJmZHQtb2Jqcwk6PSAkKGxpYmZkdC1vYmpzOiUu
bz1saWJmZHQvJS5vKQogZmR0Z2V0LW9ianMgICAgKz0gZmR0Z2V0Lm8gJChsaWJmZHQtb2Jqcykg
dXRpbC5vCiAKICMgU291cmNlIGZpbGVzIG5lZWQgdG8gZ2V0IGF0IHRoZSB1c2Vyc3BhY2UgdmVy
c2lvbiBvZiBsaWJmZHRfZW52LmggdG8gY29tcGlsZQotSE9TVF9FWFRSQUNGTEFHUyA6PSAtSSQo
c3JjKS9saWJmZHQKK0hPU1RfRVhUUkFDRkxBR1MgKz0gLUkkKHNyYykvbGliZmR0CiAKIGlmZXEg
KCQod2lsZGNhcmQgL3Vzci9pbmNsdWRlL3lhbWwuaCksKQogaWZuZXEgKCQoQ0hFQ0tfRFRCUyks
KQotLSAKMi4yOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
