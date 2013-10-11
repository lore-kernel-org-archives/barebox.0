Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUdaE-0001pR-Qo
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 14:20:51 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1VUdZr-00031s-BT
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 16:20:27 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1VUdbU-0001by-Iu
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 16:22:08 +0200
Message-ID: <1381501328.11504.71.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 11 Oct 2013 16:22:08 +0200
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338F2D4435F4@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338F2D4435F4@SRV-VS06.TELEVIC.COM>
Mime-Version: 1.0
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
Subject: Re: bareboxenv-target and spi nor flash crc problem
To: barebox@lists.infradead.org

T24gRnJpLCAyMDEzLTEwLTExIGF0IDE0OjU3ICswMjAwLCBWYW5oYXV3YWVydCBXb3V0ZXIgd3Jv
dGU6Cj4gSGksIEkgd2FudCB0byB1c2UgYmFyZWJveGVudi10YXJnZXQgb24gbXkgb3BlcmF0aW5n
IHN5c3RlbQo+IE15IGVudmlyb25tZW50IHNldHRpbmdzIGFyZSBzdG9yZWQgb24gYSBtMjVwMzIg
c3BpIG5vciBmbGFzaC4KPiBJIGNhbiBsb2FkIHRoZW0gcGVyZmVjdGx5IGJ5IGlzc3VlaW5nIGNv
bW1hbmQ6Cj4gYmFyZWJveGVudi10YXJnZXQgLWwgL3RtcC9iYXJlYm94IC9kZXYvbXRkMSAKPiBJ
IGNoYW5nZSBzb21ldGhpbmcgYW5kIGFmdGVyd2FyZHMgSSBkbzogYmFyZWJveGVudi10YXJnZXQg
LXMgL3RtcC9iYXJlYm94IC9kZXYvbXRkMQo+IE5vIHByb2JsZW1zIHNvIGZhcgo+IEhvd2V2ZXIK
PiBJZiBJIHJlYm9vdCwgSSBnZXQgYSB3cm9uZyBjcmMgb24gZW52IHN1cGVyYmxvY2sgYW5kIGRl
ZmF1bHQgZW52aXJvbm1lbnQgaXMgbG9hZGVkCgpZb3Ugc2hvdWxkIHVzZSBmbGFzaF9lcmFzZSAo
ZnJvbSBtdGQtdXRpbHMpIG9uIHRoZSBtdGQgcGFydGl0aW9uIGJlZm9yZQp3cml0aW5nIHRvIGl0
LgoKUmVnYXJkcywKSmFuIEzDvGJiZQotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBM
aW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5k
ZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6
ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYg
ICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
