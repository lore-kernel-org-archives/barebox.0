Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ8o4-0001yB-7R
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 21:15:37 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp6-g21.free.fr (Postfix) with ESMTP id 2538E822A0
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2013 23:15:08 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon,  9 Sep 2013 23:15:07 +0200
Message-Id: <1378761307-7785-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] cfa10036: fix warning
To: barebox@lists.infradead.org

dGhpcyBmaXggOgphcmNoL2FybS9ib2FyZHMvY3J5c3RhbGZvbnR6LWNmYTEwMDM2L2NmYTEwMDM2
LmM6IEluIGZ1bmN0aW9uICdjZmExMDAzNl9kZXZpY2VzX2luaXQnOgphcmNoL2FybS9ib2FyZHMv
Y3J5c3RhbGZvbnR6LWNmYTEwMDM2L2NmYTEwMDM2LmM6MTIzOjM6IHdhcm5pbmc6IGltcGxpY2l0
IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdpbXhfZ3Bpb19tb2RlJyBbLVdpbXBsaWNpdC1mdW5j
dGlvbi1kZWNsYXJhdGlvbl1jZmExMDAzNjogZml4IHdhcm5pbmcKClNpZ25lZC1vZmYtYnk6IEVy
aWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL2JvYXJkcy9jcnlzdGFs
Zm9udHotY2ZhMTAwMzYvY2ZhMTAwMzYuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9jcnlz
dGFsZm9udHotY2ZhMTAwMzYvY2ZhMTAwMzYuYyBiL2FyY2gvYXJtL2JvYXJkcy9jcnlzdGFsZm9u
dHotY2ZhMTAwMzYvY2ZhMTAwMzYuYwppbmRleCBjMTFiYjJmLi5kMWRmN2I4IDEwMDY0NAotLS0g
YS9hcmNoL2FybS9ib2FyZHMvY3J5c3RhbGZvbnR6LWNmYTEwMDM2L2NmYTEwMDM2LmMKKysrIGIv
YXJjaC9hcm0vYm9hcmRzL2NyeXN0YWxmb250ei1jZmExMDAzNi9jZmExMDAzNi5jCkBAIC0zMyw3
ICszMyw3IEBACiAKICNpbmNsdWRlIDxtYWNoL2Nsb2NrLmg+CiAjaW5jbHVkZSA8bWFjaC9pbXgt
cmVncy5oPgotI2luY2x1ZGUgPG1hY2gvaW9tdXgtaW14MjguaD4KKyNpbmNsdWRlIDxtYWNoL2lv
bXV4Lmg+CiAjaW5jbHVkZSA8bWFjaC9tY2kuaD4KIAogI2luY2x1ZGUgPGFzbS9hcm1saW51eC5o
PgotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
