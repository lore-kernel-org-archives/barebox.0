Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QvUuE-0007SS-5w
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 13:51:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 4C816BF0E0
	for <barebox@lists.infradead.org>;
	Mon, 22 Aug 2011 15:55:00 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 22 Aug 2011 15:51:05 +0200
Message-Id: <1314021065-10784-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1314021065-10784-1-git-send-email-t.gamez@phytec.de>
References: <1314021065-10784-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 2/2] ARM pcm043: change RAM timings
To: barebox@lists.infradead.org

VXBkYXRlIFJBTSB0aW1pbmcgZm9yIG5ldyBzZHJhbXMgKElTNDNEUjE2MzIwQikuClJBTSB0aW1p
bmdzIGFyZSByZXdvcmtlZCB3aXRoIGV4dGVuZGVkIHJvdyBjeWNsZSBkZWxheS4KVGltaW5ncyB3
aGVyZSBhbHNvIHRlc3RlZCB3aXRoIG9sZGVyIHNkcmFtcyAoTVQ0N0gzMk0xNikuCgpTaWduZWQt
b2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9i
b2FyZHMvcGNtMDQzL2xvd2xldmVsLmMgfCAgICAyICstCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMv
cGNtMDQzL2xvd2xldmVsLmMgYi9hcmNoL2FybS9ib2FyZHMvcGNtMDQzL2xvd2xldmVsLmMKaW5k
ZXggZWZmOTZmOS4uYmJlNTg2YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BjbTA0My9s
b3dsZXZlbC5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9wY20wNDMvbG93bGV2ZWwuYwpAQCAtMTQ2
LDcgKzE0Niw3IEBAIHZvaWQgX19iYXJlX2luaXQgX19uYWtlZCBib2FyZF9pbml0X2xvd2xldmVs
KHZvaWQpCiAJd3JpdGVsKDB4MDAwMDAzMDQsIEVTRE1JU0MpOyAvKiB3YXMgMHgwMDAwMDAwNCAq
LwogCiAJLyogc2V0IHRpbWluZyBwYXJhbXRlcnMgKi8KLQl3cml0ZWwoMHgwMDI1NTQxNywgRVNE
Q0ZHMCk7CisJd3JpdGVsKDB4MDAyNTU0MUYsIEVTRENGRzApOwogCS8qIHNlbGVjdCBQcmVjaGFy
Z2UtQWxsIG1vZGUgKi8KIAl3cml0ZWwoMHg5MjIyMDAwMCwgRVNEQ1RMMCk7CiAJLyogUHJlY2hh
cmdlLUFsbCAqLwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
