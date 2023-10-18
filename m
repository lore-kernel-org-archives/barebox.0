Delivery-date: Wed, 18 Oct 2023 16:08:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7Dr-00D3d1-Ag
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 16:08:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7Dp-0006kS-Ol
	for lore@pengutronix.de; Wed, 18 Oct 2023 16:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RLS2GETtuUojv2byY3/cUle7wuccnEmJVTOqmQvvDfU=; b=LSO4rPgCd2w8/109Fdlnz5S7A3
	pmgKmHLtTT16qW3JOQTNa0tqS0Naer2wvO3YSO8o83WGqfGUK+lEvLFgZX0VUrWHPMXMFz0SrgVWJ
	Qb9bXDKSs6Nlmr6us7acaOKqtnlGmKPQh6LodgacE7/j36o+KASzZ+JYkJHzcYSW0lX9Alr/FYXpe
	m/8TWsLc/gJxXr5cxEUVGjcCWVUXW5KoE9/oD9KRt3LZwOq96kLaK563AlAi7uMxVLGSHlPIo8558
	sMCwwTYrzW0IdpAdei8KgphBrD6TcbM5GtCPjEPtg7NknMhfbiAtNya2guPIgcIB8ZYXOJjITBYfc
	QaYPjzbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7CY-00EqRc-07;
	Wed, 18 Oct 2023 14:07:10 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7CT-00EqQO-1z
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 14:07:08 +0000
X-CSE-ConnectionGUID: +L8VcWEFT/68pjoGjGaurA==
X-CSE-MsgGUID: yVPd9ZV2S4Gv9fUpYV5MkA==
X-IronPort-RemoteIP: 104.47.1.51
X-IronPort-MID: 2954581
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-ve1eur01lp2051.outbound.protection.outlook.com (HELO EUR01-VE1-obe.outbound.protection.outlook.com) ([104.47.1.51])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Oct 2023 16:06:57 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lc9WzvI8KsduT4p1hSJKHrboBWT9+xAU6WiLBGKYBAm3QMAZvcUbVhsgNdS0b/UutyXk8k2J+51uXRYWpRjD/rnQ4XXyxT+FeIZ1I5CS96BwlcLbmR5V5wRZSPuINNfEfvUz6SSQWrCvt/eyEe4BQ4jSSSTKhSZd7UBawnVs5SDyogYVro4oUgOGSimIoTccelXBQPWkMMCurKeia7kk/3Or6PunK/+Z9PltrsqcII4I7NmYMVCqrcgzZR1j2GAOqaVENKF+G/oxWWM+M2zL4FoS0HxCzjfAiT6z4obbSx75z4jDonj90JmPBVeBx6puYVO2fTAphZqn7J/vs1GWNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLS2GETtuUojv2byY3/cUle7wuccnEmJVTOqmQvvDfU=;
 b=fsV52/fsSnapNkrcXIgxF2qZrDnWQ6BMZT9UGn+Syk8/67LtUfr7esWPQ956YIFFI+GWbRk/AoyNbzh3ELR0071tepYQ0yBiQtshSXKSE7Osp1cV9A4SqNiAQQ5DsFrDprACsJO74Fdvk+zl2/loqt5wqWOHxmEvj2WaS3CPgZQhUQ4OUTEdfTTW2Cz7/EckJmvyk7pTVFcZ+uPcd7oFGytJAf3diTNqTYAalnP9VhWzSknIQdaimSwmHk2hs2KBqc22PqCWRrFAn5gRplZN+fIefQBHpK/M7LPVrUoBHEZdw0PxGEHtW3VaP/u3WsB7Yfv6W5mkDGiDmeiGgx8YhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RLS2GETtuUojv2byY3/cUle7wuccnEmJVTOqmQvvDfU=;
 b=LAZaKghxB62n6rqJRyf8h3Dv14ZSZdMAG+w6LkAMghbDGUdlRM8IAHgqvLXKux+Pi0AjYL1uiL9fr68a3iuBm6BbLX2ypzH2LJIiRpVR+XW2+V9XmBF7ix9a6Rf93oJqiMWSLm75MVXFZMwnM+Xf/J8dv8b4l0oNG2yMpvidh7Q=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by AS8PR03MB9390.eurprd03.prod.outlook.com (2603:10a6:20b:5a1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Wed, 18 Oct
 2023 14:06:55 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 14:06:55 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquCCRtS0xfVUiOONoVMdKA3bBPQZ8AgAAnvoCAABFYgIAACVyAgAARXwA=
Date: Wed, 18 Oct 2023 14:06:54 +0000
Message-ID: <2FCD3543-D1C9-4A48-B325-19F51C84FFC8@datarespons.no>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
 <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
 <56A3F2CD-4EE3-4157-B821-2BD8917155AC@datarespons.no>
 <2df69458-e538-1505-13dd-3ba87e697f3c@pengutronix.de>
In-Reply-To: <2df69458-e538-1505-13dd-3ba87e697f3c@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|AS8PR03MB9390:EE_
x-ms-office365-filtering-correlation-id: 9c00e581-501e-42b2-23c4-08dbcfe37c10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 15vU115N7eGD9wG/YeaNhaPj/4pFkEUY2/lRhM37Q/J0cojODQcdo0kXRIRS0K6ZwdThuGppB4veqjuSiGdFVnTyr5h+Mio5rp7AjUlCB3FARXsIXTs83xUALgJp8uMvTMLXlt10VbO4LGAhVsY3TrY5yZ6zlrkGCRE018+csQVTSiBTisCU7T/qXhCGx/TFmsFGAxKMzXIhiejYeWmU0eKjUGMyNw68hFqgvKtpgYi/xS/nuOOuMMiDZiHQE1kWjJvJZK0Rp/dULs18rGWJnh9kihkkJFzdm9WtYgil3SnDeXww38BLeTpLgYAeb/oS+9nhR5xGg2qEiZKd1IdAZfmYLHQv8SLCbR8/Vjv1uWhNcqjEAO0/+iAzxDsBzAPNU1fkY4EPNNviKoerDYaYrditRtcu5bTPuDbCaMTlruTsGw3QZy83wFKF0fFHhv/85UpQcK3mF3gvjloP64FbjNRfr4CvyUbyAVhQ2F+Wn9bUqxae2IFSHrTmGWoJPcKYwyzVkVYoHm4KJyii59yi2aZzT9CumapCHYZiVBNq5GaRb/iU3H6tFSQTT4NWiHINPXNy9ep3nI2Ho//+/vM7SvJzmW98rIJUtqroRsTiWUgmzjzJZwrdtRprnJkmiDR9Re+NCxi6QnkasNeJ9VWKBhaDmmq5RkSKmi+iGv2UU+E=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(136003)(39850400004)(376002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(66574015)(26005)(38100700002)(83380400001)(5660300002)(41300700001)(66476007)(66556008)(66946007)(76116006)(64756008)(8936002)(8676002)(66446008)(4326008)(6916009)(91956017)(86362001)(2906002)(966005)(6486002)(33656002)(53546011)(71200400001)(478600001)(6506007)(85202003)(316002)(6512007)(38070700005)(122000001)(2616005)(85182001)(36756003)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajg5OVpEZ2ZyWlptd1E5YzM5NE93cktLcmJWVGw4NEszMlh1S0cvaGVpR0lD?=
 =?utf-8?B?M2ZrWWJwSG9UengrRWlLc2g4YlplV3YxeTFFQW9PdEdTZzFnOGI5NU9zK3hm?=
 =?utf-8?B?OTZPR2R6aXA1aXhnZVpCdUZtZElIT1pLREJ3dVMwcXBqWElIMWlmTzNpNXF4?=
 =?utf-8?B?ZnowRXhLUFJHYTBCU0xqVEdxMG5VY2FDelhyaEprM2R2MXVaVzQzVWptb0VF?=
 =?utf-8?B?WDg3ZXN2S253dXpJUmVKL2F1K3VJY0RNem1xdmc3OTFkcjhiSWhVREIzUDFo?=
 =?utf-8?B?STNnREhqYllRM2Y4ZUg3ejZ5MjVlc2wvaHFRNHNxd0tVaEZOcEtOWlE5QUZu?=
 =?utf-8?B?clRFaGoxNnZieFFzaktTWENYNmh0OUFWRHZhaW5NQzg0SzhOQUFIa2VrRVlE?=
 =?utf-8?B?cktRK0R5NUsrS1NkZmdtTk91NURDSGZmNEVhOUpCdzBvd0YyOWc2bndIY1NX?=
 =?utf-8?B?MlBMM0J6cE0zUklwQmNXdUZVWXVWdUMzWG1vWGNoSFVtclIrVFBqaUplMDQr?=
 =?utf-8?B?OWNlQzc1K0R6VWd4NmhZVERRRzhUcTBSdjRJempKZTZDeUFsQ0d4aldMOTU2?=
 =?utf-8?B?SDZUZUJJS3JsbHREVVBjbFBpa0MybExrSUhkSjhrV0VFVE9FcGd5bkhxWXFL?=
 =?utf-8?B?ZHJBQUZFNkRra0hWTU1IMDJJVXViQ0JNQXFhUUZBRlQ4WDZTWmU0S1JyQ3J5?=
 =?utf-8?B?VmViUURtZER1ZjNNeFRQdDU0TW5pZFFIY0Y4NnJBbXFYRVhXZEN1TWJYc3Br?=
 =?utf-8?B?SXJKbDE2azlET0tTb3VwMlJ6ZWxsOHh1SHdoUDNzd0FoVng0eTlRYnRRSHhN?=
 =?utf-8?B?dFV3NkdoeW9OMjUzTlpDK1NlQnNPbHg2cnhndE41ZkVXYlN6T1B2NVM5QzNh?=
 =?utf-8?B?Wk9tOFhORHBoZ0NrdExBd0ZXMUg4TWZKaFl5Q3hOR040aU5ja1h6Q2ZpdERm?=
 =?utf-8?B?R1g2UmNGM3hHUWVzNzBOUTRWRjlmLzBUUkhnWmZMMDNZMkdGRmdzaUx2dWVw?=
 =?utf-8?B?L2VGRzVBTlppdml0NUsxWlZyYjZKTzJHdnpWVlRwRTBhV09nRlVBdnZpTVEy?=
 =?utf-8?B?YitxRXZwenlUdjFZV08xYU1KbWNaTVpWM3VFVkJTNXdHczBWOWxZMnpQdXAr?=
 =?utf-8?B?QndLbVJvdXJuQkZqdnZ0ZEpQRTFZSTZsNWZvT2lQZW1TekJrZUF4TktVTDVz?=
 =?utf-8?B?SGJtVTd6NVp2enF2Y1Bjb3dCdEZRZ1BKRERtM2hFWkJvVEhtZnZFMHJtUEdn?=
 =?utf-8?B?VGZHNnczYmRGWkpTdTdYVE5RUGpZQ0E5bThsbHVZOTFHSnlDWVhJaTUyQnJv?=
 =?utf-8?B?c3luVjdpMnZPK2hpYWRpMFdJR1ZPeE96N3E0bXRqRGp6NmE1SGhmREVVSXhp?=
 =?utf-8?B?RE1RbTUrN3dhTEVpVkh6c3lsTDFEQ2hiY21ldytBY0pkY3JxUXEvZnJieVkz?=
 =?utf-8?B?MklncXU4MWowS1FWVUQyL29pcEJQbmljanp4WWlxa25nKy8zMU1TbURkTTZv?=
 =?utf-8?B?a1AxRSthOE9sV09BN2o3RzdtQndhZCtrcjBMcEZxSXljdUpHVkpnZWRmVXBu?=
 =?utf-8?B?NFRJb3BuMk50NC9FZ2VzZ3I1YjNLUVpadVlJSGtZK2xOL3FaZGNIQlV4RTdp?=
 =?utf-8?B?a0xnb1lyakl0a1lrdFhwOTg5UGhEOGw5d0lvNEl3RHNhUTROMzhObzYyZENP?=
 =?utf-8?B?RnFHdlE2d2pwNVVOSFR0K1hXUDFCYlY5OVRtWlNUM1g0di9nRm1yaEd3dXQ4?=
 =?utf-8?B?YW9nNEd2VjBuYkRCOE1mNjJxWjk0S002ZkFJUytwL1FVM2tUbjRHQ3QxdW1j?=
 =?utf-8?B?TWREM016Nm5BUVM3QUdkejdRdDVnajl0cmZqY00vWWN6eFhHT2U2YjFRbC94?=
 =?utf-8?B?STA4ekd3cEJsZUlpbXVGWEVqSk82Z014Ky8xSVU1a0piZVBIQ1lHbldVUGV5?=
 =?utf-8?B?K1NaZ01MOGNiS3lYdHVhQXhxbDBlSFRqWmFYWmFIVFlkOVZ4UEcycS8xc25X?=
 =?utf-8?B?ME5kUHIyTndRWm94WFlaUjh0UUNsZXNaYitISTJGTG5jSFVmUDArU2xoV0Zj?=
 =?utf-8?B?Mm1qTnBnTkQ3RC9zekNLTXA0UWt0Z2UrNjFnYnN5cUZYZGRHcDRtaGNaRFN3?=
 =?utf-8?Q?XeVR1gAgAjaY3hh80gE+hOEnF?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <89F5B68B6DF958408061783B92C4D10A@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3jVUL0tp0omHzgG/sYoJ7vZNF6f8oOubCKOcghv8RloMLGW6I5+e76wudswsp8Q1FNmM+wMbnEXNPS4u8GubC1YNFa1eR1LttpT/T782D6B+qKIDYJZqqtZhZBgdwgy5tgFj5eQxHLOR6Bp+vQpx6k5++J84+m5mYfNCBla4pCDdPoL8QNOftoDKz9+rcQSXqkHWF2x6cpR1bwnY8lBWn2uWDz8MPo3MATVNASBmoSlAUkVDEz0Ywo/v+qXurDF09tXykXDj6BUesGSpdhrRAlplBiNM1qN929LHClDZz/fUAbj1Enn66PhETeFECg1DM3org3SpKYdxkT0VC3WF+I71IxF2TNRDW+64ZKGvJ1/+G6SEQX1VoBr/fl3E4APN6gIShmzg3DLbLb3D2ydbszBq6JnVArMscoaRhAJyW4g3rO/x6USoEbybNDGUGEv137GrMxcTjHbMDg703YXt/k8OMnjs86S7EUuw2xNtcpyrRmwtXF/TDEGZ572gs5MNpbFhM4cnPBiEnLeuvjXBYPgCxeYgTgOpCb42fTm9srW04PM1Bah0exN76Dam3NtB0b3iTYIU6CeDf2lnh/jF5s8kRZ1BVQAgmJ4quGiK1rBCjzGxvtDuH7Jj9o0yXc4XUKAcXQO1hjnGhVvtV0et0hNEeOeee1B0V617WKOBHk1OFIJsnz/X2B5EphfnNoDx48AxZOoq3wwFeQOcKoHKUZXRQOVW87jhROVYJFaVNKvTAqUNQRbY1ThDm+njznyvU47IMEbnOjV7/YqvhtHNGSDBx1RiSceD+xpaH1gYdqcgbtq/keyU6jzCMN1Xn+0F72lFzOmaKE9GHU51cS510qV8JrrttXWb4ZY8o3hpjlRWtjO2dPK6oemR08ao+8CT
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c00e581-501e-42b2-23c4-08dbcfe37c10
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 14:06:54.8458
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mq7brlBYm6yTk1FIhNnO7/TicRS1huTPP03/8zkrb7lcM0+iZebcHqpz0ov7SDPVdd0eeTp0nLuQTEgtGPrbLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9390
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_070707_318556_25B2E7B4 
X-CRM114-Status: GOOD (  15.74  )
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

VGhlIEFURiBmb3IgaW14OCBpcyBxdWl0ZSBjb252b2x1dGVkIHJlcXVpcmluZyBmaXhlZCBtZW1v
cnkgbG9jYXRpb25zIGZvciBpbWFnZXMgYW5kIGRldmljZSB0cmVlcy4gVGhlIEFURiBpdHNlbGYg
c3VwcG9ydHMgdHJhbnNmZXJyaW5nIHBhcmFtZXRlcnMNClVzaW5nIDQgdW5zaWduZWQgbG9uZyBh
cmd1bWVudHMuIFRoZXNlIGFyZSB1bmZvcnR1bmF0ZWx5IHplcm9lZCBvdXQgYnkgYSBtaXNjb25m
aWd1cmF0aW9uIGZvciBJTVg4Og0KDQpSRVNFVF9UT19CTDMxIDo9IDENCmFuZCBub3QgYXQgdGhl
IHNhbWUgdGltZSBzZXR0aW5nDQpSRVNFVF9UT19CTDMxX1dJVEhfUEFSQU1TIDo9IDENCg0KQXMg
ZGVtb2VkIGJlbG93IHRoaXMgY2FuIGJlIG1hZGUgdG8gd29yay4NCuKAlOKAlOKAlD484oCU4oCU
DQoNClVhcnQgaW5pdGlhbGl6ZWQNClJ1biBsZXZlbCAzDQpJbml0IHBvd2VyDQpJbml0IEREUg0K
SGFuZG92ZXIgdG8gQVRGDQppbXg4bXBfbG9hZF9hbmRfc3RhcnRfaW1hZ2VfdmlhX3RmYTogRXhw
ZWN0IE9QVEVFIGF0IDB4YmUwMDAwMDANCkNIIGUyYTcxNzUxNTFmZTNlODQyMTE2OTkwZTYyYzg2
NDMzNGUxYmIwMzBjYTE0NmI3NDlkOGU2YjBjMDI0ODEzNTcNCklIIGUyYTcxNzUxNTFmZTNlODQy
MTE2OTkwZTYyYzg2NDMzNGUxYmIwMzBjYTE0NmI3NDlkOGU2YjBjMDI0ODEzNTcNCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBDQUFNIGVhcmx5IGluaXQgc3VjY2Vzc2Z1bA0KaW14OG1fYXRmX3N0YXJ0X2JsMzE6IENhbGxv
dXQgQkwzMSB3aXRoIDEsIDIsIDMsIDQNCk5PVElDRTogIERvIG5vdCByZWxlYXNlIEpSMCB0byBO
UyBhcyBpdCBjYW4gYmUgdXNlZCBieSBIQUINCklORk86ICAgIGJsMzFfZWFybHlfcGxhdGZvcm1f
c2V0dXAyOiBhcmdzIGFyZSAweDAwMDAwMDAxLCAweDAwMDAwMDAyLCAweDAwMDAwMDAzLCAweDAw
MDAwMDA0DQpOT1RJQ0U6ICBCTDMxOiB2Mi44KGRlYnVnKTpsZi02LjEuMzYtMi4xLjAtMC1nMWEz
YmVlYWI2LWRpcnR5DQpOT1RJQ0U6ICBCTDMxOiBCdWlsdCA6IDE1OjQ5OjM4LCBPY3QgMTggMjAy
Mw0KDQrigJTigJQ+POKAlOKAlA0KDQpUaGUgImJlc3QiIGFwcHJvYWNoIGlzIGxpa2VseSB0byBw
YXRjaCBBVEZzIGlteDhtWF9ibDMxX3NldHVwLmMgcmVwbGFjaW5nIHByZXByb2Nlc3NvciB2YWx1
ZXMgd2l0aCB2YWx1ZXMNCmhhbmRlZCBvdmVyIGZyb20gQmFyZWJveC4gQWRkaW5nIHRoZXNlIHBh
cmFtZXRlcnMgd2lsbCBiZSBjb21wYXRpYmxlIHdpdGggdW5wYXRjaGVkIEFURnMgYW55d2F5Lg0K
DQpIYW5zDQoNCg0KPiAxOC4gb2t0LiAyMDIzIGtsLiAxNTowNCBza3JldiBBaG1hZCBGYXRvdW0g
PGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPjoNCj4gDQo+IEhlbGxvLA0KPiANCj4gT24gMTguMTAu
MjMgMTQ6MzEsIEhhbnMgQ2hyaXN0aWFuIEzDuG5zdGFkIHdyb3RlOg0KPj4gSSBtYXkgaGF2ZSBn
b3R0ZW4gdGhpcyB3cm9uZywgYnV0IHNob3VsZCBub3QgdGhlIGRldmljZSB0cmVlIGJlIHBhc3Nl
ZCBvdmVyIHRvIEFURiB3aGljaCBhZ2FpbiBwYXNzIGl0IG92ZXIgdG8gT3B0ZWU/DQo+PiANCj4+
IFRoZSBibDMxKCkgd3JhcHBlciBpbiBpbXg4bV9hdGZfc3RhcnRfYmwzMSBzaG91bGQgZG8gdGhp
cyB1c2luZyByZWdpc3RlciBjYWxsIHBhcmFtZXRlcnM/DQo+IA0KPiBJIGFtIHVzaW5nIGEgcXVp
dGUgYW50aXF1YXRlZCBpbXgtYXRmIHYyLjQgYW5kIG9wdGVlLW9zLTMuMi4wLmlteCBpbiBteSBz
ZXR1cCBhbmQNCj4gaGF2ZW4ndCBjb21lIGFyb3VuZCB0byB1cGRhdGUgdGhlbS4gSSBrbm93IHRo
YXQgYmFyZWJveCB3b3JrcyBmaW5lIHdpdGggbmV3ZXIgVEYtQQ0KPiB2ZXJzaW9ucyAoZXNwZWNp
YWxseSBhZnRlciBodHRwczovL3Jldmlldy50cnVzdGVkZmlybXdhcmUub3JnL2MvVEYtQS90cnVz
dGVkLWZpcm13YXJlLWEvKy8xNjM3MCksDQo+IGJ1dCBJIGhhdmVuJ3QgdGVzdGVkIGEgbmV3ZXIg
T1AtVEVFLCBzbyBpZiB5b3VyIE9QLVRFRSBjb25maWd1cmF0aW9uL3ZlcnNpb24gZXhwZWN0cw0K
PiBhIGRldmljZSB0cmVlLCB0aGlzIG1heSBpbmRlZWQgYmUgdGhlIGN1bHByaXQuDQo+IA0KPj4+
IDE4LiBva3QuIDIwMjMga2wuIDEzOjI5IHNrcmV2IEhhbnMgQ2hyaXN0aWFuIEzDuG5zdGFkIDxo
Y2xAZGF0YXJlc3BvbnMubm8+Og0KPj4+IA0KPj4+IFdlIGhhdmUgYSAyR0IgSU1YOE1QIHN5c3Rl
bSB1c2luZyAzMk1CIE9QVEVFRV9TSVpFLCBzbyBleHBlY3QgdG8gZmluZCBPcHRlZSBibG9iIGF0
IDB4QkUwMDAwMDAuDQo+Pj4gDQo+Pj4gQVRGIGNvbXBpbGVkIHdpdGg6DQo+Pj4gbWFrZSBQTEFU
PWlteDhtcCBCTDMyX0JBU0U9MHhCRTAwMDAwMCBJTVhfQk9PVF9VQVJUX0JBU0U9MHgzMDg5MDAw
MCBTUEQ9b3B0ZWVkIERFQlVHPTEgLWoNCj4+PiANCj4+PiBPcHRlZSBjb21waWxlZCB3aXRoOg0K
Pj4+IA0KPj4+IENGR19ERFJfU0laRSA/PSBVTCgweDgwMDAwMDAwKQ0KPj4+IENGR19VQVJUX0JB
U0UgPz0gVUFSVDJfQkFTRQ0KPj4+IENGR19UWkRSQU1fU1RBUlQgPz0gMHhCRTAwMDAwMA0KPj4+
IHVuZGVmaW5lIENGR19OU19FTlRSWV9BRERSDQo+Pj4gDQo+Pj4gQmFyZWJveCBjb21waWxlZCB3
aXRoOg0KPj4+IENPTkZJR19IQVZFX09QVEVFPXkgQ09ORklHX09QVEVFX1NJWkU9MHgwMjAwMDAw
MCAjIENPTkZJR19CT09UTV9PUFRFRSBpcyBub3Qgc2V0IENPTkZJR19QQkxfT1BURUU9eSBDT05G
SUdfRklSTVdBUkVfSU1YOE1QX09QVEVFPXkNCj4gDQo+IGJhcmVib3ggY29uZmlndXJhdGlvbiBs
b29rcyBvayBhc3N1bWluZyBib2FyZCBjb2RlIGNhbGxzIGlteDhtcF9sb2FkX2FuZF9zdGFydF9p
bWFnZV92aWFfdGZhKCkuDQo+IA0KPj4+IA0KPj4+IFRoaXMgcHJvZHVjZXMgdGhlIGZvbGxvd2lu
ZyBvbiBib290Og0KPj4+IOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlD48LS0tLS0tLS0tLS0tLS0NCj4+PiANCj4+PiBVYXJ0IGluaXRpYWxpemVkDQo+
Pj4gUnVuIGxldmVsIDMNCj4+PiBJbml0IHBvd2VyDQo+Pj4gSW5pdCBERFINCj4+PiBIYW5kb3Zl
ciB0byBBVEYNCj4+PiBpbXg4bXBfbG9hZF9hbmRfc3RhcnRfaW1hZ2VfdmlhX3RmYTogRXhwZWN0
IE9QVEVFIGF0IDB4YmUwMDAwMDANCj4+PiBDSCBlMmE3MTc1MTUxZmUzZTg0MjExNjk5MGU2MmM4
NjQzMzRlMWJiMDMwY2ExNDZiNzQ5ZDhlNmIwYzAyNDgxMzU3DQo+Pj4gSUggZTJhNzE3NTE1MWZl
M2U4NDIxMTY5OTBlNjJjODY0MzM0ZTFiYjAzMGNhMTQ2Yjc0OWQ4ZTZiMGMwMjQ4MTM1Nw0KPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgTk9USUNFOiAgRG8gbm90IHJlbGVhc2UgSlIwIHRvIE5TIGFzIGl0IGNhbiBiZSB1
c2VkIGJ5IEhBQg0KPj4+IE5PVElDRTogIEJMMzE6IHYyLjgoZGVidWcpOmxmLTYuMS4zNi0yLjEu
MC0wLWcxYTNiZWVhYjYtZGlydHkNCj4+PiBOT1RJQ0U6ICBCTDMxOiBCdWlsdCA6IDEzOjE0OjA5
LCBPY3QgMTggMjAyMw0KPj4+IElORk86ICAgIEdJQ3YzIHdpdGggbGVnYWN5IHN1cHBvcnQgZGV0
ZWN0ZWQuDQo+Pj4gSU5GTzogICAgQVJNIEdJQ3YzIGRyaXZlciBpbml0aWFsaXplZCBpbiBFTDMN
Cj4+PiBJTkZPOiAgICBNYXhpbXVtIFNQSSBJTlRJRCBzdXBwb3J0ZWQ6IDE5MQ0KPj4+IElORk86
ICAgIEJMMzE6IEluaXRpYWxpemluZyBydW50aW1lIHNlcnZpY2VzDQo+Pj4gSU5GTzogICAgYmwz
MV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IHdhbnQgaW1hZ2UgMA0KPj4+IElORk86ICAg
IGJsMzFfcGxhdF9nZXRfbmV4dF9pbWFnZV9lcF9pbmZvOiBibDMyIFBDIGlzIDB4YmUwMDAwMDAN
Cj4+PiBJTkZPOiAgICBCTDMxOiBjb3J0ZXhfYTUzOiBDUFUgd29ya2Fyb3VuZCBmb3IgODU1ODcz
IHdhcyBhcHBsaWVkDQo+Pj4gV0FSTklORzogQkwzMTogY29ydGV4X2E1MzogQ1BVIHdvcmthcm91
bmQgZm9yIDE1MzA5MjQgd2FzIG1pc3NpbmchDQo+Pj4gSU5GTzogICAgQkwzMTogSW5pdGlhbGl6
aW5nIEJMMzINCj4+PiBJTkZPOiAgICBibDMxX3BsYXRfZ2V0X25leHRfaW1hZ2VfZXBfaW5mbzog
d2FudCBpbWFnZSAwDQo+Pj4gSU5GTzogICAgYmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2lu
Zm86IGJsMzIgUEMgaXMgMHhiZTAwMDAwMA0KPj4+IElORk86ICAgIG9wdGVlZF9pbml0OiAxNzYg
LSBjYWxsaW5nIDxvcHRlZWRfc3luY2hyb25vdXNfc3BfZW50cnk+DQo+Pj4gSU5GTzogICAgb3B0
ZWVkX3N5bmNocm9ub3VzX3NwX2VudHJ5OiA3OSAtIGNhbGxpbmcgPG9wdGVlZF9lbnRlcl9zcD4N
Cj4gDQo+IFRyeSBjb21waWxpbmcgb3AtdGVlIHdpdGggQ0ZHX1RFRV9DT1JFX0xPR19MRVZFTD00
IGFuZCBzZWUgaG93IGZhciBpdCBnZXRzLg0KPiANCj4+PiBJwrRtIG5vdCBzdXJlIHdoeSBpdCBh
c2tzIGZvciB0aGUgc2FtZSBpbWFnZSB0d2ljZSBhbmQgaWYgdGhpcyBpbXBsaWVzIGFueXRoaW5n
IOKApg0KPiANCj4gTm8gaWRlYS4uDQo+IA0KPiBDaGVlcnMsDQo+IEFobWFkDQo+IA0KPiAtLSAN
Cj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwNCj4gMzExMzcgSGlsZGVz
aGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCj4gDQoNCg==


