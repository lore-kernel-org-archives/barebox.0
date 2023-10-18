Delivery-date: Wed, 18 Oct 2023 10:12:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1fb-00Cm7P-O2
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 10:12:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1fa-0001rD-EC
	for lore@pengutronix.de; Wed, 18 Oct 2023 10:12:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ie1JoNp/hmm6N8rXhWQgPK9Ax2S8yIGQn9pVHM08ObE=; b=fjRA1US7vukeGruEec/z3WjDDK
	jAqMmck1cEC8femGBtWoYabtQ991d6tI/dX0BkdAPVBogfeUgpKR5XqQ3cpv3pErhouq12s4CBEGC
	VGmORaClfeUZ0XkmQrqFI/1ImfTl1OJPjucr/f55QOVzUA7POgd4UM2dlJG6gW37ZiED0A65b6hK8
	4+wtik8L2SuwsY5sP4v98PGLwbITqx5zlGPf0YwqRekW2WPWK78MeQ+2WzzTUeroP77drgBvwomWJ
	APMKTlX1zhKQk0hPyhCUxZ1t3JSST9aPIf4bfQyZduXuJX8h464yNghfE9OWks8ZWvCTRdpdg0cFQ
	wVQPHkpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1eR-00E6sh-1O;
	Wed, 18 Oct 2023 08:11:35 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1eN-00E6qJ-1r
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 08:11:33 +0000
X-CSE-ConnectionGUID: Y7crxjNZR967dhQj5m7wxw==
X-CSE-MsgGUID: 9cdicxMaQ8OBXCQdm+vMog==
X-IronPort-RemoteIP: 104.47.11.41
X-IronPort-MID: 2953564
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-vi1eur02lp2041.outbound.protection.outlook.com (HELO EUR02-VI1-obe.outbound.protection.outlook.com) ([104.47.11.41])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Oct 2023 10:11:25 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7S/9PxuYeWytbMt+sx4wsWcyK+bmdrGaVsaEsCNWFjyKEnfrtZWLDLFxDG5oOWTKGy/kRj4/gOA85fw+zLjKC2/FtnWteSTp9ilLEh8HK+CoxwAWwKkeJfDkEoenyG8g/z3SAbCZaKzwF6crSy4GzootA5CyxGYp0rsc+ueVHIsmj0XJJ+Se5nork+C7oES6GysejtQsP8oxbPWF620kfJnmd7x6OWvMWb72JSrw8KMOXUxj2bqUWJj8gnbe9JGttmScd4k4cE58oKspZ44xmfI3fJ3qcdWMKD+KOLUz2/MHwEzooR4L1EkaG4e2bgB5BGXHOM4u45AQ5ZRGVhPWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ie1JoNp/hmm6N8rXhWQgPK9Ax2S8yIGQn9pVHM08ObE=;
 b=FvOHOLaxSZ+YO7DX80ydl6A1+NlqfxmUHqbgF/bCXji6q3eEudy16m6ivfqwzdj3aGXoSm7QCCJ+IcNdfNeYlSK4glGEhULMQpM0Kmv0B2efcukGyVjHBZB+bGhPOGrebnXnWBRPZtk8qZtvdnev0qGMsX432v2OTyq7GtfDk0/gyd5BZSk3w1vOIweH2d+EdXSmZMtoNzwFxi8KUKEVKgmeQmZC/8hB9Xzc87hD/KeRxNKrBeUzV9WLVH0B0KTzQO/0ZSUOzk7BUz395rarMBZqpsSuuV6t+OvkosEpK5SSb6wedJ7yX3sk0xkoayb6phCEc7hxaGyAh1fCR1Iu3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ie1JoNp/hmm6N8rXhWQgPK9Ax2S8yIGQn9pVHM08ObE=;
 b=j9ltwqCBLjg7BHgHLhHjP8lPvmT7Mh4DC/HX21YQk50ek8GLszU16pve9Q+uOZtxkCPy7+D7FDCSZ5bwkj79a9kBHYkQ02OFiWWrgaWGOZWoFDpcFtNzjdkF8wr/7/WjuPwcodz8PWStGWti0Ci9cHrM2lJvnsrDm02nZtLXvcM=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by PAXPR03MB7984.eurprd03.prod.outlook.com (2603:10a6:102:21e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.22; Wed, 18 Oct
 2023 08:11:22 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 08:11:22 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquHPX51oCerkipYa987+LLjg==
Date: Wed, 18 Oct 2023 08:11:22 +0000
Message-ID: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|PAXPR03MB7984:EE_
x-ms-office365-filtering-correlation-id: ced17ff1-b116-4c65-c7b1-08dbcfb1d11a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +NatXYtelaecN/QpOzx29KYhYMKiEWZGDeH9qdmvSRxzFzUE/U9cgkPoC8c7antRHYgQ+ub7IGxYy176+6XKFnuRUfKMMdlt4dwlOFoXSqdVHC0WN8G6NN8jmJuAn35tMM3QlOWAS55MO2Vutq3JqAvnAn1ImifiIicd2VNAq/bK95x6BKwd9rVpFjCnjMbK0WIhFup556Q2tBRAHptRmE+c3uKlFkDQML7W22A3VSD+GQL4wAk7DD67SVIPOIeXlsmGUrsDlEODY3nfKrc5cfRNF+duXm9VEUFikUe6PaiKRkb8cft4aWfkNAORkMGtmdrfWK/cvjDJN/QpRZzaEDBXD7lNMKTu14LCMhiKOAwas2nFpjJYl6eyptfzWBsvN77M2M9PRRlm64U2c9WPeTtl3DhiiiYXJyyTIdXFCxoqPt9nz30ioM9Z8XqNAegCZnJGJOZp4g6Yw1CZKD1vrQrCnwe/QWaz48I4zBYfvNBErsmyHSIXhhnbCBHTte1VsKK4e9P1gahs3tkEQaq7Li7vTITcvdzHwscld9r6C16CR9smIfe62UURjF4OpMXWEO456tA3yZfEQ6jx0KmWwVxeme5F0JANkyd1sD+NyLxomMRiik2GD+RP0gVH2iTWjkYaoZggWm4mPFJcO+tAwbpq9Id/ozumlEL/s127hq4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(346002)(376002)(396003)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(26005)(2616005)(71200400001)(478600001)(6512007)(6506007)(4744005)(2906002)(6486002)(8676002)(8936002)(91956017)(66476007)(64756008)(66446008)(66946007)(76116006)(66556008)(5660300002)(316002)(6916009)(41300700001)(38070700005)(122000001)(38100700002)(85182001)(85202003)(36756003)(33656002)(86362001)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmo5ajNUcTcrd0dicmpIalA2S2NNdExrSUFMTXpKZWQ1dkQvRHk1U0d2YjMv?=
 =?utf-8?B?TmJZZTQ1U0o1VXlxVjVsNXdUc0dkTFBnbU1YeWpvT1U4OEpKekxaUU1SNEM0?=
 =?utf-8?B?T3F5ZlZIdkZjR2oyUXFXV0xTdVJHZmNlSHFMK0tWTjYyNVhMa0RNd2R6dExv?=
 =?utf-8?B?N3ZwUDd4ZTZiQUd0dXIxR3AvYUVPKytpZWlQdG1UZ0pQelRFQ3pQZ24xMlBm?=
 =?utf-8?B?bFhaSXFtMGlnbDkwRTA1MUFNVDArOUszQU9melFpb21rVHlUUXVrSFhDcmFl?=
 =?utf-8?B?RHlwM0hudTVSZVJjeG4veGtrQjM0OG5ZdTdWekE4bEczN3NOZkZNbGZYaUFq?=
 =?utf-8?B?S0ZXcjhndzBnT0YrQVdyS0JSVFRVWXR1ajdkZlFpdTBnTXdBV3Q2enAySzI4?=
 =?utf-8?B?TTd3MGtaU2FwUDBjWDU2VSs1QUtHTGlHY3UvTUJqbldHcW95SE5hMWtDRHpE?=
 =?utf-8?B?V0kySXgzemw2M2lNYlZ2cEQ1MjloWHBNcGQ1NWpZU1d3R0EwSUt6WmZKL3h5?=
 =?utf-8?B?MmlBWDdCM3FYemRQV0pkRTVWZVlHZllQWWN0Wk5LRTZkUVpYTTAwRmRONzV5?=
 =?utf-8?B?bG1EN1NMdm9BWXVSNGxaOG9NRUNMQk5xeXhiZi84RkY0d3hLbTRRNjFqb1BM?=
 =?utf-8?B?RnNhWkQrSHdVYkd6czBhcWRPTm9BUFpYYVRNakpnbGVLUm01TmlDM0NwN05z?=
 =?utf-8?B?aTB4ZWRJbXIwdGtzK0IrZUIrRE96TXgreUdIOG5yalRwM0lGOVBaUXlvOExx?=
 =?utf-8?B?b0VvcFJnL29YVlRDZThGa2ZTZWdSbUI0Q0RZSU4zcE1tQmhCM3BDWlQ1ZFNo?=
 =?utf-8?B?U3NobStWSHBFa212cUR3Z0ZHdVc2QUVLNjQ2Y0hEZnk5ZHYvQkpBMlhBcE5i?=
 =?utf-8?B?cFJMN2Fqc2lsazEzU2FyT2h4Z2J3RG1TbFo4U2lTUlpWRDhKd0s4OHRxU1o2?=
 =?utf-8?B?Vm9rMHNtYUhVODY5TGdma0R6cG1RNDJkd0I1R0lmU1hobThjTS9WKzBkT2pK?=
 =?utf-8?B?Nkhod3J5Qy9IUXMxT2NidVhCdjNVTDdjeDZOZHVyOCtIeVM4aUhZdU9zN1F1?=
 =?utf-8?B?R3gwMnFsRkk3Y0ZXb2Z3ZGUrcEVrd2dpUVlvc1pPYlh1NWpEd0FUc1BEaTl5?=
 =?utf-8?B?TUdxaVFWZkNSVHJwQm4raHY4QmxYT0MrZmdyNXJhbWZNTUJkTFZ3ZTRrYzBY?=
 =?utf-8?B?dG1odFpTcmR1eEJXdG1pbVZBZ2hENW52V1UzNjFiK3NnTlptVklaYldoRHRi?=
 =?utf-8?B?YUpncTJHd0FydnpIWnF2a1ZCVmR2YTI0ZEZzYTZhMm81OUxOZHJrTnlrZkRJ?=
 =?utf-8?B?RC9VbnlTN091bm9ldndKZkRWM0UzM2lTVGVYUnRmYlN3T0cxc2VNeEpMRVIv?=
 =?utf-8?B?RjFER2JSUTlPVEhMbkpqQm9TNXdmSGM0alpvMHlMODV2QWVhRkJxVlViNlFM?=
 =?utf-8?B?RXBxbEIxTko1Rm85NXRRdExZTEw5YVNvRXlpb0JUN3lBNmNlcGlaSVJnYzVF?=
 =?utf-8?B?UUZGK0wrdVBGMzJXOGwrbkk3SzhnT29xUWp1SkkzWGo2eThoL1U2blZ2Rnd2?=
 =?utf-8?B?bThtL2pyODJYU1M3cVV4TTd3T1Vac2ZZaHMvbGJPYStCSFQzOUN5ZW52bVBj?=
 =?utf-8?B?TkJEWlZ5cCtjMVBBaVh0eTUybndJNXhEYW80UERUa0hoOURLRFJCNlV2ZGJq?=
 =?utf-8?B?bmhqc0Q0MXJ5NzZxYWVreVVNZDlUbmVXV2xJSnl1QWZ1ZHJlN1VYOXRkblN4?=
 =?utf-8?B?S2VjOExacTVjbXNUY3BqWVQveHBYZWovL2tJbTFUbnNWeWdMT2NrS0dCaVpK?=
 =?utf-8?B?U1pJbnRuYUhEQlVCcXZTVlRrYUw5Wk5hUzk0TksyeHh5UG1TSjlCZ3MzL29o?=
 =?utf-8?B?Q2tUbmhCK29JZnBUQXcybmpUS0cxTStHQUpwR3ZTOXFIdTRKTW1uVGNteURn?=
 =?utf-8?B?MXpQMlRIc056ZHJzWTJ0eXVaeE54QkVseC9oLy9LZlZpU0xDaHpoNHpka0sy?=
 =?utf-8?B?bjByTFZtb1QrUVJGc0V0c25nV0NhVy9ISVZRVmY0RXk2OGNiZ2w3cHA1RVQ0?=
 =?utf-8?B?VGs4LzA4WXgreWM3eTBvVXVPUm56RWkydUVaangxS2ROTzRPcEpwVWJ4RE9D?=
 =?utf-8?Q?KbBkrKeZeEE5rwZprgdVB1k1+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <254002558C70AE458F0221F9618F0008@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: USlVJZBuaYYTFUMfNEFD+jXghFiMK+NMOfZN2KIysUoQBejsQCuyUNTljjXliw5T9BWnSgYGQQYseKM1x2p9lJZYnwSP0Vpm2w8npko01Xh2zrlD950gEJqpDAMxr33fCL1fBAEL6ZUAJJDQCSIzUlBVdoDvWrZQiIKJ9hXAEeOO6mvMNDnWG4LMTX3bLmETrAaoiKInJXfyWH1+jua/3PhuZKEE9xaxDRt9KESob7tqf5CsdSgyzkKqePLen7nrRw269xbsUjlkJQVvjwiaMAH172uAr3P35T4SYPZkDUqlvLXODxbD0Zr1iPBj6DAg31BPM9ty8kWGnfz5dDrN4uovusWrRcZcn889lePQzsSvkzqSPIDpG7pVr605/Oz7W24L8uixxkpGse53P/lctcsjB91TDwEW+Ip1wcbDK2b56/kKs73gVKwpUg5YP0KhDN47pYDJlj7jeBNSkaf1dZ0lO4jlATmSfHwIlF8pmPKGlUXNANrKsOayYGl+fXbXDtajDr1wWj0AHlMe7c2SrOwE9x9pTSfmWaifXA9806eiiux5tcpD18NmwmvxbqkCB9R5XYOzZ6ktf2ci197IAe1tlhue/IEx+kGJVBVQsnDHHxdlXXZJ2o4kSWF3Y4b9SWBbcoRHxEy9Tq4UlymUwJ9FPH74vWdPRFFjfoaueuKVkesT6AUeERcrIB99Cgehr6I81DFDIOzdQgVjrUmtawKYzYUitpQe7dasHP8IanxSYS15Za69pWOieJoKFY+6+pMjQMgB5nD0ytE23sZdqso97BMKc8rvnOA1b1SAq1LEFfevi8I9iIblD0wZwEiyo4B8sQqKDfrrNL8DU1XjLA==
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced17ff1-b116-4c65-c7b1-08dbcfb1d11a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 08:11:22.6973
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eyJ/2x4AOi+pHFSJi/KZimNhuhecE5WFNNVVE9FZLnblor5y3uMnIHBgIVmFbEv6zmA4vSxh/5NImjo8zsUd/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR03MB7984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_011132_027853_0ACD9399 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SnVzdCByZWFjaGluZyBvdXQgdG8gYXNrIHdoZXRoZXIgYW55b25lIGhhcyBzdWNjZXNzZnVsbHkg
aW50ZWdyYXRlZCBPcHRlZSBvbiB0aGUgSU1YOE0oUCkgcGxhdGZvcm0uDQpPdXIgdHJpYWxzIHJl
c3VsdHMgaW4gYSBjcmFzaCB3aGVuIHRoZSBBVEYgKE5YUCAyLjgpIGRvZXMgdGhlIGhhbmRvdmVy
IHRvIE9wdGVlIChleGl0IEVMMykuDQoNCkluIEFURiBpdCBhcHBlYXJzIHRoYXQgQkwzMiBpcyBl
eHBlY3RlZCB0byBsb2FkIGF0IDB4NTYwMDAwMDAgb24gSU1YOE1QIHdoaWxlIEJhcmVib3ggYWN0
dWFsbHkgbG9hZHMNClRoZSBPcHRlZSBiaW4gYmxvYiBqdXN0IGJlbG93IHRvcCBvZiBtZW1vcnku
DQooUGF0Y2hpbmcgQmFyZWJveCB0byB0aGUgZXhwZWN0ZWQgQVRGIEJMMzJfQkFTRSBkb2VzIG5v
dCByZXNvbHZlIHRoZSBpc3N1ZSkNCg0KQW55IGhlbHAgd291bGQgYmUgYXBwcmVjaWF0ZWQNCg0K
SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQNCg0KDQo=


