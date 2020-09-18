Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJBcx-0005WO-TI
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:20:26 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 18 Sep 2020 10:19:55 +0200
Message-Id: <20200918081956.24971-7-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200918081956.24971-1-u.kleine-koenig@pengutronix.de>
References: <20200918081956.24971-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 6/7] scripts/imx-image: relicense to allow distribution of
 binary linked with OpenSSL
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>, Marcin Niestroj <m.niestroj@grinn-global.com>, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Alexander Kurz <akurz@blala.de>, Bastian Krause <bst@pengutronix.de>

VGhlIEdQTCAoYm90aCwgdmVyc2lvbnMgMiBhbmQgMykgYXJlIGluY29tcGF0aWJsZSB3aXRoIHRo
ZSBPcGVuU1NMIGxpY2Vuc2UuCkFjY29yZGluZyB0byB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0
aW9uIHRoZSBjb3B5cmlnaHQgaG9sZGVycyBvZiBHUEwKc29mdHdhcmUgaGF2ZSB0byBwcm92aWRl
IGFuIGV4Y2VwdGlvbiB0byBhbGxvdyB0aGlzIGxpbmthZ2UuCgpUaGlzIGlzIGVmZmVjdGl2ZWx5
IGEgbGljZW5zZSBjaGFuZ2UgYW5kIHNvIG5lZWRzIGNvbmZpcm1hdGlvbiBieSBhbGwKY29weXJp
Z2h0IGhvbGRlcnMuCgpBY2tlZC1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25p
eC5kZT4KQ2M6IEFsZXhhbmRlciBLdXJ6IDxha3VyekBibGFsYS5kZT4KQ2M6IEFuZHJleSBTbWly
bm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5jb20+CkFja2VkLWJ5OiBCYXN0aWFuIEtyYXVzZSA8
YnN0QHBlbmd1dHJvbml4LmRlPgpDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXgu
ZGU+CkNjOiBNYXJjaW4gTmllc3Ryb2ogPG0ubmllc3Ryb2pAZ3Jpbm4tZ2xvYmFsLmNvbT4KQWNr
ZWQtYnk6IE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xAcGVuZ3V0cm9uaXguZGU+CkFja2VkLWJ5OiBS
b3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRlPgpDYzogU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIHNjcmlwdHMvaW14
L2lteC1pbWFnZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9pbXgvaW14LWltYWdlLmMgYi9zY3JpcHRz
L2lteC9pbXgtaW1hZ2UuYwppbmRleCBmNWU4OWQwN2E2ZWUuLmZhNjkwMGNiMGFkZSAxMDA2NDQK
LS0tIGEvc2NyaXB0cy9pbXgvaW14LWltYWdlLmMKKysrIGIvc2NyaXB0cy9pbXgvaW14LWltYWdl
LmMKQEAgLTEsNCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
ci1sYXRlcgorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgV0lU
SCBMaWNlbnNlUmVmLU9wZW5TU0wtZXhjZXB0aW9uCiAvLyBTUERYLUZpbGVDb3B5cmlnaHRUZXh0
OiAyMDEzIFNhc2NoYSBIYXVlciwgUGVuZ3V0cm9uaXgKIAogI2RlZmluZSBfR05VX1NPVVJDRQot
LSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
