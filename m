Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghcgn-00019E-Rv
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 15:56:15 +0000
References: <20190108102412.10553-1-u.kleine-koenig@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <44c7edc5-ad92-eaa2-a3b9-20d7748331ec@phytec.de>
Date: Thu, 10 Jan 2019 16:56:10 +0100
MIME-Version: 1.0
In-Reply-To: <20190108102412.10553-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH RFC] imx6ul-phytec-phycore-som: don't use
 fsl,no-blockmark-swap for the NAND
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, barebox@lists.infradead.org

SGkgVXdlLAoKT24gMDguMDEuMTkgMTE6MjQsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IGJh
cmVib3ggZG9lc24ndCBob25vciB0aGF0IHByb3BlcnR5IHdoaWNoIHlpZWxkcyB0byBpbmNvbnNp
dGVuY2llcwo+IGJldHdlZW4gTGludXggYW5kIGJhcmVib3ggYWZ0ZXIgZm9yIGV4YW1wbGUgZmls
bGluZyBhbiBVQkkgd2l0aCBhIGZpbGUKPiBzeXN0ZW0gd2l0aCBiYXJlYm94IGFuZCB0aGVuIHRy
eWluZyB0byBtb3VudCB0aGF0IGZyb20gTGludXguCj4gCj4gTm90ZSB0aGlzIGlzIGFuIGludGVy
cnVwdGl2ZSBjaGFuZ2UgYXMgaXQgcmVxdWlyZXMgdG8gcmV3cml0ZSB0aGUgZmxhc2gKPiB0byBt
YWtlIGl0IHdvcmtpbmcgd2l0aCBMaW51eCBhZ2Fpbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IEhl
bGxvLAo+IAo+IEkgd29uZGVyIHdoeSBQaHl0ZWMgY2hvc2UgdG8gdXNlIHRoaXMgY29uZmlndXJh
dGlvbi4gV2FzIHRoaXMganVzdAo+IGNvcGllZCBmcm9tIGFub3RoZXIgYm9hcmQ/CgpJIGhhdmUg
dG8gYWRtaXQsIEkgZG9uJ3Qga25vdyB3aHkgdGhpcyBjb25maWd1cmF0aW9uIHdhcyBhZGRlZC4g
SSBndWVzcyBpdCB3YXMgCmFkZGVkIHVuaW50ZW50aW9uYWxseSBzaW5jZSB3ZSBkbyBub3QgdXNl
IHRoaXMgY29uZmlndXJhdGlvbiBpbiB0aGUga2VybmVsLgoKU28gZnJvbSBteSBzaWRlIHRoZXJl
IGlzIG5vIG9iamVjdGlvbiB0byB0aGlzIHBhdGNoLgoKVGhhbmtzIGZvciBzcG90aW5nIHRoaXMg
YW5kIGJlc3QgcmVnYXJkcwpTdGVmYW4KCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4gCj4gICBh
cmNoL2FybS9kdHMvaW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpIHwgMSAtCj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMv
aW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpIGIvYXJjaC9hcm0vZHRzL2lteDZ1bC1waHl0
ZWMtcGh5Y29yZS1zb20uZHRzaQo+IGluZGV4IGQ4MjlmZGQ2ZmIyOS4uMzk4NTQ2ZDdiOTJlIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9pbXg2dWwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kK
PiArKysgYi9hcmNoL2FybS9kdHMvaW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCj4gQEAg
LTQ5LDcgKzQ5LDYgQEAKPiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgCXBpbmN0
cmwtMCA9IDwmcGluY3RybF9ncG1pX25hbmQ+Owo+ICAgCW5hbmQtb24tZmxhc2gtYmJ0Owo+IC0J
ZnNsLG5vLWJsb2NrbWFyay1zd2FwOwo+ICAgCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAKPiAg
IAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
