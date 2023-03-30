Delivery-date: Thu, 30 Mar 2023 15:33:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phsOq-002lcQ-O4
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 15:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phsOp-0000Ue-RF
	for lore@pengutronix.de; Thu, 30 Mar 2023 15:33:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PWAamuIz2XW83w+H4rTgoFgB8XppsguizCYOLCXH/KU=; b=ApSpsmzvMkFWNzmcwmjR2Zh897
	2eVXrwU39KvVNFDd668ZGG3qwt11YygEJEOBNJ8KES6dcTyHWdBWNx0MjCZWG1e9MWJzFkHPJAQjs
	fbgpSCmL4w6H/dxL6LfMY8KA+kZLhMQjzDLPf1LdpHJcQRSZ58mnxfTWk5obAm22xySeldDfTvELF
	/xWROQcC0B+333+oELXiXk+FXpwSKYUJttCF+XALIb7SG0luF2C19gBk3v1FD/QcChmZJEjVvBnBE
	f/lAvudnfUGmhEiwQRiIn0G9Wp9q3MfJxninknIM0L5emXB1etIHEVSIUnqEajIELaXHK2HoSLII6
	M7glGYeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phsNd-003tYK-0K;
	Thu, 30 Mar 2023 13:31:53 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phsNY-003tXZ-2u
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 13:31:51 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32UAoHKf025361;
	Thu, 30 Mar 2023 09:31:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=PWAamuIz2XW83w+H4rTgoFgB8XppsguizCYOLCXH/KU=;
 b=qIFGvOXv8dXSIpQLXm6Nt+pV2ZRdl5RpdnQdBZ1+/9LecW2tdABzvv0aYqikaGF1Y6A+
 Qsz+zGM2y4+rSu+bP2MPyRhnJscIqrkgcYm2gJI6X+NQpPWtE7Zt+QWSFnotrQu5qUIl
 NJd+mYtgQ3XxcaV9iO+T7Nr6cagXj/XHTtRfLL5z16uTaFCOQC0tB8vgICKsyA0MK1ew
 nx2boD/bIi5CDPTUwZ9WK5bPfC1lhJFb1hJ75AJOblLBmwc6ftLFBKLMS8AF0SnPqSLZ
 PP4WiXXKDMKoCUfTLq4+Lc0/2ocZO+PvsK0rMvHoNYPNfBUF31rr7Pu48jKJd3h3Jj45 /Q== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3phucfxcut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 09:31:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzZzTYRAH15DQBNnz5pdYwNxVqmesE6y502wjzzkK4mFVoJSqLawOxy+S6S3ZLEsBbIGoz5OQf5/SZ1Fod/xLuPWwFbd7xZ6I2BRMPyYl9hZ/yzUaCOJWlC8ayVl1BvG5yUQhEk6bm0I9J7j2RKN5A8tQYxwQe7xC6z6FFr2t9IBkPz14zYtAGzANix1ykkMq6PZ/mqQoB0X8WP3jtQf7s8KMQyZfKeo/SVqhd/rfPzBgWHEY3SEQTetsArHcchPoMhpRe6BD8nNpP73ei09ufRVpJ/kxO9luDv8SQC99IghV/hY9naGjfq9GtyDCtGIJPtrDCeA2oOYDrzQiHNHlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PWAamuIz2XW83w+H4rTgoFgB8XppsguizCYOLCXH/KU=;
 b=FBFTLLxtDaVi8p0Q3HK/Z0n9A8vgARu03NwqBYL2FTYBY5EZT3G8zF6s8z3Uf2F6Orpb21RgW0A+ImmiVFV+S2E//Da3IQIgZDZGNMqEdtp3N5K4Aal5Y3LSHIs39XROBpKKh3hrGp6nDhCWav6LU6ZwmzioABQhG330xm8cvEjif9alpg5qIN0CTyVJ5sZm+I2unQtoPV5fLjCEaIdY4jt8tCBsQmq+tLfRiImqVzGGLoGNiAbq+fwZDBkYqFCpg5TFX908Xi8VjhCXqxNsxY0wNd4AnGoCdKqL9qLc1i3E7ffjN5X8vRV77pnR+z3JtTB56rZ2UNvrHMQcDIt6tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWAamuIz2XW83w+H4rTgoFgB8XppsguizCYOLCXH/KU=;
 b=2X96aAx/VYRzlTPd2a+sGtG7XwSXmEf6QyDtsdZgOz88cnrO9tRIa0Uu2uEqDS+nYquQaG+UZ4n7efMCZbOI2/+lg5OCyhXLghJRKyRpY2U3/FxSIfxg10+JaFrhlloTqnzlm8BHpKjfb7pFbyBz2r4JquJZc6GwSs4FI/rz7lA=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BYAPR07MB7943.namprd07.prod.outlook.com (2603:10b6:a03:a1::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.20; Thu, 30 Mar
 2023 13:31:37 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6254.021; Thu, 30 Mar 2023
 13:31:36 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: LS1021A performance
Thread-Index: Adli8/MSQZh0oqFCTDGUikKl7/yNnQACTMOAAAIftgA=
Date: Thu, 30 Mar 2023 13:31:36 +0000
Message-ID:  <BL0PR07MB566562459F73E606BF3BB629EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9b5975a7-8b1d-0861-ce01-9206a3ddfc7d@pengutronix.de>
In-Reply-To: <9b5975a7-8b1d-0861-ce01-9206a3ddfc7d@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BYAPR07MB7943:EE_
x-ms-office365-filtering-correlation-id: 8a6c986b-891a-49e5-7052-08db3123160a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  mLAXuid4pXMmtsRcVN6dgWmLzWRCbGjrMlhrqsSvopxrDaRp2LFNBXdbkuVRLYaMLRMmNtHweJAiYDMfPI1UnA2M+UOwfXofyCoJ9klr94ZViT3EYA2ijsbbl1JaHorBhnWa4nkws8alE5J9mzk/ItpAH3M6bfTilMOMcGbZrqBnQ8xu+kYcePKNZGvA983KG1SFJ36l0Iw91F5KGG35airDeE0pYRAnBtN+eZiUcGG6qRcJNCa5GObo84rEpC+As2DcHe+MK3YoGvi8mc2f/57Lfcr7rRUqQLSrYLAVb2xigQTiHWG0uPDFkmei8/fMexnJLb5t7BbQeHODGbqn/8D5TyaMSOJtsVEDAy24rzghE3PqU0nzIDKjH41EavunMP2//0UYty/uexDgZhG1gxjDuSSgVWDHmsIHrI2RoFud9rptFv5KS9xcH+qpKtApC3ui2qOEus8d/fEWQnWgEE0mIfJCxPZ5Ep0xuummke4kemoXxRPFQT0Ge28EVc6qgbeFpony5TEHOgTNfLrE13a9v6yzrVtVPZp4lZkTg/h0XHExuO7CAXOCZYTrwkXGlIqL+QCT8HxrYNRj/WebtqdDSPXt1Ivjxh9e/YVU/mA=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(451199021)(478600001)(7696005)(71200400001)(110136005)(316002)(19627235002)(33656002)(122000001)(38100700002)(38070700005)(55016003)(9686003)(26005)(186003)(6506007)(966005)(83380400001)(52536014)(8936002)(7116003)(5660300002)(8676002)(66946007)(66446008)(64756008)(76116006)(66556008)(66476007)(2906002)(41300700001)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?aHdkbHFLblYveC9HOVFmV0NYYzk5THFmbFBWd1JvNFZtbU9yRm9xekplOGFL?=
 =?utf-8?B?L3BXRENNTVB2WG9razJqbGhCb1RWZjdBamViMHZteFlNb0tZVW9uTXBwOXk0?=
 =?utf-8?B?TFNsRXNSbkNBN05PMy95Z044QzFZWERtdnJwdW9xVmNHN0RtV2RkNnUvYk8r?=
 =?utf-8?B?Z1RDanlnMUtZOFNQTHFtWGlIRnRYM1RHczBsUlNXODVyVS8xNmJib1RVbDJ6?=
 =?utf-8?B?Mm14MWw4VnliRTdjZWREazdVb2dLeDhaWlFtWk9uZUtVeEZQMG9tL2VCeHRG?=
 =?utf-8?B?WGJNdHhtMmdwbVU2Qyt3WVhKdG9Jb3pOSm0yUVBWT2MxWDFrR0VRSUxiU3Zu?=
 =?utf-8?B?Y0F6U1VWWGVkS1N1ZEVvT3FGQ0JpTC9Fb3VONFowV3EwNmlGQ0hDd1I5Y0pp?=
 =?utf-8?B?b2pwR1V0OXQ2VXBtS1J4c3V0Zmhwa2d1SGxIWVQ2NVRveVU5ejY1bFE5TVRu?=
 =?utf-8?B?cWtiV0cwTDJ4ajdpclEwRkFUdjRLUDhuWldWdHdKengvN2xyL1pLL29nTGE5?=
 =?utf-8?B?cGhtQlRMYnlsTE53MkpOdGdEajh3aTZWdkx0UFNubGQ0YWxyZVZUWllraytn?=
 =?utf-8?B?bWJ4SUlsdFNEKzZVenMvaUZZVVF1T1FRc0YyZTZkRFpJLzJSV2krdzBOUXRK?=
 =?utf-8?B?NnRtVXVkSTJBclBnaEMrZ1h5QmNTRnFLeWhueHNwWTZBNmdEY2FVREczSzhQ?=
 =?utf-8?B?TnlQNVVWVXhiSUxXQnphL1pvT1hSTEVLaTZLVEpZaGhzZkF0TVNRcy9COENk?=
 =?utf-8?B?VXVhay9YT0hselRvVWNZQWQ0OFdzckZyNzZaUXNjcFVoUDMyTUlpYUp0dW43?=
 =?utf-8?B?Z0RXajMrOVBRbGJNajRBODZJbk9qMWE0VWYvUUZZYXMydVZySmRBS29NTmtN?=
 =?utf-8?B?Y0ZVUmwwazhpTERQS3ZPdDNzNUZkLzUxSFR1S0xPVG9SNUxwU3djMFNTR29u?=
 =?utf-8?B?Q01LWTFlMGZGNUQ4UkZRTm9LUzNZeC9HVFlReEpVd1M4OG4wZm92VkQ1KzJF?=
 =?utf-8?B?SGdyV1N1NXdVb1AvK0J5MXlxVlRRcFA1dGswRXZmN0ZZWHcxNTcycHRuWXV5?=
 =?utf-8?B?NlFrNm5KQmFOaTVDSXk4b0lpT253OWxvVlVXb2lNaHNhTFVNd3lkemw0V01S?=
 =?utf-8?B?UThJQjlwVnZ5NjVpUzNnWVoyekRqeDZKRlpIU2E2NW1XdmVubjFaS1pYM2xP?=
 =?utf-8?B?ZGJWZVd2Z05IMjkrV3daYXY1L3BYN1dwZXZXcjBaMERBWnpEKzVYbE9LeUdx?=
 =?utf-8?B?eFdsUmdHcldoMUlUVUtYSFc3b0VGMVVxL3FJS0NlbUFDVlV6N3pTdVl2RlB3?=
 =?utf-8?B?VmhkWWF3ajN2ak14bkEyd0t6dldFVHVKZGMvbk5PcHRIcUI3Smo2S1o1WUFj?=
 =?utf-8?B?WlVqclEwK3hnWTdnQnByM3p2dU9RYUdkWFYrZkV5ZWFyc0NHT2NIbVJsTEty?=
 =?utf-8?B?Mk9YcHV2bitncnovNkpqblRRUTFuSXRnNXRITEpzcWI5aS9hWStqK0k2dGFj?=
 =?utf-8?B?M0NTczRwYk5wVVZkd0IzbFRQVkUyQTRPRHQrY1NndlMwb1ZNQXNwbWpUblZl?=
 =?utf-8?B?YzJmSmFaekczTkVKTlQ2UUl0TkVlQ1pzZmlYekJtSklKaXFaQjhHUExub0Nl?=
 =?utf-8?B?Yk50ejIxeStoOHh5MmpFcXpvUjBRM1pmeVgwTWpLam1IY2Rkd0V4YnhjSS9j?=
 =?utf-8?B?YkRPRVJGSjFsMTFUdSthR3ZMSDJLb3V6ZEFFMjlNTXlaZ2h0Uy9ZZS9TN0RI?=
 =?utf-8?B?Njc4MkFjZTM0QWtoYjYxdHRkYjU0V1hVRWlkQzd1S2lueEdDZGZLU2dWWDht?=
 =?utf-8?B?M0w1M0V4WlhIRW1zTkV3TmUvZTJXdk0yU0d6a2Y0bzAwNFhYQzB0SmdyaDM1?=
 =?utf-8?B?WHNXZ3J4R0ROWSs4K1BaNnZUN0VRY1BkblV5YWFmbEFXRlBWeFRiRU4zTC9O?=
 =?utf-8?B?aHdDOWpYemFCSFJBUDBrMUVvem9ZcW55b3hheUpHRjFqWVY4VTB1Szc4bjEr?=
 =?utf-8?B?K282WmFtQVk1TVZpbkRHOUowejlpZHM2YkNVR0grOG5mbzN5NVlLaE1OWkt0?=
 =?utf-8?B?T2tGbEM3OXZzSlNpNUVIZlBOT0orclUyTldBUklDSUYyZ2R3OEZYbEtEN3Fy?=
 =?utf-8?Q?ih2+dQrYm7Wb6e3hsH7Vpm15Q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a6c986b-891a-49e5-7052-08db3123160a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 13:31:36.6206
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADK4bfCGfAdT0dYhz0mpyMeYKZdQ7Ijq40AEt8ugeJwPmpU8D1j4/FKAwGxI9rEeP2Xy5HJysue1nq5NHget3H/DjwZuE7VI/Sm+oz/Z3cI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB7943
X-Proofpoint-ORIG-GUID: 38JawYRMAdYj_kcQu5lWOKf-2UMqEe78
X-Proofpoint-GUID: 38JawYRMAdYj_kcQu5lWOKf-2UMqEe78
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_08,2023-03-30_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 bulkscore=0 mlxlogscore=724 clxscore=1015
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_063149_641845_FFA1F4E6 
X-CRM114-Status: GOOD (  20.45  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: LS1021A performance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DQoNCiANCj4gQ2FuIHlvdSBjb21wYXJlIFNIQTI1NiBpbnN0ZWFkIGFuZCBzZWUgaWYgdGhlIGRp
ZmZlcmVuY2UgaXMgc3RpbGwgYXMgc3Rhcms/DQo+IE1ha2Ugc3VyZSB0aGF0IENPTkZJR19ESUdF
U1RfU0hBMjU2X0FSTSBpcyBlbmFibGVkLg0KVGhlIFNIQTI1NiBpcyBlbmFibGVkLiBTSEEyNTYg
b24gYSAxIE1CIGZpbGU6DQpCYXJlYm94OiA4NDNtcw0KTGludXg6IA0KW3Jvb3RAb3BlbndhcmVd
IyB0aW1lIHNoYTI1NnN1bSAvdG1wL210ZDANCmVlZjY3YTMzMjdlM2VhYTUwZWU3YjFkYWQ4Nzkw
MTQ2NWYwMGQ3NmE2MzA4ZTM2MGEyZmVkYWI4MmM3OWY0OTMgIC90bXAvbXRkMA0KDQpyZWFsICAg
IDBtMC4wNTlzDQp1c2VyICAgIDBtMC4wNTZzDQpzeXMgICAgIDBtMC4wMDFzDQoNCk9uIGFub3Ro
ZXIgbm90ZSwgdGhlIGJvb3QgbG9hZGVyIHVzaW5nIHRoZSBMUzEwMjFBIGlzIG11Y2ggc2xvd2Vy
IHRoYW4gdXNpbmcgdGhlIFBQQyBQMTAxNC4NCkkgY29tcGFyZSB0aG9zZSB0d28gYXMgd2UgdXNl
ZCB0aGUgTFMxMDIxQSBhcyBhIHJlcGxhY2VtZW50IGZvciBQMTAxNCBvbiBhIGJvYXJkIChzYW1l
IHBlcmlwaGVyYWxzLCBzYW1lIGJvb3Qgc2VxdWVuY2UpDQpUaGUgUDEwMTQgcmVhY2ggdGhlIHBy
b21wdCBpbiAyMDBtcyB3aGlsZSB0aGUgTFMxMDIxIHRha2VzIDcwMG1zLg0KDQpBbHNvLCBJIG5v
dGljZWQgdGhhdCB0aGUgcGFnZWZsYWdzIGlzIGRpZmZlcmVudCBmb3IgdGhlIEREUiBtZW1vcnkg
b24gQmFyZWJveCBhbmQgTGludXggYXMgc2VlbiBieSB0aGUgTGF1dGVyYmFjaDoNCkJhcmVib3g6
IHdyaXRlLWJhY2svbm8gYWxsb2NhdGUNCkxpbnV4IDogSW5uZXI6d3JpdGUtYmFjay9hbGxvY2F0
ZSBvdXRlcjogd3JpdGUtYmFjay9hbGxvY2F0ZQ0KQ291bGQgdGhhdCBtZWFuIHRoZSBMMiBjYWNo
ZSBJcyBub3QgdXNlZD8NCj4gDQo+IERvIGJhcmVib3ggYW5kIExpbnV4IHJ1biBhdCB0aGUgc2Ft
ZSBDUFUgZnJlcXVlbmN5Pw0KQWNjb3JkaW5nIHRvIHRoZSBMYXV0ZXJiYWNoLCBjbG9jayByYXRp
byBoYXZlIG5vdCBjaGFuZ2VkIGluIHRoZSBjbG9ja2luZyByZWdpc3RlcnMNCj4gDQo+IENoZWVy
cywNCj4gQWhtYWQNCj4gDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gUmVuYXVkDQo+ID4NCj4gPg0K
PiA+DQo+ID4NCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IFN0ZXVlcndhbGRlciBT
dHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20v
djMvX19odHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlL19fOyEhSEtPU1UwZyFEDQo+IDR1RmVwZ3Fu
Z1RUSGFtcl83dGxRZVFvUkpxU0xMOG5weFRGQldGRi0NCj4ga2pwWnVIZ3ppMXF1UzZFRTFlY2pD
S3JfT19GSkdQZmtBbldYUXlmT05LSnhxZ3J0UVEkICAgfA0KPiAzMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfA0K
PiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5
LTUxMjEtMjA2OTE3LTU1NTUgfA0KDQo=


