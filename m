Delivery-date: Tue, 20 Apr 2021 11:02:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmGj-0008Ka-QS
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 11:02:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmGj-00035i-1e
	for lore@pengutronix.de; Tue, 20 Apr 2021 11:02:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3dFsmM/tQDNzwpCcjztkC8rzw0Ua8vOseuSTfhriOiI=; b=Z5XKdDWpOk0ma/lxbP/0+rojx
	xpuehPiuoun8sLUIOLyzklhR/htgpKAB2UOxH23BS3WU4qT7LBV6Gk2NHrWVf4e0DdqcXw5QYfws/
	31/2nIki+WrYq3sCwFvODjSsVLFZ+qspWUoANITWhaMkZLqRRDBBVvsjVNS0Bl9AIC1DNCsQUNg74
	8tnVS2a10YfMU1BPfaL31G5uCL0AXSoQ+AeL8+VHdBGCt04LMxffY7SwBBiwNEwGhLufgXl8qzL6a
	/hpRSo+kVooK3K4oq0+Ro3yPaU+Hetj4GlgtsgA7TWbilkkyXBxI5quO59wZANaMXHQosJVAwhb09
	3Ec+yrUqQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmFm-00BfIT-CX; Tue, 20 Apr 2021 09:01:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmFi-00BfI7-5V
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 09:01:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=kRdTBHUgHLT9sws7fnMadSntxi0aMDh4P4n93OjBvIM=; b=Y89DmZG849vTxl2N/2VyuyqA0t
 coMTNLTjzWSN/69FTvB3kfKJ5GReVbwyU3gHuu5Kzt4X07q+pC/33B9DzmtVJGdS1JSrTOg6x4yiu
 e3YUxsfXLaD/x9h4e/3SfH8a52I62B+8z4buhPgMT5n++w2C3f9hExy1veA31W7we9EFnrMZT2yez
 oKwyId5t9DF6Z63mHPg7jy4/YP+4EaUCRHE5g01OVvoW7hUllOUPMrhdckHjSIXMHm911MP6J1CCL
 zqqdaQ6rsSKaPxx8It45hNq2DD+k2FeSDFgowZBW/MG58SkhyyqIfM9A6eLlb6jfbiupDcHKulAwr
 2DTdXkkw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmFc-00Bx16-Cf
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 09:00:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lYmFa-0002r6-Ok; Tue, 20 Apr 2021 11:00:54 +0200
Message-ID: <0f9c752a785ba605dece06a454b983538d3c6d2c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
 barebox@lists.infradead.org
Date: Tue, 20 Apr 2021 11:00:54 +0200
In-Reply-To: <20210420075700.246124-7-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-7-r.czerwinski@pengutronix.de>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_020056_451970_C31C99D5 
X-CRM114-Status: GOOD (  16.66  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/8] ARM: mmu-early: map no-map entries XN & uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRGllbnN0YWcsIGRlbSAyMC4wNC4yMDIxIHVtIDA5OjU3ICswMjAwIHNjaHJpZWIgUm91dmVu
IEN6ZXJ3aW5za2k6Cj4gRW5zdXJlIHRoYXQgcmVzZXJ2ZWQgbWFwIGVudHJpZXMgd2l0aCB0aGUg
bm8tbWFwIGZsYWcgYXJlIG1hcmtlZCBhcwo+IHVuY2FjaGVkIGFuZCBub24tZXhlY3V0ZSBkdXJp
bmcgdGhlIGVhcmx5IE1NVSBpbml0aWFsaXphdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb3V2
ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IMKgYXJj
aC9hcm0vY3B1L21tdS1lYXJseS5jIHwgMTIgKysrKysrKysrKysrCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9jcHUvbW11LWVh
cmx5LmMgYi9hcmNoL2FybS9jcHUvbW11LWVhcmx5LmMKPiBpbmRleCBiOTg1YWE0NTVmLi42M2Nm
NjFiMmFhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2NwdS9tbXUtZWFybHkuYwo+ICsrKyBiL2Fy
Y2gvYXJtL2NwdS9tbXUtZWFybHkuYwo+IEBAIC0zLDkgKzMsMTEgQEAKPiDCoCNpbmNsdWRlIDxl
cnJuby5oPgo+IMKgI2luY2x1ZGUgPGxpbnV4L3NpemVzLmg+Cj4gwqAjaW5jbHVkZSA8YXNtL21l
bW9yeS5oPgo+ICsjaW5jbHVkZSA8YXNtLWdlbmVyaWMvbWVtb3J5X2xheW91dC5oPgo+IMKgI2lu
Y2x1ZGUgPGFzbS9zeXN0ZW0uaD4KPiDCoCNpbmNsdWRlIDxhc20vY2FjaGUuaD4KPiDCoCNpbmNs
dWRlIDxhc20tZ2VuZXJpYy9zZWN0aW9ucy5oPgo+ICsjaW5jbHVkZSA8cGJsLmg+Cj4gwqAKPiAK
PiAKPiAKPiDCoCNpbmNsdWRlICJtbXUuaCIKPiDCoAo+IAo+IAo+IAo+IEBAIC0yNCw2ICsyNiw4
IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBtYXBfcmVnaW9uKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVu
c2lnbmVkIGxvbmcgc2l6ZSwKPiDCoHZvaWQgbW11X2Vhcmx5X2VuYWJsZSh1bnNpZ25lZCBsb25n
IG1lbWJhc2UsIHVuc2lnbmVkIGxvbmcgbWVtc2l6ZSwKPiDCoAkJICAgICAgdW5zaWduZWQgbG9u
ZyBfdHRiKQo+IMKgewo+ICsJc3RydWN0IHBibF9yZXNlcnZlZF9tZW1vcnkqIHJlc19tZW0gPSBn
ZXRfcGJsX3Jlc2VydmVkX21lbW9yeSgpOwo+ICsJaW50IGk7Cj4gwqAJdHRiID0gKHVpbnQzMl90
ICopX3R0YjsKPiDCoAo+IAo+IAo+IAo+IMKgCWFybV9zZXRfY2FjaGVfZnVuY3Rpb25zKCk7Cj4g
QEAgLTU4LDYgKzYyLDE0IEBAIHZvaWQgbW11X2Vhcmx5X2VuYWJsZSh1bnNpZ25lZCBsb25nIG1l
bWJhc2UsIHVuc2lnbmVkIGxvbmcgbWVtc2l6ZSwKPiDCoAkvKiBtYXBzIG1haW4gbWVtb3J5IGFz
IGNhY2hhYmxlICovCj4gwqAJbWFwX3JlZ2lvbihtZW1iYXNlLCBtZW1zaXplLCBQTURfU0VDVF9E
RUZfQ0FDSEVEKTsKPiDCoAo+IAo+IAo+IAo+ICsJZm9yKGk9MDsgaSA8IGdldF9wYmxfcmVzZXJ2
ZWRfbWVtb3J5X251bSgpOyBpKyspIHsKPiArCQlpZihyZXNfbWVtLT5mbGFnICYgRkRUX1JFU19N
RU1fRkxBR19OT01BUCkKClF1aXRlIGEgYml0IG9mIG1pc3Npbmcgd2hpdGVzcGFjZSBpbiB0aGUg
dHdvIGxpbmVzIGFib3ZlLgoKQWxzbyB0aGUgdmFyaWFibGVzIGF0IHRoZSB0b3Agb2YgdGhlIGZ1
bmN0aW9uIGRvbid0IGZvcm0gYSByZXZlcnNlCmNocmlzdG1hcyB0cmVlLCBidXQgdGhhdCBpc24n
dCBwYXJ0IG9mIHRoZSBjb2Rpbmcgc3R5bGUsIHNvIEkgZG9uJ3QKY29tcGxhaW4gYWJvdXQgdGhh
dC4gOykKClJlZ2FyZHMsCkx1Y2FzCgo+ICsJCQltYXBfcmVnaW9uKHJlc19tZW0tPmJhc2UsIHJl
c19tZW0tPnNpemUsCj4gKwkJCQkgICBQTURfU0VDVF9ERUZfVU5DQUNIRUQgfCBQTURfU0VDVF9Y
Tik7Cj4gKwkJcmVzX21lbSsrOwo+ICsJfQo+ICsKPiArCj4gwqAJLyoKPiDCoAkgKiBXaXRoIEhB
QiBlbmFibGVkIHdlIGNhbGwgaW50byB0aGUgUk9NIGNvZGUgbGF0ZXIgaW4gaW14Nl9oYWJfZ2V0
X3N0YXR1cygpLgo+IMKgCSAqIE1hcCB0aGUgUk9NIGNhY2hlZCB3aGljaCBoYXMgdGhlIGVmZmVj
dCB0aGF0IHRoZSBYTiBiaXQgaXMgbm90IHNldC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=

