Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvote-0000gu-V9
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 19:48:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id j19so14598018ljg.5
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2019 11:48:08 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 18 Feb 2019 20:47:51 +0100
Message-Id: <20190218194759.9557-2-sam@ravnborg.org>
In-Reply-To: <20190218194759.9557-1-sam@ravnborg.org>
References: <20190218194759.9557-1-sam@ravnborg.org>
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
Subject: [PATCH v3 1/9] arm: at91: fix at91_configure_usart6 warning
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

QWRkIGRlY2xhcmF0aW9uIHRvIHNpbGVuY2UgZm9sbG93aW5nIHdhcm5pbmc6CgphcmNoL2FybS9t
YWNoLWF0OTEvc2FtYTVkNF9kZXZpY2VzLmM6NDg3OjI0Ogp3YXJuaW5nOiBubyBwcmV2aW91cyBw
cm90b3R5cGUgZm9yIOKAmGF0OTFfY29uZmlndXJlX3VzYXJ0NuKAmQoKU2lnbmVkLW9mZi1ieTog
U2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgotLS0KIGFyY2gvYXJtL21hY2gtYXQ5MS9p
bmNsdWRlL21hY2gvYm9hcmQuaCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hdDkxL2luY2x1ZGUvbWFjaC9ib2FyZC5oIGIv
YXJjaC9hcm0vbWFjaC1hdDkxL2luY2x1ZGUvbWFjaC9ib2FyZC5oCmluZGV4IDg4NmY4MWU5YS4u
NGM0YjUxMTgwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWF0OTEvaW5jbHVkZS9tYWNoL2Jv
YXJkLmgKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2luY2x1ZGUvbWFjaC9ib2FyZC5oCkBAIC0x
MDIsNiArMTAyLDcgQEAgcmVzb3VyY2Vfc2l6ZV90IF9faW5pdCBhdDkxX2NvbmZpZ3VyZV91c2Fy
dDIodW5zaWduZWQgcGlucyk7CiByZXNvdXJjZV9zaXplX3QgX19pbml0IGF0OTFfY29uZmlndXJl
X3VzYXJ0Myh1bnNpZ25lZCBwaW5zKTsKIHJlc291cmNlX3NpemVfdCBfX2luaXQgYXQ5MV9jb25m
aWd1cmVfdXNhcnQ0KHVuc2lnbmVkIHBpbnMpOwogcmVzb3VyY2Vfc2l6ZV90IF9faW5pdCBhdDkx
X2NvbmZpZ3VyZV91c2FydDUodW5zaWduZWQgcGlucyk7CityZXNvdXJjZV9zaXplX3QgX19pbml0
IGF0OTFfY29uZmlndXJlX3VzYXJ0Nih1bnNpZ25lZCBwaW5zKTsKIAogI2lmIGRlZmluZWQoQ09O
RklHX0RSSVZFUl9TRVJJQUxfQVRNRUwpCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBkZXZpY2VfZCAq
IGF0OTFfcmVnaXN0ZXJfdWFydCh1bnNpZ25lZCBpZCwgdW5zaWduZWQgcGlucykKLS0gCjIuMTIu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
