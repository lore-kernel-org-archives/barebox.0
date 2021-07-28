Delivery-date: Wed, 28 Jul 2021 11:40:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8g3O-0002pr-9z
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 11:40:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8g3N-0006lt-54
	for lore@pengutronix.de; Wed, 28 Jul 2021 11:40:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/VOcg+qw7MUMADW96XHqBZd32su25TRi9Mg0obQ3p8=; b=Gt0w/O88CPnXvJ
	dcsSGs/Z+pnxkOZnBmS4JnGOQvACqBmFdZZ7rezmGCk1ZnCcv75WS2TjMa00THFH6wavjQTWSUH/c
	juxCb3tdhMWTuAoll2xHMuWSwTNsC5NkxSVZYaQzTk/6eH+Cx8+PA3qUH8Kv9VeS6lWd80oZ0Fy+c
	hR8j8kAvgJnL+zYBGgDekPofUWUuRuE+7MgxrZh9getVwtKn1ts+VWzEFdz/u/yOHWDycpPSbhvjN
	29k9zd2yg2snRiHuNndhiKFNnjE0Tv1Pw7wdAq/YNahnbb5RRmLm94+NcuXrnwQCcsvXKBQnnSQFD
	Oh9i6JwDKcJUubzkQCkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8g1t-000D64-M7; Wed, 28 Jul 2021 09:39:09 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8g1o-000D4U-7x
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 09:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1627465144; x=1659001144;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0Ok6vDLYbN79R/N9TuH1YdV9pxCLqYzhLd7/B3rT3ZY=;
 b=l0qeV32R9KwEp8oIoDAP/oj3QznebwTotIPcUJTfxX9uld3k/lkNjXPO
 ET/4g/cB59jDlE/40o4XsKo+tCWVQqNopvB92lBvxxhFgrJbl/B+kltYm
 Oaw3arTovRLrJMcjb/MXmeSVvk92uymDW3I3IjtV1L/tCKY47b9dayd/N
 i2582xLbUqefcZ4cdVPbQtzus/4gg6Blzmx2bmnH9BizOZhTLsfD+dkkH
 rI/axR5LY35oiBiMcwYn7YT7KVBT2Q4LX5QVU45VcCK6Pnmndqo0xmdKJ
 mGB41e+zhspQV3x5GwAuFUNCtR+4m7mTw6p4LXAFgOJyb603Ulr/ri256 g==;
IronPort-HdrOrdr: A9a23:SIYqvKAVdgwLJgzlHehKsseALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPEfP+U8ssHFJo6HiBEDyewKlyXcV2/hPAV7GZmXbUQSTXeZfBOfZogEIeBeOqNK1t5
 0QFZSWYeeYZTcVsS4BiDPIUerIq+P3kpxA8N2uq0uFOjsaDp2IgT0YNi+rVmlNACVWD5swE5
 SRouBdoSC7RHgRZsOnQlEYQunqvbTw5cLbSC9DIyRixBiFjDuu5rK/OQOfxA0iXzRGxqpn2X
 TZkjb++r6ov5iAu0zhPi7onsZrcenau49+7f+3+58owwDX+1OVjN4IYcz5gNl6mpD41L9gqq
 i2n/5pBbUP15qWRBDlnfKl4Xid7N56g0WSjWOwkD/qpNH0Q3Y7Fo5ImZ9efR3D9UI6sbhHof
 p29nPcv59LARSFnDm4+tTOXxZ2/3DE+kYKgKodiWdSXpAZb6IUpYsD/FlNGJNFBy7i7ps7ed
 MeeP00S8wmAW9yQkqpy1WH+ubcAkjb3y32G3Qqq4iQyXxbjXp5x0wXyIgWmWoB7os0T91B6/
 7fOqplmblSRotOBJgNctspUI+yECjAUBjMOGWdLRDuE7wGIWvEr9ry7K8u7O+ndZQUxN85mY
 jHUllfqWkuEniefvGmzdlO6FTAUW+9VTPixoVX4IV4oKT1QP7xPSiKWDkV4padiuRaBteeV+
 e4OZpQDfOmJ3DpA5xV0wr3XIQXIWUCUcUO0+xLFm6ms4bOMMnnp+bbePHcKP7mCjA/QH7yBX
 MFQXz6ONhA9Ea2QXX16SKhEU8EMyTEjNpN+N6zxZlZ9GAiXbc8/TT8yDyCl422wUoriN1+QK
 NfS4mX3J9SjQGNjCH1B0wAAGsZMq5RiI+QEE+iZTV6aX8dAt44ypSikVw75grGGvZbdbKkLO
 dynSUIxUqqRKbggxzKOujXQF5y1UFj205iZ61s65G+2Q==
X-IronPort-AV: E=Sophos;i="5.84,275,1620684000"; d="scan'208";a="13046598"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Not successful if statements returning error code
Thread-Index: AQHXf6xx3QyEL2rbSU67bamFUdtLMKtX/B6AgAALxAA=
Date: Wed, 28 Jul 2021 09:38:55 +0000
Message-ID: <eb2c7cc52d5a68cccaa64642ca909acf7cf25c94.camel@diehl.com>
References: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
 <2c7807b2-e709-8042-1945-bf4d06f77f28@pengutronix.de>
In-Reply-To: <2c7807b2-e709-8042-1945-bf4d06f77f28@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
Content-ID: <808BC423DF1FAF479415F34814B0D6DF@diehl.internal>
MIME-Version: 1.0
X-GBS-PROC: 415AWy8o668fDtCxszluz0jkEN7DadWQkRwamE0wSOilmrBbD4hqfYwVRX09HOMF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_023904_783875_E954E16B 
X-CRM114-Status: GOOD (  29.46  )
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
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Not successful if statements returning error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksDQoNCkFtIE1pdHR3b2NoLCBkZW4gMjguMDcuMjAyMSwgMTA6NTYgKzAyMDAgc2NocmllYiBB
aG1hZCBGYXRvdW06DQo+IEhlbGxvIEFuZHJlaiwNCj4NCj4gT24gMjMuMDcuMjEgMTI6MTgsIEFu
ZHJlaiBQaWNlaiB3cm90ZToNCj4gPiBIaSBhbGwsDQo+ID4NCj4gPiBJIGhhdmUgYSBxdWVzdGlv
biBhYm91dCBIdXNoIHNoZWxsIGFuZCB0aGUgdXNlIG9mIGl0cyBjb25kaXRpb25hbCBzdGF0ZW1l
bnRzLg0KPiA+IFdlIGhhdmUgY29tZSB1cG9uIGFuIGludGVyZXN0aW5nIGJlaGF2aW91ciB3aXRo
IGl0cyByZXR1cm4gdmFsdWVzLg0KPiA+DQo+ID4gSWYgdGhlIGNvbmRpdGlvbiBvZiB0aGUgaWYg
c3RhdGVtZW50IGlzIG5vdCB0cnVlIHRoZW4gdGhlIHJldHVybiB2YWx1ZSBpcyAxIChlcnJvciBj
b2RlKSwgYW5kIGlmIHRoZSBjb25kaXRpb24gaXMgdHJ1ZSB0aGUgcmV0dXJuIHZhbHVlIGlzIDAg
KHN1Y2Nlc3MpLg0KPiA+DQo+ID4gU2ltcGxlIHRlc3Q6DQo+ID4gPiAjIS9iaW4vc2gNCj4gPiA+
IGlmIFsgMCAtZ3QgMSBdOyB0aGVuDQo+ID4gPiAgIGVjaG8gIjAgZ3QgMSwgUmV0OiAkPyINCj4g
PiA+IGZpDQo+ID4gPiBlY2hvICJSZXQ6ICQ/Ig0KPiA+ID4NCj4gPiA+IGlmIFsgMiAtZ3QgMSBd
OyB0aGVuDQo+ID4gPiAgIGVjaG8gIjIgZ3QgMSwgUmV0OiAkPyINCj4gPiA+IGZpDQo+ID4gPiBl
Y2hvICJSZXQ6ICQ/Ig0KPiA+DQo+ID4gT3V0cHV0Og0KPiA+ID4gUmV0OiAxDQo+ID4gPiAyIGd0
IDEsIFJldDogMA0KPiA+ID4gUmV0OiAwDQo+ID4NCj4gPiBUaGlzIG1lYW5zIHRoYXQgaWYsIGZv
ciBleGFtcGxlIHRoZSBmaXJzdCBpZiBzdGF0ZW1lbnQgKHdoZXJlIGNvbmRpdGlvbiBpcyBub3Qg
bWV0KSB3b3VsZCBiZSBhdCB0aGUgZW5kIG9mIGEgc2NyaXB0IHRoZSByZXR1cm4gdmFsdWUgb2Yg
dGhhdCB3aG9sZSBzY3JpcHQgd291bGQgYmUgMSAoZXJyb3IgY29kZSkuDQo+ID4gSSBkb24ndCB0
aGluayB0aGlzIGZvbGxvd3Mgc3RhbmRhcmQgc2hlbGwgYmVoYXZpb3VyLiBJZiBpZiBzdGF0ZW1l
bnQgY29uZGl0aW9uIGlzIG5vdCBtZXQgdGhpcyBkb2Vzbid0IG1lYW4gdGhhdCB0aGUgcmV0dXJu
IHZhbHVlIHNob3VsZCBiZSBhbiBlcnJvciBjb2RlLCByaWdodD8NCj4gPiBVc2luZyBvdGhlciBz
aGVsbHMgKGJhc2ggZm9yIGV4YW1wbGUpIHdlIGNhbiBzZWUgdGhhdCB0aGUgcmV0dXJuZWQgdmFs
dWUgaW4gYm90aCBjYXNlcyBpcyAwLCB3aGljaCBpcyBleHBlY3RlZCAoSU1PKS4NCj4gPg0KPiA+
IFRoaXMgYmVoYXZpb3VyIGlzIG5vdCBuZXcgdG8gdGhlIEh1c2ggb3IgYmFyZWJveCBhcyBJIGNv
dWxkIHJlcHJvZHVjZSBpdCBvbiB2YXJpb3VzIHByZXZpb3VzIGJhcmVib3ggdmVyc2lvbnMgKDIw
MTMuMDguMCwgMjAxNy4xMi4wIGFuZCAyMDE5LjExLjApLg0KPiA+DQo+ID4gT2YgY291cnNlLCB0
aGlzIHByb2JsZW0gY2FuIGJlIGVhc2lseSBhdm9pZGVkIGlmIGF0IHRoZSBlbmQgb2YgZXZlcnkg
c2NyaXB0IHdlIHVzZSBleHBsaWNpdCBleGl0IDAuIFRoaXMgaXMgZG9hYmxlLCBidXQgYSBsaXR0
bGUgYW5ub3lpbmcuDQo+ID4NCj4gPiBBbHRob3VnaCB0aGlzIGlzIG5vdCBhIGRlYWwtYnJlYWtl
ciBmb3IgdXMsIEkgd2FzIHdvbmRlcmluZyB3aGF0IGlzIHRoZSByZWFzb24gYmVoaW5kIHRoaXM/
IEhvdyBkbyB5b3UgZ2V0IGFyb3VuZCB0aGlzIGFuZCBhcmUgdGhlcmUgYW55IHBsYW5zIHRvIGZp
eC9tb2RpZnkgdGhpcyBpbiB0aGUgZnV0dXJlIHNvIGl0IGZvbGxvd3MgdGhlDQo+ID4gYmVoYXZp
b3VyIG9mIG90aGVyIHNoZWxscz8NCj4NCj4gSSB0YWxrZWQgd2l0aCBTYXNjaGEgb25jZSBiZWZv
cmUgKG9mZi1saXN0KSBhYm91dCBhIHNpbWlsYXIgaXNzdWUuIE1pc3NpbmcgZXJyb3IgaGFuZGxp
bmcNCj4gcmVzdWx0cyBpbg0KPg0KPiAgIFsgeDEgLWVxIHgyIF0gJiYgZWNobyB5ZXMgfHwgZWNo
byBubw0KPg0KPiBwcmludGluZyB5ZXMuDQo+DQo+IFdlIGFncmVlZCB0aGF0IGl0J3Mgb2sgdG8g
YnJlYWsgc2NyaXB0cyByZWx5aW5nIG9uIGNsZWFyIGh1c2ggYnVncyBsaWtlIHRoaXMuDQo+DQo+
IEknZCB0aHVzIHJlY29tbWVuZCB5b3UgdG8gc2VuZCBhIHBhdGNoIHRvIGZpeCBodXNoIGluc3Rl
YWQgb2Ygd29ya2luZyBhcm91bmQgaXQuDQpzaGVsbGNoZWNrIHNheXM6DQoNClNDMjAxNTogTm90
ZSB0aGF0IEEgJiYgQiB8fCBDIGlzIG5vdCBpZi10aGVuLWVsc2UuIEMgbWF5IHJ1biB3aGVuIEEg
aXMgdHJ1ZS4NCg0KU28gSSB3b3VsZCB0aGluayB0aGF0IEIgaXMgbWF5YmUgYWxsb3dlZCB0byBy
dW4gYmVmb3JlIEEsIHRvby4NCkJ1dCwgSSBkbyBub3Qga25vdyBpZiBIdXNoIHNwZWNpZmllcyBl
eGVjdXRpb24gb3JkZXIgaGVyZS4NCg0KUmVnYXJkcywgRGVuaXMNCg0KPg0KPiBDaGVlcnMsDQo+
IEFobWFkDQo+DQo+ID4NCj4gPiBUaGFuayB5b3UgZm9yIHlvdXIgYW5zd2VyLg0KPiA+DQo+ID4g
QmVzdCByZWdhcmRzLA0KPiA+IEFuZHJlag0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBiYXJlYm94IG1haWxpbmcgbGlzdA0KPiA+
IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveA0KPiA+DQo+DQo+DQpEaWVobCBDb25uZWN0aXZp
dHkgU29sdXRpb25zIEdtYkgNCkdlc2Now6RmdHNmw7xocnVuZzogSG9yc3QgTGVvbmJlcmdlcg0K
U2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBOw7xybmJlcmcgLSBSZWdpc3RlcmdlcmljaHQ6IEFtdHNn
ZXJpY2h0DQpOw7xybmJlcmc6IEhSQiAzMjMxNQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KDQpEZXIgSW5oYWx0IGRlciB2b3JzdGVoZW5kZW4gRS1NYWlsIGlzdCBuaWNodCBy
ZWNodGxpY2ggYmluZGVuZC4gRGllc2UgRS1NYWlsIGVudGhhZWx0IHZlcnRyYXVsaWNoZSB1bmQv
b2RlciByZWNodGxpY2ggZ2VzY2h1ZXR6dGUgSW5mb3JtYXRpb25lbi4NCkluZm9ybWllcmVuIFNp
ZSB1bnMgYml0dGUsIHdlbm4gU2llIGRpZXNlIEUtTWFpbCBmYWVsc2NobGljaGVyd2Vpc2UgZXJo
YWx0ZW4gaGFiZW4uIEJpdHRlIGxvZXNjaGVuIFNpZSBpbiBkaWVzZW0gRmFsbCBkaWUgTmFjaHJp
Y2h0Lg0KSmVkZSB1bmVybGF1YnRlIEZvcm0gZGVyIFJlcHJvZHVrdGlvbiwgQmVrYW5udGdhYmUs
IEFlbmRlcnVuZywgVmVydGVpbHVuZyB1bmQvb2RlciBQdWJsaWthdGlvbiBkaWVzZXIgRS1NYWls
IGlzdCBzdHJlbmdzdGVucyB1bnRlcnNhZ3QuDQoNCi0gSW5mb3JtYXRpb25lbiB6dW0gRGF0ZW5z
Y2h1dHosIGluc2Jlc29uZGVyZSB6dSBJaHJlbiBSZWNodGVuLCBlcmhhbHRlbiBTaWUgdW50ZXI6
DQoNCmh0dHBzOi8vd3d3LmRpZWhsLmNvbS9ncm91cC9kZS90cmFuc3BhcmVuei11bmQtaW5mb3Jt
YXRpb25zcGZsaWNodGVuLw0KDQpUaGUgY29udGVudHMgb2YgdGhlIGFib3ZlIG1lbnRpb25lZCBl
LW1haWwgaXMgbm90IGxlZ2FsbHkgYmluZGluZy4gVGhpcyBlLW1haWwgY29udGFpbnMgY29uZmlk
ZW50aWFsIGFuZC9vciBsZWdhbGx5IHByb3RlY3RlZCBpbmZvcm1hdGlvbi4gUGxlYXNlIGluZm9y
bSB1cyBpZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBieQ0KbWlzdGFrZSBhbmQgZGVs
ZXRlIGl0IGluIHN1Y2ggYSBjYXNlLiBFYWNoIHVuYXV0aG9yaXplZCByZXByb2R1Y3Rpb24sIGRp
c2Nsb3N1cmUsIGFsdGVyYXRpb24sIGRpc3RyaWJ1dGlvbiBhbmQvb3IgcHVibGljYXRpb24gb2Yg
dGhpcyBlLW1haWwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4NCg0KLSBGb3IgZ2VuZXJhbCBpbmZv
cm1hdGlvbiBvbiBkYXRhIHByb3RlY3Rpb24gYW5kIHlvdXIgcmVzcGVjdGl2ZSByaWdodHMgcGxl
YXNlIHZpc2l0Og0KDQpodHRwczovL3d3dy5kaWVobC5jb20vZ3JvdXAvZW4vdHJhbnNwYXJlbmN5
LWFuZC1pbmZvcm1hdGlvbi1vYmxpZ2F0aW9ucy8NCg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==

