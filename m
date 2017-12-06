Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMbSl-0000G0-74
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 15:18:21 +0000
Message-ID: <1512573475.6394.22.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 06 Dec 2017 16:17:55 +0100
In-Reply-To: <20171206151233.29342-1-r.hieber@pengutronix.de>
References: <20171206151233.29342-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: bcm2835-rpi: re-enable booting from SD card
To: Roland Hieber <r.hieber@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Dahl <post@lespocky.de>, Roland Hieber <rohieb@rohieb.name>

QW0gTWl0dHdvY2gsIGRlbiAwNi4xMi4yMDE3LCAxNjoxMiArMDEwMCBzY2hyaWViIFJvbGFuZCBI
aWViZXI6Cj4gRnJvbTogUm9sYW5kIEhpZWJlciA8cm9oaWViQHJvaGllYi5uYW1lPgo+IAo+IEtl
cm5lbCBjb21taXQgYTE5YWRmOGQ4NmU4MjJlYmE1MDI0ODY1MjQxMjc1OTUzNzJjODVmNiBbMF0g
Y2hhbmdlZAo+IHRoZQo+IFJQaTEgZGV2aWNlIHRyZWUgZnJvbSAmc2RoY2kgdG8gJnNkaG9zdCwg
d2hpY2ggd2FzIGltcG9ydGVkIGluCj4gYmFyZWJveAo+IGNvbW1pdCBkMTRiODQ0YjA4NjM1Yzcx
N2ZiNTJhMjk0ZWQ4ZDY4NzJlMjYwMzE1LiBJdCBzZWVtcyB0aGF0Cj4gYmFyZWJveAo+IGRvZXMg
bm90IGhhdmUgYSBkcml2ZXIgZm9yIGJyY20sYmNtMjgzNS1zZGhvc3QgKHlldCksIHdoaWNoIHJl
c3VsdGVkCj4gaW4KPiBiYXJlYm94IHVuYWJsZSB0byBib290IGZyb20gU0QgY2FyZC4gSG93ZXZl
ciwgdGhlIGRyaXZlciBmb3IKPiBicmNtLGJjbTI4MzUtc2RoY2kgd29ya2VkIGZpbmUgaW4gdGhl
IHBhc3QuCj4gCj4gQWx0aG91Z2ggdGhlIHVwc3RyZWFtIGNoYW5nZSB3YXMgbWFkZSBmb3IgZ29v
ZCByZWFzb25zLCB0aGUgc2ltcGxlc3QKPiBjaGFuZ2UgZm9yIGJhcmVib3ggZm9yIG5vdyBpcyB0
byByZXZlcnQgdG8gdXNpbmcgJnNkaGNpIGFuZCBkaXNhYmxlCj4gJnNkaG9zdC4KPiAKPiBUaGFu
a3MgdG8gQWxleGFuZGVyIERhaGwgZm9yIHJhaXNpbmcgdGhpcyBpc3N1ZSBvbiB0aGUgRGlzdHJv
S2l0Cj4gbWFpbGluZyBsaXN0IQo+IAo+IFswXTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZwo+IGl0L2NvbW1pdC8/aWQ9YTE5
YWRmOGQ4NmU4MjJlYmE1MDI0ODY1MjQxMjc1OTUzNzJjODVmNgo+IAo+IENjOiBBbGV4YW5kZXIg
RGFobCA8cG9zdEBsZXNwb2NreS5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2xhbmQgSGllYmVyIDxy
b2hpZWJAcm9oaWViLm5hbWU+Cj4gLS0tCj4gwqBhcmNoL2FybS9kdHMvYmNtMjgzNS1ycGkuZHRz
IHwgNyArKysrKysrCj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9iY20yODM1LXJwaS5kdHMgYi9hcmNoL2FybS9kdHMvYmNt
MjgzNS0KPiBycGkuZHRzCj4gaW5kZXggMDA5NWY1OGEzYy4uYWIyZDZkZmY2NCAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybS9kdHMvYmNtMjgzNS1ycGkuZHRzCj4gKysrIGIvYXJjaC9hcm0vZHRzL2Jj
bTI4MzUtcnBpLmR0cwo+IEBAIC05LDMgKzksMTAgQEAKPiDCoAkJcmVnID0gPDB4MCAweDA+Owo+
IMKgCX07Cj4gwqB9OwoKTWlzc2luZyBuZXdsaW5lIGhlcmUuIE90aGVyIHRoYW4gdGhhdDoKClJl
dmlld2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KCj4gKyZzZGhj
aSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmc2Rob3N0IHsKPiArCXN0YXR1
cyA9ICJkaXNhYmxlZCI7Cj4gK307CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
