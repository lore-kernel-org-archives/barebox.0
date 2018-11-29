Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003is-U2
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:11 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001x0-DK
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000AM-0E
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:36 +0100
Message-Id: <20181129113048.31857-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 03/15] scripts/Kbuild.include: Fix portability problem of
 "echo -e"
To: Barebox List <barebox@lists.infradead.org>

QmFzZWQgb24gTGludXggdjMuMyBwYXRjaDogODc1ZGU5ODYyM2ZhMmIyOWYwY2IxOTkxNWZlMzI5
MmFiNmRhYTFjYgoKICAgIHNjcmlwdHMvS2J1aWxkLmluY2x1ZGU6IEZpeCBwb3J0YWJpbGl0eSBw
cm9ibGVtIG9mICJlY2hvIC1lIgoKICAgICJlY2hvIC1lIiBpcyBhIEdOVSBleHRlbnNpb24uIFdo
ZW4gY3Jvc3MtY29tcGlsaW5nIHRoZSBrZXJuZWwgb24gYQogICAgQlNELWxpa2Ugb3BlcmF0aW5n
IHN5c3RlbSAoTWFjIE9TIFggaW4gbXkgY2FzZSksIHRoaXMgZG9lc24ndCB3b3JrLgoKICAgIE9u
ZSBjb3VsZCBpbnN0YWxsIGEgR05VIHZlcnNpb24gb2YgZWNobywgcHV0IHRoYXQgaW4gdGhlICRQ
QVRIIGJlZm9yZQogICAgdGhlIHN5c3RlbSBlY2hvIGFuZCB1c2UgIi91c3IvYmluL2VudiBlY2hv
IiwgYnV0IHRoZSBzb2x1dGlvbiB3aXRoCiAgICBwcmludGYgaXMgc2ltcGxlci4KCiAgICBTaW5j
ZSBpdCBpcyBubyBkaXNhZHZhbnRhZ2Ugb24gTGludXgsIEkgaG9wZSB0aGF0IGdldHMgYWNjZXB0
ZWQgZXZlbiBpZgogICAgY3Jvc3MtY29tcGlsaW5nIHRoZSBMaW51eCBrZXJuZWwgb24gYW5vdGhl
ciBVbml4IG9wZXJhdGluZyBzeXN0ZW0gaXMKICAgIHF1aXRlIGEgcmFyZSB1c2UgY2FzZS4KCiAg
ICBTaWduZWQtb2ZmLWJ5OiBCZXJuaGFyZCBXYWxsZSA8YmVybmhhcmRAYndhbGxlLmRlPgogICAg
QW5kcmVhcyBCaWXDn21hbm4gPGFuZHJlYXNAYmllc3NtYW5uLmRlPgogICAgU2lnbmVkLW9mZi1i
eTogTWljaGFsIE1hcmVrIDxtbWFyZWtAc3VzZS5jej4KClNpZ25lZC1vZmYtYnk6IFN0ZWZmZW4g
VHJ1bXRyYXIgPHMudHJ1bXRyYXJAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc2NyaXB0cy9LYnVpbGQu
aW5jbHVkZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvS2J1aWxkLmluY2x1ZGUgYi9zY3JpcHRzL0tidWls
ZC5pbmNsdWRlCmluZGV4IDUxMmQyMTczMjRjMS4uZTYyYmQzNTY5MmQwIDEwMDY0NAotLS0gYS9z
Y3JpcHRzL0tidWlsZC5pbmNsdWRlCisrKyBiL3NjcmlwdHMvS2J1aWxkLmluY2x1ZGUKQEAgLTEw
NSw3ICsxMDUsNyBAQCBhcy1vcHRpb24gPSAkKGNhbGwgdHJ5LXJ1bixcCiAjIFVzYWdlOiBjZmxh
Z3MteSArPSAkKGNhbGwgYXMtaW5zdHIsaW5zdHIsb3B0aW9uMSxvcHRpb24yKQogCiBhcy1pbnN0
ciA9ICQoY2FsbCB0cnktcnVuLFwKLQkvYmluL2VjaG8gLWUgIiQoMSkiIHwgJChDQykgJChLQlVJ
TERfQUZMQUdTKSAtYyAteGFzc2VtYmxlciAtbyAiJCRUTVAiIC0sJCgyKSwkKDMpKQorCXByaW50
ZiAiJWJcbiIgIiQoMSkiIHwgJChDQykgJChLQlVJTERfQUZMQUdTKSAtYyAteCBhc3NlbWJsZXIg
LW8gIiQkVE1QIiAtLCQoMiksJCgzKSkKIAogIyBjYy1vcHRpb24KICMgVXNhZ2U6IGNmbGFncy15
ICs9ICQoY2FsbCBjYy1vcHRpb24sLW1hcmNoPXdpbmNoaXAtYzYsLW1hcmNoPWk1ODYpCi0tIAoy
LjE5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
