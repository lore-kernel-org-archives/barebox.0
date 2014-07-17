Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f51.google.com ([74.125.82.51])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7hPk-00040x-6h
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 08:51:44 +0000
Received: by mail-wg0-f51.google.com with SMTP id b13so2068713wgh.10
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 01:51:14 -0700 (PDT)
Received: from eROCCA26.vpn2.erocca.com
 (LNantes-156-76-15-113.w82-127.abo.wanadoo.fr. [82.127.166.113])
 by mx.google.com with ESMTPSA id o2sm65422951wij.24.2014.07.17.01.51.10
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 17 Jul 2014 01:51:10 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 10:51:33 +0200
Message-Id: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 0/2] mtd: atmel_nand: add support for 8k page nand
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgYWRkIHN1cHBvcnQgZm9yIDhrIHBhZ2UgTkFORC4gVGhpcyBpcyBk
b25lIGJ5CmluY3JlYXNpbmcgY2hpcF9kZWxheSAoMjB1cyB0byA0MHVzKSBhbmQgZW5hYmxlIFBN
RUNDIGZvciA4ayBuYW5kLgoKUmFwaGHDq2wgUG9nZ2kgKDIpOgogICAgICAgIFtQQVRDSCAxLzJd
IG10ZDogYXRtZWxfbmFuZDogaW5jcmVhc2UgY2hpcF9kZWxheQogICAgICAgIFtQQVRDSCAyLzJd
IG10ZDogYXRtZWxfbmFuZDogZW5hYmxlIFBNRUNDIGZvciA4ayBwYWdlIG5hbmQKCgpkcml2ZXJz
L210ZC9uYW5kL2F0bWVsX25hbmQuYyB8ICAgIDYgKysrKy0tCjEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
