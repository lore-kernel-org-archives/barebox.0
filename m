Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSkS-0001Qk-J1
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:55:37 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TfSkQ-0005yA-Sq
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:55:34 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TfSkQ-0006kO-RZ
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:55:34 +0100
Date: Mon, 3 Dec 2012 10:55:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203095534.GL10369@pengutronix.de>
References: <20121130110336.GB7099@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121130110336.GB7099@greatfirst.com>
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

T24gRnJpLCBOb3YgMzAsIDIwMTIgYXQgMDc6MDM6MzZQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IHRoZSBmdW5jdGlvbiB1bmNvbXByZXNzX2ZkX3RvX2J1ZiBoYXMgbm8gcGFyYW1ldGVyIHRv
IHJldHVybgo+IHRoZSB1bmNvbXByZXNzZWQgbGVuZ3RoLCBIb3cgdG8gZ2V0IHRoZSB1bmNvbXBy
ZXNzZWQgY29udGVudAo+IGxlbmd0aD8KCkFGQUlLIHRoZSB1bmNvbXByZXNzZWQgc2l6ZSBpcyBu
b3QgY29udGFpbmVkIGluIHRoZSBjb21wcmVzc2VkIGRhdGEgCllvdSB3b3VsZCBoYXZlIHRvIHVu
Y29tcHJlc3MgdG8gYSBmaWxlIGFuZCB1c2UgdGhpcyBhZnRlcndhcmRzLgpJZiBJIHVuZGVyc3Rh
bmQgY29ycmVjdGx5IHlvdSB3YW50IHRvIGxvYWQgYSBGUEdBIGZpcm13YXJlIHdoaWNoIHlvdQpo
YXZlIGluIGNvbXByZXNzZWQgZm9ybS4gV2hhdCBJIHdvdWxkIGRvIGlzOgoKLSB1bmNvbXByZXNz
IHRoZSBmaXJtd2FyZSBpbiBhIHNjcmlwdCByYXRoZXIgdGhhbiB1bmNvbXByZXNzIGl0IGZyb20K
ICBDIGNvZGUuCi0gd3JpdGUgYSBjb21tYW5kIHRvIGZsYXNoIHRoZSBmaXJtd2FyZS4KClNhc2No
YQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAg
ICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYt
OCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAg
ICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
