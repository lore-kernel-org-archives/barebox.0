Delivery-date: Wed, 26 Feb 2025 16:23:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnJFw-007FYG-2K
	for lore@lore.pengutronix.de;
	Wed, 26 Feb 2025 16:23:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnJFv-00086A-Cq
	for lore@pengutronix.de; Wed, 26 Feb 2025 16:23:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ct08/cmOZ3yuGbtspyaAxWnr8ZUsv50f/5FupFkC96Q=; b=B1F3vBnK4jtrzI
	rtTG/Zttt12Lvt0MIMmj9q0WJPMgBDudRsuPfp7v+RTIkJr7Dx+NAD9d3S+DKjpnfGViocNJ3k4vd
	BrDrOD5iRD966dkzo2DXpUl1wz2171cWsIbTLUgjFUUOOvcLlzkQ5hILhxJwZ2hF93yiQLWITkMPT
	7xyDIeqFVAhzhfI87Hi4z6BRzonz5LoGnYE5wS4BbUBCnKoM2PIJ6MNnlwcbRgE5wIjmbTjStQWuR
	R4dZpWNoQmRtQUjVpbw+vVbhaPKukSuPQzM05xSZXertNpo3cn++2uT2gIC2frgGnsZrY11i9o14T
	7wWgQWPjucInQFO6u/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJF1-00000004FcX-1m0Z;
	Wed, 26 Feb 2025 15:22:31 +0000
Received: from mx08-005c9601.pphosted.com ([205.220.185.5])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnIQ7-000000045ad-0UIm
	for barebox@lists.infradead.org;
	Wed, 26 Feb 2025 14:29:56 +0000
Received: from pps.filterd (m0237837.ppops.net [127.0.0.1])
	by mx08-005c9601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51Q7rs5w015330
	for <barebox@lists.infradead.org>; Wed, 26 Feb 2025 15:29:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wago.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=p012021; bh=Ct08/cmOZ3yuGbtspyaAxWnr
	8ZUsv50f/5FupFkC96Q=; b=fC5N2Yly2HngUzoSqizuBXKTcWQMOnKIYHjpylfg
	+mCwGv8KD0Aw8zZcAms96OUdp1qpju9m0SJj/U7CxC3bmcwSVcRyjM/kkDaCw809
	7GeZ/FV2vlK8A4+NBaR5kV+I40ZKNNI+ypjc2I067B9+mBEBGOCFoqvU5Kw1CJr5
	ssCydJ3yy+wCDqnBSBTUWyxOU8zYtAVki7zQQo1mLeMqoh3eKhDXZYBN8Ex5Z9SJ
	bW4p8Jl8oYOfb8tOCIvPdGQKSVqSUnQC+jDV+hQYhqrTxKuN/WCb6+liIyNi09rt
	RGh7Kcfis3NnCz0yTm2Hjujbw+S+i6bVkta+8DlUZPvo+A==
Received: from eur03-dba-obe.outbound.protection.outlook.com (mail-dbaeur03lp2171.outbound.protection.outlook.com [104.47.51.171])
	by mx08-005c9601.pphosted.com (PPS) with ESMTPS id 451xyk8dce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 26 Feb 2025 15:29:51 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rWIAIPgdz+GAmTpFJnW+eo3POiugDuX+L8O2SvR618nNthKwYaZiKaeW5YmFNtIdQ7r0Llzkzd/LDVwsyKw2qIyjtSne/9b22d0fvFBw18uLVDpRbJdP7+I39zqpA8LLYtHnJP7/RmIjb83NZ1jSjQ5CaOkvQEmBh6DYK9ZtJB9qsav+Fu8crNZDkUVfEHGVAAHUvDsfCvdDqM6syjdA9NIqDHR409x//+hj0EJMJ00xO+hTca/Y0P1tqPOjwouc1BFfFizKq8tzi4W0HmH8CpfpovD71x4JgBPezSul1QRpVvxTLdJEGH8l64sg4hYmqPvNeo1l4dp51d6SsH3oMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ct08/cmOZ3yuGbtspyaAxWnr8ZUsv50f/5FupFkC96Q=;
 b=TKKzbB1cjQrEKOfKVHLZAOPikkt3c9pPOlr23vqVKV1zzY7u0NPKxCkmziB02nvVQ3Z2zXbT4bPu79USyMpEMF8TsGj66FrKZrRhbUb8wvrG9LVlSHKJegY3cPRJUsVBHFek4x7PYMAqyFpDQBCNQaqWRKPoK0FKCm/oZZFSbJtn248a/miinnuPtK/Kt/zMZjCiswE4N4dXTW84t1RQN4PgesqCQHpqIkmBXtoo6+HrUyYkAISE4JngU+kubUdVATjN6ytESTjsDJqp+NGt7AWTB3l9NGyOUR6gRJqyjX3SUKCP6DFQ0fGZdqB5YtrUq1vXYUwmRiWGJfump3Wa0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wago.com; dmarc=pass action=none header.from=wago.com;
 dkim=pass header.d=wago.com; arc=none
Received: from AS4PR08MB8093.eurprd08.prod.outlook.com (2603:10a6:20b:588::18)
 by PAVPR08MB9305.eurprd08.prod.outlook.com (2603:10a6:102:306::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 14:29:48 +0000
Received: from AS4PR08MB8093.eurprd08.prod.outlook.com
 ([fe80::efad:bcac:47a9:6619]) by AS4PR08MB8093.eurprd08.prod.outlook.com
 ([fe80::efad:bcac:47a9:6619%3]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 14:29:48 +0000
From: Oliver ROHE <Oliver.Rohe@wago.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] fix partuuid format
Thread-Index: AQHbiFpep2vPNTKVcUCdhz0ayQWp4Q==
Date: Wed, 26 Feb 2025 14:29:48 +0000
Message-ID: <AS4PR08MB8093429FE84A32C579C03FE69EC22@AS4PR08MB8093.eurprd08.prod.outlook.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_Enabled=True;MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_SiteId=e211c965-dd84-4c9f-bc3f-4215552a0857;MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_SetDate=2025-02-26T14:29:47.983Z;MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_Name=Internal;MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_ContentBits=0;MSIP_Label_6b160f33-c33b-4e10-8636-cf83f9ca7d3c_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR08MB8093:EE_|PAVPR08MB9305:EE_
x-ms-office365-filtering-correlation-id: de293be7-1967-4d43-8853-08dd567205ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?RFeuFR/mjxZBYA6EL8bl0q61HL7oYWorqpbpa/COpuvuYMAUwKyEMsd2Bx?=
 =?iso-8859-1?Q?ed2abPunWRhFe6ngDmOvprZLnrEY+WzyzPV8MYEMu2a6fE0fML5dvdPoIH?=
 =?iso-8859-1?Q?RqsnRk0DNOPe17vs6FBXrgz4F7D1+OkebXqe+05g1jEQUIr66LTTlaxq1H?=
 =?iso-8859-1?Q?7TopCswYWEB7DL7517ZjVPFMmk3jr6zkH/BN3eYX4T0Y9J/TWa9VH24x6C?=
 =?iso-8859-1?Q?t7psiCROvg79z1vG2Kl9o1awRIWeEwDCd4y9zo2O6SeINhhKuweHEPQHXs?=
 =?iso-8859-1?Q?CUmWosreqx5pm45+GAa4V0LEjJPaziccj2Fr3CrkUuJUICOaym8gh4ID4K?=
 =?iso-8859-1?Q?U+VJYMR4gfGO8J3UvH31Qc2JMfkYeMkmsvCHRJP2HxvbGwgIWfIRBC8ppj?=
 =?iso-8859-1?Q?9Nhy33YM64W8B8/iqTlYDVnJzcxbWvQDlN0D/3uBrPyo1qF0bxruHUqlEE?=
 =?iso-8859-1?Q?ndR1FIl6WbTEJBuIS9cvRwMlW4ZGa3S988L7GKOT0NZSiDNFPH4J3t97VU?=
 =?iso-8859-1?Q?SU+m0VBqBsMbqnmV7p77j9+PBCrzAI2saqIgMrSsiiAacWu0rH8UEcfgo8?=
 =?iso-8859-1?Q?EbBDqZP/69ORIVDJaCYmBPq00Jtlwlwv3JGS93yY6D/hz1pnZEKILZYVhV?=
 =?iso-8859-1?Q?zF2MtLYuvcsGJGJ6mCNOJS/4bLKjcjWz73TaxMIFglq2TGj0KQskOtjnGc?=
 =?iso-8859-1?Q?piyAa63b3YMDtEZw++6DgswF4CY9JylsQbf4Yd6B6saLe054BOHmp1T/Cl?=
 =?iso-8859-1?Q?Mvt3eaw4X0V0WJcj28pHKT6yqR3RxpR72iGfub/6h5UOthLH3lnsvHc2yV?=
 =?iso-8859-1?Q?i7Oe+zMVWSkVeqkCQaZdxMkPhf6oJKgmQMH8QQz+O+um6zw5hqdgkqQamD?=
 =?iso-8859-1?Q?gF01CDaqsz+fn/lsTXrGRhkFUhD572QlcDAx9B5AOzBCVhZFIks++wqhaq?=
 =?iso-8859-1?Q?rgfF4umoBLhoMCill2/Pl5rOxsQSbqEqUosqfR27rPZzxuEdHIlLn2wuEW?=
 =?iso-8859-1?Q?QoUKhbQPpnNqQdwZTZX2wWTz97HNDiPGRxceN8t9F2/aFanAqyDB+UGpXz?=
 =?iso-8859-1?Q?xngh+UShXH9zXhtNR8HIPt1MkRRDdmD9BaGktu0UWt4B7Ml1RqQ/wlEX00?=
 =?iso-8859-1?Q?ieoQbzkZTd9+ppinq0CdgtF3XZOBeKvIYXfMlWS6FIqMrUpvvJHYEGrssJ?=
 =?iso-8859-1?Q?hQCJatMxy2og6Zuzyi0429gP8tanjZfkAmVzE5bMhXzWdZ6u0xbtarflM9?=
 =?iso-8859-1?Q?oIbqIKeUsxslK1VMJSEsP3Q9TZWUPyiXsQAnzEKvIk/11pimR3IcvRbq0d?=
 =?iso-8859-1?Q?jPjUMQ1fDGRFSPP8/AG7TlHokMgNN/VewOSF9vreDt8coyUTTT5uWFuQ68?=
 =?iso-8859-1?Q?GukpjWWa/yN1xXvQPCwgYTqkL05Pyp6n7+8I5TM1gAorJExrmZTyHqwIWA?=
 =?iso-8859-1?Q?+zm8OaU0hAHcqYrOgHygl/AR+9uenlnqQengCnKMqvI69nDWfJ9miFsw4c?=
 =?iso-8859-1?Q?MYjlLpcMVabJ+5IVw6fkpZ?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB8093.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?So96Wr2+7aVB7iVaY0Sa7Bewi49Soq8dueuX5PF49vQJYyLzeEaGaopAGq?=
 =?iso-8859-1?Q?iggiLEVrJkZ+JX4RSawIlm3tD1YwjprZxWEt/q+2TuIX35SMAyxsdkN1mV?=
 =?iso-8859-1?Q?Pcl1FnM5qMVsq9KN6vNVdZioug80njOoiIQOsJQ+SBHgoJmgUNbz0OdDz4?=
 =?iso-8859-1?Q?7YajE/jVqFG1c6VrsQOtlEbQ/FtiUMl7wTAsvCyZKwMrkN7DEcxY8m+EzC?=
 =?iso-8859-1?Q?Dieqe3bTbIuBD0HkEOwWeBJTntnDN6uPXiXgnef86C0R4BTTRedDikFl/v?=
 =?iso-8859-1?Q?NVXM654GboNJjDNK4w18GwJzUNuTJGiSUArN4OATaxdyMhMyQqQfMiLEEW?=
 =?iso-8859-1?Q?TrEErSTk3keh3FvYG2hUSeKDXNa+kPRcc7CUA6Y1cP2vIvQWuVcDnhnjC8?=
 =?iso-8859-1?Q?Gzf4huJur3DQMc3tqY0EDTrxr2N/WhD+tiJh15KBXg3h8qWf1Iuh/1qux2?=
 =?iso-8859-1?Q?eblc0AuVJZvniU3JQD456Cf9YYAoT7LMNpMfH89EnfwXQI4ggfm0QVlJDN?=
 =?iso-8859-1?Q?sB867u3DUo2VtG8MbNm71pl/Jt0SgbU6SxV2vSy0arzbtfz6WmzXgviufr?=
 =?iso-8859-1?Q?kfe24efUpKHkWg7gmd/tCc4go7EdSjr3DRfev7v0afibXImO/G2NjfnoC9?=
 =?iso-8859-1?Q?tzipGVB+TVUccc5Z86eVeRnG4RbYRwu1hMZoDM5xFmZR7mYMu+VlCZRNvH?=
 =?iso-8859-1?Q?pFZVkFY9kDV5jtrM77xbMICqc2SQ+3GCNGJ2HrMKMcVjhIUqFLrWce2Gqq?=
 =?iso-8859-1?Q?nIAL6CF7G40xq4+Z69+V7t8ntV0M6AfyXQuKjaiShIVT1HuWlwQXUiChj6?=
 =?iso-8859-1?Q?rP8tpMvLEgZhbcK0Xkot1AjxfMRYNcker8XOp/5hVc6NxgAPfqQEMgDaYq?=
 =?iso-8859-1?Q?hHNbjjn4/JHLUWUA+GWbGtxGYKGX2XkB+tlhMBlil/8tRAEttP3NgTRoEe?=
 =?iso-8859-1?Q?BGJV8D4fYmMUaQTX1xsZ0iD0+kzxnW7d9RTDmJ9JuOI8P0yuyDq98003uC?=
 =?iso-8859-1?Q?pdaRJYSXSC2ZInKep4ezv8toV/9cqrJv16QzNPbUAVvvFF3lohy0xs336V?=
 =?iso-8859-1?Q?5inyyewnfx7K/OQHZ1jzDXiZHlaKF7KLeMqxuelFRuTd4qwQPf6CTsBPcC?=
 =?iso-8859-1?Q?9irMNflWDsbKe9TkYgFYfgLSXBcEYKrKh8K6Ec6gIltokyJqHsUvVWyAu4?=
 =?iso-8859-1?Q?nh1LNzMajwKw1MAvmDi15H6WBATxlFJFtHSc4GflB588BXWENif4awjbQ9?=
 =?iso-8859-1?Q?2eu3vs611ZmdAWXnrKW6nk/hgwpRpnjSLAkA4v/5vltVHJkLUdsoRT5tLf?=
 =?iso-8859-1?Q?Y49BAYDQqKkaXCrAwulM1EunUdrZdpIexAr913PJ2gdm+486GN2IMAb9sV?=
 =?iso-8859-1?Q?eSODyrj8JqGyNxOKWcnyzK87GKrTVXDVVgco59ysddp+j7GarcriCCaIrn?=
 =?iso-8859-1?Q?tFUeuiG9cfyucY9sPWPzdA3azL0TD6vLzmh19GPLgnpDXUu2uuwYI5YMK3?=
 =?iso-8859-1?Q?TFNaisXK7bVxceRj3fP+/h0HbhKJoUKsMuzRJb5FKhfGhly58KMS3nSwIa?=
 =?iso-8859-1?Q?ZKhCXDRGvBGMTqRJwD5fdE2va8ZlkSlTK6KI5mZa3OxbG0UiqjLcWsQyiu?=
 =?iso-8859-1?Q?uzCHFRb35OLt8=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: y2HLRshrvtHwbCoqME5VvppdvB+FwPYQzYycNvSS0BSVA6HDxu7klZ3e1kwrnzAgJJvG6VFob7fmgsN+UwXzqP0Q8QLVnwKwo0POWgAgo8kURPujUqrTujCI+ZDWQfFBKOuVtuXFL016qo3VKCA1w1fksOJcmbRjv5i6NRTrPsZU/xFYCfES4hyOeDrzwayu01JysHcdRMFhjrlq6mWjgC2fboE+172Daql11eJxPc7yY619Sz7g4EjhoJtqUc4p8IFnQzQsoLS6no3/ctooUZZeyl+szXi5YtZhF9NVlAbBsjz5cYFm1BVyEr/IfEeCN8lflEo+Rh+FWRx4GGuARoI/JeLf+HZg9zcbcfwZRib2FerXKQrtWwbQ+t0IdhIE3Ds93QykjnNvYQ4BbZEq9OzOtNE8KpBTbUmYKV9T5KRRHb97ffX83nSvPRSNJmoLpN7NcpLtJM0LirYL5Av5J1MHHocTT1m+KS/fIN9S5PgnAmgCt93w2GrN3dyTBbZVtNGTdz2n6QQxEMNskaWPuiu/DuAj6LItChIb7LtBFSdBaOE6lcaRSONm1/yjJUkK8WZEDX7yhsM4WFU2fzUPjuqCI3lJtTN1dJZ0NT9lef5unnNK7U3LRmWId1ten3V4
X-OriginatorOrg: wago.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR08MB8093.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de293be7-1967-4d43-8853-08dd567205ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 14:29:48.1748
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e211c965-dd84-4c9f-bc3f-4215552a0857
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oz9fea2IttPq+NrBmHVJ9ETwThl88kQGuHYRbkNqiwsoJ/jPrJVp4Gb6OC9O+bUSk07c2b0iIpPvQVKGrRalWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9305
X-Proofpoint-ORIG-GUID: GJLw_4aHLULmFyiD6d8SaP2LUTXz8kpc
X-Proofpoint-GUID: GJLw_4aHLULmFyiD6d8SaP2LUTXz8kpc
X-Authority-Analysis: v=2.4 cv=baqRUPPB c=1 sm=1 tr=0 ts=67bf255f cx=c_pps a=fvh3CRp4QWwoIkYxTVzKEQ==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=T2h4t0Lz3GQA:10 a=ThMX_IV2AAAA:8
 a=SRzLLg_AlJjRNHbPVpwA:9 a=wPNLvfGTeEIA:10 a=0jcnvs3wCqEDeep41k2a:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_03,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=746 spamscore=0 clxscore=1011 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.21.0-2502100000
 definitions=main-2502260115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_062955_451222_436D2418 
X-CRM114-Status: UNSURE (   7.81  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fix partuuid format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

root=3DPARTUUID=3DSSSSSSSS-PP

Where SSSSSSSS is a zero-filled 32-bit MBR disk signature,
and PP is a zero-filled partition number in hexadecimal format.

Signed-off-by: Oliver Rohe <oliver.rohe@wago.com>

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 95b71af7ff8..6204fdabc81 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -172,7 +172,7 @@ static void dos_extended_partition(struct block_device =
*blk, struct dos_partitio
                pentry->size =3D get_unaligned_le32(&table[0].partition_siz=
e);
                pentry->dos_partition_type =3D table[0].type;
                pentry->num =3D partno;
-               sprintf(pentry->partuuid, "%08x-%02u", signature, partno + =
1);
+               sprintf(pentry->partuuid, "%08x-%02x", signature, partno + =
1);

                list_add_tail(&pentry->list, &dpd->pd.partitions);

@@ -270,7 +270,7 @@ static struct partition_desc *dos_partition(void *buf, =
struct block_device *blk)
                extract_flags(&table[i], pentry);
                pentry->num =3D i;

-               sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
+               sprintf(pentry->partuuid, "%08x-%02x", signature, i + 1);
                dpd->signature =3D signature;

                if (is_extended_partition(pentry)) {
diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
index 240122f2d22..05e464d114c 100644
--- a/scripts/kernel-install.c
+++ b/scripts/kernel-install.c
@@ -1370,7 +1370,7 @@ int main(int argc, char *argv[])
                        goto out;
                }

-               append_option("root=3DPARTUUID=3D%08X-%02d", nt_disk_signat=
ure, root_partition_num);
+               append_option("root=3DPARTUUID=3D%08X-%02X", nt_disk_signat=
ure, root_partition_num);
        }

        if (list) {
--
2.25.1

Internal


