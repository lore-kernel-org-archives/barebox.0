Delivery-date: Thu, 23 Jun 2022 13:49:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4LLG-00Buf3-UG
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 13:49:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4LLG-0006Vb-5o
	for lore@pengutronix.de; Thu, 23 Jun 2022 13:49:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjToROx+6NAv1h29RuWQ1G8K79qJ6BTHq9pFJx1M4x4=; b=vhDV5MA+gPjhC+aswXzgPbZVFr
	SstvBVPmRekdGlGIVn2tP92Proma9YnZAp3KlPofbeMSFcu0/n9nd1tGJEzCju/jRwbg5gMpesl/D
	H97eWRzKL3eb4NCeQE9qA+AEApNHw7YZQDUJZyvwRZsNne3DOPVw4wyQ91FOzwUgVaBpuStiFhjNW
	PIRf0BfmKLIUh4erESfnGaPKIiEP5IaEVnT0L0LN4DG4LOttxqInY/Vk+BIaBrBa+5UXrnZT5H52J
	oASkzO3i+fnEmQBPkNavLPug7Ndrt6NSQF8t7LEpx5NZ8oHE0tkkwV8XyzmrYlw7SyYwHGiyXSU2+
	mBb3vEuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LJI-00Em3q-UI; Thu, 23 Jun 2022 11:47:45 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LJE-00Em3C-7T
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 11:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655984858; x=1658576858;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GjToROx+6NAv1h29RuWQ1G8K79qJ6BTHq9pFJx1M4x4=;
	b=qaQsP2P2yc0XC1nQqHuAmnLmXG0115mYAeK1g2H4eTuNWHfEFc2JQTuHQjruK+va
	qGXtZwCISXPks+rmBd3Louy13bfcPAd50FDfWRHKFYbXTczZPg7aIxSBMKj4e8wy
	i9w54sQnTHUN2KDwqUpDBsEGhMuwl7jiBdtX+9oA5Ag=;
X-AuditID: c39127d2-b3a2d70000001dbe-55-62b452dacc1b
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E2.4E.07614.AD254B26; Thu, 23 Jun 2022 13:47:38 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 23 Jun
 2022 13:47:38 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Thu, 23 Jun 2022 13:47:38 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>,
	"lst@pengutronix.de" <lst@pengutronix.de>
Thread-Topic: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
Thread-Index: AQHYhuxUu5SJqfFayUuD9NjiywLjq61csU2AgAAERICAAANbAIAABcWA
Date: Thu, 23 Jun 2022 11:47:38 +0000
Message-ID: <c4f5ec448c17c8111c69dbdabd87ddaa01eb8ea1.camel@phytec.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
	 <20220623103051.572885-4-a.fatoum@pengutronix.de>
	 <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
	 <6a5b1c31-5c83-b5e9-1912-669121092c62@pengutronix.de>
	 <12b29350135ad59a7e5fb9713a85e8f15e5b4e73.camel@phytec.de>
In-Reply-To: <12b29350135ad59a7e5fb9713a85e8f15e5b4e73.camel@phytec.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A38A8A5BFCBFB499F28F279B5BC1585@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsWyRpKBV/dW0JYkgzPPuSwWftjBZNHcYWtx
	YnE/s8Xqqc8ZLf5+/cDuwOqxc9Zddo/NS+o9+v8aeKy5vJQlgCWKyyYlNSezLLVI3y6BK+Pg
	9dlMBYfsKp4v/8newPjFpouRk0NCwETi7qK7TF2MXBxCAkuYJLrmbodyHjBK7PjzlxXC2cQo
	8bi1mRmkhU1AQ+LliW4mEFtEoEzi45PfjCBFzAKrGSUaWn6zgSSEBZIlNp5qY4UoSpE4tesS
	lO0mcfHZYbBBLAKqEu+6trKA2LxA8estE6BWL2eS2LP2NlgDp4C7xKYTz8EaGAVkJTZsOA9m
	MwuIS2x69p0V4gkBiSV7IOISAqISLx//g4rLS5y4NQ1oKAdQvabE+l36EK0WEqcWnWaCsBUl
	pnQ/ZIe4QVDi5MwnLBMYxWch2TALoXsWku5ZSLpnIelewMi6ilEoNzM5O7UoM1uvIKOyJDVZ
	LyV1EyMwMg9PVL+0g7FvjschRiYOxkOMEhzMSiK8L/5vThLiTUmsrEotyo8vKs1JLT7EKM3B
	oiTOe7+HKVFIID2xJDU7NbUgtQgmy8TBKdXA2K6eN+3ZDqeCU81HbH9umPXM6+Pi+0IuNzaI
	2L/mm/drlTq/5XHpJYx2mvOn5kbvWVEbE9SppDN7zn6ueI9NjA9EBLWFzE43h0ac3nqMsWVd
	aMn05Y9WPT6lprFc4PkbDp1yboOjQlt2rzz+JW/jFZ8NDjVKcvdqTVZrbD3GxJfUcSux5mTV
	BiWW4oxEQy3mouJEACwbrAK6AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044740_461315_602434F4 
X-CRM114-Status: GOOD (  42.79  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQWhtYWQsDQoNCkFtIERvbm5lcnN0YWcsIGRlbSAyMy4wNi4yMDIyIHVtIDEzOjI2ICsw
MjAwIHNjaHJpZWIgVGVyZXNhIFJlbW1ldDoNCj4gQW0gRG9ubmVyc3RhZywgZGVtIDIzLjA2LjIw
MjIgdW0gMTM6MTQgKzAyMDAgc2NocmllYiBBaG1hZCBGYXRvdW06DQo+ID4gSGkgVGVyZXNhLA0K
PiA+IA0KPiA+IE9uIDIzLjA2LjIyIDEyOjU5LCBUZXJlc2EgUmVtbWV0IHdyb3RlOg0KPiA+ID4g
SGVsbG8gQWhtYWQsDQo+ID4gPiANCj4gPiA+IEFtIERvbm5lcnN0YWcsIGRlbSAyMy4wNi4yMDIy
IHVtIDEyOjMwICswMjAwIHNjaHJpZWIgQWhtYWQNCj4gPiA+IEZhdG91bToNCj4gPiA+ID4gT2xk
ZXIgTlhQIEREUiBzcHJlYWRzaGVldHMgZG9uJ3QgaW5pdGlhbGl6ZSBBRERSTUFQNywgbGVhdmlu
Zw0KPiA+ID4gPiBpdA0KPiA+ID4gPiBhdA0KPiA+ID4gPiBpdHMNCj4gPiA+ID4gUE9SIGRlZmF1
bHQgb2YgemVyby4gTm93IHRoYXQgYmFyZWJveCBsb29rcyBhdCBBRERSTUFQNyB0byBiZQ0KPiA+
ID4gPiBhYmxlIHRvDQo+ID4gPiA+IGNvcnJlY3RseSBkZXRlY3QgYmlnZ2VyIG1lbW9yeSBzaXpl
cywgYmFyZWJveCBwcm9wZXIgb24gb3V0LW9mLQ0KPiA+ID4gPiB0cmVlDQo+ID4gPiA+IGJvYXJk
cyB3aXRoIG9sZGVyIHNwcmVhZHNoZWV0cyBtYXkgcmVhZCBiYWNrIDR4IHRpbWVzIGFzIG11Y2gN
Cj4gPiA+ID4gUkFNDQo+ID4gPiA+IGFzIGFjdHVhbGx5IGZpdHRlZC4NCj4gPiA+ID4gDQo+ID4g
PiA+IFdvcmsgYXJvdW5kIHRoaXMgYnkgd3JpdGluZyBhIHRyYWlsaW5nIDB4ZjBmICh0aGUgbmV1
dHJhbA0KPiA+ID4gPiBpZ25vcmUtDQo+ID4gPiA+IG1lDQo+ID4gPiA+IHZhbHVlIGZvciB0aGUg
cmVnaXN0ZXIpIGlmIHRoZSByZWdpc3RlciB3YXNuJ3Qgd3JpdHRlbiB0aHJvdWdoDQo+ID4gPiA+
IGRyYW1fdGltaW5nX2luZm86OmRkcmNfY2ZnLiBXZSBjb25zaWRlciB0aGlzIHNhZmUgdG8gZG8s
DQo+ID4gPiA+IGJlY2F1c2UNCj4gPiA+ID4gdGhlIEREUkMgaXMgaGVsZCBpbiByZXNldCB3aGls
ZSB0aGVzZSB2YWx1ZXMgYXJlIHByb2dyYW1tZWQuDQo+ID4gPiANCj4gPiA+IGhhdmUgeW91IHRy
aWVkIHRoaXMgcGF0Y2ggd2l0aG91dCBhY3R1YWxseSB1cGRhdGluZyB0aGUgUkFNDQo+ID4gPiBU
aW1pbmdzDQo+ID4gPiAoDQo+ID4gPiBzbyBwYXRjaCAyLzQpPw0KPiA+IA0KPiA+IFllcy4gSSd2
ZSBhbiBvdXQtb2YtdHJlZSBpLk1YOE1NIGJvYXJkIHdpdGggMUcgb2YgTFBERFI0IGFuZCBvbGQN
Cj4gPiBSQU0NCj4gPiBzZXR1cC4NCj4gPiANCj4gPiBXaXRoIHVwc3RyZWFtL25leHQ6IDRHDQo+
ID4gV2l0aCBXb3JrYXJvdW5kOiAxRyArIFdhcm5pbmcNCj4gPiBXaXRoIGZpeGVkIEFERFJNQVA3
OiAxRywgbm8gd2FybmluZw0KPiA+IA0KPiA+IFJlYWRpbmcgYmFjayAweDNkNDAwMjFjIGdpdmVz
IG1lIDB4ZjBmIGFzIGV4cGVjdGVkLg0KPiA+IA0KPiA+ID4gSSBoYXZlIGp1c3QgcGxheWVkIGFy
b3VuZCBhbHNvIHNldHRpbmcgQUREUk1BUDcgcmlnaHQgYmVmb3JlIA0KPiA+ID4gZGRyX2NmZ191
bWN0bDIoKSB3aXRob3V0IGZpeGluZyB0aGUgdGltaW5ncyBhbmQgdGhlIHJlZ2lzdGVyIHdhcw0K
PiA+ID4gMA0KPiA+ID4gYWdhaW4gYWZ0ZXIgc3RhcnR1cCBhbmQgc28gdGhlIFJBTSBzaXplIHdy
b25nLg0KPiA+ID4gU28gaXQgc2VlbXMgdG8gbWUgdGhhdCB0aGUgdmFsdWUgaXMgb3ZlcndyaXR0
ZW4vcmVzZXR0ZWQgYXQgc29tZQ0KPiA+ID4gb3RoZXINCj4gPiA+IHBvaW50IGFnYWluIC4uLiBv
ciBtYXliZSBJIGp1c3QgZGlkIHNvbWV0aGluZyB3cm9uZy4NCj4gPiANCj4gPiBTdHJhbmdlLiBX
aGF0IFNvQy9ib2FyZCBpcyB0aGlzIG9uPw0KPiANCj4gcGh5Q09SRS1pLk1YOE1RIGJ1dCB3aXRo
IGEgbm90IHVwc3RyZWFtZWQgMkdCIFJBTSBjb25maWd1cmF0aW9uLg0KPiANCj4gSSBhcHBsaWVk
IHRoaXMgcGF0Y2ggbm93IHdpdGggdGhlIHNhbWUgcmVzdWx0LiBXcm9uZyBSQU0gc2l6ZS4gDQoN
Ckkgbm93IGhhdmUgYWxzbyB0cmllZCBzb21lIG91dCBvZiB0cmVlIHBoeUNPUkUtaS5NWDhNTSBp
bXBsZW1lbnRhdGlvbg0Kd2l0aG91dCBhbmQgd2l0aCB0aGlzIHBhdGNoIGFuZCB0aGUgcGF0Y2gg
d29ya3MgZm9yIG91ciBNTS4gdG9vLiBSQU0NCnNpemUgaXMgY29ycmVjdGVkLg0KU28gbWF5YmUg
dGhlIE1RIGlzIHNvbWVob3cgZGlmZmVyZW50IGhlcmU/DQoNClRlcmVzYQ0KDQoNCg0KDQo+IFJl
Z2FyZHMsDQo+IFRlcmVzYQ0KPiANCj4gPiBDaGVlcnMsDQo+ID4gQWhtYWQNCj4gPiANCj4gPiA+
IFJlZ2FyZHMsDQo+ID4gPiBUZXJlc2ENCj4gPiA+IA0KPiA+ID4gPiBGaXhlczogZGFkMmI1NjM2
YmQ4ICgiQVJNOiBpbXg6IEFkZCBpbXg4IHN1cHBvcnQgZm9yIDE4IGJpdA0KPiA+ID4gPiBTRFJB
TQ0KPiA+ID4gPiByb3cNCj4gPiA+ID4gc2l6ZSBoYW5kbGUiKQ0KPiA+ID4gPiBGaXhlczogNmNm
MTk3ZmE2MWY5ICgiYXJtOiBpbXg6IG1tZGNfc2l6ZTogSW5jcmVhc2Ugcm93X21heCBmb3INCj4g
PiA+ID4gaW14OG0iKQ0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRvdW0gPGEuZmF0
b3VtQHBlbmd1dHJvbml4LmRlPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZGRyL2lt
eDhtL2Rkcl9pbml0LmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gIGRyaXZlcnMv
ZGRyL2lteDhtL2hlbHBlci5jICAgfCAgNiArKysrKysNCj4gPiA+ID4gIGluY2x1ZGUvc29jL2lt
eDhtL2Rkci5oICAgICAgfCAgMSArDQo+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2Vy
dGlvbnMoKykNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rkci9pbXg4
bS9kZHJfaW5pdC5jDQo+ID4gPiA+IGIvZHJpdmVycy9kZHIvaW14OG0vZGRyX2luaXQuYw0KPiA+
ID4gPiBpbmRleCBhZTA1YjEzNjIyOWMuLjlhNGI0ZTJjYTg4YSAxMDA2NDQNCj4gPiA+ID4gLS0t
IGEvZHJpdmVycy9kZHIvaW14OG0vZGRyX2luaXQuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2Rk
ci9pbXg4bS9kZHJfaW5pdC5jDQo+ID4gPiA+IEBAIC0xMywxNCArMTMsMzIgQEANCj4gPiA+ID4g
ICNpbmNsdWRlIDxtYWNoL2lteDhtLXJlZ3MuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxtYWNoL2lt
eDhtLWNjbS1yZWdzLmg+DQo+ID4gPiA+ICANCj4gPiA+ID4gK2Jvb2wgaW14OG1fZGRyX29sZF9z
cHJlYWRzaGVldCA9IHRydWU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGRkcl9j
ZmdfdW1jdGwyKHN0cnVjdCBkcmFtX2NmZ19wYXJhbSAqZGRyY19jZmcsDQo+ID4gPiA+IGludA0K
PiA+ID4gPiBudW0pDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICAJaW50IGkgPSAwOw0KPiA+ID4gPiAg
DQo+ID4gPiA+ICAJZm9yIChpID0gMDsgaSA8IG51bTsgaSsrKSB7DQo+ID4gPiA+ICsJCWlmIChk
ZHJjX2NmZy0+cmVnID09IEREUkNfQUREUk1BUDcoMCkpDQo+ID4gPiA+ICsJCSAgICBpbXg4bV9k
ZHJfb2xkX3NwcmVhZHNoZWV0ID0gZmFsc2U7DQo+ID4gPiA+ICAJCXJlZzMyX3dyaXRlKCh1bnNp
Z25lZCBsb25nKWRkcmNfY2ZnLT5yZWcsDQo+ID4gPiA+IGRkcmNfY2ZnLQ0KPiA+ID4gPiA+IHZh
bCk7DQo+ID4gPiA+ICAJCWRkcmNfY2ZnKys7DQo+ID4gPiA+ICAJfQ0KPiA+ID4gPiArDQo+ID4g
PiA+ICsJLyoNCj4gPiA+ID4gKwkgKiBPbGRlciBOWFAgRERSIGNvbmZpZ3VyYXRpb24gc3ByZWFk
c2hlZXRzIGRvbid0DQo+ID4gPiA+IGluaXRpYWxpemUNCj4gPiA+ID4gQUREUk1BUDcsDQo+ID4g
PiA+ICsJICogd2hpY2ggZmFsc2lmaWVzIHRoZSBtZW1vcnkgc2l6ZSByZWFkIGJhY2sgZnJvbSB0
aGUNCj4gPiA+ID4gY29udHJvbGxlcg0KPiA+ID4gPiArCSAqIGluIGJhcmVib3ggcHJvcGVyLg0K
PiA+ID4gPiArCSAqLw0KPiA+ID4gPiArCWlmIChpbXg4bV9kZHJfb2xkX3NwcmVhZHNoZWV0KSB7
DQo+ID4gPiA+ICsJCXByX3dhcm4oIldvcmtpbmcgYXJvdW5kIG9sZCBzcHJlYWRzaGVldC4gUGxl
YXNlDQo+ID4gPiA+IHJlZ2VuZXJhdGVcbiIpOw0KPiA+ID4gPiArCQkvKg0KPiA+ID4gPiArCQkg
KiBBbHRlcm5hdGl2ZWx5LCBzdGljayB7IEREUkNfQUREUk1BUDcoMCksDQo+ID4gPiA+IDB4ZjBm
IH0NCj4gPiA+ID4gaW50bw0KPiA+ID4gPiArCQkgKiBzdHJ1Y3QgZHJhbV90aW1pbmdfaW5mbzo6
ZGRyY19jZmcgb2YgeW91cg0KPiA+ID4gPiBvbGQgdGltaW5nDQo+ID4gPiA+IGZpbGUNCj4gPiA+
ID4gKwkJICovDQo+ID4gPiA+ICsJCXJlZzMyX3dyaXRlKEREUkNfQUREUk1BUDcoMCksIDB4ZjBm
KTsNCj4gPiA+ID4gKwl9DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICANCj4gPiA+ID4gIC8qDQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIuYw0KPiA+ID4gPiBiL2Ry
aXZlcnMvZGRyL2lteDhtL2hlbHBlci5jDQo+ID4gPiA+IGluZGV4IDk0YmJiODExNTc2ZC4uOThl
NDA4NDk1ODRiIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIu
Yw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIuYw0KPiA+ID4gPiBAQCAt
NjIsNiArNjIsMTIgQEAgdm9pZCBkcmFtX2NvbmZpZ19zYXZlKHN0cnVjdA0KPiA+ID4gPiBkcmFt
X3RpbWluZ19pbmZvDQo+ID4gPiA+ICp0aW1pbmdfaW5mbywNCj4gPiA+ID4gIAkJY2ZnKys7DQo+
ID4gPiA+ICAJfQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICsJaWYgKGlteDhtX2Rkcl9vbGRfc3ByZWFk
c2hlZXQpIHsNCj4gPiA+ID4gKwkJY2ZnLT5yZWcgPSBERFJDX0FERFJNQVA3KDApOw0KPiA+ID4g
PiArCQljZmctPnZhbCA9IDB4ZjBmOw0KPiA+ID4gPiArCQljZmcrKzsNCj4gPiA+ID4gKwl9DQo+
ID4gPiA+ICsNCj4gPiA+ID4gIAkvKiBzYXZlIGRkcnBoeSBjb25maWcgKi8NCj4gPiA+ID4gIAlz
YXZlZF90aW1pbmctPmRkcnBoeV9jZmcgPSBjZmc7DQo+ID4gPiA+ICAJZm9yIChpID0gMDsgaSA8
IHRpbWluZ19pbmZvLT5kZHJwaHlfY2ZnX251bTsgaSsrKSB7DQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL3NvYy9pbXg4bS9kZHIuaCBiL2luY2x1ZGUvc29jL2lteDhtL2Rkci5oDQo+ID4g
PiA+IGluZGV4IDlhZTdjYjg3NzY4Ni4uMTQ3YTdkNDk5YWFmIDEwMDY0NA0KPiA+ID4gPiAtLS0g
YS9pbmNsdWRlL3NvYy9pbXg4bS9kZHIuaA0KPiA+ID4gPiArKysgYi9pbmNsdWRlL3NvYy9pbXg4
bS9kZHIuaA0KPiA+ID4gPiBAQCAtNDA3LDYgKzQwNyw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBy
ZWczMnNldGJpdCh1bnNpZ25lZA0KPiA+ID4gPiBsb25nDQo+ID4gPiA+IGFkZHIsIHUzMiBiaXQp
DQo+ID4gPiA+ICAjZGVmaW5lIGR3Y19kZHJwaHlfYXBiX3JkKGFkZHIpIFwNCj4gPiA+ID4gIAly
ZWczMl9yZWFkKElPTUVNKElQMkFQQl9ERFJQSFlfSVBTX0JBU0VfQUREUigwKSkgKyA0ICoNCj4g
PiA+ID4gKGFkZHIpKQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICtleHRlcm4gYm9vbCBpbXg4bV9kZHJf
b2xkX3NwcmVhZHNoZWV0Ow0KPiA+ID4gPiAgZXh0ZXJuIHN0cnVjdCBkcmFtX2NmZ19wYXJhbSBk
ZHJwaHlfdHJhaW5lZF9jc3JbXTsNCj4gPiA+ID4gIGV4dGVybiB1aW50MzJfdCBkZHJwaHlfdHJh
aW5lZF9jc3JfbnVtOw0KPiA+ID4gPiAgDQotLSANClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwg
Um9iZXJ0LUtvY2gtU3RyLiAzOSB8IDU1MTI5IE1haW56LCBHZXJtYW55DQoNCkdlc2Now6RmdHNm
w7xocmVyOiBEaXBsLi1JbmcuIE1pY2hhZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2RvIEh1YmVy
IHwNCkhhbmRlbHNyZWdpc3RlciBNYWlueiBIUkIgNDY1NiB8IEZpbmFuemFtdCBNYWlueiB8IFN0
Lk5yLiAyNjY1MDA2MDgsIERFDQoxNDkwNTk4NTUNCg==


