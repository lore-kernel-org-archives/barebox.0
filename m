Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXKaA-0004a3-7q
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 06:34:52 +0000
Received: from ex-srv2.eckelmann.group ([172.18.35.5]:12294
 helo=smtp.eckelmann.de)
 by mx01.eckelmann.de with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <T.Scherer@eckelmann.de>)
 id 1gXKZp-00022M-1R
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:34:29 +0100
From: "Thorsten K. Scherer" <t.scherer@eckelmann.de>
Date: Thu, 13 Dec 2018 07:33:56 +0100
Message-ID: <20181213063356.19138-1-t.scherer@eckelmann.de>
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
Subject: [PATCH] imd: model and compatible missing in metadata
To: barebox@lists.infradead.org
Cc: "Thorsten K. Scherer" <t.scherer@eckelmann.de>

Zml4ZXMgOTdlODFmMgoKU2lnbmVkLW9mZi1ieTogVGhvcnN0ZW4gSy4gU2NoZXJlciA8dC5zY2hl
cmVyQGVja2VsbWFubi5kZT4KLS0tCiBpbmNsdWRlL2FzbS1nZW5lcmljL2JhcmVib3gubGRzLmgg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2FzbS1nZW5lcmljL2JhcmVib3gubGRzLmggYi9pbmNsdWRlL2Fz
bS1nZW5lcmljL2JhcmVib3gubGRzLmgKaW5kZXggNzRkM2NhNGE5Li5kZWNhYWI3OWEgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvYXNtLWdlbmVyaWMvYmFyZWJveC5sZHMuaAorKysgYi9pbmNsdWRlL2Fz
bS1nZW5lcmljL2JhcmVib3gubGRzLmgKQEAgLTY2LDcgKzY2LDcgQEAKICNkZWZpbmUgQkFSRUJP
WF9JTUQJCQkJXAogCUtFRVAoKiguYmFyZWJveF9pbWRfc3RhcnQpKQkJXAogCUtFRVAoKiguYmFy
ZWJveF9pbWRfMSopKQkJXAotCSooLmJhcmVib3hfaW1kXzAqKQkJCVwKKwlLRUVQKCooLmJhcmVi
b3hfaW1kXzAqKSkJCVwKIAlLRUVQKCooLmJhcmVib3hfaW1kX2VuZCkpCiAKICNpZiBkZWZpbmVk
KENPTkZJR19BUkNIX0JBUkVCT1hfTUFYX0JBUkVfSU5JVF9TSVpFKSAmJiBcCi0tIAoyLjE5LjEK
CgotLSAKRWNrZWxtYW5uIEFHClZvcnN0YW5kOiBEaXBsLi1JbmcuIFBldGVyIEZyYW5rZW5iYWNo
IChTcHJlY2hlcikgRGlwbC4tV2kuLUluZy4gUGhpbGlwcCBFY2tlbG1hbm4KRHIuLUluZy4gTWFy
Y28gTcO8bmNoaG9mIERyLi1JbmcuIEZyYW5rIFVobGVtYW5uClZvcnNpdHplbmRlciBkZXMgQXVm
c2ljaHRzcmF0czogSHViZXJ0dXMgRy4gS3Jvc3NhClN0di4gVm9yc2l0emVuZGVyIGRlcyBBdWZz
aWNodHNyYXRzOiBEci4tSW5nLiBHZXJkIEVja2VsbWFubgpTaXR6IGRlciBHZXNlbGxzY2hhZnQ6
IEJlcmxpbmVyIFN0ci4gMTYxLCA2NTIwNSBXaWVzYmFkZW4sIEFtdHNnZXJpY2h0IFdpZXNiYWRl
biBIUkIgMTI2MzYKaHR0cDovL3d3dy5lY2tlbG1hbm4uZGUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
