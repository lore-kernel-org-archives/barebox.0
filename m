Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qw9GW-00074T-Vl
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 08:56:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 076E3BF0CA
	for <barebox@lists.infradead.org>;
	Wed, 24 Aug 2011 11:00:44 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 24 Aug 2011 10:56:50 +0200
Message-Id: <1314176210-22849-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] ARM pcm043: New NOR Flash CS0 values
To: barebox@lists.infradead.org

U2V0IG5ldyBDUzAgdmFsdWVzIGZvciBuZXcgTk9SLUZsYXNoZXMgKDI4RjI1NlAzM0JGKS4KVGhl
c2UgdmFsdWVzIGFsc28gd29yayB3aXRoIG9sZGVyIGZsYXNoZXMgKDI4RjI1NlAzM0IpLgoKQWxz
byByZW1vdmVkIHVubmVjZXNzYXJ5IHNldHVwIG9mIENTTyBpbiB0aGUgY29yZV9pbml0IGNhbGwu
CgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBh
cmNoL2FybS9ib2FyZHMvcGNtMDQzL3BjbTA0My5jIHwgICAxMCArKystLS0tLS0tCiAxIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib2FyZHMvcGNtMDQzL3BjbTA0My5jIGIvYXJjaC9hcm0vYm9hcmRzL3BjbTA0My9w
Y20wNDMuYwppbmRleCA5NjY4OTlhLi5mYmU4Y2VhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2Fy
ZHMvcGNtMDQzL3BjbTA0My5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9wY20wNDMvcGNtMDQzLmMK
QEAgLTEyNCw5ICsxMjQsOSBAQCBzdGF0aWMgaW50IGlteDM1X2RldmljZXNfaW5pdCh2b2lkKQog
CXVpbnQzMl90IHJlZzsKIAogCS8qIENTMDogTm9yIEZsYXNoICovCi0Jd3JpdGVsKDB4MDAwMGNm
MDMsIENTQ1JfVSgwKSk7Ci0Jd3JpdGVsKDB4MTAwMDBkMDMsIENTQ1JfTCgwKSk7Ci0Jd3JpdGVs
KDB4MDA3MjA5MDAsIENTQ1JfQSgwKSk7CisJd3JpdGVsKDB4MjJDMENGMDAsIENTQ1JfVSgwKSk7
CisJd3JpdGVsKDB4NzUwMDBEMDEsIENTQ1JfTCgwKSk7CisJd3JpdGVsKDB4MDAwMDA5MDAsIENT
Q1JfQSgwKSk7CiAKIAlsZWRfZ3Bpb19yZWdpc3RlcigmbGVkMCk7CiAKQEAgLTI3NywxMCArMjc3
LDYgQEAgc3RhdGljIGludCBwY20wNDNfY29yZV9zZXR1cCh2b2lkKQogCXdyaXRlbCgweDAsIElN
WF9NQVhfQkFTRSArIDB4YzAwKTsJLyogZm9yIE00ICovCiAJd3JpdGVsKDB4MCwgSU1YX01BWF9C
QVNFICsgMHhkMDApOwkvKiBmb3IgTTUgKi8KIAotCXdyaXRlbCgweDAwMDBEQ0Y2LCBDU0NSX1Uo
MCkpOyAvKiBDUzA6IE5PUiBGbGFzaCAqLwotCXdyaXRlbCgweDQ0NEE0NTQxLCBDU0NSX0woMCkp
OwotCXdyaXRlbCgweDQ0NDQzMzAyLCBDU0NSX0EoMCkpOwotCiAJLyoKIAkgKiBNM0lGIENvbnRy
b2wgUmVnaXN0ZXIgKE0zSUZDVEwpCiAJICogTVJSUFswXSA9IEwyQ0MwIG5vdCBvbiBwcmlvcml0
eSBsaXN0ICgwIDw8IDApCT0gMHgwMDAwMDAwMAotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
