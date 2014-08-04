Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEEQd-0006rf-EY
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 09:19:44 +0000
Message-ID: <53DF4F9E.2070901@atmel.com>
Date: Mon, 4 Aug 2014 17:17:18 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <1407141112-3868-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1407141112-3868-3-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH V2 2/2] at91sam9g45: clock: add i2c clocks
To: =?UTF-8?B?UmFwaGHDq2wgUG9nZ2k=?= <poggi.raph@gmail.com>, barebox@lists.infradead.org

SGkgUmFwaGHDq2wgUG9nZ2ksCgpPbiAwOC8wNC8yMDE0IDA0OjMxIFBNLCBSYXBoYcOrbCBQb2dn
aSB3cm90ZToKPiBBZGQgdGhlIGRldmljZSB0cmVlIGFuZCBub24gZGV2aWNlIHRyZWUgYXQ5MSBp
MmMgY2xvY2tzLgo+Cj4gU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhA
Z21haWwuY29tPgo+IC0tLQo+ICAgYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMgfCAg
ICA0ICsrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYyBiL2FyY2gvYXJtL21hY2gtYXQ5
MS9hdDkxc2FtOWc0NS5jCj4gaW5kZXggZjYwMzFmMC4uZDBmOTUwYyAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtYXQ5
MS9hdDkxc2FtOWc0NS5jCj4gQEAgLTE5Miw2ICsxOTIsMTAgQEAgc3RhdGljIHN0cnVjdCBjbGtf
bG9va3VwIHBlcmlwaF9jbG9ja3NfbG9va3Vwc1tdID0gewo+ICAgCUNMS0RFVl9DT05fREVWX0lE
KCJtY2lfY2xrIiwgImF0bWVsX21jaTEiLCAmbW1jMV9jbGspLAo+ICAgCUNMS0RFVl9DT05fREVW
X0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTAiLCAmc3BpMF9jbGspLAo+ICAgCUNMS0RFVl9DT05f
REVWX0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTEiLCAmc3BpMV9jbGspLAo+ICsJQ0xLREVWX0NP
Tl9ERVZfSUQoTlVMTCwgImF0OTEtdHdpMCIsICZ0d2kwX2NsayksCgpzL0NMS0RFVl9DT05fREVW
X0lEL0NMS0RFVl9ERVZfSUQgKGFsc28gZm9yIHRoZSBmb2xsb3dpbmcpLgoKdGhlIERFVl9JRCBz
aG91bGQgYmUgcHJlc2VudGVkIGluIHRoZSBpZF90YWJsZSBpbiB0aGUgZHJpdmVyLgoKPiArCUNM
S0RFVl9DT05fREVWX0lEKE5VTEwsICJhdDkxLXR3aTEiLCAmdHdpMV9jbGspLAo+ICsJQ0xLREVW
X0NPTl9ERVZfSUQoTlVMTCwgImZmZjg0MDAwLmkyYyIsICZ0d2kwX2NsayksCj4gKwlDTEtERVZf
Q09OX0RFVl9JRChOVUxMLCAiZmZmODgwMDAuaTJjIiwgJnR3aTFfY2xrKSwKPiAgIAlDTEtERVZf
REVWX0lEKCJhdDkxcm05MjAwLWdwaW8wIiwgJnBpb0FfY2xrKSwKPiAgIAlDTEtERVZfREVWX0lE
KCJhdDkxcm05MjAwLWdwaW8xIiwgJnBpb0JfY2xrKSwKPiAgIAlDTEtERVZfREVWX0lEKCJhdDkx
cm05MjAwLWdwaW8yIiwgJnBpb0NfY2xrKSwKPgoKQmVzdCBSZWdhcmRzLApCbyBTaGVuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
