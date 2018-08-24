Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Iz-00028N-Bd
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id i26-v6so3801761pfo.12
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:09 -0700
Message-Id: <20180824025814.20886-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/5] include/linux/log2.h warning fix 
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

RXZlcnlvbmU6CgpUaGlzIHNlcmllcyBpcyByZXN1bHQgb2YgZml4aW5nIGNvbXBpbGVyIHdhcm5p
bmdzIHNpbWlsYXIgdG8gdGhlIG9uZQpiZWxvdzoKCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2
ZXJzL2Nsay9jbGstZGl2aWRlci5jOjIyOgppbmNsdWRlL2xpbnV4L2xvZzIuaDoyMjoxOiB3YXJu
aW5nOiBpZ25vcmluZyBhdHRyaWJ1dGUg4oCYbm9yZXR1cm7igJkgYmVjYXVzZSBpdCBjb25mbGlj
dHMgd2l0aCBhdHRyaWJ1dGUg4oCYY29uc3TigJkgWy1XYXR0cmlidXRlc10KIGludCBfX19faWxv
ZzJfTmFOKHZvaWQpOwoKdGhhdCBJJ3ZlIGJlZW4gb2JzZXJ2aW5nIGxhdGVseS4gVGVjaG5pY2Fs
bHkgb25seSB0aGUgcGF0Y2ggYnkgTGludXMKaXMgcmVhbGx5IG5lZWRlZCwgYnV0IGdpdmVuIHRo
YXQgdGhvc2UgcGF0Y2hlcyBjb3VsZCBiZSBhcHBsaWVkIGFzLWlzCnByZXR0eSBlYXNpbHkgSSAi
YmFja3BvcnRlZCIgYWxsIG9mIHRoZSByZWNlbnQga2VybmVsIGNoYW5nZXMgdG8KbG9nMi5oCgpG
ZWVkYmFjayBpcyB3ZWxjb21lIQoKVGhhbmtzLApBbmRyZXkgU21pcm5vdgoKQW5kcmV5IFNtaXJu
b3YgKDEpOgogIGxvZzI6IFVzZSBmbHNfbG9uZygpIGluIF9fcm91bmR1cF9wb3dfb2ZfdHdvKCkK
CkFyZCBCaWVzaGV1dmVsICgxKToKICBsb2cyOiBtYWtlIG9yZGVyX2Jhc2VfMigpIGJlaGF2ZSBj
b3JyZWN0bHkgb24gY29uc3QgaW5wdXQgdmFsdWUgemVybwoKTGludXMgVG9ydmFsZHMgKDEpOgog
IGdpdmUgdXAgb24gZ2NjIGlsb2cyKCkgY29uc3RhbnQgb3B0aW1pemF0aW9ucwoKTWFydGluIFdp
bGNrICgxKToKICBzY3NpOiBpbG9nMjogY3JlYXRlIHRydWx5IGNvbnN0YW50IHZlcnNpb24gZm9y
IHNwYXJzZQoKUmFuZHkgRHVubGFwICgxKToKICBsaW51eC9sb2cyLmg6IGZpeCBrZXJuZWwtZG9j
IG5vdGF0aW9uCgogaW5jbHVkZS9saW51eC9sb2cyLmggfCA4OSArKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlvbnMo
KyksIDM1IGRlbGV0aW9ucygtKQoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
