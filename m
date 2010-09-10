Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ou1S6-00019S-D4
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 11:07:35 +0000
Received: by vws11 with SMTP id 11so2592289vws.36
	for <barebox@lists.infradead.org>; Fri, 10 Sep 2010 04:07:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100910110130.GS9112@game.jcrosoft.org>
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
	<201009101127.01766.jbe@pengutronix.de>
	<AANLkTi=kFq71uyAstUiw82oV5EFt3nUv2u1JoQpO_XHR@mail.gmail.com>
	<201009101230.46079.jbe@pengutronix.de>
	<AANLkTinDUzc8BrJ_MqDWFhg9jpWayyuhZ2X_DCDx2sTD@mail.gmail.com>
	<20100910110130.GS9112@game.jcrosoft.org>
Date: Fri, 10 Sep 2010 13:07:27 +0200
Message-ID: <AANLkTi=E8TMms+q91nA3t8HPUAxBjwHLfDBAdM7YdyF+@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: Re: storing barebox to flash /dev/nand0
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gRnJpLCBTZXAgMTAsIDIwMTAgYXQgMTowMSBQTSwgSmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9M
LVZJTExBUkQKPHBsYWduaW9qQGpjcm9zb2Z0LmNvbT4gd3JvdGU6Cj4+ID4KPj4gPiBPa2F5LCAy
NTYga2lCCj4+ID4KPj4gPj4gY3J3LS0tLS0tLSDCoCDCoCDCoCDCoCDCoDAgbmFuZDAuYmFyZWJv
eC5iYgo+PiA+Cj4+ID4gQWdhaW4sIDA/Cj4+ID4KPj4gPiBGb3IgdGhlIGVudmlyb25tZW50IGl0
IGxvb2tzIGRpZmZlcmVudDoKPj4gPgo+PiA+PiBjcnctLS0tLS0tIMKgIMKgIDEzMTA3MiBlbnZf
cmF3Cj4+ID4+IGNydy0tLS0tLS0gwqAgwqAgMTMxMDcyIGVudjAKPj4gPj4gY3J3LS0tLS0tLSDC
oCDCoCAxMzEwNzIgbmFuZDAuYmFyZWJveGVudgo+PiA+PiBjcnctLS0tLS0tIMKgIMKgIDEzMTA3
MiBuYW5kMC5iYXJlYm94ZW52LmJiCj4+ID4KPj4gPiBBbGwgYXJlIDEyOCBraUIuCj4+IE9LIG1h
eWJlZSB0aGVyZSBpcyBtaXggZnJvbSBtdGRfcGFydHMgaW4gZW52IGNvbmZpZyB3aXRoIHZpdGFs
IHBhcnRpdGlvbnMuCj4+IEkga2VlcCBqdXN0IHZpdGFsIHBhcnRpdGlvbnMgaW4gY29kZSBidXQg
cmVzdWx0IGlzIHRoZSBzYW1lOgo+PiBjci0tLS0tLS0tIDQyOTQ5NjcyOTUgemVybwo+PiBjcnct
LS0tLS0tIMKgIMKgIMKgIDI5NzMgZGVmYXVsdGVudgo+PiBjcnctLS0tLS0tIDQyOTQ5NjcyOTUg
bWVtCj4+IGNydy0tLS0tLS0gwqAyNjg0MzU0NTYgbmFuZDAKPj4gY3ItLS0tLS0tLSDCoCDCoDgz
ODg2MDggbmFuZF9vb2IwCj4+IGNydy0tLS0tLS0gwqAgwqAgwqAgwqAgwqAwIHJhbTAKPj4gY3J3
LS0tLS0tLSDCoCDCoCDCoCDCoCAzMiBwaHkwCj4+IGNydy0tLS0tLS0gwqAgwqAgMjYyMTQ0IHNl
bGZfcmF3Cj4+IGNydy0tLS0tLS0gwqAgwqAgwqAgwqAgwqAwIHNlbGYwCj4+IGNydy0tLS0tLS0g
wqAgwqAgMTMxMDcyIGVudl9yYXcKPj4gY3J3LS0tLS0tLSDCoCDCoCAxMzEwNzIgZW52MAo+Pgo+
PiBzZWxmMCBzaG91bGQgYmUgYmIgZm9yIHNlbGZfcmF3IHdoZXJlIHRvIHN0b3JlIGJhcmVib3gu
IEJ1dCB3aHkgaXQgaGFzIHNpemUgMD8KPj4gRG9uJ3QgdW5kZXJzdGFuZD8gQW0gSSBkb2luZyBz
b21ldGhpbmcgd3Jvbmc/IEZvciBlbnYgaXQgd29ya3MgZmluZS4KPiBJZiBJIHVuZGVyc3RhbmQg
Y29ycmVjdGx5IHlvdXIgbG9nIHlvdSBoYXZlIGEgYmFkIGJsb2NrIG9uIGl0CllvdSdyZSByaWdo
dC4gSSBlcmFzZSBOQU5EIGFnYWluIGFuZCB0aGVuIGJhZCBibG9jayBmb3IgMHgwMDAwMDAwMCBp
cyBnb25lLiBJCmNhbiBsb2FkIGJhcmVib3ggdG8gZmxhc2guIFNvcnJ5IGZvciBzcGFtbWluZy4K
Pgo+IEJlc3QgUmVnYXJkcywKPiBKLgo+CgoKCi0tIAphcyBzaW1wbGUgYW5kIHByaW1pdGl2ZSBh
cyBwb3NzaWJsZQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCk1hcmVrIEJlbGlza28gLSBPUEVOLU5BTkRSQQpGcmVlbGFuY2UgRGV2ZWxvcGVyCgpSdXNr
YSBOb3ZhIFZlcyAyMTkgfCBQcmVzb3YsIDA4MDA1IFNsb3ZhayBSZXB1YmxpYwpUZWw6ICs0MjEg
OTE1IDA1MiAxODQKc2t5cGU6IG1hcmVrd2hpdGUKaWNxOiAyOTA1NTEwODYKd2ViOiBodHRwOi8v
b3Blbi1uYW5kcmEuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
