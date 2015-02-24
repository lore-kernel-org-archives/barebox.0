Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YQAKF-0005fB-Rr
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 07:54:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E3A2BA0010B
 for <barebox@lists.infradead.org>; Tue, 24 Feb 2015 08:55:04 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 24 Feb 2015 08:52:12 +0100
Message-Id: <1424764334-39730-1-git-send-email-t.gamez@phytec.de>
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
Subject: [For next PATCH 1/3] ARM: phytec-som-am335x: Fix rootfs bootargs
To: barebox@lists.infradead.org

VGhlIHJvb2ZzIGlzIG1vdW50ZWQgZnJvbSBuYW5kIHdoZW4gYm9vdGluZyBmcm9tIHNwaS4gVGhl
IFZJRCBoZWFkZXIgb2Zmc2V0CndhcyBzZXQgZml4IHRvIDIwNDguIFRoaXMgaXMgbm90IG5lZWRl
ZCBhbnkgbW9yZS4gUmVtb3ZlZCBpdCBsaWtlIGl0IHdhcyBkb25lCmZvciBuYW5kLgoKU2lnbmVk
LW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJjaC9hcm0v
Ym9hcmRzL3BoeXRlYy1zb20tYW0zMzV4L2RlZmF1bHRlbnYtcGh5c29tLWFtMzM1eC9ib290L3Nw
aSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWFtMzM1eC9kZWZhdWx0ZW52
LXBoeXNvbS1hbTMzNXgvYm9vdC9zcGkgYi9hcmNoL2FybS9ib2FyZHMvcGh5dGVjLXNvbS1hbTMz
NXgvZGVmYXVsdGVudi1waHlzb20tYW0zMzV4L2Jvb3Qvc3BpCmluZGV4IGE5YzBmZTguLjQzYTg5
ZmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWFtMzM1eC9kZWZhdWx0
ZW52LXBoeXNvbS1hbTMzNXgvYm9vdC9zcGkKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1z
b20tYW0zMzV4L2RlZmF1bHRlbnYtcGh5c29tLWFtMzM1eC9ib290L3NwaQpAQCAtNiw0ICs2LDQg
QEAgZ2xvYmFsLmJvb3RtLm9mdHJlZT0iL2Rldi9tMjVwMC5vZnRyZWUiCiBib290YXJncy1pcAog
CiAjIFVzZSByb290ZnMgZnJvbSBOQU5ECi1nbG9iYWwubGludXguYm9vdGFyZ3MuZHluLnJvb3Q9
InJvb3Q9dWJpMDpyb290IHViaS5tdGQ9bmFuZDAucm9vdCwyMDQ4IHJ3IHJvb3Rmc3R5cGU9dWJp
ZnMiCitnbG9iYWwubGludXguYm9vdGFyZ3MuZHluLnJvb3Q9InJvb3Q9dWJpMDpyb290IHViaS5t
dGQ9bmFuZDAucm9vdCBydyByb290ZnN0eXBlPXViaWZzIgotLSAKMS45LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
