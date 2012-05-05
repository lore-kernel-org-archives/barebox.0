Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQmgU-0006qd-DO
 for barebox@lists.infradead.org; Sat, 05 May 2012 21:38:34 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sat, 05 May 2012 23:35:10 +0200
Message-ID: <m3sjfemhv5.fsf@intrepid.localdomain>
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
Subject: [PATCH] NOR flash: reduce size of cfiword_t if not using 64-bit bus.
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoY0BwbS53YXcucGw+CgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoLmggYi9kcml2ZXJzL25vci9jZmlfZmxhc2guaApp
bmRleCBkZjQ4MmI2Li5mZWMwODk0IDEwMDY0NAotLS0gYS9kcml2ZXJzL25vci9jZmlfZmxhc2gu
aAorKysgYi9kcml2ZXJzL25vci9jZmlfZmxhc2guaApAQCAtMzAsNyArMzAsMTcgQEAKICNpbmNs
dWRlIDxsaW51eC9tdGQvbXRkLmg+CiAKIHR5cGVkZWYgdW5zaWduZWQgbG9uZyBmbGFzaF9zZWN0
X3Q7CisKKyNpZiAgIGRlZmluZWQoQ09ORklHX0RSSVZFUl9DRklfQkFOS19XSURUSF84KQogdHlw
ZWRlZiB1NjQgY2Zpd29yZF90OworI2VsaWYgZGVmaW5lZChDT05GSUdfRFJJVkVSX0NGSV9CQU5L
X1dJRFRIXzQpCit0eXBlZGVmIHUzMiBjZml3b3JkX3Q7CisjZWxpZiBkZWZpbmVkKENPTkZJR19E
UklWRVJfQ0ZJX0JBTktfV0lEVEhfMikKK3R5cGVkZWYgdTE2IGNmaXdvcmRfdDsKKyNlbHNlCit0
eXBlZGVmIHU4IGNmaXdvcmRfdDsKKyNlbmRpZgorCiBzdHJ1Y3QgY2ZpX2NtZF9zZXQ7CiAKIC8q
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
