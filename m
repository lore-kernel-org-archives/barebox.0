Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SV2v3-00063x-RE
 for barebox@lists.infradead.org; Thu, 17 May 2012 15:47:16 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 087E4A622B
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 17:47:07 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 17 May 2012 17:46:17 +0200
Message-Id: <1337269578-20570-15-git-send-email-eric@eukrea.com>
In-Reply-To: <1337269578-20570-1-git-send-email-eric@eukrea.com>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 15/16] eukrea_cpuimx25&35: update init_board
To: barebox@lists.infradead.org

d2Ugc2hvdWxkbid0IGV4aXQgdGhpcyBzY3JpcHQgaW4gY2FzZSB0aGUgTUFDIGFkZHJlc3MgaXMg
bm90IHNldC4KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgot
LS0KIGFyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MjUvZW52L2Jpbi9pbml0X2JvYXJkIHwg
ICAgNCArKy0tCiBhcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2Vudi9iaW4vaW5pdF9i
b2FyZCB8ICAgIDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9l
bnYvYmluL2luaXRfYm9hcmQgYi9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2Vudi9i
aW4vaW5pdF9ib2FyZAppbmRleCAzYzRiMWVhLi5mZjMzNjVkIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2Vudi9iaW4vaW5pdF9ib2FyZAorKysgYi9hcmNoL2Fy
bS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2Vudi9iaW4vaW5pdF9ib2FyZApAQCAtMjIsOSArMjIs
OSBAQCBpZiBbICQ/IC1lcSAwIF07IHRoZW4KIAkJaWYgWyAkPyAtZXEgMCBdOyB0aGVuCiAJCQl1
c2JzZXJpYWwKIAkJCWF1dG9ib290X3RpbWVvdXQ9NjAKLQkJCWV4aXQKKwkJZWxzZQorCQkJcmVz
ZXQKIAkJZmkKLQkJcmVzZXQKIAllbHNlCiAJCWF1dG9ib290X3RpbWVvdXQ9MjgKIAlmaQpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9lbnYvYmluL2luaXRfYm9h
cmQgYi9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2Vudi9iaW4vaW5pdF9ib2FyZApp
bmRleCA3NjU5Y2M0Li44OWZkOWE5IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVh
X2NwdWlteDM1L2Vudi9iaW4vaW5pdF9ib2FyZAorKysgYi9hcmNoL2FybS9ib2FyZHMvZXVrcmVh
X2NwdWlteDM1L2Vudi9iaW4vaW5pdF9ib2FyZApAQCAtMjQsOSArMjQsOSBAQCBpZiBbICQ/IC1l
cSAwIF07IHRoZW4KIAkJaWYgWyAkPyAtZXEgMCBdOyB0aGVuCiAJCQl1c2JzZXJpYWwKIAkJCWF1
dG9ib290X3RpbWVvdXQ9NjAKLQkJCWV4aXQKKwkJZWxzZQorCQkJcmVzZXQKIAkJZmkKLQkJcmVz
ZXQKIAllbHNlCiAJCWF1dG9ib290X3RpbWVvdXQ9MjgKIAlmaQotLSAKMS43LjcuNgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
