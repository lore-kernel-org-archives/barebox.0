Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbe5A-0007Bx-JZ
 for barebox@lists.infradead.org; Mon, 04 Jun 2012 20:40:57 +0000
Received: by wgbds1 with SMTP id ds1so3086787wgb.18
 for <barebox@lists.infradead.org>; Mon, 04 Jun 2012 13:40:55 -0700 (PDT)
From: =?UTF-8?q?Dirk=20H=C3=B6rner?= <dirker@gmail.com>
Date: Mon,  4 Jun 2012 22:40:17 +0200
Message-Id: <1338842419-27037-5-git-send-email-dirker@gmail.com>
In-Reply-To: <1338842419-27037-1-git-send-email-dirker@gmail.com>
References: <1338842419-27037-1-git-send-email-dirker@gmail.com>
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
Subject: =?UTF-8?q?=5BPATCH=204/6=5D=20hostcc=20tools=3A=20include=20=22compiler=2Eh=22=2C=20fix=20included=20headers?=
To: barebox@lists.infradead.org

V2hlbiBiYXJlYm94IGhlYWRlcnMgZ2V0IGluY2x1ZGVkIGZyb20gSE9TVENDIHRvb2xzIHRoZXkg
c2hvdWxkIG5vdAppbmNsdWRlIG90aGVyIGFyY2hpdGVjdHVyZSBzcGVjaWZpYyBoZWFkZXJzIGFz
IGJhcmVib3ggbWlnaHQgZ2V0CmNyb3NzLWNvbXBpbGVkLiBJbnN0ZWFkLCB0aGUgdG9vbCBpdHNl
bGYgc2hvdWxkIGluY2x1ZGUgImNvbXBpbGVyLmgiLgoKU2lnbmVkLW9mZi1ieTogRGlyayBIw7Zy
bmVyIDxkaXJrZXJAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZW52ZnMuaCAgICAgIHwgICAgMiAr
KwogaW5jbHVkZS9pbWFnZS5oICAgICAgfCAgICAyICstCiBzY3JpcHRzL2JhcmVib3hlbnYuYyB8
ICAgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9lbnZmcy5oIGIvaW5jbHVkZS9lbnZmcy5oCmluZGV4IGI1
ODQ5ZDkuLjY3Yjg5MDIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZW52ZnMuaAorKysgYi9pbmNsdWRl
L2VudmZzLmgKQEAgLTEsNyArMSw5IEBACiAjaWZuZGVmIF9FTlZGU19ICiAjZGVmaW5lIF9FTlZG
U19ICiAKKyNpZmRlZiBfX0JBUkVCT1hfXwogI2luY2x1ZGUgPGFzbS9ieXRlb3JkZXIuaD4KKyNl
bmRpZgogCiAjZGVmaW5lIEVOVkZTX01BR0lDCQkgICAgMHg3OThmYmE3OQkvKiBzb21lIHJhbmRv
bSBudW1iZXIgKi8KICNkZWZpbmUgRU5WRlNfSU5PREVfTUFHSUMJMHg2N2E4Yzc4ZApkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9pbWFnZS5oIGIvaW5jbHVkZS9pbWFnZS5oCmluZGV4IDM1ZmYwMWIuLjAy
N2I1ZjIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvaW1hZ2UuaAorKysgYi9pbmNsdWRlL2ltYWdlLmgK
QEAgLTMxLDggKzMxLDggQEAKICNpZm5kZWYgX19JTUFHRV9IX18KICNkZWZpbmUgX19JTUFHRV9I
X18KIAotI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaWZkZWYgX19CQVJFQk9YX18KKyNpbmNs
dWRlIDxsaW51eC90eXBlcy5oPgogI2luY2x1ZGUgPGFzbS9ieXRlb3JkZXIuaD4KICNpbmNsdWRl
IDxzdGRpby5oPgogI2luY2x1ZGUgPHN0cmluZy5oPgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9iYXJl
Ym94ZW52LmMgYi9zY3JpcHRzL2JhcmVib3hlbnYuYwppbmRleCBiMGQ1ODE4Li44NjZlMzQ1IDEw
MDY0NAotLS0gYS9zY3JpcHRzL2JhcmVib3hlbnYuYworKysgYi9zY3JpcHRzL2JhcmVib3hlbnYu
YwpAQCAtMzQsNiArMzQsOCBAQAogI2luY2x1ZGUgPGdldG9wdC5oPgogI2luY2x1ZGUgPGxpYmdl
bi5oPgogCisjaW5jbHVkZSAiY29tcGlsZXIuaCIKKwogI2RlZmluZSBkZWJ1ZyguLi4pCiAKIHZv
aWQgKnhtYWxsb2Moc2l6ZV90IHNpemUpCi0tIAoxLjcuMTAuMwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
