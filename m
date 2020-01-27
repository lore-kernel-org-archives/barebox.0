Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2pN-0005Hb-Cv
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 11:45:14 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Mon, 27 Jan 2020 12:44:51 +0100
Message-Id: <20200127114453.366-1-uwe@kleine-koenig.org>
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
Subject: [PATCH 0/2] gpiolib: minor optimization
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
CkhlbGxvLAoKd2hpbGUgd29ya2luZyBvbiBncGlvbGliIEkgbm90aWNlZCB0aGF0IGdwaW9fcmVx
dWVzdF9vbmUoKSByZXBlYXRlZGx5CmNoZWNrcyB0aGUgdmFsaWRpdHkgb2YgdGhlIGdwaW9faW5m
byBvYnRhaW5lZCBieSBncGlvX3RvX2Rlc2MoKS4KClRoaXMgc2VyaWVzIGludHJvZHVjZXMgc29t
ZSBoZWxwZXIgZnVuY3Rpb25zIChwcmVmaXhlZCBncGlvaW5mb18pIHRoYXQKdGFrZSBhbiBncGlv
X2luZm8gaW5zdGVhZCBvZiBhIHBsYWluIGdwaW8gbnVtYmVyIGFuZCBhc3N1bWUgdGhpcyBwb2lu
dGVyCnRvIGJlIHZhbGlkLgoKVGhlIHNhdmVkIHJ1bnRpbWUgaXMgcHJvYmFibHkgdG9vIHNtYWxs
IHRvIG1lYXN1cmUsIHNvIEkgZGlkbid0IGV2ZW4KdHJ5LiBTZW1hbnRpY2FsbHkgdGhlcmUgaXMg
bm8gY2hhbmdlIGludGVuZGVkLgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcg
KDIpOgogIGdwaW9saWI6IHJlb3JkZXIgZnVuY3Rpb25zCiAgZ3Bpb2xpYjogaW50cm9kdWNlIGhl
bHBlciBmdW5jdGlvbnMgd29ya2luZyBvbiBncGlvX2luZm8gc3RydWN0cwoKIGRyaXZlcnMvZ3Bp
by9ncGlvbGliLmMgfCAyNDMgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxNTAgaW5zZXJ0aW9ucygrKSwgOTMgZGVsZXRpb25zKC0pCgot
LSAKMi4yNC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
