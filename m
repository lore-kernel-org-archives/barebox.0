Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcHf8-0003FR-BO
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 15:28:59 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so7107760lag.36
 for <barebox@lists.infradead.org>; Sat, 24 Nov 2012 07:28:55 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 24 Nov 2012 19:28:46 +0400
Message-Id: <1353770926-24496-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] xymodem.c: fix compiler warning
To: barebox@lists.infradead.org

Rml4ZXM6CiBsaWIveHltb2RlbS5jOjU1ODogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBl
IGZvciDigJhkb19sb2FkX3NlcmlhbF94bW9kZW3igJkKIGxpYi94eW1vZGVtLmM6NTcyOiB3YXJu
aW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGRvX2xvYWRfc2VyaWFsX3ltb2RlbeKA
mQogbGliL3h5bW9kZW0uYzo1ODY6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig
4oCYZG9fbG9hZF9zZXJpYWxfeW1vZGVtZ+KAmQoKU2lnbmVkLW9mZi1ieTogQW50b255IFBhdmxv
diA8YW50b255bnBhdmxvdkBnbWFpbC5jb20+Ci0tLQogbGliL3h5bW9kZW0uYyB8ICAgIDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2xpYi94eW1vZGVtLmMgYi9saWIveHltb2RlbS5jCmluZGV4IDU1OGY2ZTguLjM3MjAyZTYg
MTAwNjQ0Ci0tLSBhL2xpYi94eW1vZGVtLmMKKysrIGIvbGliL3h5bW9kZW0uYwpAQCAtMzEsNyAr
MzEsNyBAQAogI2luY2x1ZGUgPGZzLmg+CiAjaW5jbHVkZSA8a2ZpZm8uaD4KICNpbmNsdWRlIDxs
aW51eC9ieXRlb3JkZXIvZ2VuZXJpYy5oPgotCisjaW5jbHVkZSA8eHltb2RlbS5oPgogCiAjZGVm
aW5lIHh5X2RiZyhmbXQsIGFyZ3MuLi4pCiAKLS0gCjEuNy4xMC40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
