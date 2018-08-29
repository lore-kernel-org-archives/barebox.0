Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSy-0005Ux-Bw
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C8740A00E26
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:02 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:02 +0200
Message-Id: <1535545212-18871-47-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 46/56] UBI: Fix two typos in comments
To: barebox@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBSZW1tZXQgPHQucmVtbWV0QHBoeXRlYy5kZT4KLS0t
CiBkcml2ZXJzL210ZC91YmkvdWJpLW1lZGlhLmggfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
dWJpL3ViaS1tZWRpYS5oIGIvZHJpdmVycy9tdGQvdWJpL3ViaS1tZWRpYS5oCmluZGV4IDI3YzQ5
YmVhZmUxNy4uNDM1ODQ4NDM1NDJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC91YmkvdWJpLW1l
ZGlhLmgKKysrIGIvZHJpdmVycy9tdGQvdWJpL3ViaS1tZWRpYS5oCkBAIC0yMjUsNyArMjI1LDcg
QEAgc3RydWN0IHViaV9lY19oZHIgewogICogY29weS4gVUJJIGFsc28gY2FsY3VsYXRlcyBkYXRh
IENSQyB3aGVuIHRoZSBkYXRhIGlzIG1vdmVkIGFuZCBzdG9yZXMgaXQgYXQKICAqIHRoZSBAZGF0
YV9jcmMgZmllbGQgb2YgdGhlIGNvcHkgKFAxKS4gU28gd2hlbiBVQkkgbmVlZHMgdG8gcGljayBv
bmUgcGh5c2ljYWwKICAqIGVyYXNlYmxvY2sgb2YgdHdvIChQIG9yIFAxKSwgdGhlIEBjb3B5X2Zs
YWcgb2YgdGhlIG5ld2VyIG9uZSAoUDEpIGlzCi0gKiBleGFtaW5lZC4gSWYgaXQgaXMgY2xlYXJl
ZCwgdGhlIHNpdHVhdGlvbiogaXMgc2ltcGxlIGFuZCB0aGUgbmV3ZXIgb25lIGlzCisgKiBleGFt
aW5lZC4gSWYgaXQgaXMgY2xlYXJlZCwgdGhlIHNpdHVhdGlvbiBpcyBzaW1wbGUgYW5kIHRoZSBu
ZXdlciBvbmUgaXMKICAqIHBpY2tlZC4gSWYgaXQgaXMgc2V0LCB0aGUgZGF0YSBDUkMgb2YgdGhl
IGNvcHkgKFAxKSBpcyBleGFtaW5lZC4gSWYgdGhlIENSQwogICogY2hlY2tzdW0gaXMgY29ycmVj
dCwgdGhpcyBwaHlzaWNhbCBlcmFzZWJsb2NrIGlzIHNlbGVjdGVkIChQMSkuIE90aGVyd2lzZQog
ICogdGhlIG9sZGVyIG9uZSAoUCkgaXMgc2VsZWN0ZWQuCkBAIC0zODUsNyArMzg1LDcgQEAgc3Ry
dWN0IHViaV92dGJsX3JlY29yZCB7CiAjZGVmaW5lIFVCSV9GTV9QT09MX01BR0lDCTB4NjdBRjRE
MDgKICNkZWZpbmUgVUJJX0ZNX0VCQV9NQUdJQwkweGYwYzA0MGE4CiAKLS8qIEEgZmFzdG1hcCBz
dXBiZXIgYmxvY2sgY2FuIGJlIGxvY2F0ZWQgYmV0d2VlbiBQRUIgMCBhbmQKKy8qIEEgZmFzdG1h
cCBzdXBlciBibG9jayBjYW4gYmUgbG9jYXRlZCBiZXR3ZWVuIFBFQiAwIGFuZAogICogVUJJX0ZN
X01BWF9TVEFSVCAqLwogI2RlZmluZSBVQklfRk1fTUFYX1NUQVJUCTY0CiAKLS0gCjIuNy40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
