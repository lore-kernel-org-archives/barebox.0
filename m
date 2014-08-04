Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEEUC-000091-Qb
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 09:23:24 +0000
Received: by mail-we0-f175.google.com with SMTP id t60so7398016wes.20
 for <barebox@lists.infradead.org>; Mon, 04 Aug 2014 02:22:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53DF4E49.3040501@atmel.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <53DF4E49.3040501@atmel.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Mon, 4 Aug 2014 11:22:09 +0200
Message-ID: <CACqcpZDrqaMNRj5NVmLgvoP1UYwZf03iZsAX32qspwgeZiRhig@mail.gmail.com>
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
Subject: Re: [PATCH V2 0/2] Add device tree support of i2c Atmel driver
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

SGksCgpJIGhhdmUgdGVzdGVkIGl0IG9uIGEgY3VzdG9tIGJvYXJkIHdoaWNoIHVzZSBhIHNhbTlt
MTAgYW5kIGl0CndvcmtlZC4uLiBUZWxsIG1lIG1vcmUgd2hlbiB3ZSBoYXZlIGZvdW5kIHNvbWV0
aGluZyBzdXNwaWNpb3VzLgoKVGhhbmtzIGZvciB5b3VyIHRlc3QuCgpSYXBoYcOrbCBQb2dnaQoK
MjAxNC0wOC0wNCAxMToxMSBHTVQrMDI6MDAgQm8gU2hlbiA8dm9pY2Uuc2hlbkBhdG1lbC5jb20+
Ogo+IEhpIFJhcGhhw6tsIFBvZ2dpLAo+ICAgSSB0cnkgdG8gbWFuYWdlIHRvIG1ha2UgdGhlIGky
YyBkcml2ZXIgd29yaywgaG93ZXZlciwgZmFpbGVkIGZvciBub24KPiBkZXZpY2UgdHJlZS4KPiAg
IEkgYW0gc3RpbGwgY2hlY2tpbmcgaXQuIEhvd2V2ZXIsIHNvbWUgY29tbWVudHMgZm9yIHRoZSBw
YXRjaGVzLgo+Cj4gQmVzdCBSZWdhcmRzLAo+IEJvIFNoZW4KPgo+Cj4gT24gMDgvMDQvMjAxNCAw
NDozMSBQTSwgUmFwaGHDq2wgUG9nZ2kgd3JvdGU6Cj4+Cj4+IENoYW5nZSBzaW5jZSB2MToKPj4g
ICAgICAgICAgKiBTcXVhc2ggdGhlIGNvbW1pdCBbMV0gd2hpY2ggYWRkcyB0aGUgc2FtOXg1IGNv
bmZpZy4KPj4KPj4gVGhpcyBwYXRjaGVzZXQgYWRkcyB0aGUgZGV2aWNlIHRyZWUgc3VwcG9ydCBm
b3IgaTJjIEF0bWVsIGRyaXZlciBhbmQgdGhlCj4+IGNvcnJlc3BpbmcgY2xvY2tzCj4+IGZvciB0
aGUgYXQ5MXNhbTlnNDUgZGV2aWNlLgo+Pgo+PiBSYXBoYcOrbCBQb2dnaSAoMikgOgo+PiAgICAg
ICAgICAoMSkgaTJjOiBhdDkxOiBhZGQgc3VwcG9ydCBvZiBkZXZpY2UgdHJlZQo+PiAgICAgICAg
ICAoMikgYXQ5MXNhbTlnNDU6IGNsb2NrOiBhZGQgaTJjIGNsb2Nrcwo+Pgo+PiBhcmNoL2FybS9t
YWNoLWF0OTEvYXQ5MXNhbTlnNDUuYyB8ICAgIDQgKysrCj4+IGRyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtYXQ5MS5jICAgIHwgICA2Ngo+PiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLQo+PiAyIGZpbGVzIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4+Cj4+IFsxXTogaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2JhcmVib3gv
MjAxNC1BdWd1c3QvMDIwNDkzLmh0bWwKPgo+Cj4gQmVzdCBSZWdhcmRzLAo+IEJvIFNoZW4KPgo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGJh
cmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
