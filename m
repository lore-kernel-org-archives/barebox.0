Delivery-date: Mon, 03 May 2021 20:38:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lddSX-0003qy-E0
	for lore@lore.pengutronix.de; Mon, 03 May 2021 20:38:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lddSW-0008ML-20
	for lore@pengutronix.de; Mon, 03 May 2021 20:38:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K+uO8ELwNP2LiDUE85i56nkf9LGs9r2JiD/ya13C0u4=; b=Obxr+b/Loutdzzx0c8ZcTaaXi
	/H1lU4hoUEgq2SR7RKm8sSiUOOPYE5I1WI08sKpt58TCTeHM5ybKtkVCCQEciufJR3mN+Z0zCdJku
	E917GM7ygNViuQ2cUrQ9LwwtCjxnEVTgr65Uz3ezX4eTN1shaYlHt6ArkLK5SbcyBR+8EoLnDSFqb
	ga9+sILRgWkWUHYi5NTUzKcQeh5fmcNQLhGi8sjQOwNouomC8usxZrD/bjRoHQ9yAnNd7mT4HYEPu
	pHbzUahDeVwvXLpim0ZB3nOl3rU5V4YBqv8hiO85jtjcvJMueV27jqQiw3YFyH3+rtBKGnsFYhY77
	ocv+E2fAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lddR8-00EcGs-R2; Mon, 03 May 2021 18:36:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lddQo-00EcCY-8G
 for barebox@desiato.infradead.org; Mon, 03 May 2021 18:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=pWAFhUEXkmSphRr9d1DQ8VmnsK4Kfrxh+jq6tvpC2uE=; b=jTcJ/2WUXP59VSjhAMkjr0Mkja
 ybHKz44bD2wliEtXlhisKMzrJ156AmfuUXjQgMoKXbfxgSrKZT5G2P2yvCicKmiYHgNxret/+DA7U
 xBnBqCzxMC8pZra5+Y1inpzKUdxEUl68EE5Luw/DZVM6KWpjxSE8oJlrVOx8sMiQILJc6aRUWPbA4
 lrZoZGHuflSWEEiSkuWKORPTRXHqtrPXdzbKo2OpY5W8BusELlvTrNYVIOtqoNlW0Gm0oRQRXIMCG
 W0yvxj05L7X6eucoCpZiwCMpUIEzJ/qJYuDmfEm5psZJcN35EaQq8S7MGAuZHJO//uwQzzJpZrmDP
 qOkpDjrA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lddQl-003P3t-2l
 for barebox@lists.infradead.org; Mon, 03 May 2021 18:36:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lddQi-0008D2-U8; Mon, 03 May 2021 20:36:28 +0200
To: Yunus Bas <Y.Bas@phytec.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20210503122550.2951035-1-y.bas@phytec.de>
 <764115d0-c22e-8c22-4533-1a11e48d3748@pengutronix.de>
 <e517407598dcd0e80de1918037d06f1b3c3214cd.camel@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1001f579-e35d-9133-1abc-846d242684b0@pengutronix.de>
Date: Mon, 3 May 2021 20:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <e517407598dcd0e80de1918037d06f1b3c3214cd.camel@phytec.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_113631_144303_0EEDC99C 
X-CRM114-Status: GOOD (  26.12  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for
 kernel compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gWXVudXMsCgpPbiAwMy4wNS4yMSAxNjozOCwgWXVudXMgQmFzIHdyb3RlOgo+IEhpIEFo
bWFkLAo+IAo+IFRoZSBtYWluIHB1cnBvc2UgYmVoaW5kIGFkZGluZyBNVEQtcGFydGl0aW9ucyBh
cyBOVk1FTS1kZXZpY2VzIHdhcyB0bwo+IGhhdmUgYSBmYXN0IGFuZCB1bmNvbXBsaWNhdGVkIGFj
Y2VzcyBvbiBwYXJ0aXRpb25zIHdpdGggc2Vuc2l0aXZlIGRhdGEsCj4gZXNwZWNpYWxseSBvbiBl
bWJlZGRlZCBzeXN0ZW1zLiBJIHRoaW5rLCB0aGVyZSBpcyBhIHJlYXNvbmluZyBmb3IgaXQsCj4g
YnV0IG5ldmVydGhlbGVzcywgdGhlIG9yaWdpbmFsIGtlcm5lbCBwYXRjaCBpcyBmcm9tIDIwMTgu
CgpTbyBpdCdzIGEgcGF0Y2ggeW91IGNhcnJ5IHdpdGggeW91IGFuZCBub3QgTGludXgtdXBzdHJl
YW0gZnVuY3Rpb25hbGl0eT8KCj4gVG8gc2F5IHRoZSB0cnV0aCwgdGhlcmUgaXMgYWxyZWFkeSBh
biB1cHN0cmVhbSBmaXggZm9yIHRoZSBuYW1lLQo+IGNsYXNoaW5nLCB3aGljaCByZWdpc3RlcnMg
dGhlIE5WTUVNIGRldmljZXMgd2l0aCB0aGUgdW5pcXVlIGRldmljZQo+IG5hbWVzLCBpbnN0ZWFk
IG9mIHRoZSBNVEQtbmFtZXMuIEkgaGFkIHR3byBvcHRpb25zIGhlcmUsIG9uZSB3YXMgdG8KPiBy
ZXZlcnQgdGhlIGZpcnN0IHBhdGNoIHdpdGggdGhlIGNoYW5nZSBmb3IgcGh5Q29yZSwgdGhlIG90
aGVyIHdhcyB0bwo+IGZvbGxvdyB1cCB3aXRoIHRoZSBwaHlGTEVYLW1vZHVsZS4gSSd2ZSBjaG9z
ZW4gdGhlIGxhdHRlciBvbmUsIHNpbmNlIEkKPiBmZWx0IGl0IGhhcyBtb3JlIHJlYWRhYmlsaXR5
LgoKVGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbiwKQWhtYWQKCj4gCj4gUmVnYXJkcywKPiBZ
dW51cwo+IAo+IEFtIE1vbnRhZywgZGVtIDAzLjA1LjIwMjEgdW0gMTQ6MzggKzAyMDAgc2Nocmll
YiBBaG1hZCBGYXRvdW06Cj4+IEhlbGxvIFl1bnVzLAo+Pgo+PiBPbiAwMy4wNS4yMSAxNDoyNSwg
WXVudXMgQmFzIHdyb3RlOgo+Pj4gVGhlIGtlcm5lbCBOVk1FTS1zdWJzeXN0ZW0gcHJldmVudHMg
dGhlIHVzYWdlIG9mIGR1cGxpY2F0ZQo+Pj4gcGFydGl0aW9uIG5hbWVzLgo+Pj4gQ2hhbmdlIHRo
ZSBTUEktTk9SIHBhcnRpdGlvbiBuYW1lcyB0byBiZSBjb21wYXRpYmxlIHdpdGggdGhlIGtlcm5l
bAo+Pj4gZHJpdmVyLgo+Pgo+PiBJIGRvbid0IG1pbmQgdGhlIGNoYW5nZSwgYnV0IEkgY2FuJ3Qg
Zm9sbG93IHRoZSByZWFzb25pbmcuCj4+IFRoZXNlIGFyZSBNVEQgcGFydGl0aW9ucywgc28gdGhl
eSBzaG91bGRuJ3QgaGF2ZSBiZWVuIHJlZ2lzdGVyZWQgd2l0aAo+PiB0aGUgTlZNRU0KPj4gZnJh
bWV3b3JrIGluIHRoZSBmaXJzdCBwbGFjZT8KPj4KPj4gQ2hlZXJzLAo+PiBBaG1hZAo+Pgo+Pj4K
Pj4+IENvbW1pdCA3MmJhODE1YmY2ZmUgKCJBUk06IGR0czogcGh5Y29yZS1pbXg2OiBjaGFuZ2Ug
bXRkLXBhcnRpdGlvbgo+Pj4gbmFtZXMgZm9yCj4+PiBjb21wYXRpYmlsaXR5IHdpdGgga2VybmVs
IikgYXBwbGllcyB0aGUgY2hhbmdlIGZvciBwaHlDT1JFIFNPTXMuCj4+PiBUaGUKPj4+IHNhbWUg
YXBwbGllcyBmb3IgcGh5RkxFWC1tb2R1bGVzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFl1bnVz
IEJhcyA8eS5iYXNAcGh5dGVjLmRlPgo+Pj4gLS0tCj4+PiDCoGFyY2gvYXJtL2R0cy9pbXg2cWRs
LXBoeXRlYy1wZmxhMDIuZHRzaSB8IDExICsrKysrKy0tLS0tCj4+PiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2R0cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRzaQo+Pj4gYi9hcmNoL2FybS9kdHMv
aW14NnFkbC1waHl0ZWMtcGZsYTAyLmR0c2kKPj4+IGluZGV4IGUxYWEzMTgzYi4uNmRmOGQyNDdi
IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm0vZHRzL2lteDZxZGwtcGh5dGVjLXBmbGEwMi5kdHNp
Cj4+PiArKysgYi9hcmNoL2FybS9kdHMvaW14NnFkbC1waHl0ZWMtcGZsYTAyLmR0c2kKPj4+IEBA
IC0yMSw3ICsyMSw3IEBACj4+PiDCoAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBlbnZpcm9ubWVudC1zcGlub3Igewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJiYXJlYm94LGVudmlyb25tZW50IjsKPj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2aWNlLXBh
dGggPSAmc29tX2ZsYXNoLAo+Pj4gInBhcnRuYW1lOmJhcmVib3gtZW52aXJvbm1lbnQiOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXZpY2UtcGF0
aCA9ICZzb21fZmxhc2gsCj4+PiAicGFydG5hbWU6bm9yLmJhcmVib3gtZW52aXJvbm1lbnQiOwo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RhdHVz
ID0gImRpc2FibGVkIjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPj4+
IMKgCj4+PiBAQCAtNTQsMjggKzU0LDI5IEBACj4+PiDCoC9kZWxldGUtbm9kZS8gJnsvbWVtb3J5
QDEwMDAwMDAwfTsKPj4+IMKgCj4+PiDCoCZzb21fZmxhc2ggewo+Pj4gKwo+Pj4gwqDCoMKgwqDC
oMKgwqDCoHBhcnRpdGlvbnMgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBj
b21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgI3NpemUtY2VsbHMgPSA8MT47Cj4+PiDCoAo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBwYXJ0aXRpb25AMCB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gImJhcmVib3giOwo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJub3IuYmFyZWJv
eCI7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZWcgPSA8MHgwIDB4MTAwMDAwPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
fTsKPj4+IMKgCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBhcnRpdGlvbkAx
MDAwMDAgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsYWJlbCA9ICJiYXJlYm94LWVudmlyb25tZW50IjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAibm9yLmJhcmVib3gtZW52aXJvbm1l
bnQiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmVnID0gPDB4MTAwMDAwIDB4MjAwMDA+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB9Owo+Pj4gwqAKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0
aW9uQDEyMDAwMCB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGxhYmVsID0gIm9mdHJlZSI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gIm5vci5vZnRyZWUiOwo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTIwMDAwIDB4MjAw
MDA+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+Pj4gwqAKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0aW9uQDE0MDAwMCB7Cj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gImtlcm5l
bCI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxh
YmVsID0gIm5vci5rZXJuZWwiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTQwMDAwIDB4MD47Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoH07Cj4+PiDCoMKgwqDCoMKgwqDCoMKgfTsKPj4+Cj4+Cj4gCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

