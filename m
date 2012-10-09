Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLWVG-0001a5-Ny
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 09:53:31 +0000
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Oct 2012 11:53:24 +0200
Message-Id: <1349776406-14453-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/3] ARM OMAP: gpiolib fix chip.base
To: barebox@lists.infradead.org
Cc: vicencb@gmail.com

ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KQCBW
aWNlbnRlOiBQbGVhc2UgY2hlY2sgaWYgdGhlIHBhdGNoZXMgZml4IHlvdXIgcHJvYmxlbQoKIGFy
Y2gvYXJtL21hY2gtb21hcC9ncGlvLmMgfCAgICAyICstCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9t
YXAvZ3Bpby5jIGIvYXJjaC9hcm0vbWFjaC1vbWFwL2dwaW8uYwppbmRleCAzNzZlOWE3Li40OWZm
YmRhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAvZ3Bpby5jCisrKyBiL2FyY2gvYXJt
L21hY2gtb21hcC9ncGlvLmMKQEAgLTEzMyw3ICsxMzMsNyBAQCBzdGF0aWMgaW50IG9tYXBfZ3Bp
b19wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAlvbWFwZ3BpbyA9IHh6YWxsb2Moc2l6ZW9m
KCpvbWFwZ3BpbykpOwogCW9tYXBncGlvLT5iYXNlID0gZGV2X3JlcXVlc3RfbWVtX3JlZ2lvbihk
ZXYsIDApOwogCW9tYXBncGlvLT5jaGlwLm9wcyA9ICZvbWFwX2dwaW9fb3BzOwotCW9tYXBncGlv
LT5jaGlwLmJhc2UgPSAtMTsKKwlvbWFwZ3Bpby0+Y2hpcC5iYXNlID0gZGV2LT5pZCAqIDMyOwog
CW9tYXBncGlvLT5jaGlwLm5ncGlvID0gMzI7CiAJb21hcGdwaW8tPmNoaXAuZGV2ID0gZGV2Owog
CWdwaW9jaGlwX2FkZCgmb21hcGdwaW8tPmNoaXApOwotLSAKMS43LjAuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
