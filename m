Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIHyC-0004Yy-EE
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 20:54:33 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 15 Sep 2020 22:54:16 +0200
Message-Id: <20200915205417.15484-7-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 6/7] scripts/imx-image: relicense to allow distribution of
 binary linked with OpenSSL
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>, Marcin Niestroj <m.niestroj@grinn-global.com>, =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Alexander Kurz <akurz@blala.de>, Bastian Krause <bst@pengutronix.de>

VGhlIEdQTCAoYm90aCwgdmVyc2lvbnMgMiBhbmQgMykgYXJlIGluY29tcGF0aWJsZSB3aXRoIHRo
ZSBPcGVuU1NMIGxpY2Vuc2UuCkFjY29yZGluZyB0byB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0
aW9uIHRoZSBjb3B5cmlnaHQgaG9sZGVycyBvZiBHUEwKc29mdHdhcmUgaGF2ZSB0byBwcm92aWRl
IGFuIGV4Y2VwdGlvbiB0byBhbGxvdyB0aGlzIGxpbmthZ2UuCgpUaGlzIGlzIGVmZmVjdGl2ZWx5
IGEgbGljZW5zZSBjaGFuZ2UgYW5kIHNvIG5lZWRzIGNvbmZpcm1hdGlvbiBieSBhbGwKY29weXJp
Z2h0IGhvbGRlcnMuCgpDYzogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4K
Q2M6IEFsZXhhbmRlciBLdXJ6IDxha3VyekBibGFsYS5kZT4KQ2M6IEFuZHJleSBTbWlybm92IDxh
bmRyZXcuc21pcm5vdkBnbWFpbC5jb20+CkNjOiBCYXN0aWFuIEtyYXVzZSA8YnN0QHBlbmd1dHJv
bml4LmRlPgpDYzogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+CkNjOiBMdWNhcyBTdGFj
aCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KQ2M6IE1hcmNpbiBOaWVzdHJvaiA8bS5uaWVzdHJv
akBncmlubi1nbG9iYWwuY29tPgpDYzogTWFyYyBLbGVpbmUtQnVkZGUgPG1rbEBwZW5ndXRyb25p
eC5kZT4KQ2M6IFJvdXZlbiBDemVyd2luc2tpIDxyLmN6ZXJ3aW5za2lAcGVuZ3V0cm9uaXguZGU+
CkNjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6
IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQog
c2NyaXB0cy9pbXgvaW14LWltYWdlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2lteC9pbXgtaW1hZ2Uu
YyBiL3NjcmlwdHMvaW14L2lteC1pbWFnZS5jCmluZGV4IGY1ZTg5ZDA3YTZlZS4uMzRiYmZjOGQ4
MzA4IDEwMDY0NAotLS0gYS9zY3JpcHRzL2lteC9pbXgtaW1hZ2UuYworKysgYi9zY3JpcHRzL2lt
eC9pbXgtaW1hZ2UuYwpAQCAtMSw0ICsxLDQgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9yLWxhdGVyCisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
ci1sYXRlciBXSVRIIE9wZW5TU0wtZXhjZXB0aW9uCiAvLyBTUERYLUZpbGVDb3B5cmlnaHRUZXh0
OiAyMDEzIFNhc2NoYSBIYXVlciwgUGVuZ3V0cm9uaXgKIAogI2RlZmluZSBfR05VX1NPVVJDRQot
LSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
