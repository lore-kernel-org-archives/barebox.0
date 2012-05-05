Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQmhw-0006rX-8t
 for barebox@lists.infradead.org; Sat, 05 May 2012 21:40:05 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sat, 05 May 2012 23:36:40 +0200
Message-ID: <m3k40qmhsn.fsf@intrepid.localdomain>
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
Subject: [PATCH] Cosmetic: fix endianness convertions in read[wlq]().
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoY0BwbS53YXcucGw+CgpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9pby5oIGIvaW5jbHVkZS9hc20tZ2VuZXJpYy9pby5o
CmluZGV4IDNmMGY1YTIuLjg0ODBhY2YgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvYXNtLWdlbmVyaWMv
aW8uaAorKysgYi9pbmNsdWRlL2FzbS1nZW5lcmljL2lvLmgKQEAgLTM1LDggKzM1LDggQEAKICNl
bmRpZgogCiAjZGVmaW5lIHJlYWRiIF9fcmF3X3JlYWRiCi0jZGVmaW5lIHJlYWR3KGFkZHIpIF9f
bGUxNl90b19jcHUoX19yYXdfcmVhZHcoYWRkcikpCi0jZGVmaW5lIHJlYWRsKGFkZHIpIF9fbGUz
Ml90b19jcHUoX19yYXdfcmVhZGwoYWRkcikpCisjZGVmaW5lIHJlYWR3KGFkZHIpIF9fY3B1X3Rv
X2xlMTYoX19yYXdfcmVhZHcoYWRkcikpCisjZGVmaW5lIHJlYWRsKGFkZHIpIF9fY3B1X3RvX2xl
MzIoX19yYXdfcmVhZGwoYWRkcikpCiAKICNpZm5kZWYgX19yYXdfd3JpdGViCiAjZGVmaW5lIF9f
cmF3X3dyaXRlYih2LGEpCShfX2Noa19pb19wdHIoYSksICoodm9sYXRpbGUgdW5zaWduZWQgY2hh
ciBfX2ZvcmNlICAqKShhKSA9ICh2KSkKQEAgLTU5LDcgKzU5LDcgQEAgc3RhdGljIGlubGluZSB1
NjQgX19yYXdfcmVhZHEoY29uc3Qgdm9sYXRpbGUgdm9pZCBfX2lvbWVtICphZGRyKQogewogCXJl
dHVybiAqKGNvbnN0IHZvbGF0aWxlIHU2NCBfX2ZvcmNlICopIGFkZHI7CiB9Ci0jZGVmaW5lIHJl
YWRxKGFkZHIpIF9fbGU2NF90b19jcHUoX19yYXdfcmVhZHEoYWRkcikpCisjZGVmaW5lIHJlYWRx
KGFkZHIpIF9fY3B1X3RvX2xlNjQoX19yYXdfcmVhZHEoYWRkcikpCiAKIHN0YXRpYyBpbmxpbmUg
dm9pZCBfX3Jhd193cml0ZXEodTY0IGIsIHZvbGF0aWxlIHZvaWQgX19pb21lbSAqYWRkcikKIHsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
