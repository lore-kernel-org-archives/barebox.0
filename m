Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfnBA-0005aY-LR
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 07:44:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TfnB9-0002IW-7X
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 08:44:31 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TfnB9-0003Rd-6L
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 08:44:31 +0100
Date: Tue, 4 Dec 2012 08:44:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121204074431.GV10369@pengutronix.de>
References: <20121130110336.GB7099@greatfirst.com>
 <20121203095534.GL10369@pengutronix.de>
 <20121204014242.GB20812@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121204014242.GB20812@greatfirst.com>
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
Subject: Re: Howto known uncompressed length when uncompress_fd_to_buf
To: barebox <barebox@lists.infradead.org>

T24gVHVlLCBEZWMgMDQsIDIwMTIgYXQgMDk6NDI6NDJBTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IEluIG1lc3NhZ2UgPDIwMTIxMjAzMDk1NTM0LkdMMTAzNjlAcGVuZ3V0cm9uaXguZGU+IFNh
c2NoYSBIYXVlciB3cm90ZToKPiA+IE9uIEZyaSwgTm92IDMwLCAyMDEyIGF0IDA3OjAzOjM2UE0g
KzA4MDAsIOW8oOW/oOWxsSB3cm90ZToKPiA+ID4gdGhlIGZ1bmN0aW9uIHVuY29tcHJlc3NfZmRf
dG9fYnVmIGhhcyBubyBwYXJhbWV0ZXIgdG8gcmV0dXJuCj4gPiA+IHRoZSB1bmNvbXByZXNzZWQg
bGVuZ3RoLCBIb3cgdG8gZ2V0IHRoZSB1bmNvbXByZXNzZWQgY29udGVudAo+ID4gPiBsZW5ndGg/
Cj4gPgo+ID4gQUZBSUsgdGhlIHVuY29tcHJlc3NlZCBzaXplIGlzIG5vdCBjb250YWluZWQgaW4g
dGhlIGNvbXByZXNzZWQgZGF0YQo+ID4gWW91IHdvdWxkIGhhdmUgdG8gdW5jb21wcmVzcyB0byBh
IGZpbGUgYW5kIHVzZSB0aGlzIGFmdGVyd2FyZHMuCj4gPiBJZiBJIHVuZGVyc3RhbmQgY29ycmVj
dGx5IHlvdSB3YW50IHRvIGxvYWQgYSBGUEdBIGZpcm13YXJlIHdoaWNoIHlvdQo+ID4gaGF2ZSBp
biBjb21wcmVzc2VkIGZvcm0uIFdoYXQgSSB3b3VsZCBkbyBpczoKPiA+Cj4gPiAtIHVuY29tcHJl
c3MgdGhlIGZpcm13YXJlIGluIGEgc2NyaXB0IHJhdGhlciB0aGFuIHVuY29tcHJlc3MgaXQgZnJv
bQo+ID4gICBDIGNvZGUuCj4gPiAtIHdyaXRlIGEgY29tbWFuZCB0byBmbGFzaCB0aGUgZmlybXdh
cmUuCj4gPgo+IEJ1dCBpZiB1bmNvbXByZXNzIGl0IHRvIGEgZGV2aWNlIGZpbGUsIGxpa2UgL2Rl
di90bXBtZW0uIHRoZSBmaWxlIHNpemUKPiBpcyB0aGUgZGV2aWNlIHNpemUsIG5vdCB0aGUgdW5j
b21wcmVzc2VkIHNpemUuCj4gCj4gU28gbm93IEkgdW5jb21wcmVzc2VkIGl0IHRvIGEgZmlsZSBp
biBDIGNvZGUgdXNpbmcgdW5jb21wcmVzc19mZF90b19mZCwKPiB0aGVuIHVzZSBsc2VlayB0byBn
ZXQgdGhlIGN1cnJlbnQgcG9zaXRpb24gb2YgdGFyZ2V0IGZpbGUuIFRoYXQgaXMgdGhlCj4gdW5j
b21wcmVzc2VkIHNpemUuCgpXaHkgZG9uJ3QgeW91IHVuY29tcHJlc3MgdG8gYSByZWd1bGFyIGZp
bGUgKGkuZS4gL3RtcC9mb28pIHJhdGhlciB0aGFuCnRvIHRoZSBkZXZpY2UgZmlsZT8KClNhc2No
YQoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2
LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
