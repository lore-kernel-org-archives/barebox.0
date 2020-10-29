Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYEy8-00018b-Cm
 for barebox@lists.infradead.org; Thu, 29 Oct 2020 20:56:25 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 29 Oct 2020 21:56:15 +0100
Message-Id: <20201029205615.103515-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ARM: dts: imx6qdl: pfla02: document motivation for dropping
 supply
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

SW4gY29tbWl0IDg0Y2Y1Y2ZhOWEwZSAoIkFSTTogZHRzOiBpbXg2cWRsOiBwZmxhMDI6IFJlbW92
ZSBmZWMKcGh5LXN1cHBseSIpIHRoZSBwaHktc3VwcGx5IHdhcyByZW1vdmVkLiBUaGUgbW90aXZh
dGlvbiBob3dldmVyIHdhcyBvbmx5CmdpdmVuIGluIHRoZSBjb21taXQgbG9nLiBBZGQgYSBjb21t
ZW50IGFjY29tcGFueWluZyB0aGUgYWN0dWFsIHN0YXRlbWVudAp0byByZW1vdmUgdGhlIHByb3Bl
cnR5IHRvIG1ha2UgdGhpcyBiZXR0ZXIgZmluZGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJt
L2R0cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRzaSB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14NnFkbC1waHl0
ZWMtcGZsYTAyLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NnFkbC1waHl0ZWMtcGZsYTAyLmR0c2kK
aW5kZXggYjgzNTExY2IwMTFmLi43YTEyZTJhMDZiZTQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0
cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvaW14NnFkbC1w
aHl0ZWMtcGZsYTAyLmR0c2kKQEAgLTg0LDYgKzg0LDExIEBACiB9OwogCiAmZmVjIHsKKwkvKgor
CSAqIGJhcmVib3ggZG9lc24ndCBoYXZlIGEgZHJpdmVyIGZvciB0aGUgUE1JQyBwcm92aWRpbmcg
dGhlIHBoeS1zdXBwbHkKKwkgKiAoZGxnLGRhOTA2MykuIFNvIHJlbW92ZSB0aGUgcGh5LXN1cHBs
eSBwcm9wZXJ0eSBhbmQgcmVseSBvbiB0aGUKKwkgKiBQTUlDJ3MgcmVzZXQgZGVmYXVsdCB3aGlj
aCBoYXMgdGhpcyBzdXBwbHkgZW5hYmxlZC4KKwkgKi8KIAkvZGVsZXRlLXByb3BlcnR5LyBwaHkt
c3VwcGx5OwogfTsKIAotLSAKMi4yOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
