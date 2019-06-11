Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.ord1c.emailsrvr.com ([108.166.43.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiaE-0005lR-H7
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 15:21:12 +0000
Received: by smtp10.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 41596404AA
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 11:21:08 -0400 (EDT)
References: <ccde5e10-c624-f8b1-93f8-48d76ff699bd@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <2ed1eda2-04b8-0ddc-0be0-793aae74f57d@mev.co.uk>
Date: Tue, 11 Jun 2019 16:21:06 +0100
MIME-Version: 1.0
In-Reply-To: <ccde5e10-c624-f8b1-93f8-48d76ff699bd@mev.co.uk>
Content-Language: en-GB
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
Subject: Re: Environment variables set by /env/bin/init disappear when script
 exits
To: barebox@lists.infradead.org

T24gMTEvMDYvMjAxOSAxNTo1MiwgSWFuIEFiYm90dCB3cm90ZToKPiBTaW5jZSBjb21taXQgOTBk
ZjJhOTU1ZTNjICgiZGVmYXVsdGVudjogQ29udmVydCBpbml0IHNjcmlwdCB0byBDIiksIGlmIAo+
IHRoZSBsZWdhY3kgL2Vudi9iaW4vaW5pdCBzY3JpcHQgaXMgc3RpbGwgYmVpbmcgdXNlZCwgYW55
IGVudmlyb25tZW50IAo+IHZhcmlhYmxlcyB0aGF0IHdlcmUgc2V0IGluIHRoZSBzY3JpcHQgKHN1
Y2ggYXMgdGhlIFBTMSBwcm9tcHQpIGRpc2FwcGVhciAKPiB3aGVuIHRoZSBzY3JpcHQgZXhpdHMu
wqAgSSBndWVzcyBpdCBpcyBiZWNhdXNlIHRoZSBzY3JpcHQgaXMgbm93IHJ1biAKPiBkaXJlY3Rs
eSBieSBydW5fY29tbWFuZChpbml0ZmlsZSkgKGluaXRmaWxlIGlzICIvZW52L2Jpbi9pbml0Iikg
cmF0aGVyIAo+IHRoYW4gYnkgcnVuX2NvbW1hbmQoInNvdXJjZSAvZW52L2Jpbi9pbml0IikuCgpU
aGlzIHNlZW1zIGVhc3kgdG8gZml4IGluICJjb21tb24vc3RhcnR1cC5jIiwgYXNzdW1pbmcgaXQg
aXMgaW5kZWVkIGEgCmJ1Zy4gIFdoaWNoIG9mIHRoZSBmb2xsb3dpbmcgZml4ZXMgd291bGQgYmUg
cHJlZmVyYWJsZT8KCjEuIENhbGwgcnVuX2NvbW1hbmQgd2l0aCBhIHN0cmluZyBsaXRlcmFsOgoK
ICAgICBydW5fY29tbWFuZCgic291cmNlIC9lbnYvYmluL2luaXQiKTsKCjIuIENhbGwgcnVuX2Nv
bW1hbmQgd2l0aCBhIHN0cmluZyBjb25zdGFudDoKCiAgICAgY29uc3QgY2hhciAqc291cmNlX2lu
aXRmaWxlID0gInNvdXJjZSAvZW52L2Jpbi9pbml0IjsKCiAgICAgcnVuX2NvbW1hbmQoc291cmNl
X2luaXRmaWxlKTsKCjMuIENhbGwgcnVuX2NvbW1hbmQgd2l0aCBhIGR5bmFtaWNhbGx5IGNvbnN0
cnVjdGVkIHN0cmluZzoKCiAgICAgY2hhciAqc2NyOwoKICAgICBzY3IgPSBiYXNwcmludGYoInNv
dXJjZSAlcyIsIGluaXRmaWxlKTsKICAgICBydW5fY29tbWFuZChzY3IpOwogICAgIGZyZWUoc2Ny
KTsKCi0tIAotPSggSWFuIEFiYm90dCA8YWJib3R0aUBtZXYuY28udWs+IHx8IFdlYjogd3d3Lm1l
di5jby51ayApPS0KLT0oIE1FViBMdGQuIGlzIGEgY29tcGFueSByZWdpc3RlcmVkIGluIEVuZ2xh
bmQgJiBXYWxlcy4gKT0tCi09KCBSZWdpc3RlcmVkIG51bWJlcjogMDI4NjIyNjguICBSZWdpc3Rl
cmVkIGFkZHJlc3M6ICAgICk9LQotPSggMTUgV2VzdCBQYXJrIFJvYWQsIEJyYW1oYWxsLCBTVE9D
S1BPUlQsIFNLNyAzSlosIFVLLiApPS0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
