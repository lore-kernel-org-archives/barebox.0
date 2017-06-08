Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJ2P1-0000kH-3g
 for barebox@lists.infradead.org; Thu, 08 Jun 2017 18:43:29 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  8 Jun 2017 20:41:34 +0200
Message-Id: <1496947297-23502-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/4] ARM: i.MX6 Wandboard: dont do MMDC Write Leveling
 Calibration
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

VGhlIGhhcmR3YXJlIHJlcXVpcmVtZW50cyB0byBwZXJmb3JtIGEgd3JpdGUgbGV2ZWxpbmcgY2Fs
aWJyYXRpb24gYXJlCm5vdCBmdWxmaWxsZWQgYnkgdGhlIFdhbmRib2FyZCBtb2R1bGVzLgpJTVg2
RFFSTSDCpzQ0LjExLjYgIldyaXRlIGxldmVsaW5nIENhbGlicmF0aW9uIiBOb3RlMiBzdGF0ZXMg
dGhhdCB0aGUgZmlyc3QKYml0IG9mIGVhY2ggZGF0YSBieXRlIGdyb3VwIChEMCwgRDgsIC4uLiwg
RDU2KSBmcm9tIG1lbW9yeSBtdXN0IGJlIGNvbm5lY3RlZAp0byB0aGUgc2FtZSBkYXRhIGJ1cyBi
aXQgb24gdGhlIGNvbnRyb2xsZXIsIHdoaWNoIGlzIG5vdCBnaXZlbiBvbiB0aGUKV2FuZGJvYXJk
IG1vZHVsZXMsIHJlc3VsdGluZyBpbiB1bnByZWRpY3RhYmxlIGNhbGliIHJlc3VsdHMgYW5kIGJy
ZWFraW5nIHRoZQpXQlFVQUQgMkdpQiBTRFJBTSBzZXR1cC4gU2ltaWxhciByZXN0cmljdGlvbnMg
ZXhpc3QgZm9yIHRoZSBpLk1YNlNELgoKUmVtb3ZlIHRoaXMgY2FsaWJyYXRpb24gYW5kIHVzZSB0
aGUgTVBXTERFQ1RSTCBkZWZhdWx0cy4KClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBLdXJ6IDxh
a3VyekBibGFsYS5kZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvdGVjaG5leGlvbi13YW5kYm9hcmQv
bG93bGV2ZWwuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib2FyZHMvdGVjaG5leGlvbi13YW5kYm9hcmQvbG93bGV2ZWwuYyBiL2Fy
Y2gvYXJtL2JvYXJkcy90ZWNobmV4aW9uLXdhbmRib2FyZC9sb3dsZXZlbC5jCmluZGV4IGQzZWI5
YTAuLmZmNWFlNmQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy90ZWNobmV4aW9uLXdhbmRi
b2FyZC9sb3dsZXZlbC5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy90ZWNobmV4aW9uLXdhbmRib2Fy
ZC9sb3dsZXZlbC5jCkBAIC0yNzYsNyArMjc2LDYgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgd2Fu
ZGJvYXJkX2RyYW1faW5pdCh2b2lkKQogCiAJX191ZGVsYXkoMTAwKTsKIAotCW1tZGNfZG9fd3Jp
dGVfbGV2ZWxfY2FsaWJyYXRpb24oKTsKIAltbWRjX2RvX2Rxc19jYWxpYnJhdGlvbigpOwogI2lm
ZGVmIERFQlVHCiAJbW1kY19wcmludF9jYWxpYnJhdGlvbl9yZXN1bHRzKCk7Ci0tIAoyLjEuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
