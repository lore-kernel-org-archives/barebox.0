Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnk6h-0004Dv-VT
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 12:32:01 +0000
References: <20180809095146.GA26594@ravnborg.org>
 <6rzhxvhk7p.fsf@pengutronix.de> <20180809111433.GA20330@ravnborg.org>
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
In-reply-to: <20180809111433.GA20330@ravnborg.org>
Date: Thu, 09 Aug 2018 14:31:47 +0200
Message-ID: <6ry3dfhgb0.fsf@pengutronix.de>
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
Subject: Re: NFS boot - could not open /.tftp_tmp_path
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

U2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPiB3cml0ZXM6Cj4gSGkgVWxyaWNoCj4+ID4g
VGhlbiB3aGVuIEkgdHJ5IHRvIGJvb3QgZnJvbSBuZnMgSSBnZXQgdGhlIGZvbGxvd2luZyBvdXRw
dXQ6Cj4+ID4KPj4gPiBiYXJlYm94OiBib290IG5mczovLzE5Mi4xNjguODYuMjAxL25mc2Jvb3Qv
YXJtOS8KPj4gCj4+IHlvdSBhbHJlYWR5IGhhdmUgdGhlIHNsYXNoIHNlcGFyYXRpbmcgdGhlIGhv
c3QgcGFydCBvZiB0aGUgVVJMIGFuZCB0aGUKPj4gcGF0aCBwYXJ0LCBidXQgeW91IG1pc3NlZCB0
aGUgc2xhc2ggdGhhdCBpcyBuZWVkZWQgYXQgdGhlIGJlZ2lubmluZyBvZgo+PiB0aGUgYWJzb2x1
dGUgcGF0aDoKPj4gCj4+ICAgYm9vdCBuZnM6Ly8xOTIuMTY4Ljg2LjIwMS8vbmZzYm9vdC9hcm05
Lwo+PiAKPj4gKHdpdGggYSB0d28gc2xhc2hlcykgc2hvdWxkIGhvcGVmdWxseSBkbyB0aGUgdHJp
Y2suCj4KPiBIbW0sIG5vIGx1Y2s6Cj4gYmFyZWJveDovIGJvb3QgbmZzOi8vMTkyLjE2OC44Ni4y
MDEvL25mc2Jvb3QvYXJtOS8KPiBldGgwOiBESENQIGNsaWVudCBib3VuZCB0byBhZGRyZXNzIDE5
Mi4xNjguODYuMjAKPiBUIFQgVCBUIFQgVCBUIFQgVCBUIFQgVCBUIFQgY291bGQgbm90IG9wZW4g
Ly50ZnRwX3RtcF9wYXRoL3pJbWFnZS1hdDkxc2FtOTI2M2VrdAo+Cj4gYmFyZWJveDovIGJvb3Qg
bmZzOi8vMTkyLjE2OC44Ni4yMDEvL25mc2Jvb3QvYXJtOQo+IGV0aDA6IERIQ1AgY2xpZW50IGJv
dW5kIHRvIGFkZHJlc3MgMTkyLjE2OC44Ni4yMAo+IFQgVCBUIFQgVCBUIFQgVCBUIFQgVCBUIFQg
VCBjb3VsZCBub3Qgb3BlbiAvLnRmdHBfdG1wX3BhdGgvekltYWdlLWF0OTFzYW05MjYzZWt0Cj4K
PiBJIHdpbGwgdHJ5IHRvIGFkZCBzb21lIGRlYnVnZ2luZyBhbmQgc2VlIHdoYXRzIGdvaW5nIG9u
LgoKRG8geW91IHNlZSBhbnl0aGluZyBvZiBpbnRlcmVzdCBpbiB0aGUgc2VydmVyJ3MgbG9nPwot
LSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVWxyaWNoIMOW
bG1hbm4gICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwg
MzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDkt
NTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
