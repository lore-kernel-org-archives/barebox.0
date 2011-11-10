Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROVOJ-0004Im-Mh
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 14:14:08 +0000
Received: by eye3 with SMTP id 3so3032534eye.36
 for <barebox@lists.infradead.org>; Thu, 10 Nov 2011 06:14:04 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1319592341-2295-1-git-send-email-festevam@gmail.com>
References: <1319592341-2295-1-git-send-email-festevam@gmail.com>
Date: Thu, 10 Nov 2011 12:14:03 -0200
Message-ID: <CAOMZO5B9CfVgVYPF7kUgo_Y=fv52S1oLOkyGgLS0YW4hcPn0vw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH] ARM: mx53-loco: Remove duplicate call to loco_fec_reset()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, kernel@pengutronix.de

U2FzY2hhLAoKT24gVHVlLCBPY3QgMjUsIDIwMTEgYXQgMTE6MjUgUE0sIEZhYmlvIEVzdGV2YW0g
PGZlc3RldmFtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gUmVtb3ZlIGR1cGxpY2F0ZSBjYWxsIHRvIGxv
Y29fZmVjX3Jlc2V0KCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGYWJpbyBFc3RldmFtIDxmYWJpby5l
c3RldmFtQGZyZWVzY2FsZS5jb20+Cj4gLS0tCj4gwqBhcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxl
LW14NTMtbG9jby9ib2FyZC5jIHwgwqAgwqAyIC0tCj4gwqAxIGZpbGVzIGNoYW5nZWQsIDAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2Fy
ZHMvZnJlZXNjYWxlLW14NTMtbG9jby9ib2FyZC5jIGIvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2Fs
ZS1teDUzLWxvY28vYm9hcmQuYwo+IGluZGV4IDI0ZGY5YWUuLjM2ZjFiNTcgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2FsZS1teDUzLWxvY28vYm9hcmQuYwo+ICsrKyBiL2Fy
Y2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUtbXg1My1sb2NvL2JvYXJkLmMKPiBAQCAtMTAyLDggKzEw
Miw2IEBAIHN0YXRpYyBpbnQgbG9jb19kZXZpY2VzX2luaXQodm9pZCkKPiDCoCDCoCDCoCDCoGFy
bWxpbnV4X3NldF9ib290cGFyYW1zKCh2b2lkICopMHg3MDAwMDEwMCk7Cj4gwqAgwqAgwqAgwqBh
cm1saW51eF9zZXRfYXJjaGl0ZWN0dXJlKE1BQ0hfVFlQRV9NWDUzX0xPQ08pOwo+Cj4gLSDCoCDC
oCDCoCBsb2NvX2ZlY19yZXNldCgpOwo+IC0KCkRvZXMgdGhpcyBvbmUgbG9vayBmaW5lPwoKUmVn
YXJkcywKCkZhYmlvIEVzdGV2YW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
