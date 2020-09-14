Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlzO-0000f8-Np
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:45:39 +0000
References: <20200909193650.347646-1-trent.piepho@synapse.com>
 <8debe2fb-d16a-856d-8d95-631964c56d94@pengutronix.de>
 <MW3PR18MB348474DA5350DA9BC3B4A9BA8A240@MW3PR18MB3484.namprd18.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e841cf67-a3e3-d897-eda0-0cc48617912f@pengutronix.de>
Date: Mon, 14 Sep 2020 12:45:36 +0200
MIME-Version: 1.0
In-Reply-To: <MW3PR18MB348474DA5350DA9BC3B4A9BA8A240@MW3PR18MB3484.namprd18.prod.outlook.com>
Content-Language: en-US
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
Subject: Re: [PATCH 1/4] aiodev: Name channels with device instance name
To: Trent Piepho <trent.piepho@synapse.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gVHJlbnQsCgpPbiA5LzExLzIwIDc6NTAgUE0sIFRyZW50IFBpZXBobyB3cm90ZToKPj4+
IE9uIDkvOS8yMCA5OjM2IFBNLCBUcmVudCBQaWVwaG8gd3JvdGU6Cj4+PiBDaGFuZ2UgdGhlIGNo
YW5uZWwgbmFtaW5nIHRvIHVzZSB0aGUgZGV2aWNlIGluc3RhbmNlIG5hbWUsIGUuZy4KPj4+ICJh
aW9kZXYwIiwgcmF0aGVyIHRoYW4gdGhlIGFpb2RldidzIGJhc2UgbmFtZS7CoCBUaGlzIG1ha2Vz
IHRoZSBuYW1lcwo+Pj4gdXNlZCBhaW9jaGFubmVsX2dldF9ieV9uYW1lKCkgbWF0Y2ggdGhlIGVu
dmlyb25tZW50IHZhcmlhYmxlIG5hbWVzIGFuZAo+Pj4gYWxzbyBhdm9pZHMgZHVwbGljYXRlIG5h
bWVzIHdpdGggbW9yZSB0aGFuIG9uZSBkeW5hbWljYWxseSBhbGxvY2F0ZWQKPj4+IGFpb2Rldi4K
Pj4KPj4gc291bmRzIGdvb2QsIGJ1dCB0aGF0IHdvdWxkIHNpbGVudGx5IGJyZWFrIGV4aXN0aW5n
IHVzZXJzLCB3b3VsZG4ndCBpPwo+PiBUaGVyZSBhcmUgbm9uZSBpbi10cmVlLCBidXQgSSBhc3N1
bWUgdGhlcmUgYXJlIHNvbWUgaW4gZXh0ZXJuYWwgcGF0Y2gKPj4gc3RhY2tzLCBvdGhlcndpc2Ug
dGhlIGZ1bmN0aW9uIHdvdWxkJ3ZlIG5vdCBiZWVuIGFkZGVkLgo+Pgo+PiBUaGVzZSBwYXRjaCBz
dGFja3Mgd291bGQgcmViYXNlIGNsZWFubHkgYW5kIGJ1aWxkIHN1Y2Nlc3NmdWxseSwgYnV0Cj4+
IHN0aWxsIGJlIHJ1bnRpbWUgYnJva2VuLiBXb3VsZCBpdCBtYWtlcyBzZW5zZSB0byByZW5hbWUK
Pj4gYWlvY2hhbm5lbF9nZXRfYnlfbmFtZSgpIGJlY2F1c2UgdGhlIEFQSSBjaGFuZ2VkPwo+IAo+
IEFzc3VtaW5nIHRoZXkgdXNlZCBkeW5hbWljIG5hbWVzIGZvciB0aGUgZGV2aWNlcy4gIFNvIHBy
b2JhYmx5Lgo+IAo+IEkgY2FuIHJlbmFtZSBpdCB0byBhaW9jaGFubmVsX2J5X25hbWUoKS4gIFRo
ZXJlIGFyZSBudW1iZXIgb2Ygb3RoZXIKPiBmdW5jdGlvbnMgaW4gYmFyZWJveCB0aGF0IGZvbGxv
dyB0aGF0IHBhdHRlcm4uCgpBY2suCgo+IAo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVl
cndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8
IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhS
QSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
