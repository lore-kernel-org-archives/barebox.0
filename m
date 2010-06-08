Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OLveK-0002Hb-PT
	for barebox@lists.infradead.org; Tue, 08 Jun 2010 10:03:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 2A428BF0D9
	for <barebox@lists.infradead.org>;
	Tue,  8 Jun 2010 12:03:26 +0200 (CEST)
From: Teresa Gamez <T.Gamez@phytec.de>
Date: Tue, 08 Jun 2010 12:03:02 +0200
Message-ID: <1275991382.18173.37.camel@lws-gamez>
Mime-Version: 1.0
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
Subject: [PATCH] mx2 GPIO OCRx register
To: barebox@lists.infradead.org

VGhlIEdQSU8gT0NSeCByZWdpc3RlciBoYXMgdG8gYmUgc2V0IGNvcnJlY3Qgb3IgdGhlIG91dHB1
dCBpcyBub3Qgc2V0IGFzIGV4cGVjdGVkLgoKU2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8
VC5HYW1lekBwaHl0ZWMuZGU+IAotLS0KSW5kZXg6IGJhcmVib3gtMjAxMC4wNi4wL2FyY2gvYXJt
L21hY2gtaW14L2dwaW8uYwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09Ci0tLSBiYXJlYm94LTIwMTAuMDYuMC9hcmNoL2Fy
bS9tYWNoLWlteC9ncGlvLmMJMjAxMC0wNi0wMiAxMDozNjoyOC4wMDAwMDAwMDAgKzAyMDAKKysr
IGJhcmVib3gtMjAxMC4wNi4wL2FyY2gvYXJtL21hY2gtaW14L2dwaW8uYwkyMDEwLTA2LTA4IDEx
OjAyOjMxLjI4MjQ3Mzg3NyArMDIwMApAQCAtMzEsNiArMzEsOCBAQAogI2lmIGRlZmluZWQgQ09O
RklHX0FSQ0hfSU1YMSB8fCBkZWZpbmVkIENPTkZJR19BUkNIX0lNWDIxIHx8IGRlZmluZWQgQ09O
RklHX0FSQ0hfSU1YMjcKICNkZWZpbmUgR1BJT19EUgkJMHgxYwogI2RlZmluZSBHUElPX0dESVIJ
MHgwMAorI2RlZmluZSBHUElPX09DUjEJMHgwNAorI2RlZmluZSBHUElPX09DUjIJMHgwOAogI2Rl
ZmluZSBHUElPX1BTUgkweDI0CiAjZGVmaW5lIEdQSU9fSUNSMQkweDI4CiAjZGVmaW5lIEdQSU9f
SUNSMgkweDJDCkBAIC0xMDMsNiArMTA1LDE4IEBACiAJaWYgKCFiYXNlKQogCQlyZXR1cm4gLUVJ
TlZBTDsKIAorI2lmIGRlZmluZWQgR1BJT19PQ1IxICYmIGRlZmluZWQgR1BJT19PQ1IyCisJaWYg
KHNoaWZ0IDwgMTYpIHsKKwkJdmFsID0gcmVhZGwoYmFzZSArIEdQSU9fT0NSMSk7CisJCXZhbCB8
PSAoMyA8PCAoc2hpZnQgKiAyKSk7CisJCXdyaXRlbCh2YWwsIGJhc2UgKyBHUElPX09DUjEpOwor
CX0gZWxzZSB7CisJCXZhbCA9IHJlYWRsKGJhc2UgKyBHUElPX09DUjIpOworCQl2YWwgfD0gKDMg
PDwgKChzaGlmdCAtIDE2KSAqIDIpKTsKKwkJd3JpdGVsKHZhbCwgYmFzZSArIEdQSU9fT0NSMik7
CisJfQorI2VuZGlmCisKIAlncGlvX3NldF92YWx1ZShncGlvLCB2YWx1ZSk7CiAKIAl2YWwgPSBy
ZWFkbChiYXNlICsgR1BJT19HRElSKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
