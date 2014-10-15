Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XeNvc-0000ba-Ld
 for barebox@lists.infradead.org; Wed, 15 Oct 2014 12:43:45 +0000
Received: by mail-lb0-f178.google.com with SMTP id w7so937194lbi.37
 for <barebox@lists.infradead.org>; Wed, 15 Oct 2014 05:43:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Oct 2014 16:42:15 +0400
Message-Id: <1413376935-2579-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
References: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] Update .mailmap using scripts/mailmapper
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <shc@milas.spb.ru>, Juergen Beisert <jbe@pengutronix.de>

QmFzZWQgb24gb3JpZ2luYWwgdS1ib290IGNvbW1pdCBieSBNYXNhaGlybyBZYW1hZGE6CgogIGNv
bW1pdCBlODlhMDdlMzYzNmQzOTI4NjlkOGQwMGM5Mzk5MTExZTY1ZWUyZTg4CiAgQXV0aG9yOiBN
YXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tQGpwLnBhbmFzb25pYy5jb20+CiAgRGF0ZTogICBXZWQg
SnVsIDE2IDE3OjQ5OjQ2IDIwMTQgKzA5MDAKCiAgICAgIFVwZGF0ZSAubWFpbG1hcCB1c2luZyBz
Y3JpcHRzL21haWxtYXBwZXIKCkFkZCBtb3JlIGVudHJpZXMgdG8gLm1haWxtYXAgZm9yIHRoZSBj
YW5vbmljYWwgbmFtZXMgd2l0aAo1MCBjb21taXRzIG9yIG1vcmUuCgpUaGlzIGNvbW1pdCB3YXMg
Z2VuZXJhdGVkIGJ5IHRoZSBmb2xsb3dpbmcgY29tbWFuZDoKCiAgc2NyaXB0cy9tYWlsbWFwcGVy
ID4gdG1wOyBtdiB0bXAgLm1haWxtYXAKClNpZ25lZC1vZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFu
dG9ueW5wYXZsb3ZAZ21haWwuY29tPgpDYzogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubUBqcC5w
YW5hc29uaWMuY29tPgpDYzogQWxleGFuZGVyIFNoaXlhbiA8c2hjQG1pbGFzLnNwYi5ydT4KQ2M6
IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgpDYzogSnVlcmdlbiBCZWlzZXJ0IDxqYmVA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogLm1haWxtYXAgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhLy5tYWlsbWFwIGIvLm1haWxtYXAKaW5kZXggOGFm
NDM3NS4uZThlODFhMCAxMDA2NDQKLS0tIGEvLm1haWxtYXAKKysrIGIvLm1haWxtYXAKQEAgLTgs
NiArOCw5IEBACiAjICBzY3JpcHRzL21haWxtYXBwZXIgPiB0bXA7IG12IHRtcCAubWFpbG1hcAog
IwogCitBbGV4YW5kZXIgU2hpeWFuIDxzaGNAbWlsYXMuc3BiLnJ1PgorRXJpYyBCw6luYXJkIDxl
cmljQGV1a3JlYS5jb20+CitKdWVyZ2VuIEJlaXNlcnQgPGpiZUBwZW5ndXRyb25peC5kZT4KIFNh
c2NoYSBIYXVlciA8c2FzY2hhQG5vbWFkLmxvY2FsZG9tYWluPgogU3RlZmFuIFJvZXNlIDxzdHJv
ZXNlPgogV29sZmdhbmcgRGVuayA8d2Rlbms+Ci0tIAoyLjEuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
