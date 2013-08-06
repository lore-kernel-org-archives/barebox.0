Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6dxR-0000My-JI
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 09:53:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D9E6FBF0F4
 for <barebox@lists.infradead.org>; Tue,  6 Aug 2013 11:45:46 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 6 Aug 2013 11:53:05 +0200
Message-Id: <1375782787-494-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1375782787-494-1-git-send-email-t.gamez@phytec.de>
References: <1375782787-494-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 2/4] ARM: OMAP: pcm051: Increase console output for MLO
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJj
aC9hcm0vY29uZmlncy9wY20wNTFfbWxvX2RlZmNvbmZpZyB8ICAgIDIgKy0KIDEgZmlsZXMgY2hh
bmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2NvbmZpZ3MvcGNtMDUxX21sb19kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdzL3BjbTA1
MV9tbG9fZGVmY29uZmlnCmluZGV4IGY5N2E3YzcuLmVhNjU5NzkgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtL2NvbmZpZ3MvcGNtMDUxX21sb19kZWZjb25maWcKKysrIGIvYXJjaC9hcm0vY29uZmlncy9w
Y20wNTFfbWxvX2RlZmNvbmZpZwpAQCAtNSw3ICs1LDYgQEAgQ09ORklHX01BQ0hfUENNMDUxPXkK
IENPTkZJR19PTUFQX1VBUlQxPXkKIENPTkZJR19USFVNQjJfQkFSRUJPWD15CiAjIENPTkZJR19D
TURfQVJNX0NQVUlORk8gaXMgbm90IHNldAotIyBDT05GSUdfQkFOTkVSIGlzIG5vdCBzZXQKICMg
Q09ORklHX01FTUlORk8gaXMgbm90IHNldAogQ09ORklHX0VOVklST05NRU5UX1ZBUklBQkxFUz15
CiBDT05GSUdfTU1VPXkKQEAgLTE2LDYgKzE1LDcgQEAgQ09ORklHX1BST01QVD0iTUxPPiIKIENP
TkZJR19TSEVMTF9OT05FPXkKICMgQ09ORklHX0VSUk5PX01FU1NBR0VTIGlzIG5vdCBzZXQKICMg
Q09ORklHX1RJTUVTVEFNUCBpcyBub3Qgc2V0CitDT05GSUdfQ09OU09MRV9TSU1QTEU9eQogIyBD
T05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVCBpcyBub3Qgc2V0CiBDT05GSUdfRFJJVkVSX1NFUklB
TF9OUzE2NTUwPXkKIENPTkZJR19EUklWRVJfU0VSSUFMX05TMTY1NTBfT01BUF9FWFRFTlNJT05T
PXkKLS0gCjEuNy4wLjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
