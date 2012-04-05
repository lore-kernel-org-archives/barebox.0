Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjCN-00012L-AW
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:41:48 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 6C6B24B00B9
 for <barebox@lists.infradead.org>; Thu,  5 Apr 2012 11:41:37 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu,  5 Apr 2012 11:41:36 +0200
Message-Id: <1333618896-7863-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] imx27-regs: fix .h usage in assembly file
To: barebox@lists.infradead.org

N2FiMGEwYSBpLk1YMjc6IEFkZGVkIGhlbHBlciBmb3Igc2V0dXAgY2hpcHNlbGVjdCBjb250cm9s
IHJlZ2lzdGVyCmFkZGVkIGFuIGhlbHBlciB3aGljaCB0cmlnZ2VycyB0aGUgZm9sbG93aW5nIGVy
cm9yIDoKYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lteDI3LXJlZ3MuaDoyNDM6IEVy
cm9yOiBiYWQgaW5zdHJ1Y3Rpb24gYHN0YXRpYyBpbmxpbmUgdm9pZCBpbXgyN19zZXR1cF93ZWlt
Y3Moc2l6ZV90IGNzLHVuc2lnbmVkIHVwcGVyLHVuc2lnbmVkIGxvd2VyLHVuc2lnbmVkIGFkZGlv
bmFsKScKClRoaXMgcGF0Y2ggZml4IHRoaXMgcHJvYmxlbS4KClNpZ25lZC1vZmYtYnk6IEVyaWMg
QsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUv
bWFjaC9pbXgyNy1yZWdzLmggfCAgICAyICsrCiAxIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9pbmNs
dWRlL21hY2gvaW14MjctcmVncy5oIGIvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lt
eDI3LXJlZ3MuaAppbmRleCAyNWVhMDRhLi40MzdjYzdkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9t
YWNoLWlteC9pbmNsdWRlL21hY2gvaW14MjctcmVncy5oCisrKyBiL2FyY2gvYXJtL21hY2gtaW14
L2luY2x1ZGUvbWFjaC9pbXgyNy1yZWdzLmgKQEAgLTI0MCwxMSArMjQwLDEzIEBACiAjZGVmaW5l
IElNWF9DUzRfQkFTRQkweEQ0MDAwMDAwCiAjZGVmaW5lIElNWF9DUzVfQkFTRQkweEQ2MDAwMDAw
CiAKKyNpZm5kZWYgX19BU1NFTUJMWV9fCiBzdGF0aWMgaW5saW5lIHZvaWQgaW14Mjdfc2V0dXBf
d2VpbWNzKHNpemVfdCBjcywgdW5zaWduZWQgdXBwZXIsIHVuc2lnbmVkIGxvd2VyLCB1bnNpZ25l
ZCBhZGRpb25hbCkKIHsKIAlDU3hVKGNzKSA9IHVwcGVyOwogCUNTeEwoY3MpID0gbG93ZXI7CiAJ
Q1N4QShjcykgPSBhZGRpb25hbDsKIH0KKyNlbmRpZiAvKiBfX0FTU0VNQkxZX18gKi8KIAogI2Vu
ZGlmIC8qIF9JTVgyN19SRUdTX0ggKi8KLS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
