Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4FR-0005aC-TR
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 07:52:47 +0000
Received: by mail-wm1-x32a.google.com with SMTP id v22so13610008wml.1
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2019 00:52:45 -0700 (PDT)
Received: from [192.168.106.167] (213.172.225.144.ipv4.telemach.net.
 [213.172.225.144])
 by smtp.gmail.com with ESMTPSA id k10sm8153233wmj.37.2019.06.04.00.52.42
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:52:43 -0700 (PDT)
References: <CAPYMOwmwmX3G0cHp6DSmw+GxRmENThtABnQdSS-2cL=kgfYYPg@mail.gmail.com>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <60b22776-2a60-abfa-8f06-82455bdebe0d@klevio.com>
Date: Tue, 4 Jun 2019 09:52:42 +0200
MIME-Version: 1.0
In-Reply-To: <CAPYMOwmwmX3G0cHp6DSmw+GxRmENThtABnQdSS-2cL=kgfYYPg@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: Raspberry Pi Barebox State Integration - SD card
To: barebox@lists.infradead.org

SGkKCk9uIDQuIDA2LiAxOSAwODozMiwgVmFsZW50aW5hIFJ1c3Ugd3JvdGU6Cj4gKiBvdGhlciBi
b2FyZHMgaGF2ZSBFRVBST00sIE5BTkQgYmVzaWRlcyBTRCBjYXJkIGFuZCB0aGV5IGFyZSAKPiBk
ZXNjcmliZWQgaW4gdGhlIGRldmljZSB0cmVlOyBSUGkgaGFzIG5vIHN1Y2ggdGhpbmc7Cgo+ICog
c29tZWhvdyBJIG5lZWQgdG8gd3JpdGUgdGhlIHN0YXRlIG9uIHRoZSBTRCBjYXJkIGluIGEgbG9j
YXRpb24KPiB3aGVyZSBkb2VzIG5vdCBpbnRlcmZlcmUgd2l0aCB0aGUgcGFydGl0aW9ucyBjcmVh
dGVkIChib290LCByb290ZnMsCj4gdXNlciBwYXJ0aXRpb25zLCBldGMpOwoKQmFyZWJveCBvbiBS
YXNwYmVycnkgUGkgYXV0b21hdGljYWxseSBzYXZlcyBudiB2YXJpYWJsZXMgdG8gdGhlCiJiYXJl
Ym94LmVudiIgZmlsZSBpbiB0aGUgZmlyc3QgcGFydGl0aW9uIC0gc2VlIHJwaV9lbnZfaW5pdCgp
IGluIApycGktY29tbW9uLmMuIFRoaXMgaXMgdXN1YWxseSB0aGUgL2Jvb3QgcGFydGl0aW9uIHdp
dGggRkFUIHRoYXQgYWxzbyBoYXMgCnRoZSBWaWRlb0NvcmUgZmlybXdhcmUgZmlsZXMsIGV0Yy4K
CkkgaGF2ZSBhIHdvcmtpbmcgYm9vdGNob29zZXIgc2V0dXAgZm9yIGEgYm9hcmQgYmFzZWQgb24g
Ui5QaSBDTTMgdXNpbmcgCnRoaXMgZnVuY3Rpb25hbGl0eS4gTm8gc3BlY2lhbCBzZXR1cCB3YXMg
cmVxdWlyZWQgaW4gYmFyZWJveCByZWdhcmQgdG8gCnNhdmluZyB0aGUgYm9vdGNob29zZXIgc3Rh
dGUuCgpJJ20gbm90IGZhbWlsaWFyIHdpdGggbWV0YS1iYXJlYm94IGFuZCBSQVVDIHRob3VnaC4K
CkJlc3QgcmVnYXJkcwpUb21hxb4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
