Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx-relay73-hz1.antispameurope.com ([94.100.132.237])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc8IY-0005nB-Ol
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 14:37:36 +0000
Date: Mon, 9 Nov 2020 15:37:23 +0100
From: Gavin Schenk <g.schenk@eckelmann.de>
Message-ID: <20201109143723.mz6tu45bydnnfhek@NB061.eckelmann.group>
References: <20201103200932.18824-1-u.kleine-koenig@pengutronix.de>
 <20201109090215.GF29830@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109090215.GF29830@pengutronix.de>
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
Subject: Re: [PATCH v2] nfs: check return value of various rpc calls
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

SGksCgo+IEkndmUgcmV3cml0dGVuIHRoaXMgdGhpbmcgYSBsaXR0bGUgYml0LiBGaXJzdCBvZiBh
bGwsIHRoaXMgZG9lc24ndCBuZWVkCj4gcHJlcHJvY2Vzc29yIHRyaWNrcyBhbmQgYWxzbyB3aXRo
IHRoaXMgdGhlIG5mc2Vycm9yIHRvIGVycm9yIG1hcHBpbmcKPiBmdW5jdGlvbiByZXR1cm5zIHRo
ZSBlcnJvciBzdHJpbmcsIHNvIHdlIGNhbiBjb252ZXJ0IHByaW50aW5nIHRoZQo+IG1lc3NhZ2Vz
IHRvIHByXyogb3IgZGV2XyogZnVuY3Rpb25zLiBBbHNvIHdlIHVzZSB0aGUgaHVtYW4gcmVhZGFi
bGUKPiBlcnJvciBuYW1lcyBmb3IgdGhlIGVycm9ycyB3ZSBoYXZlIGEgc3RyaW5nIGZvci4KPgpO
aWNlIHRvIGhlcmUgdGhhdCB0aGVyZSBpcyBwcm9ncmVzcy4KCj4gKwo+ICtzdGF0aWMgY29uc3Qg
Y2hhciAqbmZzZXJyc3RyKHUzMiBuZnNlcnJvciwgaW50ICplcnJjb2RlKQo+ICt7CgpJbnN0ZWFk
IHVzaW5nIHRoaXMgUHJlcHJvY2Vzc29yIHRoaW5nIHdvdWxkbid0IGl0IGJlIGJldHRlciB0byB1
c2UgYSBudW1iZXIgYW5kCnNpemVvZihzdHIpIGF0IHRoZSBvdGhlciBsb2NhdGlvbnM/Cgo+ICsg
ICAgIHN0YXRpYyBjaGFyIHN0cltCVUZMRU5dOwpzdGF0aWMgY2hhciBzdHJbMzJdOwoKaGVyZQo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNucHJpbnRmKHN0ciwgQlVGTEVOLCAiTkZT
M0VSUl8lcyIsIGVyci0+bmFtZSk7CnNucHJpbnRmKHN0ciwgc2l6ZW9mKHN0ciksICJORlMzRVJS
XyVzIiwgZXJyLT5uYW1lKTsKCgphbmQgaGVyZQo+ICsgICAgIHNucHJpbnRmKHN0ciwgQlVGTEVO
LCAiVW5rbm93biBORlMgZXJyb3IgJWQiLCBuZnNlcnJvcik7CnNucHJpbnRmKHN0ciwgc2l6ZW9m
KHN0ciksICJVbmtub3duIE5GUyBlcnJvciAlZCIsIG5mc2Vycm9yKTsKCgphbmQgUmVtb3ZlIHRo
aXM6Cj4gKyNkZWZpbmUgQlVGTEVOIDMyCj4gKyN1bmRlZiBCVUZMRU4KCgotLQpSZWdhcmRzCkdh
dmluIFNjaGVuawpFY2tlbG1hbm4gQUcKVm9yc3RhbmQ6IERpcGwuLUluZy4gUGV0ZXIgRnJhbmtl
bmJhY2ggKFNwcmVjaGVyKSBEaXBsLi1XaS4tSW5nLiBQaGlsaXBwIEVja2VsbWFubgpEci4tSW5n
LiBNYXJjbyBNw7xuY2hob2YgRHIuLUluZy4gRnJhbmsgVWhsZW1hbm4KVm9yc2l0emVuZGVyIGRl
cyBBdWZzaWNodHNyYXRzOiBIdWJlcnR1cyBHLiBLcm9zc2EgU3R2LiBWb3JzaXR6ZW5kZXIgZGVz
IEF1ZnNpY2h0c3JhdHM6IERyLi1JbmcuIEdlcmQgRWNrZWxtYW5uClNpdHogZGVyIEdlc2VsbHNj
aGFmdDogQmVybGluZXIgU3RyLiAxNjEsIDY1MjA1IFdpZXNiYWRlbiwgQW10c2dlcmljaHQgV2ll
c2JhZGVuIEhSQiAxMjYzNgp3d3cuZWNrZWxtYW5uLmRlCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
