Delivery-date: Wed, 25 Aug 2021 09:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIn18-0007Zu-DD
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 09:08:10 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIn14-0004DH-Rc
	for lore@pengutronix.de; Wed, 25 Aug 2021 09:08:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Epk+zxSpHmuOnZHqzDlQMDOPgA11IXZtbvKrRIJ/8hw=; b=SjdXAZ775PyLRu
	Ifxhrz9EQYvNq2EJKxYd0ovV4Bki3PSbrirFagZ5ig+zN2hJuDSD4xLYsmE8FkNkIssvHXwruIGaM
	RqPvhFbzuEwraZboUPbuscIDgIUEz+3d4rqNSpcxdg1THoBD4Wj4OfbA+fNJhmImlWxQ/OOY628/X
	MbxiJZBzTuqzpXWVN/cT5Qo7qegM+Zx34oJy+bZDP3g7D5nqRuQgoOHe34iiQSiQ922owOYsbIc7m
	gMppTggxDrs62kNEog5SrzTnRoYJ/a0VEBWKwDhsOvykBrge+DmEyftBRm+pJOhZJOyDTf3jdGew8
	gwmCWaaL7S9KfgTW6UKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mImzM-005kul-P3; Wed, 25 Aug 2021 07:06:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mImyy-005ktD-3l
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 07:06:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>) id 1mImyk-0003wu-C7
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 09:05:42 +0200
Message-ID: <6a4ba5a28c9049e1b73cf8ee01929504a7dd95a6.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 25 Aug 2021 09:05:42 +0200
In-Reply-To: <20210825065554.23283-1-r.czerwinski@pengutronix.de>
References: <20210825065554.23283-1-r.czerwinski@pengutronix.de>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_000556_201145_B8992C6A 
X-CRM114-Status: GOOD (  17.86  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: eqos: let phy_resume handle fixed link phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8sCgpzZWxmIHJldmlldyB0aW1lLgoKT24gV2VkLCAyMDIxLTA4LTI1IGF0IDA4OjU1ICsw
MjAwLCBSb3V2ZW4gQ3plcndpbnNraSB3cm90ZToKPiBDdXJyZW50bHkgYmFyZWJveCB3aWxsIHRy
eSB0byB0YWxrIHRvIHRoZSBwaHkgb3ZlciBtZGlvLCBldmVuIGlmIHRoZQo+IHBhcmVudCBpcyBh
IGZpeGVkLWxpbmsuIFRoaXMgd2lsbCByZXN1bHQgaW4gdGhlIGZvbGxvd2luZyBzdGFja3RyYWNl
Ogo+IAo+ICAgYmFyZWJveEBMaW51eCBBdXRvbWF0aW9uIFRlc3QgQXV0b21hdGlvbiBDb250cm9s
bGVyIChUQUMpOi8gZGhjcAo+ICAgdW5hYmxlIHRvIGhhbmRsZSBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UgYXQgYWRkcmVzcyAweDAwMDAwMTMwCj4gICBwYyA6IFs8ZGZjMDE4MDA+XSAgICBsciA6
IFs8ZGZjMGY5NjM+XQo+ICAgc3AgOiBkZmZlZmQ0MCAgaXAgOiAwMDRjNGI0MCAgZnAgOiBkMDAy
ODZlMAo+ICAgcjEwOiBjZjI1Y2M0ZSAgcjkgOiAwMDAwMDAwMCAgcjggOiAwNWY1ZTEwMAo+ICAg
cjcgOiAwMDAwMDEzMCAgcjYgOiAwMDAwMDAwMCAgcjUgOiAwMDAwMDAwMCAgcjQgOiAwMDAwMDEz
MAo+ICAgcjMgOiAwMDAwMDEwOSAgcjIgOiAwMDAwMDAwMCAgcjEgOiAwMDAwMDAwMCAgcjAgOiAw
MDAwMDEzMAo+ICAgRmxhZ3M6IG5aQ3YgIElSUXMgb2ZmICBGSVFzIG9mZiAgTW9kZSBTVkNfMzIK
PiAgIFdBUk5JTkc6IFs8ZGZjMDE4MDA+XSAoc2xpY2VfYWNxdWlyZSsweGMvMHgyOCkgZnJvbSBb
PGRmYzBmOTYzPl0gKG1kaW9idXNfcmVhZCsweDEzLzB4MjgpCj4gICBXQVJOSU5HOiBbPGRmYzBm
OTYzPl0gKG1kaW9idXNfcmVhZCsweDEzLzB4MjgpIGZyb20gWzxkZmMxMDY4NT5dIChlcW9zX3N0
YXJ0KzB4ODUvMHgzMmMpCj4gICBXQVJOSU5HOiBbPGRmYzEwNjg1Pl0gKGVxb3Nfc3RhcnQrMHg4
NS8weDMyYykgZnJvbSBbPGRmYzNjZGYxPl0gKGV0aF9vcGVuKzB4ZC8weDI0KQo+ICAgV0FSTklO
RzogWzxkZmMzY2RmMT5dIChldGhfb3BlbisweGQvMHgyNCkgZnJvbSBbPGRmYzNlMzkxPl0gKGRo
Y3ArMHhiLzB4M2EpCj4gICBXQVJOSU5HOiBbPGRmYzNlMzkxPl0gKGRoY3ArMHhiLzB4M2EpIGZy
b20gWzxkZmMzMGZhYj5dIChkb19kaGNwKzB4ZmIvMHgxMTQpCj4gICBXQVJOSU5HOiBbPGRmYzMw
ZmFiPl0gKGRvX2RoY3ArMHhmYi8weDExNCkgZnJvbSBbPGRmYzA0OTBmPl0gKGV4ZWN1dGVfY29t
bWFuZCsweDIzLzB4NGMpCj4gICBXQVJOSU5HOiBbPGRmYzA0OTBmPl0gKGV4ZWN1dGVfY29tbWFu
ZCsweDIzLzB4NGMpIGZyb20gWzxkZmMwYTEyNz5dIChydW5fbGlzdF9yZWFsKzB4NWJmLzB4NjM4
KQo+ICAgV0FSTklORzogWzxkZmMwYTEyNz5dIChydW5fbGlzdF9yZWFsKzB4NWJmLzB4NjM4KSBm
cm9tIFs8ZGZjMDlhMmI+XSAocGFyc2Vfc3RyZWFtX291dGVyKzB4YzcvMHgxNTQpCj4gICBXQVJO
SU5HOiBbPGRmYzA5YTJiPl0gKHBhcnNlX3N0cmVhbV9vdXRlcisweGM3LzB4MTU0KSBmcm9tIFs8
ZGZjMGEzODM+XSAocnVuX3NoZWxsKzB4M2YvMHg2YykKPiAgIFdBUk5JTkc6IFs8ZGZjMGEzODM+
XSAocnVuX3NoZWxsKzB4M2YvMHg2YykgZnJvbSBbPGRmYzAxMGI5Pl0gKHJ1bl9pbml0KzB4MTkx
LzB4MjAwKQo+ICAgV0FSTklORzogWzxkZmMwMTBiOT5dIChydW5faW5pdCsweDE5MS8weDIwMCkg
ZnJvbSBbPGRmYzAxMTUzPl0gKHN0YXJ0X2JhcmVib3grMHgyYi8weDZjKQo+ICAgV0FSTklORzog
WzxkZmMwMTE1Mz5dIChzdGFydF9iYXJlYm94KzB4MmIvMHg2YykgZnJvbSBbPGRmYzRiZTZkPl0g
KGJhcmVib3hfbm9uX3BibF9zdGFydCsweDEyMS8weDE2NCkKPiAgIFdBUk5JTkc6IFs8ZGZjNGJl
NmQ+XSAoYmFyZWJveF9ub25fcGJsX3N0YXJ0KzB4MTIxLzB4MTY0KSBmcm9tIFs8ZGZjMDAwMDU+
XSAoX19iYXJlX2luaXRfc3RhcnQrMHgxLzB4YykKPiAKPiAgIFdBUk5JTkc6IFs8ZGZjNGRhN2Q+
XSAodW53aW5kX2JhY2t0cmFjZSsweDEvMHg3OCkgZnJvbSBbPGRmYzAxNDYxPl0gKHBhbmljKzB4
MWQvMHgzNCkKPiAgIFdBUk5JTkc6IFs8ZGZjMDE0NjE+XSAocGFuaWMrMHgxZC8weDM0KSBmcm9t
IFs8ZGZjNGI2YTM+XSAoZG9fZXhjZXB0aW9uKzB4Zi8weDE0KQo+ICAgV0FSTklORzogWzxkZmM0
YjZhMz5dIChkb19leGNlcHRpb24rMHhmLzB4MTQpIGZyb20gWzxkZmM0YjcxMT5dIChkb19kYXRh
X2Fib3J0KzB4MjEvMHgzNCkKPiAgIFdBUk5JTkc6IFs8ZGZjNGI3MTE+XSAoZG9fZGF0YV9hYm9y
dCsweDIxLzB4MzQpIGZyb20gWzxkZmM0YjQ1ND5dIChkb19hYm9ydF82KzB4NDgvMHg1NCkKPiAK
PiBTaW1wbHkgcmV0dXJuIHdpdGggMCBpZiBidXMgaXMgemVybyB3aGljaCBpbmRpY2F0ZXMgdGhh
dCB0aGUgcGh5IGlzCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5OVUxMIG5vdCB6
ZXJv4oCmCj4gY29ubmVjdGVkIHRvIGEgZml4ZWQgbGluay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBS
b3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBk
cml2ZXJzL25ldC9kZXNpZ253YXJlX2Vxb3MuYyB8IDQgKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2Rlc2lnbndhcmVf
ZXFvcy5jIGIvZHJpdmVycy9uZXQvZGVzaWdud2FyZV9lcW9zLmMKPiBpbmRleCBmODNlYzEyNzE0
Li5mODNlNWQ2ZDliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2Rlc2lnbndhcmVfZXFvcy5j
Cj4gKysrIGIvZHJpdmVycy9uZXQvZGVzaWdud2FyZV9lcW9zLmMKPiBAQCAtMzYyLDYgKzM2Miwx
MCBAQCBzdGF0aWMgaW50IHBoeV9yZXN1bWUoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikKPiAg
ewo+ICAJaW50IGJtY3I7Cj4gIAo+ICsJLy8gQnVzIHdpbGwgYmUgTlVMTCBpZiBhIGZpeGVkLWxp
bmsgaXMgdXNlZC4KPiArCWlmICghcGh5ZGV2LT5idXMpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJ
Ym1jciA9IHBoeV9yZWFkKHBoeWRldiwgTUlJX0JNQ1IpOwo+ICAJaWYgKGJtY3IgPCAwKQo+ICAJ
CXJldHVybiBibWNyOwoKUmVnYXJkcywKUm91dmVuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=

