Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlck2-0007K8-Op
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 18:24:56 +0000
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-15-s.hauer@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <2620277a-6a8e-6de1-ac2b-f8b870adee08@emlix.com>
Date: Wed, 17 Jun 2020 20:24:48 +0200
MIME-Version: 1.0
In-Reply-To: <20200617081126.5683-15-s.hauer@pengutronix.de>
Content-Language: de-DE
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
Subject: Re: [PATCH 14/19] fastboot: remove double print
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

SGVsbG8gU2FzY2hhLAoKQW0gMTcuMDYuMjAgdW0gMTA6MTEgc2NocmllYiBTYXNjaGEgSGF1ZXI6
Cj4gSW4gZmFzdGJvb3QgVURQIHdlIGNhbid0IHNlbmQgdHdvIG1lc3NhZ2VzIHdpdGhvdXQgd2Fp
dGluZyBmb3IgYW4gYWNrCj4gZnJvbSB0aGUgaG9zdCBpbiBiZXR3ZWVuLiBEbyBub3Qgc2VuZCB0
d28gbWVzc2FnZXMgZGlyZWN0bHkgYWZ0ZXIgZWFjaAo+IG90aGVyIGluIGZhc3Rib290X2Rvd25s
b2FkX2ZpbmlzaGVkKCkgdG8gbWFrZSBpdCBzYWZlIHRvIGJlIGNhbGxlZCBmcm9tCj4gdGhlIGZh
c3Rib290IFVERCBjb2RlLgoKVUREIC0+IFVEUD8KCkkgc2VlIG5vIHJlYXNvbiBmb3IgdGhpcyBw
YXRjaC4gV2hlbiB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCwgd2UgaGF2ZSBqdXN0Cm1hbmFnZWQg
dG8gdHJhbnNmZXIgYSBmaWxlIHdoZXJlIGV2ZXJ5IGRhdGEgcGFja2V0IHdhcyBzZW50IG9ubHkg
YWZ0ZXIgdGhlCmhvc3QgaGFzIHJlY2VpdmVkIG91ciBhY2sgZm9yIHRoZSBwcmV2aW91cyBwYWNr
ZXQuIEFuZCBub3cgeW91IGZlYXIgdGhhdCB0aGUKaG9zdCB3b24ndCBhY2sgb3VyIG5leHQgcGFj
a2V0PwoKVGhlIGZhc3Rib290IFVEUCBjb2RlIGluIFUtQm9vdCB3YXMgZGVzaWduZWQgdG8gc2Vu
ZCBvbmx5IGEgc2luZ2xlIG1lc3NhZ2UKZm9yIGV2ZXJ5IGV4ZWN1dGVkIGNvbW1hbmQgYmVjYXVz
ZSBpdCBkb2Vzbid0IGhhdmUgY29kZSB0aGF0IHdhaXRzIGZvciBhCnBhY2tldCBmcm9tIHRoZSBo
b3N0IHdoZW4gbmVjZXNzYXJ5LiBJIHRoaW5rIHdlIHNob3VsZCBiZSBwcm91ZCB0aGF0IEJhcmVi
b3gKY2FuIGhhbmRsZSB0aGF0IGNhc2UuCgpCZXN0IHJlZ2FyZHMsCgogIERhbmllbAoKCi0tIApE
aXBsLi1NYXRoLiBEYW5pZWwgR2zDtmNrbmVyLCBlbWxpeCBHbWJILCBodHRwOi8vd3d3LmVtbGl4
LmNvbQpGb24gKzQ5IDU1MSAzMDY2NC0wLCBGYXggKzQ5IDU1MSAzMDY2NC0xMSwKR290aGFlciBQ
bGF0eiAzLCAzNzA4MyBHw7Z0dGluZ2VuLCBHZXJtYW55ClNpdHogZGVyIEdlc2VsbHNjaGFmdDog
R8O2dHRpbmdlbiwgQW10c2dlcmljaHQgR8O2dHRpbmdlbiBIUiBCIDMxNjAKR2VzY2jDpGZ0c2bD
vGhydW5nOiBIZWlrZSBKb3JkYW4sIERyLiBVd2UgS3JhY2tlClVzdC1JZE5yLjogREUgMjA1IDE5
OCAwNTUKCmVtbGl4IC0geW91ciBlbWJlZGRlZCBsaW51eCBwYXJ0bmVyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
