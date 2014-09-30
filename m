Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYvPb-0001UA-Fd
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 11:16:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C103EA00104
 for <barebox@lists.infradead.org>; Tue, 30 Sep 2014 13:15:51 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 30 Sep 2014 13:15:26 +0200
Message-Id: <1412075730-5946-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv3 1/5] of: base: Add for_each_node_by_name_from
To: barebox@lists.infradead.org

QWRkZWQgZm9yX2VhY2hfbm9kZV9ieV9uYW1lX2Zyb20oKSB0byBiZSBhYmxlIHRvCnBhc3MgZXh0
ZXJuYWwgcm9vdCBub2RlLgoKU2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBw
aHl0ZWMuZGU+Ci0tLQogaW5jbHVkZS9vZi5oIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL29mLmggYi9pbmNsdWRlL29mLmgKaW5k
ZXggZTY5OTNmZC4uY2QyYmZlMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9vZi5oCisrKyBiL2luY2x1
ZGUvb2YuaApAQCAtNTY4LDYgKzU2OCw5IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRldmljZV9k
ICpvZl9maW5kX2RldmljZV9ieV9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAjZGVmaW5l
IGZvcl9lYWNoX25vZGVfYnlfbmFtZShkbiwgbmFtZSkgXAogCWZvciAoZG4gPSBvZl9maW5kX25v
ZGVfYnlfbmFtZShOVUxMLCBuYW1lKTsgZG47IFwKIAkgICAgIGRuID0gb2ZfZmluZF9ub2RlX2J5
X25hbWUoZG4sIG5hbWUpKQorI2RlZmluZSBmb3JfZWFjaF9ub2RlX2J5X25hbWVfZnJvbShkbiwg
cm9vdCwgbmFtZSkgXAorCWZvciAoZG4gPSBvZl9maW5kX25vZGVfYnlfbmFtZShyb290LCBuYW1l
KTsgZG47IFwKKwkgICAgIGRuID0gb2ZfZmluZF9ub2RlX2J5X25hbWUoZG4sIG5hbWUpKQogI2Rl
ZmluZSBmb3JfZWFjaF9jb21wYXRpYmxlX25vZGUoZG4sIHR5cGUsIGNvbXBhdGlibGUpIFwKIAlm
b3IgKGRuID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgdHlwZSwgY29tcGF0aWJsZSk7
IGRuOyBcCiAJICAgICBkbiA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKGRuLCB0eXBlLCBjb21w
YXRpYmxlKSkKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
