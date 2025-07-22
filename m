Delivery-date: Tue, 22 Jul 2025 13:12:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueAvT-002Xmq-2Q
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 13:12:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueAvT-0004qB-0t
	for lore@pengutronix.de; Tue, 22 Jul 2025 13:12:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOtGrgfMNtr1PGkrZutIJnl1hMYNBoz8cBV/++MBpVI=; b=0pqWSkLbUpe+vo
	5GQr1n7aBwgbRoPweHZjX469enD73xsAlxiVWurh6Ou1JmcUj4Lht3b3xsRkXuvwujtxrIZKg+0vs
	ELFtwLgGWXqK7gWO4NxJHB1gDc39WUe2nKLjBW/Fj7McFaXYZ234nCwZRkQ1gJgRig8DV05+Tpj9v
	OKU7IYqVvs0Olm4rsjWMtuszNGyO0x5cGfF0xWo1UOdnE9ZtNT9bu36FeRoMfQJSQRpPeA6a1WT/K
	FGptjUDKCiopRwiBmjbv7E3heir2GmwuoElxgdDumivpEQIafrUOmi5Iglns+IboY92ZFGb4NF17T
	iKGHYvMNFRhd3qDuLTTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueAug-00000002FW4-0vyV;
	Tue, 22 Jul 2025 11:12:02 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueArZ-00000002EtJ-2Et3
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 11:08:51 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M9Ws3Y029641
	for <barebox@lists.infradead.org>; Tue, 22 Jul 2025 07:08:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=ZOtGrgfMNtr1PGkrZutIJnl1h
	MYNBoz8cBV/++MBpVI=; b=DTHWcjOeprK5J5LeieBH1ClNc2YDSof1pNyC7xrHW
	6sLncEO9IVUqlSbK3EOHy/7K7BaW75RREV3LBa/kPaW6ClMXPnCwp9xeD6E/4c/c
	8RD7fFyVEbbya1wg/wg+G8dnRENNvhhmGKqoHFqQXzbi5uTktTcFNuKqdS4bCfWw
	7cKPyoagLHv5c3CcWHpwzqIQX9zbQ74sW7tb5XIdDZZkOMt1qiJ2XGwhw3tUH3iu
	ckYayFQ7AOVmeLD9fMYKtsU0UVZCIYUvZZtnuLX5t36YWefzNlgI38N3p+U1E0xU
	aQAKjgVzzWRKsOJrxqB7POG5b2LjMHvSm739ued+nOowA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11on2078.outbound.protection.outlook.com [40.107.223.78])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 48048ygm6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 22 Jul 2025 07:08:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gzqQQIc45F7lmGL2rtWUFhsRbRd/1IW1CTLnnzU2mVcATEVgtWXIobZrg8ePCVQwlAwR0OiyYPmI0xqS5OAMeYqGk+dvGm/QEPEn5waix3DAStsc2ZoN0PCGhK8Aq2FIkqu6oLZjlQiQZK1vW8I4KacYecE8SN40Elr8RLdlkhPQQcB8KWKbfGkzS6TGUMLITp5vNpe5KPqUypwi8rEamd0FYzdNDdKIXpAjDu+VXmViQfAzIf7M6fVPEgcKJbViwUe84zqNnT3M3x4zal6teYY+dBB/wroGS2fOqGOGBkt3U5Odc2sq46UQx8PudhO5j8C1gSdujyIFxaI+Ka1BOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOtGrgfMNtr1PGkrZutIJnl1hMYNBoz8cBV/++MBpVI=;
 b=apbwLcIwcsdBIIfoej07Im9CTL6KALw6v9vuseFbJm6tQL4qi3ZXZtMXRvt/Gj7FYnbX+F0R2wyk+SIpKUn0I+J8AlVVitEY/S157woR93MwW1tyUc7xwylfS4L+IePX1+6UXyZc1hdGMy6ISn6zNR8+PrgI/HshIKLSrXt807COJ/eqqE/ohyMBo3ew6nY+RLs8FXkS1C6UD7sF/3Q4nAyBiUx+UNCyCYBDa6DBXxES6l0lO8rvNCH5XNfpc5UTJuDtq9YykVpt4e8MbJrUDtk4Ycf77nr5bebHVhTkC54FOB0OZylmYFfKm8Q68kx48uQkZNZgt07OJ7My/6LRGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZOtGrgfMNtr1PGkrZutIJnl1hMYNBoz8cBV/++MBpVI=;
 b=v1iHNxuw5SBLpx2UmobWtV4HJwZbwGOJlPPpuRKSWJYIR7Uq1dBbs71BqP2E0jEGKN3GEdwsbmjEFlIAl5anb8BSTh8wfidsnT39PSumgM+/d31A3eYV495MIzKwiFM1WSTrYt2mNPa31qUgaYeVH2nYC37c/JfjDrpsGFoCx78=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 IA1PR07MB9924.namprd07.prod.outlook.com (2603:10b6:208:450::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.30; Tue, 22 Jul 2025 11:08:44 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 11:08:43 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: handoff data
Thread-Index: AQHb+vSO5teVuYF5kUOeBeJUxRLy+Q==
Date: Tue, 22 Jul 2025 11:08:43 +0000
Message-ID: <DM5PR07MB35323F18EB9CB31A85BCEEF0EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|IA1PR07MB9924:EE_
x-ms-office365-filtering-correlation-id: ca0b6e32-9ca5-4410-f848-08ddc9101f54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?dvO+ZyHY5He5BzEDYf8rjjpGvdV9m59ok2J5eMzlymZUFJ8OmrkRuKAInp?=
 =?iso-8859-1?Q?+ICWOE73Mm/76WtQmZB7K9LDweF7yLjgmnGMexQBA5YYuMlG3XM1AT6+tM?=
 =?iso-8859-1?Q?lRD/tOkmp7Zn863orjwarZY4o3eObPkhpws1i+mlLbdN6nePNlVCGdR6SX?=
 =?iso-8859-1?Q?MICPHH89ao996gt4I0GsQadUPF1UwN+XxfYIMevQRxOzLTFFO5s3Hf14sV?=
 =?iso-8859-1?Q?hDQCsUIQFivpA21k3dYnrIdDDQbUXM2NLE6iTpE5W3ASshCsZuk+Sk7thB?=
 =?iso-8859-1?Q?46xDHQ5mq37I9SKyv1ff1+VNBDkzHL3hEPxWwceZUgvDQtcIMg03J8eXwk?=
 =?iso-8859-1?Q?I2NcGLYKdsvvSzvLNf+Ta6Oas6EOQLJKjiLLv28Aq/8kiGpkhiKI9d5D+c?=
 =?iso-8859-1?Q?yVvHwLS6gc46SciCPykw6aUlC7RlSI1sMwFgnjF+SkfO0QoOAFIJGd8Sdg?=
 =?iso-8859-1?Q?6qbkTwBE6XFtRmsO971V2u7AtqlIGwbLE99l/eq9JZoye9Y7NrfRNatqaB?=
 =?iso-8859-1?Q?VikHErvbuq8Fo/5mD3CAE8ibf5HklZAXldNIA+31H+eOnw+VU+/Yvmj6aW?=
 =?iso-8859-1?Q?uD2eIIrzQU8BYEuauAiXz/+74x9YMSJvz1fiVa3S73LwwY0MR/3LErPlni?=
 =?iso-8859-1?Q?RaBy0n6pRKNFcXAzIOnhaEwmlgF+Qh7gmOsQLXOX/YMrWzl12bVX1grfkL?=
 =?iso-8859-1?Q?DqIcWpjg2FX4wAqNnud8j2Jmcz4Nr0vB6JUGfeQuHBWbPrVm07dx7OBjVQ?=
 =?iso-8859-1?Q?oairxcIhGSoZdTdfv+SiodO18HpwVA2cS1NVBuN/DMvtq4CELZFrB6OUpM?=
 =?iso-8859-1?Q?OL6BUU4D7cUlnz1h4v/Ee58l5CTT5pGY+GTfm+Vh2Vu8NUpxQNFh++PqrP?=
 =?iso-8859-1?Q?Dmb7vG4diHCyp3/HSBUuO9SDepSNdTWxl/VzOMVYb9cx01+3GircufB4J0?=
 =?iso-8859-1?Q?1Ti6OcmPcgeW5r08Ny38SBgP+yzhyex5lSIi4PTYb3HPEBJLiZE0dPS+wi?=
 =?iso-8859-1?Q?kZc57okLSRIFsPqTnlzg7i32AbjSyB2V/Wh2bH9BcVM4/cm8+/tACQ24HN?=
 =?iso-8859-1?Q?zLjgmz5eyvAWyLezykWQQTuwy4nHD/mKKPrXPow1QUr6OMMHAKAkZAoIJL?=
 =?iso-8859-1?Q?bxol3+zJk7jkOYgERXI9LZV1jwCIGBf6MvvOppN2A2XLKhREqgMQvXj3pn?=
 =?iso-8859-1?Q?FrSGSOwlg3I85usGyuOW9NdiAcRtoyW9LHIf5ibhhRChAW5Q5cd3vusSDw?=
 =?iso-8859-1?Q?1c/Fku8Bs4zceOoKY/R5WX/xLxT8temLqerXiCXYFJjjXNOFo6Zulwz44d?=
 =?iso-8859-1?Q?X3nLUq5vroeeMZvbiDqFfmjcgdyYetyV08WWJ5G822Nb/m+UsNSMTfSJKD?=
 =?iso-8859-1?Q?7lRQ/uN110nEQ8zOR6b1YrrZPBwTR1Huv9I0AJKYk7Gk6lk/ngTo3vp+Aw?=
 =?iso-8859-1?Q?ssPngEqoQsg2O6ahV4eZulCiq0iRGXLeniaNCKJKjYlP6cKobgtokd/iW8?=
 =?iso-8859-1?Q?AWRzYu8heal5An4yeQFpC07/90OZpm76arh79g2Q7sIg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fhdj2iJkJnp7BHusgWmhnj43+JC/VGR3lNtXcm7Sbe51cw50WWUPnpePlU?=
 =?iso-8859-1?Q?DiB3a4aZZm66A2kTrGabBSvaxOYHzxx3JsqZv5oqk4B5F+t4T/wXTR/ijK?=
 =?iso-8859-1?Q?usPzF6f1phFp5RE6OueiXrZwnOeknM3G8XfZPs4fCw5wtGeFCdcGYtFboB?=
 =?iso-8859-1?Q?TRm0DBrif42wT5RLq6dZiBDU9F2R5qZe9yz68uhneugjRCRSbJrpocl9QM?=
 =?iso-8859-1?Q?9xpT5Kwdux0QVAUUAxwZ703WmoPnUNt6+aqaZYf/qR31Q/l8AtjjqkxTiG?=
 =?iso-8859-1?Q?moeN8enbxqnCdymim+aEKQbLzWZtmhQq/mKB2ablp3BopeFHgcONmX2fl4?=
 =?iso-8859-1?Q?8d1PUsWrgWx3cjWBuqx/n0DC+uoR9WmOC10T8e+7JzWhx+GNegMg5G3Bve?=
 =?iso-8859-1?Q?SVogeXDqkZysoEs2juQtCz1e+08o4bkzGPXflTKZuVzPf3SQeKqmf/WzXW?=
 =?iso-8859-1?Q?jg2mRkbhxJitniT8yTkp9OPGjih3/i0DwD9QCEPaMOYS/GVX1XDFVwJxAh?=
 =?iso-8859-1?Q?Dy8NqINZa/DOX5pEjesG+fbyS1kia1yfY004tnAq6fvlGMDjbvdAQoUDxT?=
 =?iso-8859-1?Q?nKt4qpTIhWIMNLocrllfiJ3E3EpKB4CiODGhXo7TN9w6OUoXiVrcVVseRh?=
 =?iso-8859-1?Q?puEtnW7Twh9hr9wTP6Qz8oJT2mUum3CWKk8rDkQM4TtvQPgoQQVr623OCc?=
 =?iso-8859-1?Q?fivY6pjJww/SWpY80B5nL3VMaHO3EfgwGVFjklDSSCD1dE2qnC7G0znLqN?=
 =?iso-8859-1?Q?ROyDZ14h9mAJHbV5BTpuSKZ1tnUDRGQlI1V2GmGQcSK7w68emtI4wXHR9y?=
 =?iso-8859-1?Q?mAWia0GNXZ4vU/Ml5P7d9qaHUMTk0/GXB+pmwD5ruDZq7OYtVzr5L/tMmg?=
 =?iso-8859-1?Q?iBAPrzxbMhVeUf5e1PEnKmX0n2squubHaA9fngn5Z7ZSOA0qqLvGewzOnY?=
 =?iso-8859-1?Q?Yqgpi2o5K71LyJMMYT6OpvP7Tb9p8uaa7U7HsDL0gjr7R3SU635ZPrnxKH?=
 =?iso-8859-1?Q?4M9G9h6dUdT7WJgeXxdNDdFlm2mVxMLtM+MQvXlAmqmmau9mXBQeHOBkkf?=
 =?iso-8859-1?Q?T+VOZNgcSyAtSWd10A+RyH2cwlDepSiLV+pv3e4IYPDStn1wohdv1h6rc+?=
 =?iso-8859-1?Q?diCs86diLszsZAglrAak+XP7NILOU0X0jdQ5PQo24NkkCO/Ml6Z45IQ+Jk?=
 =?iso-8859-1?Q?ve/KmC6BP6q06qWRueU3IIF5atUstU8hJwSWYuwsw1yg9Q9RJMfcxnmNfk?=
 =?iso-8859-1?Q?up/QCg72mFdG6aK085eZPEriKn+k/DtCMQx22k2sOGGUfR3DmdgcmOLAEP?=
 =?iso-8859-1?Q?zdGpBV/s66tqnIWttIFbQLl15xQ4kpVP/cgjtfrOEbl2ug/YfX+9gezGRY?=
 =?iso-8859-1?Q?7Q7mUxZiWpePdJMQwcLa2TydCPYPL9HNP/sXLi9t9Yy3fsdWHRLrCOXhmO?=
 =?iso-8859-1?Q?qEiAQnE6WjqsqF5ZRfdnveuBX9ti8fCx5O7aU0yX7ECxN4VSGK2BlXEUMW?=
 =?iso-8859-1?Q?0T7Tp/PmR616Uj08v0x6YioTnTzkXGt9hxYnfETZnQRQTEPiXm4rVPasde?=
 =?iso-8859-1?Q?axMGJg3lEq7Hl//PGcsJbRLizOcLHqOWyhyd+1Zr3DBriFT31GXmleCQPh?=
 =?iso-8859-1?Q?wk4aJfnwihuB35Yz+dAEwzUuF7GQTiq2Vj?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca0b6e32-9ca5-4410-f848-08ddc9101f54
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 11:08:43.8188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3cgnyMXJiKAoipQYNSHAyTeARdcQhlsJYwEjB9HA3C/NV02A4pCHmQsTGZs4z7GuH2POfAPGj+zESnMLvK3B6S4mZ/hSAo7pEWyf2oISVi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR07MB9924
X-Proofpoint-GUID: xlamTrF8tkEsXc5TPFU8xA5_ze7S4bAA
X-Authority-Analysis: v=2.4 cv=TonmhCXh c=1 sm=1 tr=0 ts=687f713e cx=c_pps
 a=PsHZ2D2ELw/CC0ItkZK1jQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=Wb1JkmetP80A:10 a=m3P6IW4lH-wA:10
 a=PKFJKWLzkTExRTAMOM4A:9 a=wPNLvfGTeEIA:10
X-Proofpoint-ORIG-GUID: xlamTrF8tkEsXc5TPFU8xA5_ze7S4bAA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA5MCBTYWx0ZWRfX8rscaD5L0g5M
 Wb/iOXxN7jbCddqALorjqvifQPwGlWhkHy09UCCJkNxZKkAoXDPcxE7jF6c6j2hXmHpeWZdhirN
 Eo8Es23ZqfUkuwsPtArqaatz9MsQp9G/J+3IEd8bMBlKHJj2kmsdMt0QRVyn3/KQeMwaBMKXbsO
 pJmpo5rNDKjkhMnnCjQbM2yBEFdkF2oae/jJXs8E5NEVLW8T7LwUwmx3+DQGSlceB6tIwZnjKyt
 VCaf8UnRGStaFQL7lGaFG8aCRRa9kw44n+Ig6SvAFNORtyNKDe3Mkye3sJ7XlgPAVMeoJAw5Q01
 AlO+wz53/kF4ecx/jz+YBb3dCBA4riQbdGl24AFDuP3Ox12Del0VPHKLEMk2AURKycLRUTRvyiu
 47XY8A2znngY8C8GNR/yFmg73rqmnVs8rjM+EEWinvtoaH2eVIxh8VXzG5dra/LJCY+n99HY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=474 malwarescore=0 bulkscore=0 impostorscore=0
 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_040850_039779_BD9F7594 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On our LS1046A based board (v2022.03) we used to pass the results of memory=
 tests in the PBL  through the OCRAM to the barebox load.=0A=
I see there is handoff data support.=0A=
=0A=
In my board lowlevel.c code, I have added the call:=0A=
=0A=
handoff_add_arm_machine(0x12345678);=0A=
=0A=
=0A=
And then try to read it back from device_initcall:=0A=
=0A=
=A0machine =3D handoff_data_get_entry(HANDOFF_DATA_ARM_MACHINE, &hsize);=0A=
printf("machine =3D %ld, %p\n", hsize, machine);=0A=
=0A=
However, both the machine pointer and size are set to 0.=0A=
=0A=
Am I missing something in the process?=0A=
=0A=
Cheers,=0A=
Renaud=0A=
=A0=


