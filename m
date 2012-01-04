Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiSLD-0008VM-Lu
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 15:01:25 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 799E74B01AB
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 16:01:17 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed,  4 Jan 2012 16:01:16 +0100
Message-Id: <1325689276-12863-1-git-send-email-eric@eukrea.com>
In-Reply-To: <20120104114533.GB1810@game.jcrosoft.org>
References: <20120104114533.GB1810@game.jcrosoft.org>
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
Subject: [PATCH] loadb: only try to change the baudrate if the driver has this
 feature
To: barebox@lists.infradead.org

dGhpcyBhbGxvd3MgbG9hZGIgdG8gd29yayBvdmVyIHVzYnNlcmlhbCBnYWRnZXQKClNpZ25lZC1v
ZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGNvbW1hbmRzL2xvYWRi
LmMgfCAgICA2ICsrKystLQogMSBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29tbWFuZHMvbG9hZGIuYyBiL2NvbW1hbmRzL2xvYWRi
LmMKaW5kZXggNDM5YTgzYS4uZDYwMzQwZSAxMDA2NDQKLS0tIGEvY29tbWFuZHMvbG9hZGIuYwor
KysgYi9jb21tYW5kcy9sb2FkYi5jCkBAIC02OTAsMTIgKzY5MCwxMyBAQCBzdGF0aWMgaW50IGRv
X2xvYWRfc2VyaWFsX2JpbihzdHJ1Y3QgY29tbWFuZCAqY21kdHAsIGludCBhcmdjLCBjaGFyICph
cmd2W10pCiB7CiAJdWxvbmcgb2Zmc2V0ID0gMDsKIAl1bG9uZyBhZGRyOwotCWludCBsb2FkX2Jh
dWRyYXRlID0gMCwgY3VycmVudF9iYXVkcmF0ZTsKKwlpbnQgbG9hZF9iYXVkcmF0ZSA9IDAsIGN1
cnJlbnRfYmF1ZHJhdGUgPSAwOwogCWludCByY29kZSA9IDA7CiAJaW50IG9wdDsKIAlpbnQgb3Bl
bl9tb2RlID0gT19XUk9OTFk7CiAJY2hhciAqb3V0cHV0X2ZpbGUgPSBOVUxMOwogCXN0cnVjdCBj
b25zb2xlX2RldmljZSAqY2RldiA9IE5VTEw7CisJdW5zaWduZWQgY2hhciBiYXVkcmF0ZVsxNl07
CiAKIAl3aGlsZSAoKG9wdCA9IGdldG9wdChhcmdjLCBhcmd2LCAiZjpiOm86YyIpKSA+IDApIHsK
IAkJc3dpdGNoIChvcHQpIHsKQEAgLTcyMiw3ICs3MjMsOCBAQCBzdGF0aWMgaW50IGRvX2xvYWRf
c2VyaWFsX2JpbihzdHJ1Y3QgY29tbWFuZCAqY21kdHAsIGludCBhcmdjLCBjaGFyICphcmd2W10p
CiAJCXByaW50ZigiJXM6Tm8gY29uc29sZSBkZXZpY2Ugd2l0aCBTVERJTiBhbmQgU1RET1VUXG4i
LCBhcmd2WzBdKTsKIAkJcmV0dXJuIC1FTk9ERVY7CiAJfQotCWN1cnJlbnRfYmF1ZHJhdGUgPSAo
aW50KXNpbXBsZV9zdHJ0b3VsKGRldl9nZXRfcGFyYW0oJmNkZXYtPmNsYXNzX2RldiwgImJhdWRy
YXRlIiksIE5VTEwsIDEwKTsKKwlpZiAoZGV2X2dldF9wYXJhbSgmY2Rldi0+Y2xhc3NfZGV2LCAi
YmF1ZHJhdGUiKSAhPSBOVUxMKQorCQljdXJyZW50X2JhdWRyYXRlID0gKGludClzaW1wbGVfc3Ry
dG91bChkZXZfZ2V0X3BhcmFtKCZjZGV2LT5jbGFzc19kZXYsICJiYXVkcmF0ZSIpLCBOVUxMLCAx
MCk7CiAKIAkvKiBMb2FkIERlZmF1bHRzICovCiAJaWYgKGxvYWRfYmF1ZHJhdGUgPT0gMCkKLS0g
CjEuNy43LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
