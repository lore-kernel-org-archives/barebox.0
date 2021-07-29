Delivery-date: Thu, 29 Jul 2021 11:24:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92HY-0006gv-G5
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 11:24:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92HX-0005Qa-Gm
	for lore@pengutronix.de; Thu, 29 Jul 2021 11:24:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K8L4DrkD4pQx+Pd7HQipcPmbOSO6SMGAS4sRJolpDDI=; b=J0CNOr2mtnkxNVgIty+wJZdjEu
	wHgQajl2BSQRNvVBG/Z+e66mt9A+OnIsvc2Ts6Q87O60IGYI9GaTpqdDPPOtTpPktNYb1655amEjQ
	wUW0GWTt3J8XLPyu/rtArEGC6GZHjt5/gBU8PgOyj11YXhupeCnoUWECTICxfFajt9DUgfTYZRXis
	jgVrz3dKFoT1uA4f7toZhPUDtEsR/Dm3HgNoXBUKaSyX1eeWuAoVjsF1XNWUprdFFG9iUH8x8AJj5
	nIkUOpC3HvzVsK9dmdhioIjNfZRtAjTmx9ohGGR912cVikzk19SGfgewVgHEQWYcFsvjXN382YsvF
	nTABGuuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92Fm-003dd0-8y; Thu, 29 Jul 2021 09:22:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92Fh-003dcK-AN
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 09:22:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m92Fd-0005Kz-L7; Thu, 29 Jul 2021 11:22:49 +0200
To: Denis Osterland-Heim <denis.osterland@diehl.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
 <2c7807b2-e709-8042-1945-bf4d06f77f28@pengutronix.de>
 <eb2c7cc52d5a68cccaa64642ca909acf7cf25c94.camel@diehl.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1e471a43-3b6c-f632-1359-6f44a06f8c54@pengutronix.de>
Date: Thu, 29 Jul 2021 11:22:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <eb2c7cc52d5a68cccaa64642ca909acf7cf25c94.camel@diehl.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_022253_403725_50D8FFA1 
X-CRM114-Status: GOOD (  21.91  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Not successful if statements returning error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMjguMDcuMjEgMTE6MzgsIERlbmlzIE9zdGVybGFuZC1IZWltIHdyb3RlOgo+IEhpLAo+IAo+
IEFtIE1pdHR3b2NoLCBkZW4gMjguMDcuMjAyMSwgMTA6NTYgKzAyMDAgc2NocmllYiBBaG1hZCBG
YXRvdW06Cj4KPj4gSSB0YWxrZWQgd2l0aCBTYXNjaGEgb25jZSBiZWZvcmUgKG9mZi1saXN0KSBh
Ym91dCBhIHNpbWlsYXIgaXNzdWUuIE1pc3NpbmcgZXJyb3IgaGFuZGxpbmcKPj4gcmVzdWx0cyBp
bgo+Pgo+PiAgIFsgeDEgLWVxIHgyIF0gJiYgZWNobyB5ZXMgfHwgZWNobyBubwo+Pgo+PiBwcmlu
dGluZyB5ZXMuCj4+Cj4+IFdlIGFncmVlZCB0aGF0IGl0J3Mgb2sgdG8gYnJlYWsgc2NyaXB0cyBy
ZWx5aW5nIG9uIGNsZWFyIGh1c2ggYnVncyBsaWtlIHRoaXMuCj4+Cj4+IEknZCB0aHVzIHJlY29t
bWVuZCB5b3UgdG8gc2VuZCBhIHBhdGNoIHRvIGZpeCBodXNoIGluc3RlYWQgb2Ygd29ya2luZyBh
cm91bmQgaXQuCj4gc2hlbGxjaGVjayBzYXlzOgo+IAo+IFNDMjAxNTogTm90ZSB0aGF0IEEgJiYg
QiB8fCBDIGlzIG5vdCBpZi10aGVuLWVsc2UuIEMgbWF5IHJ1biB3aGVuIEEgaXMgdHJ1ZS4KPiAK
PiBTbyBJIHdvdWxkIHRoaW5rIHRoYXQgQiBpcyBtYXliZSBhbGxvd2VkIHRvIHJ1biBiZWZvcmUg
QSwgdG9vLgo+IEJ1dCwgSSBkbyBub3Qga25vdyBpZiBIdXNoIHNwZWNpZmllcyBleGVjdXRpb24g
b3JkZXIgaGVyZS4KCkFuIG9wdGlvbi1sZXNzIGJhcmVib3ggZWNobyBjYW4ndCBmYWlsLCBzbyBp
dCBzaG91bGQgbmV2ZXIKcHJpbnQgYm90aCB5ZXMgYW5kIG5vLCBidXQgdGhhbmtzIGZvciB0aGUg
cmVmZXJlbmNlLiBJJ2xsIGtlZXAKYW4gZXllIG9uIGl0IGluIGZ1dHVyZSBzaGVsbCBjb2RlLgoK
VGhpcyB3YXNuJ3Qgd2hhdCBJIG1lYW50IHRvIHNob3cgdGhvdWdoLCBJIG1lYW50IHRoYXQgeDEg
YW5kIHgyCmFyZSBib3RoIG5vbi1pbnRlZ2VycyBhbmQgLWVxIHdoaWNoIGNvbXBhcmVzIGludGVn
ZXJzIHJldHVybnMKdHJ1ZSB3aGVuIGNvbXBhcmluZyB0aGVtIHVubGlrZSB3aGF0IGEgUE9TSVgg
c2hlbGwgZG9lcy4KCkNoZWVycywKQWhtYWQKIAoKPiAKPiBSZWdhcmRzLCBEZW5pcwo+IAo+Pgo+
PiBDaGVlcnMsCj4+IEFobWFkCj4+Cj4+Pgo+Pj4gVGhhbmsgeW91IGZvciB5b3VyIGFuc3dlci4K
Pj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+PiBBbmRyZWoKPj4+Cj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gYmFyZWJveCBtYWlsaW5nIGxpc3QK
Pj4+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cj4+Pgo+Pgo+Pgo+IERpZWhsIENvbm5lY3Rp
dml0eSBTb2x1dGlvbnMgR21iSAo+IEdlc2Now6RmdHNmw7xocnVuZzogSG9yc3QgTGVvbmJlcmdl
cgo+IFNpdHogZGVyIEdlc2VsbHNjaGFmdDogTsO8cm5iZXJnIC0gUmVnaXN0ZXJnZXJpY2h0OiBB
bXRzZ2VyaWNodAo+IE7DvHJuYmVyZzogSFJCIDMyMzE1Cj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiAKPiBEZXIgSW5oYWx0IGRlciB2b3JzdGVoZW5kZW4gRS1NYWlsIGlz
dCBuaWNodCByZWNodGxpY2ggYmluZGVuZC4gRGllc2UgRS1NYWlsIGVudGhhZWx0IHZlcnRyYXVs
aWNoZSB1bmQvb2RlciByZWNodGxpY2ggZ2VzY2h1ZXR6dGUgSW5mb3JtYXRpb25lbi4KPiBJbmZv
cm1pZXJlbiBTaWUgdW5zIGJpdHRlLCB3ZW5uIFNpZSBkaWVzZSBFLU1haWwgZmFlbHNjaGxpY2hl
cndlaXNlIGVyaGFsdGVuIGhhYmVuLiBCaXR0ZSBsb2VzY2hlbiBTaWUgaW4gZGllc2VtIEZhbGwg
ZGllIE5hY2hyaWNodC4KPiBKZWRlIHVuZXJsYXVidGUgRm9ybSBkZXIgUmVwcm9kdWt0aW9uLCBC
ZWthbm50Z2FiZSwgQWVuZGVydW5nLCBWZXJ0ZWlsdW5nIHVuZC9vZGVyIFB1Ymxpa2F0aW9uIGRp
ZXNlciBFLU1haWwgaXN0IHN0cmVuZ3N0ZW5zIHVudGVyc2FndC4KPiAKPiAtIEluZm9ybWF0aW9u
ZW4genVtIERhdGVuc2NodXR6LCBpbnNiZXNvbmRlcmUgenUgSWhyZW4gUmVjaHRlbiwgZXJoYWx0
ZW4gU2llIHVudGVyOgo+IAo+IGh0dHBzOi8vd3d3LmRpZWhsLmNvbS9ncm91cC9kZS90cmFuc3Bh
cmVuei11bmQtaW5mb3JtYXRpb25zcGZsaWNodGVuLwo+IAo+IFRoZSBjb250ZW50cyBvZiB0aGUg
YWJvdmUgbWVudGlvbmVkIGUtbWFpbCBpcyBub3QgbGVnYWxseSBiaW5kaW5nLiBUaGlzIGUtbWFp
bCBjb250YWlucyBjb25maWRlbnRpYWwgYW5kL29yIGxlZ2FsbHkgcHJvdGVjdGVkIGluZm9ybWF0
aW9uLiBQbGVhc2UgaW5mb3JtIHVzIGlmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGJ5
Cj4gbWlzdGFrZSBhbmQgZGVsZXRlIGl0IGluIHN1Y2ggYSBjYXNlLiBFYWNoIHVuYXV0aG9yaXpl
ZCByZXByb2R1Y3Rpb24sIGRpc2Nsb3N1cmUsIGFsdGVyYXRpb24sIGRpc3RyaWJ1dGlvbiBhbmQv
b3IgcHVibGljYXRpb24gb2YgdGhpcyBlLW1haWwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4KPiAK
PiAtIEZvciBnZW5lcmFsIGluZm9ybWF0aW9uIG9uIGRhdGEgcHJvdGVjdGlvbiBhbmQgeW91ciBy
ZXNwZWN0aXZlIHJpZ2h0cyBwbGVhc2UgdmlzaXQ6Cj4gCj4gaHR0cHM6Ly93d3cuZGllaGwuY29t
L2dyb3VwL2VuL3RyYW5zcGFyZW5jeS1hbmQtaW5mb3JtYXRpb24tb2JsaWdhdGlvbnMvCj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJl
Ym94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo+IAoKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

