Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGcBN-0005xL-HH
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 23:38:02 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 29 Jan 2015 00:37:33 +0100
Message-Id: <1422488254-18414-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1422488254-18414-1-git-send-email-eric@eukrea.com>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] dhcp: fix request packet
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

d2UgYXJlIG5vdCBzdXBwb3NlZCB0byBmaWxsIGNpYWRkciwgeWlhZGRyIGFuZCBzaWFkZHIgaW4g
dGhlIHJlcXVlc3QgcGFja2V0LgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1
a3JlYS5jb20+Ci0tLQogbmV0L2RoY3AuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9kaGNwLmMgYi9uZXQv
ZGhjcC5jCmluZGV4IDc4NDQwZGQuLjdmOWI5ODkgMTAwNjQ0Ci0tLSBhL25ldC9kaGNwLmMKKysr
IGIvbmV0L2RoY3AuYwpAQCAtNTU5LDkgKzU1OSw3IEBAIHN0YXRpYyB2b2lkIGRoY3Bfc2VuZF9y
ZXF1ZXN0X3BhY2tldChzdHJ1Y3QgYm9vdHAgKmJwX29mZmVyKQogCWJwLT5icF9ob3BzID0gMDsK
IAkvKiBGSVhNRSB3aGF0IGlzIHRoaXM/ICovCiAvLwlicC0+YnBfc2VjcyA9IGh0b25zKGdldF90
aW1lcigwKSAvIENGR19IWik7Ci0JbmV0X2NvcHlfaXAoJmJwLT5icF9jaWFkZHIsICZicF9vZmZl
ci0+YnBfY2lhZGRyKTsgLyogYm90aCBpbiBuZXR3b3JrIGJ5dGUgb3JkZXIgKi8KLQluZXRfY29w
eV9pcCgmYnAtPmJwX3lpYWRkciwgJmJwX29mZmVyLT5icF95aWFkZHIpOwotCW5ldF9jb3B5X2lw
KCZicC0+YnBfc2lhZGRyLCAmYnBfb2ZmZXItPmJwX3NpYWRkcik7CisKIAkvKgogCSAqIFJGQzMw
NDYgcmVxdWlyZXMgUmVsYXkgQWdlbnRzIHRvIGRpc2NhcmQgcGFja2V0cyB3aXRoCiAJICogbm9u
emVybyBhbmQgb2ZmZXJlZCBnaWFkZHIKLS0gCjEuOS4zCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
