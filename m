Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3lHN-0005vQ-52
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 13:47:38 +0000
Received: by wmvv187 with SMTP id v187so207446758wmv.1
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 05:47:14 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 14:46:46 +0100
Message-Id: <1448977608-4950-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [PATCH 1/3] imx35: register usb-misc by default
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>, =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>

U2lnbmVkLW9mZi1ieTogRmxvcmlhbiBWYWxsZWUgPGZ2YWxsZWVAZXVrcmVhLmZyPgpTaWduZWQt
b2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBhcmNoL2FybS9tYWNo
LWlteC9pbXgzNS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9pbXgzNS5jIGIvYXJjaC9hcm0vbWFjaC1pbXgvaW14
MzUuYwppbmRleCA2OWQ0NWViLi4zZTFhYTk3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWlt
eC9pbXgzNS5jCisrKyBiL2FyY2gvYXJtL21hY2gtaW14L2lteDM1LmMKQEAgLTczLDYgKzczLDcg
QEAgaW50IGlteDM1X2RldmljZXNfaW5pdCh2b2lkKQogCWFkZF9nZW5lcmljX2RldmljZSgiaW14
MzEtZ3BpbyIsIDEsIE5VTEwsIE1YMzVfR1BJTzJfQkFTRV9BRERSLCAweDEwMDAsIElPUkVTT1VS
Q0VfTUVNLCBOVUxMKTsKIAlhZGRfZ2VuZXJpY19kZXZpY2UoImlteDMxLWdwaW8iLCAyLCBOVUxM
LCBNWDM1X0dQSU8zX0JBU0VfQUREUiwgMHgxMDAwLCBJT1JFU09VUkNFX01FTSwgTlVMTCk7CiAJ
YWRkX2dlbmVyaWNfZGV2aWNlKCJpbXgyMS13ZHQiLCAwLCBOVUxMLCBNWDM1X1dET0dfQkFTRV9B
RERSLCAweDQwMDAsIElPUkVTT1VSQ0VfTUVNLCBOVUxMKTsKKwlhZGRfZ2VuZXJpY19kZXZpY2Uo
ImlteDM1LXVzYi1taXNjIiwgMCwgTlVMTCwgTVgzNV9VU0JfT1RHX0JBU0VfQUREUiArIDB4NjAw
LCAweDEwMCwgSU9SRVNPVVJDRV9NRU0sIE5VTEwpOwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjEu
NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
