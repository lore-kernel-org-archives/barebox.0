Delivery-date: Thu, 19 Oct 2023 08:25:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtMTE-00Dt3v-DV
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 08:25:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtMTC-0003xU-5M
	for lore@pengutronix.de; Thu, 19 Oct 2023 08:25:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wDgK52DvXVYnIDkBF9jLFPDrQhHjAkmk7OsQTaolDDU=; b=lEQ89gcDSP46/gedRMR49E1wtS
	94lK+uYdxTU9aFfP4opIz3RN49kaDc2/rnXsoR17dO/B3aizQLy3NTXnBo2IpJktdIlogY/ystTeo
	vBPcXJcLSARyfv2Tc1+zdUT2Es222Y6o5WNa9gLv4Pj8lB8tQ1xJci5UzJnCtEiqCwQtnr3EY5h4x
	MFo6wBBVR7+5W/O9EyxfzTs7IHKA136b0DoQToeXsn56Y3ei7Ga/Gu5k0UqNDIkJUS35c0UrHFVQa
	XAST99g1QlIWVXHhYQRBbxTTUZCRIpX+iC5YsWI3qUiXue7yd/dYUTWU+WxtBmGWBBqB4nNUanHl4
	IHUjUwFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtMRW-00GV9u-04;
	Thu, 19 Oct 2023 06:23:38 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtMRR-00GV8i-21
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 06:23:36 +0000
X-CSE-ConnectionGUID: gsVpf4pdRcSoxaG/cn+wSA==
X-CSE-MsgGUID: jH7H6GCFRHCndjDz99CrdQ==
X-IronPort-RemoteIP: 104.47.12.51
X-IronPort-MID: 2955578
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-db3eur04lp2051.outbound.protection.outlook.com (HELO EUR04-DB3-obe.outbound.protection.outlook.com) ([104.47.12.51])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Oct 2023 08:23:30 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RO2eqrk6M+C56F8UDLjHQF6MGhJafg0/ImZj6W8DiPNhSvRDpRSQ9DmCABHxxbDw+rEs6PXblM7IgVyH7jgZq0CbIwhAS9LjO8Rvz6yJ/3aFIax06T1mp/RO3S26r9xUfuzZiII9PxCm6JYqbZc/dhTJHMCPS4BQUpUHYrcGQIghFkoXdZu01cEQtuZugu4kdcgynDeTZ3qvG/EkST2pBkgEJU/TMh577ELwG4qOVd3S0nqTrFxoF37M8jXuJ2+K0VvsPV7OesR99vGfcr8i70lXGhQ8DyiyAMF6FLMcwHdXPm13SY+ZlqqkChM8n1kTFGRiVfS3SclByDIdJYLbpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wDgK52DvXVYnIDkBF9jLFPDrQhHjAkmk7OsQTaolDDU=;
 b=j31o2zhGukaMElI8qY9LgKi8MDeREdaHoBgr/x1aDENhn8x7D9x7o719Jii+YIrOhy6aY0155TItYdO4RXubGFte6IzWkLRyjnJMgPB7dR3yMmAa9yys7Xci1HoMtYUZbP+Y4i7coeQi5F6eQ3iV/VcnTc9tH7K/jufXPlJC4bXpPWFBSD5Z2XdgGVid6v0Wt7tCxR4Lp82yTZe11oC3+6UdYbpkkyry/cCivgagmhFEDF5cqXqgUyTDInoEGT0R0bh3TKqHKk38dAj0gCOUlRE+EHkqWEfYn1HbSIuRVaZLVx2GoQS+uTOuVwOEh6++SsX92ojJxP0oDU7TOKtSFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wDgK52DvXVYnIDkBF9jLFPDrQhHjAkmk7OsQTaolDDU=;
 b=idsRRe+jv/SIuCRachZ2/z11uCiE9ebgWfGnkdO1pt+PQ1GliffJzfsq4J9JpR5S1f88KEbpNlxInZfplEtROeqlcplkBns5sH6y0HWTK9x0ji90zCYqj0qfC5y2bCXWrni7UdXHTEC/JXQSeMqkh1YWexgh5qDUfC3l9oBkArU=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by PA4PR03MB6894.eurprd03.prod.outlook.com (2603:10a6:102:ec::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 06:23:27 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::2ee9:4922:9bd0:c317]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::2ee9:4922:9bd0:c317%3]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 06:23:26 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquCCRtS0xfVUiOONoVMdKA3bBPQZ8AgAAnvoCAABFYgIAACVyAgAARXwCAAAhzAIABCGQA
Date: Thu, 19 Oct 2023 06:23:26 +0000
Message-ID: <F3658CA4-8589-4EEC-A059-DBCE34116EB7@datarespons.no>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
 <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
 <56A3F2CD-4EE3-4157-B821-2BD8917155AC@datarespons.no>
 <2df69458-e538-1505-13dd-3ba87e697f3c@pengutronix.de>
 <2FCD3543-D1C9-4A48-B325-19F51C84FFC8@datarespons.no>
 <70fa4042-3978-18c3-e5fe-23ec14122c4b@pengutronix.de>
In-Reply-To: <70fa4042-3978-18c3-e5fe-23ec14122c4b@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|PA4PR03MB6894:EE_
x-ms-office365-filtering-correlation-id: 47fc3445-1768-4f6a-234b-08dbd06be7a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NEgSN6Q94ew6i8CaZqu8oAOcjz3SGBUiX9c7DCANsrfZNJYU3T6pzlV/is/46QYqwK1HR0KiF7sHG7+P1QZl8A6QiTcDtVvtsN4AH2uHxSUNLfukcLlq49jjhJKhzgl3PbBaQHLW5/jr2KpKIySm/jB0aZs0d+Ue9VNJRnZqoVU88MP+R72TEU7NNaSi0whcTUKu4W+1ZV3n7ISeFqgFPLX4iwBZc/toYassHCinlY4Mg6x3G6QKbSUQHUF9At4U5AapOzjxtCe6V6pbIDaKLrNFnXwUp/CoYO+hLI3/eVCtfP6c3HKIx0NQFzOKGOfnEya/0CgwcGwHkLmfbDFGyH7FraYEh2q/YRCNzp8bW47Q087ZzRA8qu0i2La62xils4xtGDexSO3Vuf5ZvQp8714i+3PIQcQtBJbU1EM2VYnnwAEayk/RRK1x7YI7Ldq1u5zBxjaTfJ2WsuTmi7RaqEH4teFt2EvcTgfP/w6Pa1SP0vVMOsaE8+McHwJfLCa41hU4aZpXe7hhWGo3/CLrDadSxp9yNGOIcHUBRctirDuBE0DwFDUJ0uXPBDbZu2lXCJWIgwDsLTt1K/6NPOjhp1TBzrStKPfMcBS65/ieAgj8QzC+/HOVaB8a/4oNCEh9Q5EMwSCPiYqnBzwKgK/KMaTPYzUhh4/ZQpIxlR5bYfE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39840400004)(376002)(396003)(366004)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(71200400001)(66574015)(2616005)(26005)(38100700002)(478600001)(4326008)(8676002)(8936002)(33656002)(5660300002)(41300700001)(86362001)(2906002)(38070700005)(85202003)(966005)(6486002)(66446008)(64756008)(66476007)(66556008)(66946007)(316002)(6916009)(76116006)(36756003)(85182001)(91956017)(122000001)(6506007)(6512007)(53546011)(83380400001)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHRjcUpwUEZZTElYOUc0NDFFODNTNFNwZXVoZWVnV2tMdmhxZ1BFcERsQXFH?=
 =?utf-8?B?VWQvRXVwNnd6RlRHOVRMS252ZmtIN3VNeTI0ZFpIOUMzTlp2d0hISDRybGdn?=
 =?utf-8?B?dTRTd1o4TFp5OThvUlNYbjVYSXZQV25paXY5R1NoSDB1ZVlkbVZuRSszZzZ0?=
 =?utf-8?B?bzRCV21PK3JtN2YvYy9aK3RlOUszclZXMjRnU0FEWEd2R3Ryb1pMblBtNWxm?=
 =?utf-8?B?cFFLWHBWcVZ3WEhJNFZnOVZ1c0Fwa3VsQjhPdDZ1TXZ4d0t5QXlFZC94c0xq?=
 =?utf-8?B?eXpWOVNiT0RvVy9KVjQzRCtSWE5OSHh4VXptKzZsb21PMDNJcS9yaUhsUEhs?=
 =?utf-8?B?MlM3aUdtOXdFSzVmNlFGSHdqa1ltbkQrS3RUbFVMdjFzWnVaRXBVTDdvVUdk?=
 =?utf-8?B?MEUyZ3Rudyt0QVBIRHpzV21sY2srR3NaNVJoVjhsaE1KcTNsRmdCRTN5MzU4?=
 =?utf-8?B?ek50a3N4RCtSZEZyemNjcmZYMVZVMmlWNEMyNWw1eWphYkp3dWU0am50TGdP?=
 =?utf-8?B?TG1ZWGJpLzlDZXVvYXBYM2I2b0lCZldoUFpjWWhFbU9lTWtYaGJ6U042ZnRq?=
 =?utf-8?B?bk5RV2lQeXNXTkRuRTFqWnNRQkRQOSsrSTJETHZvWjJYWUZjVnFoTldTU0M2?=
 =?utf-8?B?Y3p5K0R3N2pnUmFhTy9QbGpsV1pLWEpxRXlRZllUaGZyeFJzRkNhYU5uUFZ5?=
 =?utf-8?B?S3hXM2crcmM5UVpBY3VoYjM1ZkNhTHFicm9PYTMvZ3NqL2dFZVI1Rm1FYmhH?=
 =?utf-8?B?RG1yK0ErcjlQOWZqVHpxUE9raUt0eE1zckM0Y21VYStheEJEOGxCYm1Tc05T?=
 =?utf-8?B?bW1QWXdnanh2Zkd5SDNxMFlNU0FFSkx3eUxJeGhjT3FjWmcvNVJOQ0kzNkIv?=
 =?utf-8?B?NWQ5YUgxU3NrMHl1UEpVL1lvZVhsc3VJL2xhb0dTT3BOUWlZQ2d2VVhnQ3lq?=
 =?utf-8?B?T1F3Nm9vdzU5UDdRb1c1QnNZMnBpc3N6YjJzUUU2Ui9tVnNhRXdxOXY4S3Nj?=
 =?utf-8?B?WjZSY2ltVmVUaTNWUGNyZjF0QVM1SHlaUUFRbnVvN0djY2VnVExaM3dJYjBU?=
 =?utf-8?B?OXhObTE0dzB1WXBua2RCdUgzbkZQcGpicDc5cUFRMFVmUUZ6dWs2clo4Z2hh?=
 =?utf-8?B?NVIwMEVEVG9JSUZ2OTZGOWxVUWQySGxsQmt6bmREQ1hXNFFxcGRBMTgvVWhY?=
 =?utf-8?B?MVk2RUdFNWZaOWYycjlnaG9LUklFbjREUEhzSVgxNVU1a2l5djg2NWo2R2pQ?=
 =?utf-8?B?b1NnaTArRFlMVlVnZWQvcEVrcnVIRGg5aVRMc2FocW1JOHI1Wmo3emRMYzBj?=
 =?utf-8?B?WUFFMGpuVDJCRlY5aDVpQ2R5dmErTWowZFJlMnlIVE82Ynd4VS9tZWE1dFU5?=
 =?utf-8?B?SjlwT05XS0hvbXl6RTdPSFZTbU5EZ3dhUGJwT2JHZGs0VlIzb1VPbStGUTBG?=
 =?utf-8?B?WFpmOHRWbjNkU2JLNVk0d3NmSm5PTk5rOGRwbitNR25UOThVOWZYQm9uRDg0?=
 =?utf-8?B?NjlTSlVjQzgvRUNzL3hnQklSN2RlMjZ1NTlRc3VvT2ZQSFBNVkVreHJvOTcz?=
 =?utf-8?B?eHE3dVFhV1hLU1MyUTRsUHhpalBCWGVKbHRlU1RzaDdYYm53em5NcWdyc3N1?=
 =?utf-8?B?dFlER2pLSit3V2JoR0dJZHRhUlJHVUdVK1JiS2tWSkNnTFc0NWVLRURwaVVL?=
 =?utf-8?B?WG4xajJvaDlKbGpYRUhDOUpDcWxDc1lTK1ZzK243WWRTQWlJZ0wrazcvbFRV?=
 =?utf-8?B?QmticnJGVGR6eDVwNzhZYWZyNGJXZXNjeC90TEp1L3JWWkgwNTdaNWpadnZm?=
 =?utf-8?B?dnZPWkI5OUJWSVBEUnI0azZpalhpV3krV29Xa1g4a0NGQU11ajJtQ2NtWjFi?=
 =?utf-8?B?U2M3VTR4RzlTUGJLWkpsS1M5eWNvU2dTTkFjMEJyVnZBOS9zZ0NLUStZL2hw?=
 =?utf-8?B?UjAydThmRDgrQW0rQ2xMYWliaTVxcEhrYnBTRzkvNFhaTE5TdmFDeVMwaTRL?=
 =?utf-8?B?cDJpdW0xVmMwVUhISTB5bWRmTU9DTzR6ekY2dUU4OFJnRS9SRXUyajkvQjJO?=
 =?utf-8?B?OWxlUEZnMXFobStFUzVkZ1FkUWEwVHVvcHBIaUhnajcveWQ4RnhFdjdmTW91?=
 =?utf-8?Q?dQbo0SJ+RQ3qGtjz9H6cXsH92?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <42310B1E0446AE4D902043995232BF71@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 4bol4EwQPRX0CLwmpr+iCPUAUu8IWe19oqNSi8VyBYwiwYFu9+bk8VzFuxuRtPp30Jh2F1pP38BtlPKpk2ZeUkRiifogg5X5WCfH/m0NWZfT6TT30Y42fz06arfjrD5F3XTLm1EvXjonJBYPHw0aM+wQSb1o8/Z24ZU7lCmk7g8r6is+LKvn5Hi+7jehe3rB1XaCvm5nvqD0yt2krV+Plw7NmEVNapnjBrlKMwyxmrheZXl/2FEo5tX6EWxQJFJU2KXPFI99AWmF2OH8B3rcDnbngxaIvuHChkJ4JYyHAz/7T/QcA9ZNjYnVigAcZp5e3kwpJrFN7tWTN4YZqAVcCHOBXCQhjpXBveG1B93rz+aW37BE+k7vMLaxR/osjSLPxJnzbibYaW7/yRg3LtXhjoOjIzQKw4xv4uIw1ENZbLjQIYGDci70CYyCo6x1RIvzEQd5rXlv2yEydMp3dQJkqjRCmZkU8oWksiSpVMlem/LxAxyK/u/q6C7oMXNLD9cbpokTnTPZZJ7Pn+pdG8ImPUGBr9in+pu3+zmHwYKfrxX6DiTTpKiDCa/kPJyrOIFHMCRJIHT2TILdPDhUjAi27erBnQa3q36KCnvYGe2MtDR6Ud6iHAmKXRWaaI+0npuXX4hxPLfRmBty1Ewx+javQnnzOVV3XcTXb4jNzOt/JZgYSjwDidheix5XrGuCEhP/w6XIrTxkUFYW0Js1aju26gTQXsxzalYDjsYwl/QIzVEOva6R38TMjPlPJ0aq22y5yFW6/onQ6UPx8H2ibg5LnAa+EcxcJel9gzBp+ux3Usj/r+wht1Ann4qmkv/Bl3ch3Sw5HTQbdDJhPjj9p1ndRDxEhvNbmLSa/jx6Evw8w/XnY4GkXwW1IBs64EOU8HMx
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47fc3445-1768-4f6a-234b-08dbd06be7a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 06:23:26.9151
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sV5Hlygnezm6aiSIDrKPcofgoxySKD6/DWDH0NZc+mJ3u0aaJu6+zqrjyB6h3IUVCFNVVqawQGtQq3dA4N5Pdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR03MB6894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_232334_170627_F6FA921F 
X-CRM114-Status: GOOD (  20.95  )
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
Subject: Re: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tm90ZSB0aGF0IE9wdGVlIGlzIG5vdCBidWlsZCB1c2luZyBwb3NpdGlvbiBpbmRlcGVuZGVuY2Us
IHNvIG9uZSB3aWxsIG5lZWQgdG8gc2V0IENGR19UWkRSQU1fU1RBUlQgdG8NCnRoZSBCYXJlYm94
IChlbmRtZW0tT1BURUVfU0laRSkgbG9jYXRpb24uDQoNClRoaXMgaW5jb252ZW5pZW5jZSBtYWtl
cyB0aGUgdXNlIG9mIHBhc3NlZCBwYXJhbWV0ZXJzIGxlc3MgcmVsZXZhbnQgZ2l2ZW4gYSBjb21w
aWxlIHRpbWUNCnJlc29sdXRpb24gaXMgcmVxdWlyZWQuDQoNCkhhbnMNCg0KPiAxOC4gb2t0LiAy
MDIzIGtsLiAxNjozNiBza3JldiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRl
PjoNCj4gDQo+IEhlbGxvIEhhbnMsDQo+IA0KPiBPbiAxOC4xMC4yMyAxNjowNiwgSGFucyBDaHJp
c3RpYW4gTMO4bnN0YWQgd3JvdGU6DQo+PiBUaGUgQVRGIGZvciBpbXg4IGlzIHF1aXRlIGNvbnZv
bHV0ZWQgcmVxdWlyaW5nIGZpeGVkIG1lbW9yeSBsb2NhdGlvbnMgZm9yIGltYWdlcyBhbmQgZGV2
aWNlIHRyZWVzLiBUaGUgQVRGIGl0c2VsZiBzdXBwb3J0cyB0cmFuc2ZlcnJpbmcgcGFyYW1ldGVy
cw0KPj4gVXNpbmcgNCB1bnNpZ25lZCBsb25nIGFyZ3VtZW50cy4gVGhlc2UgYXJlIHVuZm9ydHVu
YXRlbHkgemVyb2VkIG91dCBieSBhIG1pc2NvbmZpZ3VyYXRpb24gZm9yIElNWDg6DQo+PiANCj4+
IFJFU0VUX1RPX0JMMzEgOj0gMQ0KPj4gYW5kIG5vdCBhdCB0aGUgc2FtZSB0aW1lIHNldHRpbmcN
Cj4+IFJFU0VUX1RPX0JMMzFfV0lUSF9QQVJBTVMgOj0gMQ0KPj4gDQo+PiBBcyBkZW1vZWQgYmVs
b3cgdGhpcyBjYW4gYmUgbWFkZSB0byB3b3JrLg0KPj4g4oCU4oCU4oCUPjzigJTigJQNCj4+IA0K
Pj4gVWFydCBpbml0aWFsaXplZA0KPj4gUnVuIGxldmVsIDMNCj4+IEluaXQgcG93ZXINCj4+IElu
aXQgRERSDQo+PiBIYW5kb3ZlciB0byBBVEYNCj4+IGlteDhtcF9sb2FkX2FuZF9zdGFydF9pbWFn
ZV92aWFfdGZhOiBFeHBlY3QgT1BURUUgYXQgMHhiZTAwMDAwMA0KPj4gQ0ggZTJhNzE3NTE1MWZl
M2U4NDIxMTY5OTBlNjJjODY0MzM0ZTFiYjAzMGNhMTQ2Yjc0OWQ4ZTZiMGMwMjQ4MTM1Nw0KPj4g
SUggZTJhNzE3NTE1MWZlM2U4NDIxMTY5OTBlNjJjODY0MzM0ZTFiYjAzMGNhMTQ2Yjc0OWQ4ZTZi
MGMwMjQ4MTM1Nw0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgQ0FBTSBlYXJseSBpbml0IHN1Y2Nlc3NmdWwNCj4+IGlt
eDhtX2F0Zl9zdGFydF9ibDMxOiBDYWxsb3V0IEJMMzEgd2l0aCAxLCAyLCAzLCA0DQo+PiBOT1RJ
Q0U6ICBEbyBub3QgcmVsZWFzZSBKUjAgdG8gTlMgYXMgaXQgY2FuIGJlIHVzZWQgYnkgSEFCDQo+
PiBJTkZPOiAgICBibDMxX2Vhcmx5X3BsYXRmb3JtX3NldHVwMjogYXJncyBhcmUgMHgwMDAwMDAw
MSwgMHgwMDAwMDAwMiwgMHgwMDAwMDAwMywgMHgwMDAwMDAwNA0KPj4gTk9USUNFOiAgQkwzMTog
djIuOChkZWJ1Zyk6bGYtNi4xLjM2LTIuMS4wLTAtZzFhM2JlZWFiNi1kaXJ0eQ0KPj4gTk9USUNF
OiAgQkwzMTogQnVpbHQgOiAxNTo0OTozOCwgT2N0IDE4IDIwMjMNCj4+IA0KPj4g4oCU4oCUPjzi
gJTigJQNCj4+IA0KPj4gVGhlICJiZXN0IiBhcHByb2FjaCBpcyBsaWtlbHkgdG8gcGF0Y2ggQVRG
cyBpbXg4bVhfYmwzMV9zZXR1cC5jIHJlcGxhY2luZyBwcmVwcm9jZXNzb3IgdmFsdWVzIHdpdGgg
dmFsdWVzDQo+PiBoYW5kZWQgb3ZlciBmcm9tIEJhcmVib3guIEFkZGluZyB0aGVzZSBwYXJhbWV0
ZXJzIHdpbGwgYmUgY29tcGF0aWJsZSB3aXRoIHVucGF0Y2hlZCBBVEZzIGFueXdheS4NCj4gDQo+
IFRoZXJlJ3Mgdm9pZCBibDMxX2VudHJ5KHVpbnRwdHJfdCBibDMxX2VudHJ5LCB1aW50cHRyX3Qg
YmwzMl9lbnRyeSwNCj4gICAgICAgICB1aW50cHRyX3QgYmwzM19lbnRyeSwgdWludHB0cl90IGZk
dF9hZGRyKQ0KPiANCj4gd2hpY2ggaXMgdXNlZCBmb3IgUkszNTY4L1JLMzU4OCBwbGF0Zm9ybXMu
IEFGQUlVLCBmdXR1cmUgU29DcyB3aWxsIGxpa2VseQ0KPiB1c2UgYSBsaW5rZWQgbGlzdCBvZiBo
YW5kIG92ZXIgYmxvY2tzIHRvIHRyYW5zZmVyIHRoaXMgc2FtZSBpbmZvcm1hdGlvbi4NCj4gDQo+
IEFueSBvZiB0aGVzZSB0d28gYXBwcm9hY2hlcyB3b3VsZCBiZSBiZXR0ZXIgdGhhbiB3aGF0IHdl
IGhhdmUgbm93IG9uIGkuTVguDQo+IA0KPiBJIGFtIHN0aWxsIG5vdCBzdXJlIGhvdyB0aGlzIHJl
bGF0ZXMgdG8gT1AtVEVFIGhhbmdpbmcuIENhbiB5b3UgY29uZmlndXJlDQo+IHlvdXIgT1AtVEVF
IHRvIG5vdCBleHBlY3QgYSBGRFQ/DQo+IA0KPiBDaGVlcnMsDQo+IEFobWFkDQo+IA0KPj4gDQo+
PiBIYW5zDQo+PiANCj4+IA0KPj4+IDE4LiBva3QuIDIwMjMga2wuIDE1OjA0IHNrcmV2IEFobWFk
IEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Og0KPj4+IA0KPj4+IEhlbGxvLA0KPj4+
IA0KPj4+IE9uIDE4LjEwLjIzIDE0OjMxLCBIYW5zIENocmlzdGlhbiBMw7huc3RhZCB3cm90ZToN
Cj4+Pj4gSSBtYXkgaGF2ZSBnb3R0ZW4gdGhpcyB3cm9uZywgYnV0IHNob3VsZCBub3QgdGhlIGRl
dmljZSB0cmVlIGJlIHBhc3NlZCBvdmVyIHRvIEFURiB3aGljaCBhZ2FpbiBwYXNzIGl0IG92ZXIg
dG8gT3B0ZWU/DQo+Pj4+IA0KPj4+PiBUaGUgYmwzMSgpIHdyYXBwZXIgaW4gaW14OG1fYXRmX3N0
YXJ0X2JsMzEgc2hvdWxkIGRvIHRoaXMgdXNpbmcgcmVnaXN0ZXIgY2FsbCBwYXJhbWV0ZXJzPw0K
Pj4+IA0KPj4+IEkgYW0gdXNpbmcgYSBxdWl0ZSBhbnRpcXVhdGVkIGlteC1hdGYgdjIuNCBhbmQg
b3B0ZWUtb3MtMy4yLjAuaW14IGluIG15IHNldHVwIGFuZA0KPj4+IGhhdmVuJ3QgY29tZSBhcm91
bmQgdG8gdXBkYXRlIHRoZW0uIEkga25vdyB0aGF0IGJhcmVib3ggd29ya3MgZmluZSB3aXRoIG5l
d2VyIFRGLUENCj4+PiB2ZXJzaW9ucyAoZXNwZWNpYWxseSBhZnRlciBodHRwczovL3Jldmlldy50
cnVzdGVkZmlybXdhcmUub3JnL2MvVEYtQS90cnVzdGVkLWZpcm13YXJlLWEvKy8xNjM3MCksDQo+
Pj4gYnV0IEkgaGF2ZW4ndCB0ZXN0ZWQgYSBuZXdlciBPUC1URUUsIHNvIGlmIHlvdXIgT1AtVEVF
IGNvbmZpZ3VyYXRpb24vdmVyc2lvbiBleHBlY3RzDQo+Pj4gYSBkZXZpY2UgdHJlZSwgdGhpcyBt
YXkgaW5kZWVkIGJlIHRoZSBjdWxwcml0Lg0KPj4+IA0KPj4+Pj4gMTguIG9rdC4gMjAyMyBrbC4g
MTM6Mjkgc2tyZXYgSGFucyBDaHJpc3RpYW4gTMO4bnN0YWQgPGhjbEBkYXRhcmVzcG9ucy5ubz46
DQo+Pj4+PiANCj4+Pj4+IFdlIGhhdmUgYSAyR0IgSU1YOE1QIHN5c3RlbSB1c2luZyAzMk1CIE9Q
VEVFRV9TSVpFLCBzbyBleHBlY3QgdG8gZmluZCBPcHRlZSBibG9iIGF0IDB4QkUwMDAwMDAuDQo+
Pj4+PiANCj4+Pj4+IEFURiBjb21waWxlZCB3aXRoOg0KPj4+Pj4gbWFrZSBQTEFUPWlteDhtcCBC
TDMyX0JBU0U9MHhCRTAwMDAwMCBJTVhfQk9PVF9VQVJUX0JBU0U9MHgzMDg5MDAwMCBTUEQ9b3B0
ZWVkIERFQlVHPTEgLWoNCj4+Pj4+IA0KPj4+Pj4gT3B0ZWUgY29tcGlsZWQgd2l0aDoNCj4+Pj4+
IA0KPj4+Pj4gQ0ZHX0REUl9TSVpFID89IFVMKDB4ODAwMDAwMDApDQo+Pj4+PiBDRkdfVUFSVF9C
QVNFID89IFVBUlQyX0JBU0UNCj4+Pj4+IENGR19UWkRSQU1fU1RBUlQgPz0gMHhCRTAwMDAwMA0K
Pj4+Pj4gdW5kZWZpbmUgQ0ZHX05TX0VOVFJZX0FERFINCj4+Pj4+IA0KPj4+Pj4gQmFyZWJveCBj
b21waWxlZCB3aXRoOg0KPj4+Pj4gQ09ORklHX0hBVkVfT1BURUU9eSBDT05GSUdfT1BURUVfU0la
RT0weDAyMDAwMDAwICMgQ09ORklHX0JPT1RNX09QVEVFIGlzIG5vdCBzZXQgQ09ORklHX1BCTF9P
UFRFRT15IENPTkZJR19GSVJNV0FSRV9JTVg4TVBfT1BURUU9eQ0KPj4+IA0KPj4+IGJhcmVib3gg
Y29uZmlndXJhdGlvbiBsb29rcyBvayBhc3N1bWluZyBib2FyZCBjb2RlIGNhbGxzIGlteDhtcF9s
b2FkX2FuZF9zdGFydF9pbWFnZV92aWFfdGZhKCkuDQo+Pj4gDQo+Pj4+PiANCj4+Pj4+IFRoaXMg
cHJvZHVjZXMgdGhlIGZvbGxvd2luZyBvbiBib290Og0KPj4+Pj4g4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUPjwtLS0tLS0tLS0tLS0tLQ0KPj4+Pj4g
DQo+Pj4+PiBVYXJ0IGluaXRpYWxpemVkDQo+Pj4+PiBSdW4gbGV2ZWwgMw0KPj4+Pj4gSW5pdCBw
b3dlcg0KPj4+Pj4gSW5pdCBERFINCj4+Pj4+IEhhbmRvdmVyIHRvIEFURg0KPj4+Pj4gaW14OG1w
X2xvYWRfYW5kX3N0YXJ0X2ltYWdlX3ZpYV90ZmE6IEV4cGVjdCBPUFRFRSBhdCAweGJlMDAwMDAw
DQo+Pj4+PiBDSCBlMmE3MTc1MTUxZmUzZTg0MjExNjk5MGU2MmM4NjQzMzRlMWJiMDMwY2ExNDZi
NzQ5ZDhlNmIwYzAyNDgxMzU3DQo+Pj4+PiBJSCBlMmE3MTc1MTUxZmUzZTg0MjExNjk5MGU2MmM4
NjQzMzRlMWJiMDMwY2ExNDZiNzQ5ZDhlNmIwYzAyNDgxMzU3DQo+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTk9USUNF
OiAgRG8gbm90IHJlbGVhc2UgSlIwIHRvIE5TIGFzIGl0IGNhbiBiZSB1c2VkIGJ5IEhBQg0KPj4+
Pj4gTk9USUNFOiAgQkwzMTogdjIuOChkZWJ1Zyk6bGYtNi4xLjM2LTIuMS4wLTAtZzFhM2JlZWFi
Ni1kaXJ0eQ0KPj4+Pj4gTk9USUNFOiAgQkwzMTogQnVpbHQgOiAxMzoxNDowOSwgT2N0IDE4IDIw
MjMNCj4+Pj4+IElORk86ICAgIEdJQ3YzIHdpdGggbGVnYWN5IHN1cHBvcnQgZGV0ZWN0ZWQuDQo+
Pj4+PiBJTkZPOiAgICBBUk0gR0lDdjMgZHJpdmVyIGluaXRpYWxpemVkIGluIEVMMw0KPj4+Pj4g
SU5GTzogICAgTWF4aW11bSBTUEkgSU5USUQgc3VwcG9ydGVkOiAxOTENCj4+Pj4+IElORk86ICAg
IEJMMzE6IEluaXRpYWxpemluZyBydW50aW1lIHNlcnZpY2VzDQo+Pj4+PiBJTkZPOiAgICBibDMx
X3BsYXRfZ2V0X25leHRfaW1hZ2VfZXBfaW5mbzogd2FudCBpbWFnZSAwDQo+Pj4+PiBJTkZPOiAg
ICBibDMxX3BsYXRfZ2V0X25leHRfaW1hZ2VfZXBfaW5mbzogYmwzMiBQQyBpcyAweGJlMDAwMDAw
DQo+Pj4+PiBJTkZPOiAgICBCTDMxOiBjb3J0ZXhfYTUzOiBDUFUgd29ya2Fyb3VuZCBmb3IgODU1
ODczIHdhcyBhcHBsaWVkDQo+Pj4+PiBXQVJOSU5HOiBCTDMxOiBjb3J0ZXhfYTUzOiBDUFUgd29y
a2Fyb3VuZCBmb3IgMTUzMDkyNCB3YXMgbWlzc2luZyENCj4+Pj4+IElORk86ICAgIEJMMzE6IElu
aXRpYWxpemluZyBCTDMyDQo+Pj4+PiBJTkZPOiAgICBibDMxX3BsYXRfZ2V0X25leHRfaW1hZ2Vf
ZXBfaW5mbzogd2FudCBpbWFnZSAwDQo+Pj4+PiBJTkZPOiAgICBibDMxX3BsYXRfZ2V0X25leHRf
aW1hZ2VfZXBfaW5mbzogYmwzMiBQQyBpcyAweGJlMDAwMDAwDQo+Pj4+PiBJTkZPOiAgICBvcHRl
ZWRfaW5pdDogMTc2IC0gY2FsbGluZyA8b3B0ZWVkX3N5bmNocm9ub3VzX3NwX2VudHJ5Pg0KPj4+
Pj4gSU5GTzogICAgb3B0ZWVkX3N5bmNocm9ub3VzX3NwX2VudHJ5OiA3OSAtIGNhbGxpbmcgPG9w
dGVlZF9lbnRlcl9zcD4NCj4+PiANCj4+PiBUcnkgY29tcGlsaW5nIG9wLXRlZSB3aXRoIENGR19U
RUVfQ09SRV9MT0dfTEVWRUw9NCBhbmQgc2VlIGhvdyBmYXIgaXQgZ2V0cy4NCj4+PiANCj4+Pj4+
IEnCtG0gbm90IHN1cmUgd2h5IGl0IGFza3MgZm9yIHRoZSBzYW1lIGltYWdlIHR3aWNlIGFuZCBp
ZiB0aGlzIGltcGxpZXMgYW55dGhpbmcg4oCmDQo+Pj4gDQo+Pj4gTm8gaWRlYS4uDQo+Pj4gDQo+
Pj4gQ2hlZXJzLA0KPj4+IEFobWFkDQo+Pj4gDQo+Pj4gLS0gDQo+Pj4gUGVuZ3V0cm9uaXggZS5L
LiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwNCj4+PiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRw
Oi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfA0KPj4+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkg
ICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+Pj4gQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwNCj4+PiANCj4+IA0KPiANCj4gLS0gDQo+IFBlbmd1dHJvbml4IGUuSy4g
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
DQo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93
d3cucGVuZ3V0cm9uaXguZGUvICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAg
ICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFtdHNnZXJpY2h0
IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTct
NTU1NSB8DQoNCg0K


