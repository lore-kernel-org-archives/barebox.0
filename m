Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpCWu-0002aP-Qe
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 07:10:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 23166BF0E7
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 09:05:01 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 19 Jun 2013 09:09:44 +0200
Message-Id: <1371625785-27704-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
References: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv3 3/4] omap3_spi: Set the correct CS number for AM33xx
To: barebox@lists.infradead.org

Q2hhbmdlZCB0aGUgbnVtYmVyIG9mIENTIGZvciBBTTMzeHggYm9hcmRzIHRvIDIuCgpTaWduZWQt
b2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCmNoYW5nZXMgc2lu
Y2UgdjM6CiAgICAgICAgLSBzcGxpdHRlZCB0aGUgZm9ybWVyICJvbWFwM19zcGk6IEFkZCBDUyBj
aGVjayBmb3IgQU0zMzV4IgogICAgICAgICAgcGF0Y2ggaW50byB0d28KCS0gU2V0IGNvcnJlY3Qg
bnVtYmVyIG9mIENTIGhlcmUKCiBkcml2ZXJzL3NwaS9vbWFwM19zcGkuYyB8ICAgMTIgKysrKysr
KysrKy0tCiAxIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvb21hcDNfc3BpLmMgYi9kcml2ZXJzL3NwaS9vbWFw
M19zcGkuYwppbmRleCA1MDhlMmQ5Li4xYTkyNTY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9v
bWFwM19zcGkuYworKysgYi9kcml2ZXJzL3NwaS9vbWFwM19zcGkuYwpAQCAtMzU5LDE2ICszNTks
MjQgQEAgc3RhdGljIGludCBvbWFwM19zcGlfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJ
ICogTWNTUEkzIGhhcyAyIENTIChidXMgMywgY3MgMCAtIDEpCiAJICogTWNTUEk0IGhhcyAxIENT
IChidXMgNCwgY3MgMCkKIAkgKgorCSAqIEFNMzM1eCBNY1NQSSBoYXMgMiBidXNzZXMgd2l0aCAy
IGNoaXAgc2VsZWN0czoKKwkgKiBNY1NQSTAgaGFzIDIgQ1MgKGJ1cyAwLCBjcyAwIC0gMSkKKwkg
KiBNY1NQSTEgaGFzIDIgQ1MgKGJ1cyAxLCBjcyAwIC0gMSkKKwkgKgogCSAqIFRoZSBib2FyZCBj
b2RlIGhhcyB0byBtYWtlIHN1cmUgdGhhdCBpdCBkb2VzIG5vdCB1c2UKIAkgKiBpbnZhbGlkIGJ1
c2VzIG9yIGNoaXAgc2VsZWN0cy4KIAkgKi8KIAogCW1hc3Rlci0+YnVzX251bSA9IGRldi0+aWQ7
Ci0JbWFzdGVyLT5udW1fY2hpcHNlbGVjdCA9IDQ7CisKKwlpZiAoSVNfRU5BQkxFRChDT05GSUdf
QVJDSF9PTUFQMykpCisJCW1hc3Rlci0+bnVtX2NoaXBzZWxlY3QgPSA0OworCWVsc2UKKwkJbWFz
dGVyLT5udW1fY2hpcHNlbGVjdCA9IDI7CiAJbWFzdGVyLT5zZXR1cCA9IG9tYXAzX3NwaV9zZXR1
cDsKIAltYXN0ZXItPnRyYW5zZmVyID0gb21hcDNfc3BpX3RyYW5zZmVyOwogCi0Jb21hcDNfbWFz
dGVyLT5yZWdzID0gZGV2X3JlcXVlc3RfbWVtX3JlZ2lvbihkZXYsIDApOzsKKwlvbWFwM19tYXN0
ZXItPnJlZ3MgPSBkZXZfcmVxdWVzdF9tZW1fcmVnaW9uKGRldiwgMCk7CiAKIAlzcGlfcmVzZXQo
bWFzdGVyKTsKIAotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
