Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUZwU-0001k0-Mx
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 07:46:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id C59F8BF0CC
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 09:48:58 +0200 (CEST)
From: Teresa Gamez <T.Gamez@phytec.de>
Date: Thu, 09 Jun 2011 09:45:31 +0200
Message-ID: <1307605531.3146.1386.camel@lws-gamez>
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
Subject: [PATCH] [defaultenv/bin/_update] Check return values of erase and
	tftp/cp
To: barebox@lists.infradead.org
Cc: J.Kilb@phytec.de

VGhlIF91cGRhdGUgc2NyaXB0IGRvZXMgbm90IGNoZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgZXJh
c2luZyBhIHBhcnRpdG9uIG9yCmZsYXNoaW5nIHRoZSBpbWFnZSB0byB0aGUgZGV2aWNlLiBBZGRl
ZCB0aGlzIGNoZWNrIHRvIGdldCBhIGV2YWx1YWJsZSByZXR1cm4KdmFsdWUgZnJvbSB0aGUgdXBk
YXRlIHNjcmlwdC4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVj
LmRlPgotLS0KIGRlZmF1bHRlbnYvYmluL191cGRhdGUgfCAgICA2ICsrKy0tLQogMSBmaWxlcyBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZGVm
YXVsdGVudi9iaW4vX3VwZGF0ZSBiL2RlZmF1bHRlbnYvYmluL191cGRhdGUKaW5kZXggZjczNmFj
Yy4uMWJjYjcxYyAxMDA2NDQKLS0tIGEvZGVmYXVsdGVudi9iaW4vX3VwZGF0ZQorKysgYi9kZWZh
dWx0ZW52L2Jpbi9fdXBkYXRlCkBAIC0zNSwxNiArMzUsMTYgQEAgdW5wcm90ZWN0ICRwYXJ0CiBl
Y2hvCiBlY2hvICJlcmFzaW5nIHBhcnRpdGlvbiAkcGFydCIKIGVjaG8KLWVyYXNlICRwYXJ0Citl
cmFzZSAkcGFydCB8fCBleGl0IDEKIAogZWNobwogZWNobyAiZmxhc2hpbmcgJGltYWdlIHRvICRw
YXJ0IgogZWNobwogCiBpZiBbIHgkbW9kZSA9IHh0ZnRwIF07IHRoZW4KLQl0ZnRwICRpbWFnZSAk
cGFydAorCXRmdHAgJGltYWdlICRwYXJ0IHx8IGV4aXQgMQogZWxzZQotCWNwICRpbWFnZSAkcGFy
dAorCWNwICRpbWFnZSAkcGFydCB8fCBleGl0IDEKIGZpCiAKIHByb3RlY3QgJHBhcnQKLS0gCjEu
Ny4wLjQKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
