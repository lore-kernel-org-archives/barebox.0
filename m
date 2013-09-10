Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJRW1-0003So-75
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:14:14 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 28DC7940111
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:13:47 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:13:32 +0200
Message-Id: <1378833214-19808-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1378833214-19808-1-git-send-email-eric@eukrea.com>
References: <1378833214-19808-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/4] nand_mxs: fix on i.MX28
To: barebox@lists.infradead.org

d2hlbiB0aGUgYm9vdG1vZGUgaXMgZGlmZmVyZW50IHRoYW4gTkFORCAoVVNCIGZvciBleGFtcGxl
KSwgdGhlCkdQTUkgY2xvY2sgaXMgbm90IGVuYWJsZWQgdGh1cyB3ZSBjYW4ndCBwcm9iZSBhIE5B
TkQgZmxhc2guCgpUZXN0ZWQgb24gYW4gaS5NWDI4CgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5h
cmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL25hbmRfbXhzLmMgfCAx
ICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL25hbmQvbmFuZF9teHMuYyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9teHMuYwppbmRleCA4
ZTVjODNjLi5kMWU0YjU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfbXhzLmMK
KysrIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5kX214cy5jCkBAIC0xMjU5LDYgKzEyNTksNyBAQCBz
dGF0aWMgaW50IG14c19uYW5kX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQluYW5kX2lu
Zm8tPmRtYV9jaGFubmVsX2Jhc2UgPSAwOwogCX0gZWxzZSB7CiAJCW5hbmRfaW5mby0+ZG1hX2No
YW5uZWxfYmFzZSA9IE1YU19ETUFfQ0hBTk5FTF9BSEJfQVBCSF9HUE1JMDsKKwkJY2xrX2VuYWJs
ZShuYW5kX2luZm8tPmNsayk7CiAJfQogCiAJZXJyID0gbXhzX25hbmRfYWxsb2NfYnVmZmVycyhu
YW5kX2luZm8pOwotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
