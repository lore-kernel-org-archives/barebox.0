Delivery-date: Tue, 16 Mar 2021 09:04:38 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4gw-0002Gy-6f
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:04:38 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4gl-0007uk-DX
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t6dmcsRgnZHEV5BPZCZ1YIAp1fIe7r4ed8Mf1gZ+lkk=; b=dkoc+r9y8h48inC5f2eEQJE7T
	G5/NvWMcFmytOkY97Dz4iUqlsD9WRDnQFYEj80LYgOHvSHXZLKExPc+OCGY3685cGFlpmHHRbLBT1
	EwSZ7AwNf9JXOZ61uBOCci87/+0FWNqoQwNcLgE0cH3Xy2ebpqCgwk4j/xUyJewvqcuNFQOlEd3bL
	DAPq8aj46y/H85cK+4UAL9rqd/86OrMtBG3qCHlUR35VI1AIvCkY9s/V0XgpGb07kCO+SfIi9RyMG
	OMzAcU6dbsLENlIl96rfGzqdsOZXw4GPPfSrq40NyWheTyV7P69JN4UrX2VnOeODz63KYJOQGtMve
	+B28CWqIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4fX-000472-8h; Tue, 16 Mar 2021 08:03:11 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4fQ-00045R-AG
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1615881785; x=1647417785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YyE3cV3sQ77Wu5Q6HFNEzFnCyp6HOM1yx0e3YJBzvcA=;
 b=rMNPQ+O4HeZyJ0GkJA3o/d/JiA1oPEcQ3mSAOxG62gx+7HhwcfNYG0qZ
 0RzQ6pwhitlcLCJchfB5Tk1H8rUpr64D87SPH/qsfO64pE/VCCDaBwX90
 hdZ63UCo0a/TPTQ/3CHFFNyzuksX94Xtlo0L8tbhBgCM+P5ojN42W70B7
 6z/M8HDw7RJR6NZTAnjEZUoyfIUXzLzdoM6p3P9qHGo/F8TAMmXzln2vt
 6NNJ8YAA2rxbPYmYGH8mR+lagpKijQmxrpWVoFLGGdamsrrNadu590zQi
 CMWTTp3iewef7ph5BtGtANyMMT1IJHfVt/AZdFL298SpZSjKKT6GZxPn/ g==;
IronPort-SDR: d3ne8WDqlsylJJuoDbGMF9MG288BH2SbTiD8k2r30xcDa/BOnFJU04U96qWUa9RH7I1/IR+TEd
 ezlPDBvvM6nLAdSdDEtQ2+aoD3HMs6nAfOBssDlSdR91NnsaMGxY6maRbn8aG4rRupxI6pkIO2
 y6szJTSSvKcpoCGvF+CIYwexwq0qk26kZ6HU0YIw/S1Pl5vFNJGyVn0GJHJKSg4GcrKzzEbUqq
 d5CC6MQb2xoxJuo6fOswzFnpaRwz1fNRyPWATEhm3hHvIjewiFV7fMLJOBOw21EWDe7+CIYyuQ
 us0=
IronPort-HdrOrdr: A9a23:QE0z2q2LQfb9Nr8TowtP6QqjBSN3eYIsi2QD101hICF9Wvez0+
 izgfUW0gL1gj4NWHcm3euNIrWEXGm0z/NIyKErF/OHUBP9sGWlaLtj44zr3iH6F0TFnNJ1/Z
 xLN5JzANiYNzNHpO7x6gWgDpIEyN6I7KiniY7lvg5QZCttbLxt6Bo8Lw6dHFF/SgUuP+tAKL
 O34M1bqz28PUkGd8jTPAhMY8Hvhf3u0KjnbxkPGgI95GC14Q+AxbbmH3Gjr3Ajeh5O264l62
 jZkwr/ooKkrvG1yhXVym/U6NBqnrLau79+LeOWjMx9EFTRoyKJQKgkZLGYpjAyp4iUmR0Xuf
 3BuQ0pMcg2y165RBDSnTLX1wPt0Ckj5hbZoDf270fLm9DzRz4xFqN69OFkWybZ8EYpsZVd16
 9Gzguixv9qJC7Ahyj06pz0UQhrnCOP0BgfuNMU5kY+baIuLJtq6aAP9kJcF5kNWAjg7po8Le
 VoBMbAoN5LbFKzdRnizyRS6e3pek52MgaNQ0AEtMDQ+SNRhmpFw0wRw9Fatmsc9ag6V4JP64
 3/Q+hVvYALavVTQbN2Be8HT8fyIHfKWwjwPGWbJkmiM60bJXTXqdrS7K8u7O+nPLwEpaFC16
 jpYRd9jyofakjuAcqB0Nlg6RbWWliwWjzr14VQ/J58trrgRKf6MCGKRVw0+vHQ4sk3M4n+Yb
 KeKZhWC/jsIS/FAoBSxTDzXJFUND0fXaQuy5YGcmPLhviOBpzht+TdfvqWDqHqCywYVmT2BW
 ZGWDDyIc5H/126Q3OQummTZ1rdPmjEub5gGqnT+OYejKIXMJdXjwQTgVOloseRKTNDtaQydF
 BkIKzul766oWXexxeH00xZfj5mSmpF6rTpVH1H4SUQNVnvTLoFs9KDPXxJ0GCfPR95RcPOGA
 tZr1B6kJjHbaC49GQHMZaKI2iah3wcqDa2VJ8agLSE/tqgUIg/FIwaVKt4EhjrGxR5lR1xkn
 pKbBYJSybkZ3bToJTgqKZRJenEM/FgnQ+gIKdv2AninHTZgftqe1w2cHqFV9WNjQMnWjxO72
 cBiZM3sf6ngjagKWw2neIiFkZDAV7nSo5uBBiZZYlSh7DgcBxxS2DPnjCBlxQvYAPRhjgvr3
 2kIiuOdf7RBF1B/nhez6bx6VtxMn6QZkRqdxlBwPpAPHWDvnZ4yumQYKWvl2OXd1sZ2+kYWQ
 u1FAc6M0drx9qt0gSSlyvHHXI6xo82NuiYCLg4abnc1jesL4KP/Jt2a8N87dJgNNr0tPUMXv
 /acwiJLCngA+dswheLvB8eSVlJgWhhlemt1Azu7WC+0nJ6Cf3OIE5+T7VeJ92H9WDrS/uBzZ
 0Rt6NCgcKgdmHqLtKWw6DeaDBObgnepmO7VOkko5FZt6BajsoAI7DLFT/TkH1X1hQ3K8n50F
 4ESKNg+bbbJ8thedcRdy8xxCthqP2faE8w9gr4De81cQtz0zvVP9aV76HJrrRqCEubvwf0MU
 Se9SoY//qtZVr86ZcKT6YrZWJRYwwg7X4n+uWIfYjZEh+reOFO50DSCA7PTJZNDKyeXawNpR
 N76cySl+CZdyDkyBnd1AELXZ5m4iKiW4euGwqCFu5D7syiNVmNiqWs5tSvjD2fc0rLV20IwY
 tfdUIRacxfij4tyI0vuxLCNpDKng==
X-IronPort-AV: E=Sophos;i="5.81,251,1610406000"; 
   d="scan'208";a="5995755"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "r.czerwinski@pengutronix.de" <r.czerwinski@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] nvmem: ocotp: add support to revoke keys
Thread-Index: AQHXFpkApOo+rbfPeke7j5zTFEps96qAE2WAgABJtgCABEiegIABkeEA
Date: Tue, 16 Mar 2021 08:03:01 +0000
Message-ID: <6005b0a0b4ac43ef1955de68612039e8e9451117.camel@diehl.com>
References: <20210311170403.22671-1-denis.osterland@diehl.com>
 <29418bb8fccd7967e6350e799067f4235a665fe2.camel@pengutronix.de>
 <fa380611cde3e4d68997128880ad1bb45918ef27.camel@diehl.com>
 <20210315080437.GF23724@pengutronix.de>
In-Reply-To: <20210315080437.GF23724@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
Content-ID: <FBBD3ECD7CED654BA5AD167CEC2211DE@diehl.internal>
MIME-Version: 1.0
X-GBS-PROC: 5x5xXKsZ7k4sJw6jWwvS4ol2N21Du+MPbC7P3c7HvqyuXhkvGfXZLiawoYmiZe8p
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080304_947029_664F33E5 
X-CRM114-Status: GOOD (  20.17  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: ocotp: add support to revoke keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgU2FzY2hhLA0KDQpBbSBNb250YWcsIGRlbiAxNS4wMy4yMDIxLCAwOTowNCArMDEwMCBzY2hy
aWViIFNhc2NoYSBIYXVlcjoNCj4gSGkgRGVuaXMsDQo+DQo+IE9uIEZyaSwgTWFyIDEyLCAyMDIx
IGF0IDAyOjM5OjQwUE0gKzAwMDAsIERlbmlzIE9zdGVybGFuZC1IZWltIHdyb3RlOg0KPiA+IEhp
LA0KPiA+DQo+ID4gSXQgd291bGQgYmUgbm8gcHJvYmxlbSB0byBkbyBpdCBpbiBhIHNjcmlwdC4N
Cj4gPiBJIGRpZCBpdCBhcyBhIGZpc3QgcHJvdmUgb2YgY29uY2VwdC4NCj4gPiBNeSBvcGluaW9u
IGlzLCB0aGF0IHRoaXMgaGFyZCBjb2RlZCBpbXBsZW1lbnRhdGlvbiBnaXZlIHN0cm9uZ2VyDQo+
ID4gZ3VhcmFudGVlIHRoYXQgdGhpcyBjb2RlIGlzIHJlYWxseSBleGVjdXRlZC4NCj4NCj4gWW91
IGNvdWxkIGFsc28gY3JlYXRlIGEgQyBmdW5jdGlvbiB3aGljaCB5b3UgY2FsbCBmcm9tIHlvdXIg
Ym9hcmQgY29kZS4NCmdvb2QgSWRlYQ0KDQo+DQo+ID4NCj4gPiBJIHdvdWxkIGxvdmUgdG8gaW1w
bGVtZW50IHRoZSBIQUIgdG8gY2hlY2sgRklUIHNpZ25hdHVyZXMsDQo+ID4gYnV0IHdpdGggTU1V
IGVuYWJsZWQgaXQgd2lsbCBub3Qgd29yayBBRkFJSyBhbmQgY29kZSByZXF1aXJpbmcgTU1VIGRp
c2FibGVkIGlzIG5vdCB3ZWxjb21lLg0KPg0KPiBBcmUgeW91IHN1cmUgaXQgZG9lc24ndCB3b3Jr
PyBXaGF0IEkga25vdyBpcyB0aGF0IHRoZSBqdW1wIHRhYmxlIGZvciB0aGUNCj4gSEFCIGZ1bmN0
aW9uIGlzIHBsYWNlZCBpbiB0aGUgemVybyBwYWdlIHdoaWNoIGlzIHNldCB0byBmYXVsdGluZw0K
PiBub3JtYWxseSB3aGVuIHRoZSBNTVUgaXMgZW5hYmxlZC4gSWYgdGhhdCdzIHRoZSBvbmx5IHBy
b2JsZW0gd2UgY291bGQNCj4gc29sdmUgdGhhdC4NCkkgd291bGQgbGlrZSB0byBnaXZlIGl0IGEg
dHJ5Lg0KDQplbmFibGUgQ09ORklHX0FSQ0hfSEFTX1pFUk9fUEFHRQ0KDQp6ZXJvX3BhZ2VfYWNj
ZXNzKCk7DQpwdnQtPnNvbWVfZnVuY3Rpb24oKTsNCnplcm9fcGFnZV9mYXVsdGluZygpOw0KDQpy
aWdodD8NCg0KUmVnYXJkcywgRGVuaXMNCg0KPg0KPiBTYXNjaGENCj4NCj4NCkRpZWhsIENvbm5l
Y3Rpdml0eSBTb2x1dGlvbnMgR21iSA0KR2VzY2jDpGZ0c2bDvGhydW5nOiBIb3JzdCBMZW9uYmVy
Z2VyDQpTaXR6IGRlciBHZXNlbGxzY2hhZnQ6IE7DvHJuYmVyZyAtIFJlZ2lzdGVyZ2VyaWNodDog
QW10c2dlcmljaHQNCk7DvHJuYmVyZzogSFJCIDMyMzE1DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQoNCkRlciBJbmhhbHQgZGVyIHZvcnN0ZWhlbmRlbiBFLU1haWwgaXN0IG5p
Y2h0IHJlY2h0bGljaCBiaW5kZW5kLiBEaWVzZSBFLU1haWwgZW50aGFlbHQgdmVydHJhdWxpY2hl
IHVuZC9vZGVyIHJlY2h0bGljaCBnZXNjaHVldHp0ZSBJbmZvcm1hdGlvbmVuLg0KSW5mb3JtaWVy
ZW4gU2llIHVucyBiaXR0ZSwgd2VubiBTaWUgZGllc2UgRS1NYWlsIGZhZWxzY2hsaWNoZXJ3ZWlz
ZSBlcmhhbHRlbiBoYWJlbi4gQml0dGUgbG9lc2NoZW4gU2llIGluIGRpZXNlbSBGYWxsIGRpZSBO
YWNocmljaHQuDQpKZWRlIHVuZXJsYXVidGUgRm9ybSBkZXIgUmVwcm9kdWt0aW9uLCBCZWthbm50
Z2FiZSwgQWVuZGVydW5nLCBWZXJ0ZWlsdW5nIHVuZC9vZGVyIFB1Ymxpa2F0aW9uIGRpZXNlciBF
LU1haWwgaXN0IHN0cmVuZ3N0ZW5zIHVudGVyc2FndC4NCg0KLSBJbmZvcm1hdGlvbmVuIHp1bSBE
YXRlbnNjaHV0eiwgaW5zYmVzb25kZXJlIHp1IElocmVuIFJlY2h0ZW4sIGVyaGFsdGVuIFNpZSB1
bnRlcjoNCg0KaHR0cHM6Ly93d3cuZGllaGwuY29tL2dyb3VwL2RlL3RyYW5zcGFyZW56LXVuZC1p
bmZvcm1hdGlvbnNwZmxpY2h0ZW4vDQoNClRoZSBjb250ZW50cyBvZiB0aGUgYWJvdmUgbWVudGlv
bmVkIGUtbWFpbCBpcyBub3QgbGVnYWxseSBiaW5kaW5nLiBUaGlzIGUtbWFpbCBjb250YWlucyBj
b25maWRlbnRpYWwgYW5kL29yIGxlZ2FsbHkgcHJvdGVjdGVkIGluZm9ybWF0aW9uLiBQbGVhc2Ug
aW5mb3JtIHVzIGlmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGJ5DQptaXN0YWtlIGFu
ZCBkZWxldGUgaXQgaW4gc3VjaCBhIGNhc2UuIEVhY2ggdW5hdXRob3JpemVkIHJlcHJvZHVjdGlv
biwgZGlzY2xvc3VyZSwgYWx0ZXJhdGlvbiwgZGlzdHJpYnV0aW9uIGFuZC9vciBwdWJsaWNhdGlv
biBvZiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLg0KDQotIEZvciBnZW5lcmFs
IGluZm9ybWF0aW9uIG9uIGRhdGEgcHJvdGVjdGlvbiBhbmQgeW91ciByZXNwZWN0aXZlIHJpZ2h0
cyBwbGVhc2UgdmlzaXQ6DQoNCmh0dHBzOi8vd3d3LmRpZWhsLmNvbS9ncm91cC9lbi90cmFuc3Bh
cmVuY3ktYW5kLWluZm9ybWF0aW9uLW9ibGlnYXRpb25zLw0KDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK

