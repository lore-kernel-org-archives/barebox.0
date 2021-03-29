Delivery-date: Mon, 29 Mar 2021 20:57:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQx4Q-0006GD-QD
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 20:57:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQx4P-000386-OA
	for lore@pengutronix.de; Mon, 29 Mar 2021 20:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IgEdgBipHrNtrv3HSR3XTRpuCvHz7HRvrruINpobS8o=; b=X7qTiNeKFkRpjEXZrBWRh/HqW
	fzEi6oqM2z/PJsHCHN4OGMyZvIKUBkfu6vqnNui+RerjRqRxS2ZISt3OlnZOLr4kKmE/KRTuFFDPR
	Moo3tuU+f30wYJdMcKyL21J7rXud8cGXcawi0IpQiZ6PPVngpkUj+gVPH+gGCL1BDHV3J4Z7D70VB
	/ENb/AKz28Fz+A+0SXagbfO7JmD2IxswJt2q1eLV+blYbrbS0V4X+FQI5AcDoDtTqJ8u53Hi7QH9B
	OK3d0xFhjYJkePg/cc8pCHRPnLi74dqZcwxA98evQtG5jgzX4nsRQX/fVzc2C0SBerroUzLVyCcRY
	pAieSpFLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQx1w-0018fh-1T; Mon, 29 Mar 2021 18:54:30 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpiQ-000bNE-56
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 11:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617002444; x=1619594444;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wpBKj5FuZn8PLjpKD5p/E8bHghWD3D6+Wcxd9vnTCn0=;
 b=A5+ijCc0JetQ7xI5nf64495EdGWPmpEGOriS9TKzem9RToH8X+FlLdJpsliSBPtS
 bVIRlIepGDDV/l5i3ueB47sWtsFBQ+ckW2dH9PpbVuiK9YKJ5S0KaapB9FeHRJw7
 CxNovldiIO5Mr/beTaYp/JtC9BDVkqpebPb/jt8AgLQ=;
X-AuditID: c39127d2-868b870000001c91-57-60617fcc79d1
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 71.D7.07313.CCF71606;
 Mon, 29 Mar 2021 09:20:44 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 29 Mar
 2021 09:20:44 +0200
Received: from Berlix.phytec.de ([fe80::f594:d241:d581:a5be]) by
 berlix.phytec.de ([fe80::f594:d241:d581:a5be%3]) with mapi id 15.01.2176.009; 
 Mon, 29 Mar 2021 09:20:44 +0200
From: =?utf-8?B?U3RlZmFuIFJpZWRtw7xsbGVy?= <S.Riedmueller@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
Thread-Index: AQHXGmEr8clFgKKLt0+xtTjsIb7GVaqH3cmAgAB+OYCABx9iAIALBmIA
Date: Mon, 29 Mar 2021 07:20:44 +0000
Message-ID: <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
 <20210322055902.GO23724@pengutronix.de>
In-Reply-To: <20210322055902.GO23724@pengutronix.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <940B3085E1BAB541AEC01537A9F7AB19@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmkeLIzCtJLcpLzFFi42JZI8BQpnumPjHBYMJjbYsTi/uZLR5tnsXq
 wOSxeUm9R/9fgwCmKC6blNSczLLUIn27BK6MR293sxfc46vYPmMHSwPjGr4uRk4OCQETie4f
 HYxdjFwcQgLLmSRWtbxjh3AeMkpc37ERytnEKHHm83N2kBY2AReJz23f2EBsEQFdiR1H3wO1
 c3AwC9hLrOiQBTGFBWIkjhyvg6iIlThz5j4rSFhEwE1i2hlLkDCLgKrE2l8PmEBsXqDw3J7l
 TBCbWpgkzs58zAyS4AQ67sn9YywgNqOArERnwzuwBmYBcYlNz76zQjwgILFkz3lmCFtU4uXj
 f1BxBYm2nk4miMs0Jdbv0odotZA4PKuRHcJWlJjS/ZAd4gZBiZMzn7BMYBSfhWTDLITuWUi6
 ZyHpnoWkewEj6ypGodzM5OzUosxsvYKMypLUZL2U1E2MwAg7PFH90g7GvjkehxiZOBgPMUpw
 MCuJ8LKejk0Q4k1JrKxKLcqPLyrNSS0+xCjNwaIkzruBtyRMSCA9sSQ1OzW1ILUIJsvEwSnV
 wLjzhF6r2hmtjQWfdTZLBpfsj2mRywjZeXt5d8fbIyq2Jm5Hj5ZozRS/2SIbdLXQfOr6Kxwv
 mRI2/lphExDFuLcke97EDTdWxGad6M3oXX6Q7zdvyBuZ6zddPlVb/d7pqS1QH3uN+87r/8Hn
 Z6mkroyaWbV7wZbz2mxXWaxCFXd5hUoU3ri/q0SJpTgj0VCLuag4EQDQWXqingIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_120550_303347_2A5A245A 
X-CRM114-Status: GOOD (  25.94  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for the
 BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgU2FzY2hhLA0KDQpoZXJlIGlzIHRoZSBsaW5rIHRvIHRoZSBrZXJuZWwgcGF0Y2guDQpTb3Jy
eSwgSSBmb3Jnb3QgdG8gcHV0IHlvdSBpbiBjYy4NCg0KaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJz
Lm9yZy9wcm9qZWN0L2xpbnV4LW10ZC9wYXRjaC8yMDIxMDMyNTEwMjMzNy40ODExNzItMS1zLnJp
ZWRtdWVsbGVyQHBoeXRlYy5kZS8NCg0KU3RlZmFuDQoNCk9uIE1vbiwgMjAyMS0wMy0yMiBhdCAw
Njo1OSArMDEwMCwgc2hhQHBlbmd1dHJvbml4LmRlIHdyb3RlOg0KPiBPbiBXZWQsIE1hciAxNywg
MjAyMSBhdCAwNToxNDowNVBNICswMDAwLCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6DQo+ID4g
SGkgU2FzY2hhLA0KPiA+IA0KPiA+IE9uIFdlZCwgMjAyMS0wMy0xNyBhdCAxMDo0MSArMDEwMCwg
U2FzY2hhIEhhdWVyIHdyb3RlOg0KPiA+ID4gSGkgU3RlZmFuLA0KPiA+ID4gDQo+ID4gPiBPbiBU
dWUsIE1hciAxNiwgMjAyMSBhdCAwMTozNjoyNlBNICswMTAwLCBTdGVmYW4gUmllZG11ZWxsZXIg
d3JvdGU6DQo+ID4gPiA+IFRoZSBibG9ja3MgY29udGFpbmluZyB0aGUgYmFkIGJsb2NrIHRhYmxl
IGNhbiBiZWNvbWUgYmFkIGFzIHdlbGwuIFNvDQo+ID4gPiA+IG1ha2Ugc3VyZSB0byBza2lwIGFu
eSBibG9ja3MgdGhhdCBhcmUgbWFya2VkIGJhZCB3aGVuIHNlYXJjaGluZyBmb3INCj4gPiA+ID4g
dGhlDQo+ID4gPiA+IGJhZCBibG9jayB0YWJsZS4NCj4gPiA+IA0KPiA+ID4gVGhlIGZpbGUgaXMg
YSBtb3JlIG9yIGxlc3MgZGlyZWN0IGNvcHkgZnJvbSB0aGUga2VybmVsLiBEb2VzIHRoZSBwcm9i
bGVtDQo+ID4gPiBleGlzdCBpbiB0aGUga2VybmVsIGFzIHdlbGw/DQo+ID4gDQo+ID4gRnJvbSBt
eSBwb2ludCBvZiB2aWV3IEkgd291bGQgc2F5IHllcy4gSSBoYXZlIGp1c3QgbWFkZSBhIHNtYWxs
IHRlc3QgSXNzdWUNCj4gPiBpcw0KPiA+IHNob3duIGluIHRoZSBrZXJuZWwgYXMgd2VsbC4gSXQg
aXMgYSB2ZXJ5IHJhdyBjYXNlIHdoZXJlIHR3byBCQlQgYmxvY2tzDQo+ID4gbmVlZA0KPiA+IHRv
IGJlIHdvcm4gb3V0IGJ1dCBvbiB0aGUgb3RoZXIgaGFuZCB0aGlzIGZpeCBzaG91bGQgbm90IGhh
dmUgdGhhdCBtdWNoIG9mDQo+ID4gYW4NCj4gPiBpbXBhY3QuDQo+ID4gDQo+ID4gSSB3aWxsIHNl
bmQgYSBzaW1pbGFyIHBhdGNoIHRvIHRoZSBrZXJuZWwuDQo+IA0KPiBJJ2QgbGlrZSB0byBkZWxh
eSB0aGlzIG9uZSB1bnRpbCBpdCBpcyBhY2NlcHRlZCBpbiB0aGUga2VybmVsLiBJIGRvIG5vdA0K
PiBmdWxseSB1bmRlcnN0YW5kIHRoZSBjb25zZXF1ZW5jZXMgb2YgdGhpcyBwYXRjaCwgYnV0IGhv
cGVmdWxseSBvbiB0aGUNCj4gbXRkIGxpc3QgdGhlcmUgaXMgc29tZW9uZS4NCj4gDQo+IFNhc2No
YQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

