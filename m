Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxUjd-0005PQ-MV
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 09:04:05 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 28 Sep 2017 11:03:26 +0200
Message-Id: <20170928090329.28006-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 0/3] state: add support for pre-mainline state format
To: barebox@lists.infradead.org

SGVsbG8sCgp3aGVuIHRoZSBzdGF0ZSBmcmFtZXdvcmsgd2FzIGRldmVsb3BlZCB0aGUgdW5kZXJs
eWluZyByYXcgZm9ybWF0IHdhcwpzaW1wbGVyIChvbmx5IG9uZSBjaGVja3N1bSBhbmQgbm8gbGVu
Z3RoKSBhbmQgbm8gbWV0YSBkYXRhIGZvciBkaXJlY3QKYnVja2V0cy4KClRvIGJlIGFibGUgdG8g
a2VlcCB0aGUgYmluYXJ5IHJlcHJlc2VudGF0aW9uIHdpdGggdGhlIGN1cnJlbnQgc3RhdGUKZnJh
bWV3b3JrIHRoaXMgcGF0Y2ggc2VyaWVzIGludHJvZHVjZXMgdGhlIG9sZCAicmF3IiBmb3JtYXQg
YXMKInJhd2NvbXBhdCIgYW5kIHRlYWNoZXMgdGhlIGRpcmVjdCBidWNrZXQgYmFja2VuZCB0byBz
a2lwIHdyaXRpbmcgbWV0YQpkYXRhIGluIHNvbWUgY2FzZXMuCgpUaGlzIGlzIHYyIG9mIHRoZSBz
ZXJpZXMsIGNvbXBhcmVkIHRvIHYxIHRoaXMgYWxzbyB1cGRhdGVzIHRoZQpkb2N1bWVudGF0aW9u
LgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcgKDMpOgogIERvY3VtZW50YXRp
b246IHN0YXRlOiBhZGFwdCBkZXNjcmlwdGlvbiB0byByZWFsaXR5CiAgc3RhdGU6IG5ldyBiYWNr
ZW5kIGZvcm1hdCAicmF3Y29tcGF0IgogIHN0YXRlOiBzdG9yYWdlOiBkaXJlY3Q6IHNraXAgd3Jp
dGluZyBtZXRhIGRhdGEgaWYgdGhpcyBtYWtlcyBkYXRhIGZpdAoKIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2JhcmVib3gvYmFyZWJveCxzdGF0ZS5yc3QgIHwgIDI1ICsrLS0KIGNvbW1vbi9zdGF0
ZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGNvbW1vbi9z
dGF0ZS9iYWNrZW5kX2J1Y2tldF9kaXJlY3QuYyAgICAgICAgICAgICAgIHwgIDIzICsrKy0KIGNv
bW1vbi9zdGF0ZS9iYWNrZW5kX2Zvcm1hdF9yYXdjb21wYXQuYyAgICAgICAgICAgIHwgMTQ1ICsr
KysrKysrKysrKysrKysrKysrKwogY29tbW9uL3N0YXRlL3N0YXRlLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDMgKwogY29tbW9uL3N0YXRlL3N0YXRlLmggICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgIDIgKwogNiBmaWxlcyBjaGFuZ2VkLCAxODMgaW5zZXJ0aW9u
cygrKSwgMTYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgY29tbW9uL3N0YXRlL2Jh
Y2tlbmRfZm9ybWF0X3Jhd2NvbXBhdC5jCgotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
