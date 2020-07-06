Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKbv-0001S9-8z
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:28:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:28:04 +0200
Message-Id: <20200706062805.26278-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200706062805.26278-1-a.fatoum@pengutronix.de>
References: <20200706062805.26278-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] sandbox: os: common: fix compiler warning in add_image()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

R0NDIHJlcG9ydHM6CgogIC4vYXJjaC9zYW5kYm94L29zL2NvbW1vbi5jOiBJbiBmdW5jdGlvbiDi
gJhhZGRfaW1hZ2XigJk6CiAgLi9hcmNoL3NhbmRib3gvb3MvY29tbW9uLmM6MjcxOjY6IHdhcm5p
bmc6IGNhc3QgdG8gcG9pbnRlciBmcm9tIGludGVnZXIgb2YKICAJZGlmZmVyZW50IHNpemUgWy1X
aW50LXRvLXBvaW50ZXItY2FzdF0KClRoaXMgaXMgYmVjYXVzZSBoZi0+YmFzZSBpcyBhbiB1bnNp
Z25lZCBsb25nIGxvbmcsIHdpdGggdGhlIHVwcGVyIDMyIGJpdAphbGwtemVyb2VzIG9uIDMyLWJp
dCBzeXN0ZW1zLiBUaGUgY29tcGlsZXIgZG9lc24ndCBzZWUgdGhhdCB0aG91Z2guCgpDaGFuZ2Ug
dGhlIGNhc3QsIHNvIHdlIG5vIGxvbmdlciB3YXJuLgoKU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0
b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KLS0tCiBhcmNoL3NhbmRib3gvb3MvY29tbW9u
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9hcmNoL3NhbmRib3gvb3MvY29tbW9uLmMgYi9hcmNoL3NhbmRib3gvb3Mv
Y29tbW9uLmMKaW5kZXggMzgyYTkyMzA0MDIwLi41MzQ1NzFjMGU2NjggMTAwNjQ0Ci0tLSBhL2Fy
Y2gvc2FuZGJveC9vcy9jb21tb24uYworKysgYi9hcmNoL3NhbmRib3gvb3MvY29tbW9uLmMKQEAg
LTI2OCw3ICsyNjgsNyBAQCBzdGF0aWMgaW50IGFkZF9pbWFnZShjaGFyICpzdHIsIGNoYXIgKmRl
dm5hbWVfdGVtcGxhdGUsIGludCAqZGV2bmFtZV9udW1iZXIpCiAJaGYtPmJhc2UgPSAodW5zaWdu
ZWQgbG9uZyltbWFwKE5VTEwsIGhmLT5zaXplLAogCQkJUFJPVF9SRUFEIHwgKHJlYWRvbmx5ID8g
MCA6IFBST1RfV1JJVEUpLAogCQkJTUFQX1NIQVJFRCwgZmQsIDApOwotCWlmICgodm9pZCAqKWhm
LT5iYXNlID09IE1BUF9GQUlMRUQpCisJaWYgKGhmLT5iYXNlID09ICh1bnNpZ25lZCBsb25nKU1B
UF9GQUlMRUQpCiAJCXByaW50Zigid2FybmluZzogbW1hcHBpbmcgJXMgZmFpbGVkOiAlc1xuIiwg
ZmlsZW5hbWUsIHN0cmVycm9yKGVycm5vKSk7CiAKIAlyZXQgPSBiYXJlYm94X3JlZ2lzdGVyX2Zp
bGVkZXYoaGYpOwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
