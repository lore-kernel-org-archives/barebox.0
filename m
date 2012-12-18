Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkxvH-0000Io-O5
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 14:13:35 +0000
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 18 Dec 2012 15:13:24 +0100
Message-Id: <1355840005-11408-7-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1355840005-11408-1-git-send-email-t.gamez@phytec.de>
References: <1355840005-11408-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 6/7] ARM AM33XX: Add mmc0 pin mux function
To: barebox@lists.infradead.org

ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFy
Y2gvYXJtL21hY2gtb21hcC9hbTMzeHhfbXV4LmMgICAgICAgICAgICAgIHwgICAgNSArKysrKwog
YXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUvbWFjaC9hbTMzeHgtbXV4LmggfCAgICAxICsKIDIg
ZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtb21hcC9hbTMzeHhfbXV4LmMgYi9hcmNoL2FybS9tYWNoLW9tYXAv
YW0zM3h4X211eC5jCmluZGV4IDIyYmYzMTcuLjNkN2YyNDUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L21hY2gtb21hcC9hbTMzeHhfbXV4LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9t
dXguYwpAQCAtNTA0LDMgKzUwNCw4IEBAIHZvaWQgZW5hYmxlX3VhcnQwX3Bpbl9tdXgodm9pZCkK
IHsKIAljb25maWd1cmVfbW9kdWxlX3Bpbl9tdXgodWFydDBfcGluX211eCk7CiB9CisKK3ZvaWQg
ZW5hYmxlX21tYzBfcGluX211eCh2b2lkKQoreworCWNvbmZpZ3VyZV9tb2R1bGVfcGluX211eCht
bWMwX3Bpbl9tdXgpOworfQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUv
bWFjaC9hbTMzeHgtbXV4LmggYi9hcmNoL2FybS9tYWNoLW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4
eC1tdXguaAppbmRleCBlZDMyOGY1Li42MDc4YjNhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNo
LW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1tdXguaAorKysgYi9hcmNoL2FybS9tYWNoLW9tYXAv
aW5jbHVkZS9tYWNoL2FtMzN4eC1tdXguaApAQCAtMTgsNSArMTgsNiBAQCBleHRlcm4gdm9pZCBl
bmFibGVfaTJjMF9waW5fbXV4KHZvaWQpOwogZXh0ZXJuIHZvaWQgZW5hYmxlX2kyYzFfcGluX211
eCh2b2lkKTsKIGV4dGVybiB2b2lkIGVuYWJsZV9pMmMyX3Bpbl9tdXgodm9pZCk7CiBleHRlcm4g
dm9pZCBlbmFibGVfdWFydDBfcGluX211eCh2b2lkKTsKK2V4dGVybiB2b2lkIGVuYWJsZV9tbWMw
X3Bpbl9tdXgodm9pZCk7CiAKICNlbmRpZiAvKl9fQU0zM1hYX01VWF9IX18gKi8KLS0gCjEuNy4w
LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
