Delivery-date: Mon, 17 Apr 2023 11:44:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poLPp-0069fl-Ki
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 11:44:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poLPn-0005kH-GC
	for lore@pengutronix.de; Mon, 17 Apr 2023 11:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eR89pdExqEUZ+wQdTUesKKkoVPaLSI0NmhdERpIulT8=; b=Xh635sDTK7JIwEreGL9Qn7F8mW
	P8BPqEwgB1JJqxbV2YIZdcbkddvCdrdncfve7zg+Ccb4Kp25mCYwvakiD4EV8B14ZoQYJjbl1My1f
	v1Wq452+QajlMR1WLimkP5NrQP0ZvdZ08Ou81A2YHV6/aIa8JBqR1OkYwxJZvccAU3ojPeaT8rdPa
	itFZNY+gVyADuPXQqiKmXfi7kQYdwQNxJfUhPQyWYunwLFGgAZ/4lOsKmbpGj7ksuKH5eeRG7r4pz
	bI5zRsUgZguWcX6jWHmNaFAvHDp+R15N+3lSHrUetAor6rQiBEep/OZ8o0sDRttbDebtI4UPYMCGA
	03VF3eAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poLNr-00Fc93-0z;
	Mon, 17 Apr 2023 09:42:51 +0000
Received: from mail-am6eur05on2071e.outbound.protection.outlook.com ([2a01:111:f400:7e1b::71e] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poLNl-00Fc77-1y
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 09:42:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqRJt97dbalNvfJkMTkLfpqWHx48hNXmbO5aWtR5mJ7KfAED1V/xXwRQ9Zz2WRBWV0cm4twYE4l07qHYB/HAOx5s7J9z/EVeXySN83j/XJC2+tbVwCVCh+paYoDEnwTRuj00lzzxTB1KdbWOL3bWBgsJYp0UkM3i7QKm4V+P3T+bztEjwE9cDtzBRNZNrkxr9z/3AORdw0/7oh7WCsRSxYwISpUccU/ZZbgOoyOQmT4M8jjPdq0VR2UOY29fOz8/0DOAVDhgI5hs3XR9SxPg9PobIAXZnlfLHC44JmbSBZkB2f+ixv9BgNf3b9ooG1IOKSyCeKqcTaSnIT+sIaYjug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eR89pdExqEUZ+wQdTUesKKkoVPaLSI0NmhdERpIulT8=;
 b=GTeE3Xj/QTheZ8AB5Ht2KUTLhjzRFLSK6+Kz/XdLMCfDgFMxTOUC49hX003l8d+gTo4ZjKQ0c6mtiGjE1/SHaYbw5PyagRsV3XFmClUQHomRLNNiiKqS7DB4Oj6ZuTgf5HMAYvUWWVjcIeHA98O2msHcKisJmCSaANGvmc5Tpc6yRM10Q2nDd9w3Uq2RGhn3n/IDjd7IvL6TpoMctZtdVPfhKkAgJX/ppr5w0u1UPF7dLq7Quz38/Sp1gZguwGpuarFlxsS6RnA1/xh3prRQM6R6bXkWiWz8/ggrtbnjUQab+qGmY2er3800zf2wIkn/U8skETch3t8fKxo8XXrhwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mt.com; dmarc=pass action=none header.from=mt.com; dkim=pass
 header.d=mt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mt.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eR89pdExqEUZ+wQdTUesKKkoVPaLSI0NmhdERpIulT8=;
 b=TGqkcX7nZaXuW2KMa2fSNQ79YCK1Ekv1OiJKG23x0qnkA+iZcQtMnc1Lk7oJo73SFfwM4bjseVr55oXg31XN/D/e1z+KRWiFtPeO5OZHRCgItT8bkJPfSJopmvhR+b852zOeMTb23IbG3VD3tdNMfSrhwJCzQQbZoQyGBuq4Je9+kikigJT2sv6/V13M71GS2aoJftSj2DwzFAy8B27NnpbbR4E7OEsyr9NGmEExmLCSvGordSLlvwbD9B8+rVB/fPHwgTUDalkkUrgViMC1Z5IaJOQIGJzS8I45FdgZyWNNrZgtT4IyFThElhMRgmLVmGcVdXBgB/35Il7BJG+03A==
Received: from PA4PR03MB7488.eurprd03.prod.outlook.com (2603:10a6:102:bc::11)
 by DB3PR0302MB9109.eurprd03.prod.outlook.com (2603:10a6:10:428::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 09:42:40 +0000
Received: from PA4PR03MB7488.eurprd03.prod.outlook.com
 ([fe80::383:caf2:f88a:bd11]) by PA4PR03MB7488.eurprd03.prod.outlook.com
 ([fe80::383:caf2:f88a:bd11%3]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 09:42:40 +0000
From: Burri Markus LabTec <Markus.Burri@mt.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: EXTERNAL - [PATCH v1] Add bootchooser command option for active
 boot target
Thread-Index:  AQHZbrU57Le4AN/XwEm7wjjgGDClta8qj04AgAAOJuCAAB4OAIAAAUwQgAAEKQCABIHWsA==
Date: Mon, 17 Apr 2023 09:42:39 +0000
Message-ID:  <PA4PR03MB7488267E1064820DC94F3E00EF9C9@PA4PR03MB7488.eurprd03.prod.outlook.com>
References: <20230414094020.2389226-1-markus.burri@mt.com>
 <f454aee9-3e78-c1bc-f448-3355e3613d14@pengutronix.de>
 <PA4PR03MB748854E525009BC8F015D570EF999@PA4PR03MB7488.eurprd03.prod.outlook.com>
 <7c13d1e3-452f-5b91-4511-d64c531f0145@pengutronix.de>
 <PA4PR03MB7488B5A455A50A14BB7E44A5EF999@PA4PR03MB7488.eurprd03.prod.outlook.com>
 <b8847e00-0e27-c7f8-af75-977fa41fa64e@pengutronix.de>
In-Reply-To: <b8847e00-0e27-c7f8-af75-977fa41fa64e@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Enabled=true;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_SetDate=2023-04-17T09:42:38Z;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Method=Standard;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Name=Confidential;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_SiteId=fb4c0aee-6cd2-482f-a1a5-717e7c02496b;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_ActionId=a2d7b0b3-8111-4f98-b6e5-2d7482bd7636;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_ContentBits=0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mt.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR03MB7488:EE_|DB3PR0302MB9109:EE_
x-ms-office365-filtering-correlation-id: 44870cbe-ebe5-4464-ad10-08db3f2815d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  TpH0QXJXWV5pHuiObDoKpVepxl1KoTq3HJY0gSK8Xa2v/U/T47Ah85HIlY4E1wSaXszUAI3no9NyfyEgsjqpYWNED5BzkjrSW5GqGaB70YBvD1rlfWf7+UcVkIURXYmCQ3rLphDJ0FB2y3LLh7hBsbcRQg5HjfIpSCnm6J7evPwAJGEZyed1gSQFENXLCxnASHxzyZyIfWRr1FuY7/R1/02gHX33k27tvRYW94ZLPGbiOot8r48pGqTGbjZORcTxJxNbQWz3aath2YqfBMbyi0UWlmX4DP9faEoo8oQdH1AepDeZ/rT66aCa33Oh7++RkRZRA2bT+5+Fr+fyAFbVMlhc/1jbTRuudTwZNW2SQZx7F/ZCQjffdqtGipbICz5A5+a1lEI/dqGe9HVYnBeZEKko8ccZHCX95Y8wdWbrx2fk7zSwDv6AuKCkF4FDpMTCU7bhQItsWI2o+LBkbFJKZGIHOpePVHEmT4yx0U5avdEomwBfI/NPPpYarjDR4ASCGklIJwalPZOc+hb47bK1PnaL7ECTHuGYN/2F0joR/lryuY6SCkgTCuD/0vPeVI4JkrsQoJJ03lu2PfYFXXf4xd7dLbV7AvB9JDSoo00wdV4eA8QVMGRkW+b15JPZZrb+
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR03MB7488.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(478600001)(71200400001)(38100700002)(8936002)(8676002)(316002)(41300700001)(55016003)(66476007)(6916009)(4326008)(76116006)(66946007)(66556008)(66446008)(122000001)(186003)(2906002)(38070700005)(26005)(6506007)(64756008)(86362001)(9686003)(33656002)(558084003)(52536014)(5660300002)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?UDFVL0FEN21uN1dER3B0THdabmdaRnFWM0YvY0xZU3hCcTBmYlduOWx2UWxD?=
 =?utf-8?B?cHZjMnFRK1poRlNka2NySFRqZFRZb2xHYlRzZGF3ak9VVXdOVTE4NTd5eUpl?=
 =?utf-8?B?dlRUV09WbmQvbEE1U2dBOFlPT1pDbit5RVhNNzgyME9rMUdFbDdCUS9FNEY1?=
 =?utf-8?B?S0tHaEpzb3BTZlhKR2FPek9LSUhmZVNHTStFK0M1NWNHcFplYXdmVHRpQ0tJ?=
 =?utf-8?B?dWNybTNiME5VTDNQN0VDL3lON0NWQ1gwclpONnFUU2ZVOFFDbHNBQXp2N2xx?=
 =?utf-8?B?QkRUVG5IOEZUOFZvMFE3RTNLc3lMNWVFdUFaVElHQktUMUhoSWlkRDNwZVI3?=
 =?utf-8?B?TnZpeFQ4Q1BrRUYzeFdremZpRm9xbHRkTzNBaDdpT1VhTFNIa1JaWFA5TGMr?=
 =?utf-8?B?dGJUSGl1emlWdERkZU1Da1gyT01OZW1sU0dOU2wyTjFSOWVSVEE2dU53Unht?=
 =?utf-8?B?YzFjWTFEVkgrN3FCRjlWclF1QThiWEc5T1dmV0hPOVROK3lQSE9XNkhocmZp?=
 =?utf-8?B?bHpjSkFZN1F1NFNCeHAzSzJFMlhCeG0wMWtvOHpMaXNXTmQ3TUo4anEvVVZF?=
 =?utf-8?B?TTFsTm1mN0R2ZDZIK0N4bmZDbTY1ajdBSzFYNHhVbEZBZyt4bUphQWJRVUJU?=
 =?utf-8?B?YmFrK0k0QXRzL1E2ekY0SFFMdFUyVzV5QjY0QXpNNG9WWFdSbmNCTExtUjV5?=
 =?utf-8?B?dDRYK2haWkNuZGNJWUlmZW9nSnB1TW96cDBvT0srbWRsbFVTUFhPQWVaQ0xZ?=
 =?utf-8?B?eXEySE9BcEczS0JwNC8rWTRnMDJWZ0k0NHpneDZsSHlGZ1VzUHZROTQ1NTJ1?=
 =?utf-8?B?dDh4NTBYTktnZkZrdUhvZlRiK3U3NGtMd2JRa2phWlJqZjBBSGlkRk5PWDBs?=
 =?utf-8?B?d0pOU3I5ZGRFYXVPMFkySHc0REZLRmJiRGhvUklUUzNPZEFIOEJZVi9aSVBF?=
 =?utf-8?B?d2VMd0VZT05oNnp0RXM1WXFMaS91dGlHNnRRQ01mV1c3MThxTlFxOUkwMXd1?=
 =?utf-8?B?b3lYNTQwSG0wVlJRSWZXVDdkOHVIN2NheTBDdjQwTkJHcFdLNzJXWXpCR3Q4?=
 =?utf-8?B?OU82NEh2K2Q0bWF5S1VZbW1RRGkvM3ZoaEwxQ1I5RUpaVWdWdGZ2d05ZL2pp?=
 =?utf-8?B?THVLbEVrUjcyOGJPNWsvclFHSWFmSUxDVDVNbStNZDRwc2xEMHJzMi9ENmls?=
 =?utf-8?B?aUdGc2N5b0lYem1SOFQrSmk2UVpLNzBtV2QyRG9MdDh3TThtR3I4SktLT3JB?=
 =?utf-8?B?N3BjN2ZEQmxMdzIvSTNjVUhYWHI5cTdKUU5DV2IrMDlQakdNYXRxQUI5Vm5y?=
 =?utf-8?B?ekNsU1UxV0dXWS9Fd29nb0t3TGRkTnVBWkk5YW9uUmtYM2cyVld1bFRwSFRw?=
 =?utf-8?B?d1NhdGF1UU94eUdiMldKam9jTFFJbHpJb2gzK2NueUs0NUp4azQ0b3QrOEtr?=
 =?utf-8?B?U1ErLy9YUk9jcnFiQ3UrZXB2Q1NqbkJJbEhrZlJSMXlLS1U2b0tDOTgrYzJY?=
 =?utf-8?B?KzNnbndWcDhuT0FneHdzTnpIekhvWmtkem5pOG9lSUk0dFhLV3JHNHF0NU5L?=
 =?utf-8?B?blRoZUVxTzlZZFBhTURHaUhVbDdLOFdjcjViU1ArZldYMnVnNGttR2o4Q0Fk?=
 =?utf-8?B?OUJIRVl5QWF6K1ZDdms1Y2pkNmdNa0h2RC9FYlFzRXZ0cURGVEMxeEdCQ2U1?=
 =?utf-8?B?U0lCS0ZsOWljNDkvaXMwbDRlSmxHRlcrc00vSWFNbkJlNnVuM21sYW9sU3Vm?=
 =?utf-8?B?SXhpM3VVV0R5ai9mcmlwTjFLd0F6eEkzT0daVUpxUkMvOWoyYVpGL3lQSUtm?=
 =?utf-8?B?OCt5cGRTNjVSajJGVmpmOW9MblExcDVLczhEdWhxcDZPczVjbW5LVlJSWkUw?=
 =?utf-8?B?VmxjaGxIQ0w4cFBzbloydEZYU1hNTnI4NFZBcjR2TjU5dGUrZGhZd1I1Tkky?=
 =?utf-8?B?M3VCNUk4eEliRVlDZlk0bTJMYkQwYlZSSXZrMEVucVBDQ1pGbnNhTEg2enNL?=
 =?utf-8?B?YmU3NlROSkRja245TXJaaUFZRTI4MjNMaTdmZlJWa0FHQ25KSzV5VFhTck1E?=
 =?utf-8?B?S3lRSElFTXN1SjVUaUVGUlM5amtVak8xRUFoYVVrYlo3UnJjaTBGdFFaUkRU?=
 =?utf-8?Q?xzRMNDOI7IDq1FbIyHS5yxcBt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: mt.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR03MB7488.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44870cbe-ebe5-4464-ad10-08db3f2815d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 09:42:40.0327
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fb4c0aee-6cd2-482f-a1a5-717e7c02496b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7bWaJLDYiJkFptO32LFNRHAp0f8SqsJw6lqejl6MGMJbTzrFFKRZNYBXjGOn/6dtb/sss5OHnuJAIu0WqMrRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0302MB9109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_024246_067503_778F8CC5 
X-CRM114-Status: GOOD (  15.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: RE: EXTERNAL - [PATCH v1] Add bootchooser command option for active
 boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgQWhtYWQNCkkgcmVtb3ZlZCBteSBpbml0IHNjcmlwdCBhbmQgcmVwbGFjZWQgaXQgYnkgYSBz
Y3JpcHQgYWRkZWQgdG8gYm9vdGNob29zZXIuc3lzdGVtMC5ib290PTxzY3JpcHQ+Lg0KVGhpcyBm
aXQgbXkgcmVxdWlyZW1lbnRzIGFuZCB0aGVyZWZvciB0aGUgcGF0Y2ggaXMgb2Jzb2xldGUuDQpU
aGFua3MgZm9yIHlvdXIgc3VwcG9ydC4NCkJlc3QgcmVnYXJkcyBNYXJrdXMNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9u
aXguZGU+IA0KU2VudDogRnJlaXRhZywgMTQuIEFwcmlsIDIwMjMgMTQ6NDcNClRvOiBCdXJyaSBN
YXJrdXMgTGFiVGVjIDxNYXJrdXMuQnVycmlAbXQuY29tPg0KQ2M6IGJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZw0KU3ViamVjdDogUmU6IEVYVEVSTkFMIC0gW1BBVENIIHYxXSBBZGQgYm9vdGNo
b29zZXIgY29tbWFuZCBvcHRpb24gZm9yIGFjdGl2ZSBib290IHRhcmdldA0KDQpIZWxsbyBNYXJr
dXMsDQoNCk9uIDE0LjA0LjIzIDE0OjQxLCBCdXJyaSBNYXJrdXMgTGFiVGVjIHdyb3RlOg0KPiBI
ZWxsbyBBaG1hZA0KPiANCj4gVGhlIElkZWEgaXMgdG8gcnVuIHNvbWUgc2NyaXB0cyBzdG9yZWQg
aW4gdGhlIHJvb3RmcyBiZWZvcmUgYm9vdGluZyANCj4gdGhlIHN5c3RlbS4gSW4gb3VyIGNhc2Ug
ZS5nIHdlIGVuYWJsZSBsZWQgYWNjb3JkaW5nIHRvIGN1c3RvbWVyIG5lZWRzLiANCj4gVGhpcyBp
cyBzdG9yZWQgaW4gdG8gcm9vdGZzIHdoZXJlIHRoZSBjdXN0b21lciBpcyBhYmxlIHRvIHVwZGF0
ZSANCj4gd2l0aG91dCB1cGRhdGUgYmFyZWJveA0KDQpPbmNlIHlvdSBnaXZlIHlvdXIgY3VzdG9t
ZXIgdGhlIGFiaWxpdHkgdG8gcnVuIGFyYml0cmFyeSBjb2RlLCB0aGV5IHdpbGwgcnVuIGFyYml0
cmFyeSBjb2RlLCBlLmcuIGFwcGx5IGFuIG92ZXJsYXkgdG8gdGhlIGtlcm5lbCBEVCBvciB0dW5l
IGtlcm5lbCBjb21tYW5kIGxpbmUgYXJndW1lbnQuIFdpdGggeW91ciBpbml0IHNjcmlwdCBhcHBy
b2FjaCwgeW91IGNvdWxkIGFwcGx5IG9sZCBvdmVybGF5cyB3aGVuIGJvb3RpbmcgYSBuZXcga2Vy
bmVsLCB3aGljaCBjYW4gbGVhZCB0byB2ZXJ5IHN1cnByaXNpbmcgcmVzdWx0cy4NCg0KPiBUaGUg
bmV3IGNvbW1hbmQgb3B0aW9uIHdpbGwgc3RvcmUgdGhpcyBpbmZvcm1hdGlvbiBpbiBhIHZhcmlh
YmxlIHdoZXJlIEkgY2FuIHVzZSB0aGlzIGluZm9ybWF0aW9uIGluIHRoZSBpbml0IHNjcmlwdC4N
Cj4gSXQgc291bmQgdGhhdCBhIHNjcmlwdCBhcyBib290Y2hvb3NlciB0YXJnZXQgd2lsbCBmaXQg
bXkgcmVxdWlyZW1lbnQuIA0KPiBJIGRpZG4ndCBrbm93IHRoYXQuIEkgd2lsbCB0cnkNCg0KSSBh
bSBub3Qgb3Bwb3NlZCB0byBnaXZlIHRoZXNlIHNjcmlwdHMga25vd2xlZGdlIG9mIHdoYXQgYm9v
dGNob29zZXIgdGFyZ2V0IGlzIGV4ZWN1dGVkLCBzZWUgdW50ZXN0ZWQgcGF0Y2ggYmVsb3cuIEJ1
dCBpdCBzaG91bGQgYmUgdGhlIGJvb3Qgc2NyaXB0cyB0aGF0IHJ1biBob29rcywgbm90IGFuIGlu
aXQgc2NyaXB0IG9uIGEgc3Vic2VxdWVudCBib290Lg0KDQpDaGVlcnMsDQpBaG1hZA0KDQotLS0N
CiBjb21tb24vYm9vdGNob29zZXIuYyB8IDQgKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2NvbW1vbi9ib290Y2hvb3Nlci5jIGIvY29tbW9uL2Jv
b3RjaG9vc2VyLmMgaW5kZXggMDhkMDVlODg1MjUwLi4zZDQwMGFmMDhlZjEgMTAwNjQ0DQotLS0g
YS9jb21tb24vYm9vdGNob29zZXIuYw0KKysrIGIvY29tbW9uL2Jvb3RjaG9vc2VyLmMNCkBAIC04
MjcsNiArODI3LDcgQEAgc3RhdGljIGludCBib290Y2hvb3Nlcl9ib290X29uZShzdHJ1Y3QgYm9v
dGNob29zZXIgKmJjLCBpbnQgKnRyeWFnYWluKQ0KICAgICAgICAgICAgICAgIGdvdG8gb3V0Ow0K
ICAgICAgICB9DQoNCisgICAgICAgZ2xvYmFsdmFyX2FkZF9zaW1wbGUoImJvb3RjaG9vc2VyLmFj
dGl2ZSIsIHRhcmdldC0+bmFtZSk7DQogICAgICAgIHN5c3RlbSA9IGJhc3ByaW50ZigiYm9vdGNo
b29zZXIuYWN0aXZlPSVzIiwgdGFyZ2V0LT5uYW1lKTsNCiAgICAgICAgZ2xvYmFsdmFyX2FkZF9z
aW1wbGUoImxpbnV4LmJvb3RhcmdzLmJvb3RjaG9vc2VyIiwgc3lzdGVtKTsNCiAgICAgICAgZnJl
ZShzeXN0ZW0pOw0KQEAgLTg1NCw2ICs4NTUsNyBAQCBzdGF0aWMgaW50IGJvb3RjaG9vc2VyX2Jv
b3Rfb25lKHN0cnVjdCBib290Y2hvb3NlciAqYmMsIGludCAqdHJ5YWdhaW4pDQogICAgICAgICp0
cnlhZ2FpbiA9IDE7DQogb3V0Og0KICAgICAgICBnbG9iYWx2YXJfc2V0X21hdGNoKCJsaW51eC5i
b290YXJncy5ib290Y2hvb3NlciIsIE5VTEwpOw0KKyAgICAgICBnbG9iYWx2YXJfc2V0X21hdGNo
KCJib290Y2hvb3Nlci5hY3RpdmUiLCBOVUxMKTsNCg0KICAgICAgICBib290ZW50cmllc19mcmVl
KGVudHJpZXMpOw0KDQpAQCAtOTc2LDMgKzk3OCw1IEBAIEJBUkVCT1hfTUFHSUNWQVIoZ2xvYmFs
LmJvb3RjaG9vc2VyLmRlZmF1bHRfcHJpb3JpdHksDQogICAgICAgICAgICAgICAgICJib290Y2hv
b3NlcjogRGVmYXVsdCBwcmlvcml0eSBmb3IgYSB0YXJnZXQiKTsgIEJBUkVCT1hfTUFHSUNWQVIo
Z2xvYmFsLmJvb3RjaG9vc2VyLnN0YXRlX3ByZWZpeCwNCiAgICAgICAgICAgICAgICAgImJvb3Rj
aG9vc2VyOiBzdGF0ZSBuYW1lIHByZWZpeCwgZW1wdHkgZm9yIG52IGJhY2tlbmQiKTsNCitCQVJF
Qk9YX01BR0lDVkFSKGdsb2JhbC5ib290Y2hvb3Nlci5hY3RpdmUsDQorICAgICAgICAgICAgICAg
ICJib290Y2hvb3NlcjogaG9sZHMgbmFtZSBvZiBhY3RpdmUgYm9vdGNob29zZXIgdGFyZ2V0IA0K
K2R1cmluZyBib290Iik7DQoNCg==


