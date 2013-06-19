Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpCWu-0002aw-Qb
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 07:10:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 269C3BF0ED
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 09:05:04 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 19 Jun 2013 09:09:43 +0200
Message-Id: <1371625785-27704-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
References: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv3 2/4] omap3_spi: Remove CS check in driver
To: barebox@lists.infradead.org

Qm9hcmQgZmlsZSBvciBEVCBoYXMgdG8gdGFrZSBjYXJlIHRoYXQgdGhlIGNvcnJlY3QKY2hpcCBz
ZWxlY3QgYW5kIGJ1cyB2YWx1ZXMgYXJlIHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8Oh
bWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCmNoYW5nZXMgc2luY2UgdjM6CgktIHNwbGl0dGVk
IHRoZSBmb3JtZXIgIm9tYXAzX3NwaTogQWRkIENTIGNoZWNrIGZvciBBTTMzNXgiCgkgIHBhdGNo
IGludG8gdHdvCgktIHJlbW92ZWQgdGhlIFNQSSBjaGVjayBoZXJlCgogZHJpdmVycy9zcGkvb21h
cDNfc3BpLmMgfCAgICA5IC0tLS0tLS0tLQogMSBmaWxlcyBjaGFuZ2VkLCAwIGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvb21hcDNfc3BpLmMg
Yi9kcml2ZXJzL3NwaS9vbWFwM19zcGkuYwppbmRleCBlNjU4MWRmLi41MDhlMmQ5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3NwaS9vbWFwM19zcGkuYworKysgYi9kcml2ZXJzL3NwaS9vbWFwM19zcGku
YwpAQCAtMzI3LDE1ICszMjcsNiBAQCBzdGF0aWMgaW50IG9tYXAzX3NwaV9zZXR1cChzdHJ1Y3Qg
c3BpX2RldmljZSAqc3BpKQogewogCXN0cnVjdCBzcGlfbWFzdGVyICptYXN0ZXIgPSBzcGktPm1h
c3RlcjsKIAotCWlmICgoKG1hc3Rlci0+YnVzX251bSA9PSAxKSAmJiAoc3BpLT5jaGlwX3NlbGVj
dCA+IDMpKSB8fAotCQkJKChtYXN0ZXItPmJ1c19udW0gPT0gMikgJiYgKHNwaS0+Y2hpcF9zZWxl
Y3QgPiAxKSkgfHwKLQkJCSgobWFzdGVyLT5idXNfbnVtID09IDMpICYmIChzcGktPmNoaXBfc2Vs
ZWN0ID4gMSkpIHx8Ci0JCQkoKG1hc3Rlci0+YnVzX251bSA9PSA0KSAmJiAoc3BpLT5jaGlwX3Nl
bGVjdCA+IDApKSkgewotCQlwcmludGYoIlNQSSBlcnJvcjogdW5zdXBwb3J0ZWQgY2hpcCBzZWxl
Y3QgJWkgXAotCQkJb24gYnVzICVpXG4iLCBzcGktPmNoaXBfc2VsZWN0LCBtYXN0ZXItPmJ1c19u
dW0pOwotCQlyZXR1cm4gLUVJTlZBTDsKLQl9Ci0KIAlpZiAoc3BpLT5tYXhfc3BlZWRfaHogPiBP
TUFQM19NQ1NQSV9NQVhfRlJFUSkgewogCQlwcmludGYoIlNQSSBlcnJvcjogdW5zdXBwb3J0ZWQg
ZnJlcXVlbmN5ICVpIEh6LiBcCiAJCQlNYXggZnJlcXVlbmN5IGlzIDQ4IE1oelxuIiwgc3BpLT5t
YXhfc3BlZWRfaHopOwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
