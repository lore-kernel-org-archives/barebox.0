Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaDHw-00075e-CJ
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 21:19:57 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 1BDCCA63A7
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 22:19:50 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 12 Dec 2011 22:19:37 +0100
Message-Id: <1323724779-370-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1323724779-370-1-git-send-email-eric@eukrea.com>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 4/6] CPUIMX51: fix environement
To: barebox@lists.infradead.org

YSB0ZW1wb3Jhcnkgc2V0dGluZyB3YXMgaW5zZXJ0ZWQgaW4gdGhlIGRlZmF1bHQgZW52IGJ5IGVy
cm9yCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBh
cmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDUxL2Vudi9jb25maWcgfCAgICAxIC0KIDEgZmls
ZXMgY2hhbmdlZCwgMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14NTEvZW52L2NvbmZpZyBiL2FyY2gvYXJtL2Jv
YXJkcy9ldWtyZWFfY3B1aW14NTEvZW52L2NvbmZpZwppbmRleCA3MzdmOGUzLi45MWEyNjcxIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDUxL2Vudi9jb25maWcKKysr
IGIvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXg1MS9lbnYvY29uZmlnCkBAIC0zMCw3ICsz
MCw2IEBAIHJvb3Rmc2ltYWdlPSRtYWNoaW5lL3Jvb3Rmcy4kcm9vdGZzX3R5cGUKICMga2VybmVs
CiBrZXJuZWxpbWFnZV90eXBlPXVpbWFnZQoga2VybmVsaW1hZ2U9JG1hY2hpbmUvdUltYWdlLSR7
bWFjaGluZX0uYmluCi1rZXJuZWxpbWFnZT11SW1hZ2UKIAogIyBiYXJlYm94IGFuZCBpdCdzIGVu
dgogYmFyZWJveGltYWdlPSRtYWNoaW5lL2JhcmVib3gtJHttYWNoaW5lfS5iaW4KLS0gCjEuNy42
LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
