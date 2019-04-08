Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.iad3b.emailsrvr.com ([146.20.161.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDUyQ-0002SH-3R
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 14:10:11 +0000
Received: from smtp4.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp4.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id CEA4A201B2
 for <barebox@lists.infradead.org>; Mon,  8 Apr 2019 10:10:07 -0400 (EDT)
Received: by smtp4.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 7FFD1200BC
 for <barebox@lists.infradead.org>; Mon,  8 Apr 2019 10:10:07 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <67655ee5-da5f-2b99-2d1d-ab6c66e4dd48@mev.co.uk>
Date: Mon, 8 Apr 2019 15:10:06 +0100
MIME-Version: 1.0
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: watchdog_disable() in Cyclone V reset manager
To: barebox@lists.infradead.org

ImFyY2gvYXJtL21hY2gtc29jZnBnYS9jeWNsb25lNS1yZXNldC1tYW5hZ2VyLmMiIGRlZmluZXMg
YSBnbG9iYWwgCmZ1bmN0aW9uICd2b2lkIHdhdGNoZG9nX2Rpc2FibGUodm9pZCknLiAgTm90aGlu
ZyBjYWxscyBpdC4gIFRoZSBjb21waWxlciAKaXNzdWVzIGEgd2FybmluZzoKCi9tbnQvbGluZGF0
YS93b3JrL2FiYm90dGkvYmFyZWJveF9naXQvYmFyZWJveC1uZXh0L2FyY2gvYXJtL21hY2gtc29j
ZnBnYS9jeWNsb25lNS1yZXNldC1tYW5hZ2VyLmM6MjY6NjogCndhcm5pbmc6IG5vIHByZXZpb3Vz
IHByb3RvdHlwZSBmb3Ig4oCYd2F0Y2hkb2dfZGlzYWJsZeKAmSBbLVdtaXNzaW5nLXByb3RvdHlw
ZXNdCiAgdm9pZCB3YXRjaGRvZ19kaXNhYmxlKHZvaWQpCiAgICAgICBefn5+fn5+fn5+fn5+fn5+
CgpTaW5jZSBub3RoaW5nIGluIHRoZSBzaGlwcGVkIGNvZGUgY2FsbHMgaXQsIHNob3VsZCB3ZSBn
ZXQgcmlkIG9mIGl0PyAgSWYgCm5vdCwgaXQgc2hvdWxkIGJlIGRlY2xhcmVkIGluIGEgaGVhZGVy
IGZpbGUgc29tZXdoZXJlLgoKLS0gCi09KCBJYW4gQWJib3R0IDxhYmJvdHRpQG1ldi5jby51az4g
fHwgV2ViOiB3d3cubWV2LmNvLnVrICk9LQotPSggTUVWIEx0ZC4gaXMgYSBjb21wYW55IHJlZ2lz
dGVyZWQgaW4gRW5nbGFuZCAmIFdhbGVzLiApPS0KLT0oIFJlZ2lzdGVyZWQgbnVtYmVyOiAwMjg2
MjI2OC4gIFJlZ2lzdGVyZWQgYWRkcmVzczogICAgKT0tCi09KCAxNSBXZXN0IFBhcmsgUm9hZCwg
QnJhbWhhbGwsIFNUT0NLUE9SVCwgU0s3IDNKWiwgVUsuICk9LQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
