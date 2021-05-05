Delivery-date: Wed, 05 May 2021 10:29:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leCu4-0007Rd-Io
	for lore@lore.pengutronix.de; Wed, 05 May 2021 10:29:08 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leCu3-0007wu-MV
	for lore@pengutronix.de; Wed, 05 May 2021 10:29:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4nAVECzGyUIf1Ta+AE2+3khdL4os+Qusu/t7Mtse6bA=; b=oI6u2ji8Tq2rPcxdmA8ds+az6
	nURliiWyMFdTW9xR93JjyZx+4VB5Ww0P5namrgsByuY6FPZCqy/tI6mtOl7qbNFq5YE6WDx5z3ICQ
	kXyPDulhTM33+5EvzNlvfIk0mzDAaQml/WwftSYDuOUc7gOBdTxIIEj+6T/15c2pGZ/Ocf92UK1r8
	dQ/5rG2cnnYjudy0ZqsnjdHZUszNUAJVHlU49Qj9C8db/rKdiFcouoIgTgnZ9llH6yZFbfMHA7obF
	MKsfXrwXrNMdKO5RuRSjqnUfZo2oaWRDsA4q1KYqJ/VmfsrzVc0htdpl1j+5LYxGXTjKzXB6d/Y6A
	kyVgHxGYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leCsv-000def-VM; Wed, 05 May 2021 08:27:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leCsr-000deY-SI
 for barebox@desiato.infradead.org; Wed, 05 May 2021 08:27:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=AmIuA6BBKwG+fxtEp3QmrPj63rXz/U9PVVBCBc5iks0=; b=eNx+j34NO7FiDbeuLtneTsYVOD
 BxK+WSkgYaEZrhf8P6NBwtdiP4hKERgNuR4XAovJCH1Eoi8kPvqGW+wbjzXgPhmfmg12aygVS7RYC
 SBCLi//QJLLdnL21EDI+Pc6QgM3ZcRGPYozIjhIh8Dvy95zbT1Por7HthZA1Xq/eO8j7uPuNriMoA
 g0mNdsj+XOwL2tIDo5JhOQf2CNhPoqEQm2GY8456nIiDHW4BdEST1oLsnUg7StwCLtbjkBT1luiJs
 DiGF98WIa3DMZAw0iFsN9/uNMTFuprvPEQVfFi9pHqlBRm/G1YzNYzkgOUWY5B0cDvEnPIotf8BTe
 9n15XF4w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leCso-004ZX4-S2
 for barebox@lists.infradead.org; Wed, 05 May 2021 08:27:52 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leCsn-0007rb-5g; Wed, 05 May 2021 10:27:49 +0200
To: Lucas Stach <l.stach@pengutronix.de>,
 Michael Graichen <michael.graichen@hotmail.com>,
 barebox <barebox@lists.infradead.org>
References: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <04cbbd1e-8bcc-9c00-d254-3e7ea04b7ac1@pengutronix.de>
Date: Wed, 5 May 2021 10:27:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_012750_933244_27628EEB 
X-CRM114-Status: GOOD (  26.20  )
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
Subject: Re: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWljaGFlbCwKSGVsbG8gTHVjYXMsCgpPbiAwNS4wNS4yMSAxMDoxNSwgTHVjYXMgU3Rh
Y2ggd3JvdGU6Cj4gSGkgTWljaGFlbCwKPiAKPiBBbSBNb250YWcsIGRlbSAwMy4wNS4yMDIxIHVt
IDEwOjA3ICswMDAwIHNjaHJpZWIgTWljaGFlbCBHcmFpY2hlbjoKPj4gU2luY2UgT0NSQU0gaXMg
b25seSAxOTJLIHRoaXMgaW50cm9kdWNlcyBDT05GSUdfWllOUV9CVUlMRF9GU0JMIHNvIHdlIGNh
biBjYW4gY2hhaW5sb2FkIGEgbW9yZSBmZWF0dXJlIHJpY2ggYmFyZWJveCB2aWEgYm9vdG0uCj4+
Cj4+IEZyb20gMWYxYTk1ZWNhNDIxOThkNzNjMzhjYzEyYjliNDRmMDYxOTgwY2VmOCBNb24gU2Vw
IDE3IDAwOjAwOjAwIDIwMDEKPj4gRnJvbTogTWljaGFlbCBHcmFpY2hlbiA8bWljaGFlbC5ncmFp
Y2hlbkBob3RtYWlsLmNvbT4KPj4gRGF0ZTogTW9uLCAzIE1heSAyMDIxIDEyOjAzOjA1ICswMjAw
Cj4+IFN1YmplY3Q6IFtQQVRDSF0genlucTogYWRkIHN1cHBvcnQgdG8gY2hhaW5sb2FkIGFub3Ro
ZXIgYmFyZWJveAo+IAo+IFNlZW1zIHlvdSBpbXBvcnRlZCB0aGlzIHBhdGNoIGZyb20gc29tZXdo
ZXJlIGFuZCBpdCBsZWZ0IHNvbWUgdHJhY2VzIGluCj4gdGhlIGNvbW1pdCBtZXNzYWdlPwo+IAo+
IEFsc28gSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjaGFuZ2UgaXMgc3VwcG9zZWQgdG8g
YmUgZG9pbmcuIFlvdQo+IGFyZSBidWlsZGluZyBqdXN0IGFub3RoZXIgQmFyZWJveCBiaW5hcnks
IHdpdGggbm8gcmVhbCBkaWZmZXJlbmNlcyBpbgo+IHRoZSBjb25maWd1cmF0aW9uLiBJIHdvdWxk
IG11Y2ggcHJlZmVyIGEgcHJvcGVyIDItc3RhZ2UgbG9hZGluZyBpbiB0aGUKPiBQQkwsIGJ1dCB0
aGF0IHJlcXVpcmVzIEZBVCBzdXBwb3J0IGZvciB0aGUgU0RjYXJkIGJvb3QsIHdoaWNoIEkgZGlk
bid0Cj4gZ2V0IGFyb3VuZCB0byB0YWtlIGEgbG9vayBhdCB5ZXQuCgpGb3IgdGhlIHJlY29yZCwg
d2Ugbm93IGhhdmUgdHdvIHBsYXRmb3JtcyB3aGVyZSB3ZSBkbyBGQVQgaW4gUEJMLCB3aGljaApj
b3VsZCBiZSB1c2VkIGFzIHRlbXBsYXRlOgogKiBhcmNoL2FybS9ib2FyZHMvc2FtYTVkMjcqCiAq
IGFyY2gvYXJtL2JvYXJkcy9taWNyb2NoaXAta3N6OTQ3Ny1ldmIKClRoZXJlIGFyZSBtb3JlIHRo
YXQgYnVpbGQgdHdvIGJhcmVib3ggaW1hZ2VzIHdpdGggc2VwYXJhdGUgY29uZmlncywgYnV0CnJl
Y29tbWVuZGF0aW9uIGlzIHRvIGRvIGl0IGluIFBCTCwgYmVjYXVzZSB5b3UgY2FuIHRoZW4gYnVp
bGQgYm90aCBpbWFnZXMKYXQgb25jZS4KCkNoZWVycywKQWhtYWQKPiAKPiBSZWdhcmRzLAo+IEx1
Y2FzCj4gCj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgR3JhaWNoZW4gPG1pY2hhZWwuZ3JhaWNo
ZW5AaG90bWFpbC5jb20+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtL21hY2gtenlucS9LY29uZmlnIHwg
IDYgKysrKystCj4+IMKgaW1hZ2VzL01ha2VmaWxlLnp5bnEgICAgICAgfCAyMSArKysrKysrKysr
KysrKystLS0tLS0KPj4gwqAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXp5bnEvS2NvbmZpZyBi
L2FyY2gvYXJtL21hY2gtenlucS9LY29uZmlnCj4+IGluZGV4IDNlMDc2MzNlNS4uMDgwMGI1NWU2
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9tYWNoLXp5bnEvS2NvbmZpZwo+PiArKysgYi9hcmNo
L2FybS9tYWNoLXp5bnEvS2NvbmZpZwo+PiBAQCAtMjEsNyArMjEsMTEgQEAgY29uZmlnIEFSQ0hf
WllOUTcwMDAKPj4gwqAJc2VsZWN0IE9GREVWSUNFCj4+IMKgCXNlbGVjdCBSRUxPQ0FUQUJMRQo+
Pgo+PiAtCj4+ICtjb25maWcgWllOUV9CVUlMRF9GU0JMCj4+ICsJcHJvbXB0ICJidWlsZCBGU0JM
IGJpbmFyeSAoQk9PVC5CSU4pIgo+PiArCWJvb2wKPj4gKwloZWxwCj4+ICsJICBTYXkgWSBoZXJl
IGlmIHlvdSB3YW50IHRvIGJ1aWxkIGFuIEZTQkwgYmluYXJ5IGZvciB0aGUgWnlucS4KPj4KPj4g
wqBtZW51ICJzZWxlY3QgWnlucSBib2FyZHMgdG8gYmUgYnVpbHQiCj4+Cj4+IGRpZmYgLS1naXQg
YS9pbWFnZXMvTWFrZWZpbGUuenlucSBiL2ltYWdlcy9NYWtlZmlsZS56eW5xCj4+IGluZGV4IGIw
MGU3NDg2OS4uMzljNzJiZDg4IDEwMDY0NAo+PiAtLS0gYS9pbWFnZXMvTWFrZWZpbGUuenlucQo+
PiArKysgYi9pbWFnZXMvTWFrZWZpbGUuenlucQo+PiBAQCAtNywxNyArNywyNiBAQCB6eW5xY2Zn
X2NwcF9mbGFncyAgPSAtV3AsLU1ELCQoZGVwZmlsZSkgLW5vc3RkaW5jIC14IGFzc2VtYmxlci13
aXRoLWNwcCBcCj4+Cj4+IMKgenlucWNmZy10bXAgPSAkKHN1YnN0ICQoY29tbWEpLF8sJChkb3Qt
dGFyZ2V0KS56eW5xY2ZnLnRtcCkKPj4KPj4gLXF1aWV0X2NtZF96eW5xX2ltYWdlID0gWllOUUlN
RyAgJEAKPj4gK3F1aWV0X2NtZF96eW5xX2ltYWdlID0gWllOUUlNRyAkQAo+PiDCoMKgwqDCoMKg
wqDCoGNtZF96eW5xX2ltYWdlID0gXAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCQoQ1BQKSAkKHp5
bnFjZmdfY3BwX2ZsYWdzKSAtbyAkKHp5bnFjZmctdG1wKSAkKENGR18kKEBGKSkgOyBcCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgJChvYmp0cmVlKS9zY3JpcHRzL3p5bnFfbWtpbWFnZSAtYyAkKHp5
bnFjZmctdG1wKSBcCj4+IC0gICAgICAgICAgIC1mICQoc3Vic3QgLnp5bnFpbWcsLCRAKSAtbyAk
QAo+PiArICAgICAgICAgICAtZiAkKHN1YnN0IC56eW5xaW1nX2ZzYmwsLCRAKSAtbyAkQAo+Pgo+
PiAtJChvYmopLyUuenlucWltZzogJChvYmopLyUgRk9SQ0UKPj4gKyQob2JqKS8lLnp5bnFpbWdf
ZnNibDogJChvYmopLyUgRk9SQ0UKPj4gwqAJJChjYWxsIGlmX2NoYW5nZWQsenlucV9pbWFnZSkK
Pj4KPj4gwqAjLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Cj4+IC1DRkdfc3RhcnRfYXZuZXRfemVk
Ym9hcmQucGJsYi56eW5xaW1nID0gJChib2FyZCkvYXZuZXQtemVkYm9hcmQvemVkYm9hcmQuenlu
cWNmZwo+PiAtRklMRV9iYXJlYm94LWF2bmV0LXplZGJvYXJkLmltZyA9IHN0YXJ0X2F2bmV0X3pl
ZGJvYXJkLnBibGIuenlucWltZwo+PiAtaW1hZ2UtJChDT05GSUdfTUFDSF9aRURCT0FSRCkgKz0g
YmFyZWJveC1hdm5ldC16ZWRib2FyZC5pbWcKPj4gK0ZJTEVfYmFyZWJveC1hdm5ldC16ZWRib2Fy
ZC5pbWcgPSBzdGFydF9hdm5ldF96ZWRib2FyZC5wYmxiCj4+ICt6eW5xLWJhcmVib3gtJChDT05G
SUdfTUFDSF9aRURCT0FSRCkgKz0gYmFyZWJveC1hdm5ldC16ZWRib2FyZC5pbWcKPj4gKwo+PiAr
Q0ZHX3N0YXJ0X2F2bmV0X3plZGJvYXJkLnBibGIuenlucWltZ19mc2JsID0gJChib2FyZCkvYXZu
ZXQtemVkYm9hcmQvemVkYm9hcmQuenlucWNmZwo+PiArRklMRV9iYXJlYm94LWF2bmV0LXplZGJv
YXJkLWZzYmwuaW1nID0gc3RhcnRfYXZuZXRfemVkYm9hcmQucGJsYi56eW5xaW1nX2ZzYmwKPj4g
K3p5bnEtZnNibC0kKENPTkZJR19NQUNIX1pFREJPQVJEKSArPSBiYXJlYm94LWF2bmV0LXplZGJv
YXJkLWZzYmwuaW1nCj4+ICsKPj4gK2lmZGVmIENPTkZJR19aWU5RX0JVSUxEX0ZTQkwKPj4gK2lt
YWdlLXkgKz0gJCh6eW5xLWZzYmwteSkKPj4gK2Vsc2UKPj4gK2ltYWdlLXkgKz0gJCh6eW5xLWJh
cmVib3gteSkKPj4gK2VuZGlmCj4+IC0tCj4+IDIuMjUuMQo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBiYXJlYm94IG1haWxpbmcgbGlzdAo+
PiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndh
bGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9u
aXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBo
b25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAy
Njg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

