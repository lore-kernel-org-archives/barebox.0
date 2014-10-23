Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XhR9K-0005jz-E7
 for barebox@lists.infradead.org; Thu, 23 Oct 2014 22:46:31 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 24 Oct 2014 00:45:58 +0200
Message-Id: <1414104361-15956-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 0/3] fixes and sanity checks for mxs pinmuxing
To: barebox@lists.infradead.org

SGVsbG8sCgp0aGlzIHNlcmllcyBoZWxwZWQgbWUgdG8gZmluZCBwaW5tdXhpbmcgcHJvYmxlbXMg
b24gYW4gaS5NWDI4IG1hY2hpbmUuCgpUaGUgcGlucyBlaXRoZXIgaGF2ZSBhIHB1bGwgdXAsIGEg
Yml0IGtlZXBlciBvciBuZWl0aGVyLiBGb3IgZXhhbXBsZSB0aGUgcGluCkVORVQwX1JYRDIgaGFz
IGEgYml0IGtlZXBlciwgYW5kIHNvIGRvaW5nCgoJaW14X2dwaW9fbW9kZShFTkVUMF9SWEQyIHwg
VkVfM18zViB8IFNUUkVOR1RIKFM4TUEpIHwgUFVMTFVQKDEpKQoKb2J2aW91c2x5IGNvdWxkbid0
IGVuYWJsZSB0aGUgcHVsbCB1cCBhcyByZXF1ZXN0ZWQuIEluc3RlYWQgaXQgZW5hYmxlZCB0aGUg
Yml0CmtlZXBlci4gV2l0aCB0aGlzIHNlcmllcyB0aGUgYWJvdmUgY2FsbCByZXN1bHRzIGluIGEg
bWVzc2FnZSB0aGF0IHRoZSBtb2RlIGlzCmludmFsaWQgYW5kIHRoZSBwdWxsdXAgYW5kIGJpdGtl
ZXBlciByZWdpc3RlciBzZXR0aW5ncyBhcmUgbm90IHRvdWNoZWQuCgpOb3RlIHRoYXQgSSBkaWRu
J3QgdGVzdCBvbiBpLk1YMjMgZXZlbiB0aG91Z2ggdGhpcyBTb0MgaXMgYWZmZWN0ZWQsIHRvby4g
SQpjdXJyZW50bHkgZG9uJ3QgaGF2ZSBhbiBpLk1YMjMgaGFuZHksIHNvIEkgY291bGRuJ3QgdGVz
dCB0aGlzIHBhcnQuCgpVd2UgS2xlaW5lLUvDtm5pZyAoMyk6CiAgbXhzOiBpb211eC1pbXgyODog
Rml4IGtlZXBlci9wdWxsdXAvZHJpdmUgc3RyZW5ndGgvdm9sdGFnZSBmbGFncwogIG14czogaW9t
dXgtaW14MjMvaW14Mjg6IHVuaWZ5IG1vZGUgZGVmaW5pdGlvbgogIG14czogaW9tdXgtaW14MjMv
aW14Mjg6IGFkZCBhZGRpdGlvbmFsIGNoZWNrcyBvbiBtb2RlCgogYXJjaC9hcm0vbWFjaC1teHMv
aW5jbHVkZS9tYWNoL2lvbXV4LWlteDIzLmggfCAgNjEgLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2Fy
bS9tYWNoLW14cy9pbmNsdWRlL21hY2gvaW9tdXgtaW14MjguaCB8IDExMiArKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIGFyY2gvYXJtL21hY2gtbXhzL2luY2x1ZGUvbWFjaC9pb211eC5oICAg
ICAgIHwgIDgyICsrKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybS9tYWNoLW14cy9pb211eC1p
bXguYyAgICAgICAgICAgICAgICB8ICAyMyArKysrKy0KIDQgZmlsZXMgY2hhbmdlZCwgMTI3IGlu
c2VydGlvbnMoKyksIDE1MSBkZWxldGlvbnMoLSkKCi0tIAoyLjEuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
