Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjckm-00083y-Ub
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 20:52:53 +0000
Received: by obbta17 with SMTP id ta17so412189obb.36
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2012 13:52:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1340712413.15660.5.camel@coredoba.hi.pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <CAGm1_kvHqr_RiqUkB6ue_bO7Sj3u=jVUKmM9t9Fw-Z_=Sw=ryQ@mail.gmail.com>
 <1340712413.15660.5.camel@coredoba.hi.pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 26 Jun 2012 22:52:28 +0200
Message-ID: <CAGm1_ktTob+vAgWYphu8Rt-Fn4Rk6jcCZMnot9jm5-vqHyPHmw@mail.gmail.com>
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
Subject: Re: Add basic support for the OMAP-L138/DA850
To: =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

T24gVHVlLCBKdW4gMjYsIDIwMTIgYXQgMjowNiBQTSwgSmFuIEzDvGJiZSA8amx1QHBlbmd1dHJv
bml4LmRlPiB3cm90ZToKPiBPbiBUdWUsIDIwMTItMDYtMjYgYXQgMTM6NTkgKzAyMDAsIFllZ29y
IFllZnJlbW92IHdyb3RlOgo+PiA+IHRoaXMgc2VyaWVzIGludHJvZHVjZXMgYSBuZXcgQVJNIG1h
Y2hpbmUgJ2RhdmluY2knIGFuZCBhZGRzIHN1cHBvcnQKPj4gPiBmb3IgVUFSVCwgcGluIG11eCwg
cG93ZXIvY2xvY2ssIFVTQiAxLjEsIE5BTkQgYW5kIFNQSS4gSW5jbHVkZWQgaXMKPj4gPiBzdXBw
b3J0IGZvciB0aGUgSE1JMTAgc3lzdGVtIHdoaWNoIHdhcyB1c2VkIHRvIGRldmVsb3AgYW5kIHRl
c3QgdGhpcwo+PiA+IHNlcmllcy4KPj4gPgo+PiA+IEEgc2Vjb25kIHNlcmllcyBhZGRpbmcgZXRo
ZXJuZXQgKEVNQUMpIGFuZCBkaXNwbGF5IChMQ0RDKSBzdXBwb3J0Cj4+ID4gd2lsbCBiZSBzdWJt
aXR0ZWQgd2hlbiB0aGlzIGlzIGFjY2VwdGVkLgo+Pgo+PiBkbyB5b3UgYWxzbyBoYXZlIGFtMzM1
eCBzeXN0ZW0/IEFGQUlLIHRoZXkgYm90aCBzaGFyZSBzYW1lIElQIGJsb2Nrcy4KPgo+IEkgaGF2
ZSBhIEJlYWdsZUJvbmUsIHdoaWNoIHVzZXMgYW4gQU0zMzU5LiBTbyBmYXIgaXQgc2VlbXMgdGhh
dCBpdCBpcwo+IGNsb3NlciB0byB0aGUgT01BUDM1MzAgKGJlYWdsZWJvYXJkKSB0aGFuIHRvIHRo
ZSBMMTM4LiBUaGUgQU0zNTA1IHNoYXJlcwo+IHRoZSBFTUFDIGNvcmUgd2l0aCB0aGUgTDEzOCBh
bmQgdGhlIEFNMTgwOCBzaG91bGQgYmUgbmVhcmx5IGlkZW50aWNhbCB0bwo+IHRoZSBMMTM4Lgo+
Cj4gSSd2ZSBnb3QgYSBzaW1wbGUgaGFjayB3aGljaCBhbGxvd3MgbG9hZGluZyBiYXJlYm94IG9u
IGEgQmVhZ2xlQm9uZSBmcm9tCj4gVS1Cb290J3MgU1BMIChNVVggYW5kIGNsb2NraW5nIGlzIG1p
c3NpbmcpLiBZb3UgY2FuIHVzZSBpdCB0byBsb2FkIGEKPiBrZXJuZWwgZnJvbSBTRCBhbmQgYm9v
dCBpdC4KCkNvdWxkIHlvdSBzaGFyZSB0aGUgaGFjaz8gSSB3b3VsZCByZWFsbHkgbGlrZSB0byBz
ZWUgYXQgbGVhc3Qgb25lIG9mCm91ciBzeXN0ZW1zIHVzaW5nIGJhcmVib3ggaW5zdGVhZCBvZiB1
LWJvb3QuCgpZZWdvcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
