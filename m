Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kXm-0001dF-IY
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 12:12:15 +0000
Received: by mail-we0-f171.google.com with SMTP id p10so2693325wes.2
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 05:11:51 -0700 (PDT)
Received: from eROCCA26.vpn2.erocca.com
 (LNantes-156-76-15-113.w82-127.abo.wanadoo.fr. [82.127.166.113])
 by mx.google.com with ESMTPSA id jy8sm5729355wjc.7.2014.07.17.05.11.50
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 17 Jul 2014 05:11:50 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 14:12:18 +0200
Message-Id: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 0/3 v2] mtd: atmel_nand: add support for 8k page nand
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgYWRkIHN1cHBvcnQgZm9yIDhrIHBhZ2UgTkFORC4gVGhpcyBpcyBk
b25lIGJ5CmluY3JlYXNpbmcgY2hpcF9kZWxheSAoMjB1cyB0byA0MHVzKSBhbmQgZW5hYmxlIFBN
RUNDIGZvciA4ayBuYW5kLgpBIHBhdGNoIGFsc28gZml4IGJpdCBlcnJvciBjb3JyZWN0aW9uIHdo
ZW4gdXNpbmcgMTAyNCBzZWN0b3Igc2l6ZSB3aXRoIHBtZWNjLgoKUmFwaGHDq2wgUG9nZ2kgKDMp
OgogICAgICAgIFtQQVRDSCAxLzNdIG10ZDogYXRtZWxfbmFuZDogaW5jcmVhc2UgY2hpcF9kZWxh
eQogICAgICAgIFtQQVRDSCAyLzNdIG10ZDogYXRtZWxfbmFuZDogZml4IGJpdCBlcnJvciBjb3Jy
ZWN0aW9uCiAgICAgICAgW1BBVENIIDMvM10gbXRkOiBhdG1lbF9uYW5kOiBlbmFibGUgUE1FQ0Mg
Zm9yIDhrIHBhZ2UgbmFuZAoKIGRyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jIHwgICAgNiAr
KysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
