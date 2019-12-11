Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewsZ-0004Jw-3h
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 07:57:52 +0000
References: <1575990387-9905-1-git-send-email-m.otto@phytec.de>
 <20191210152149.eymit4nvxa2prbzf@pengutronix.de>
From: Maik Otto <m.otto@phytec.de>
Message-ID: <71fdd107-c88e-d605-44a8-92701eef926d@phytec.de>
Date: Wed, 11 Dec 2019 08:57:45 +0100
MIME-Version: 1.0
In-Reply-To: <20191210152149.eymit4nvxa2prbzf@pengutronix.de>
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
Subject: Re: [PATCH] habv4: add the possibility to changing the signing area
 from Kconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKaW4gbXkgb3BpbmlvbiBpdCBpcyBiZXR0ZXIgdG8gaGF2ZSBpdCBjb25maWd1
cmFibGUsIGJlY2F1c2UgdGhlciBhcmUKZGlmZmVyZW50IHVzZSBjYXNlcyBhbmQgc2VjdXJpdHkg
cmVxdWlyZW1lbnRzLgppIGZvdW5kIHRoZSBwcm9ibGVtIGJ5IGNyZWF0aW5nwqAgYSBzZC1jYXJk
IFxlbW1jIGltYWdlIHdpdGggd2ljLsKgIFRoZQptYnIsIHRoZSBwYXJ0aXRpb24gdGFibGUgYW5k
IGJvb3Rsb2FkZXIgYmVjYW1lIGJlIHNpZ25lZCBhdCBiYXJlYm94CmJ1aWxkIGFuZCB3aWMgY2hh
bmdlcwp0aGUgcGFydGl0aW9uIHRhYmxlIGF0IHRoZSBlbmQgb2YgdGhlIGJ1aWxkIHByb2Nlc3Mu
IFRoZW4gdGhlIHNkIGNhcmQKaW1hZ2UgY291bGQgbm90IGJvb3QgLCBiZWNhdXNlIHRoZSBzaWdu
YXR1cmUgd2FzIHdyb25nLiB5ZWFoIHNlY3VyZSBib290CndvcmtzIDotKQp0aGUgaGlnaGVzdCBw
cm90ZWN0aW9uIHlvdSBoYXZlLCB3aGVuIG1iciBhbmQgcGFydGl0aW9uIHRhYmxlIGlzIHNpZ25l
ZAp3aXRoIHRoZSBib290bG9hZGVyLCBidXQgaXQgaXMgbm90IGFsd2F5cyBuZWNlc3NhcnkuCgp0
aGVyZSB3YXMgaW1wbGVtZW50ZWQgc2tpcC1tYnIsIGRjZG9mcyBhbmQgZnVsbCwgYnV0IGZ1bGwg
d2FzIGJ5IGRlZmF1bHQKaW4gdGhlIGNvZGUuIGF0IHRoZSBtb21lbnQgaSB0aGluayAsIGl0IGlz
IGEgZ29vZCBhbmQgZWFzeSBjaG9pY2UuCgpCZXN0IHJlZ2FyZHMKCk1haWsKCkFtIDEwLjEyLjIw
MTkgdW0gMTY6MjEgc2NocmllYiBTYXNjaGEgSGF1ZXI6Cj4gT24gVHVlLCBEZWMgMTAsIDIwMTkg
YXQgMDQ6MDY6MjdQTSArMDEwMCwgTWFpayBPdHRvIHdyb3RlOgo+PiB0aGUgd2hvbGUgYmFyZWJv
eCB3aXRoIG1iciBhbmQgcGFydGl0aW9uIHRhYmxlIHdpbGwgYmUgc2lnbmVkIGJ5IGRlZmF1bHQK
Pj4gYWRkIHRoZSBwb3NzaWJpbGl0eSBpbiB0aGUgS2NvbmZpZyB0byBjaGFuZ2UgZnJvbSBmdWxs
IHNpZ25pbmcgdG8gc2tpcC1tYnIKPj4gYW5kIGZyb20tZGNkb2ZzCj4gTm90IHNpZ25pbmcgdGhl
IE1CUiBzZWVtcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uIERvIHdlIG5lZWQgaXQKPiBjb25maWd1
cmFibGUgYXQgYWxsIG9yIHdvdWxkIGl0IGJlIGJldHRlciB0byBqdXN0IGFsd2F5cyBza2lwIHRo
ZSBmaXJzdAo+IEtpQj8KPgo+IFNhc2NoYQo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
