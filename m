Delivery-date: Mon, 29 Apr 2024 18:41:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1U48-007viM-0H
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 18:41:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1U47-000445-8j
	for lore@pengutronix.de; Mon, 29 Apr 2024 18:41:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UweK2cMLamGNmo/VDN1Vt7UyvbX5kjyueC095KqmfUM=; b=c7/OJlgWfs+JTM
	PAxAE5phNue53ABD03ynuVGoGSvwhEh9IdfVZORNW8HxhSlJzFOHzJvng0/Uuuz/jyRR8lUrgzeg/
	6/o137pvfkD4DflJDNOsciRPPP4TRTkbBZDP+WUQXzcBrWWuBG70xCkcDb15cEovAK8sUc29MXVqF
	7Tfw+EsWI3SpD597lswrYhWWmmKXLnfcWE9jFglF5iZb3ZBDk2Lt3TaqFM8gzJrsKbSc0kOx2Vs6J
	8ZZC1ET2FRU+A3uGlPe0+5SQ46Nm/SpYd5jkf2zXCoQRQw6qfUEWY8k+2qCOGcCnzRjz04uLDGBY9
	8OEXqhdqKkGCuA0uQp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1U3a-00000003cAp-0wpm;
	Mon, 29 Apr 2024 16:40:46 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1U3X-00000003cAD-00MA
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 16:40:44 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43TENfnH004560
	for <barebox@lists.infradead.org>; Mon, 29 Apr 2024 12:40:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=pphost; bh=UweK2cMLam
	GNmo/VDN1Vt7UyvbX5kjyueC095KqmfUM=; b=SGLGUGBsL8pX2i5YyBCjKB+zPB
	ldRs302e1GNgRBL6wbCkDVj11jloHnppcI95008j7uz4zebLV2jsnDbuA4l3VJH8
	ubNFtIO9B2+PQh8ngdyH9LaJWU8RdCeao0zCL0qN0ei605IJi4uzwXlLBrBRNzHG
	zn9ftXF4d8OIz7qvNm/7oqP5SvB6D62xnJ8CVViFFvEsotCVlVANvUMe0iA0sUJf
	2wqYvDfuGCD/87HCaEv3DnXyX8zYh1fW30pZN+TlUcVWeGhLQIhSQZlv72dVxdw9
	x02m1kcn/SohF5MKcd/OEqBAc+L9H3T4Zjh/7jsmu4ng4KCK9vc+ajGa7b6A==
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazlp17010000.outbound.protection.outlook.com [40.93.14.0])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3xru64yae5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 29 Apr 2024 12:40:40 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNf4B8lp81geaBLrvrYe5+ODEwENLkoNtKb7UycmWbwed2lrbBM8PzyjhpqP8elJgIB1dNzXoa6DHTN5MnOICGbkHzIwCMJ3LwCg2CpRkyeVoF/YEUV1gyMxFtLphRXr7bbqPIDhI8KfDWO4hwgKSu5gRtxJX7mudSaJAODQMj2gfnUXmrGjFvzOXlJk95xxJwZrDCjtx0y+qMZJ0+7GppyMaa6uDd8NncHInYy7sbvVyVDnzwHRrDvO5nyK3sIZeE0BdZdjVEWl3inaOBsygx9ijZC33GC76eIg6c58agPqJDuBoeCXSAIH6Lb5bLuc6CFM0UD/V++PFAIg+Co/Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UweK2cMLamGNmo/VDN1Vt7UyvbX5kjyueC095KqmfUM=;
 b=Mc9irI9xsP3WILG6pMgm5Fyl/Lw3ENxRLlbUxERcYdGuhYGOIWPseM5nzET30akyCfFuTt5zuQ301FkfQ7rhu0JHLhyl1yE00wFdUxOm4OW4V2M7Gzzgeoh0xqDAhDBUS7UzEuSWxWQTDBSpMslEZ9BqXE3YDY5FBXGQTTNIKvjYGUkxfTn7P94oZhr1VqK/rM5KscKksNA3b0ROoExw312AWW3vpbxYbSGy0MStmK012uknvjyAQBg+nnzS4SUDetQI6Rr2kIinzlJbtgRD3vVnUEkJdpyJLb62er0ujYcX0kXoHmGLf52UYkhNLldHgvBtqs+8SAznOGwrXMJ5Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UweK2cMLamGNmo/VDN1Vt7UyvbX5kjyueC095KqmfUM=;
 b=2VhtpOuCTdhhh0u6PRHVgEt80TAN76Ein5OSTwdyPghkDs25rXy2u2saAfhQAE/ypORGbCLsrXbUsQXDjR2fksLE2R3I3AftDb56olTKmjEgk/4e1qgu1EYBw6jTxSUFgAUv1qQTcQcZTtZjqlQ4GK0a/kW3AuBIfbnMj2lFbMc=
Received: from BYAPR07MB6837.namprd07.prod.outlook.com (2603:10b6:a03:119::14)
 by CH0PR07MB8250.namprd07.prod.outlook.com (2603:10b6:610:df::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.36; Mon, 29 Apr
 2024 16:40:38 +0000
Received: from BYAPR07MB6837.namprd07.prod.outlook.com
 ([fe80::bb6d:7770:b31a:7eb6]) by BYAPR07MB6837.namprd07.prod.outlook.com
 ([fe80::bb6d:7770:b31a:7eb6%4]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 16:40:38 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: tlsf failure
Thread-Index: AdqaU71fpnK8ZS/OReyZW10O0XIQ9A==
Date: Mon, 29 Apr 2024 16:40:38 +0000
Message-ID: <BYAPR07MB6837F4F0FE5C6F7569DE3E59EC1B2@BYAPR07MB6837.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR07MB6837:EE_|CH0PR07MB8250:EE_
x-ms-office365-filtering-correlation-id: 3c1735cf-1e04-4524-d90b-08dc686b19a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?NWFcKi6ngOAg4nqZbmBHBlAlwznZIQBSwA+y+yM+ChnP9HrhMvAe/NQrrUa0?=
 =?us-ascii?Q?Iw/5eMUw/fHLabg0/bQI8YCa5mNR62by8KfycfxhTp2x4C3qoIXU9hCLIG8t?=
 =?us-ascii?Q?NhRb4GM27aPcPdGtT7hHdyEIX0E7+G1QjtOQy1myVOLYYYnYC+ZL065osORN?=
 =?us-ascii?Q?4LRD2PFHkVBI6DB/Kl3Xpo8lwnnzGvler1FRFuRkAvWKRVDyCWqRnWYIh90z?=
 =?us-ascii?Q?uL5Llg4a1bngi0dLGVodlM0dbyysozFthpTlpNpxVxaug8kjOY8NxNL7vFJb?=
 =?us-ascii?Q?Ktk6eS5z92WtRCQ/LGeLEv+1xtWCEhQjH0CJTXFF/+F3zK/M9FpRP2yoNgZ2?=
 =?us-ascii?Q?/jK3Hrv+l158+ILnbG5sWGB1ZXuFyRlNPVWTdMud4FDbn5crRJhhliXeMYIL?=
 =?us-ascii?Q?NxYhEYOXDxAYiwE0wNJJ6Ka19aX/juFHizNIeWUdH71RfnY0IzAcT1duGcVA?=
 =?us-ascii?Q?LaTs89ktLtWVyzXGHm5xdDplQCerHOAlYbGWj4EDbA+ebg/ORwlT4HR/vATU?=
 =?us-ascii?Q?lrsN34dJF1WN9o+CLU3YoT0OXEYWNY+ASfBuXAXZ9+DYt/oO1qRytiRODtki?=
 =?us-ascii?Q?qvi3DMbGkviTelErQCHMOYYCemXx/xtlzjZz3MEOmOVIpowHLgf58SQi/eXl?=
 =?us-ascii?Q?u2kaRWTDpDoyK+K2t6kP6Z4bfWc5SNHx+7n+PQJ6qzAWGw0k9TGDV/Yxi70G?=
 =?us-ascii?Q?lMjtxozF36GcwaFynULa6ZS8Iz0cE6rafY5Agnvr2y8FsSrExj5FOW7nZxxT?=
 =?us-ascii?Q?CDONN4rlogJjG1X6KkqIjOLvSo9pgVe8C++UJzpG8w92mCQV4ESJPxeMF35l?=
 =?us-ascii?Q?SpL5OTAU0f8yvGcxGd1EOIChzt5gX8z/RD1a/vg8qCQ7MH9sreg/pCVw1++T?=
 =?us-ascii?Q?bEdnrrYAYZH0SmzzPG9RIzc+NfEbJoMgVmpFVRqh99+60MoC+q65itdq3Bwl?=
 =?us-ascii?Q?SrTQ6EJgM6PQw4ye/BpRdULhxmno1iIZm2rkBUi9LU3sSERFI/RgYUxnovtz?=
 =?us-ascii?Q?7SQ/76W4plO37ynRhgikLBPXGDz9QY9uWvL7Z7l7sEeNwtkTdHwtRY1p5VZ0?=
 =?us-ascii?Q?0GUa53I5FhXqb50+0vI/rsPVoqyAdopxjzHY9tbijjh31c+GClYIbpgXYrIP?=
 =?us-ascii?Q?FspbfPHe7LDVXmcujGdwg3Ja8uDJRAyEno8WYT02IJb1rR90RBLGIFqvD2Lu?=
 =?us-ascii?Q?J0JPVLbYF6mBCrlP8A+/ktNvk7+JEgUobKcs4uKxc5S6muklutUPTFCCubxb?=
 =?us-ascii?Q?A82gcGj9ARISW4DNJVZPB/YSZ4OPUX12K1Ge5m+XfLfGL/FmQP/tDY5k10RV?=
 =?us-ascii?Q?oAsKl6ewV3udQ3RaC62oTHBjz3RLi+N3yGTQ3FWhTqmzSQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR07MB6837.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R2uHOeAYgoidMyJdQNwL/y/12ogsM4QlLIC28yZRf03e91j/5oHeXvAReQGq?=
 =?us-ascii?Q?NxT/oUfCmtKLzUikaggRJuPhxstmMPHgCnymg4P2vaNscW53GiJhv7Ftm6es?=
 =?us-ascii?Q?WdFYlXQkmn87dckqnoXC7BkLKi2XLWR1w/+MMmZLcgZP80RUi351L/IkKSJk?=
 =?us-ascii?Q?cJD3oVlY/QqkzHvmhWY+spmC3NXelNPQREUxKBuXjxVc5KApblsGPSK/Bx7E?=
 =?us-ascii?Q?9cW+Z0uGUTNoVuf/EizNpEzbUGPULTDDthxuweo6oNyDIHxz5QgynQRaHEXi?=
 =?us-ascii?Q?SfulnTim0c4DkNRCld8h5iBx/TZiRY8n9cgaDPobiid0FxqKhoehsOpoWUtR?=
 =?us-ascii?Q?AlPtCprXQju7V/5fHceHgQHwpICHB5KwP1ApyS6o8KM5golMRSUOzKjO97Mn?=
 =?us-ascii?Q?t/w4QitFD6WoEzWVV1/3n5BmsOLDtDZDtk0wt5gwRECmaQxB+pbHGWibz2U1?=
 =?us-ascii?Q?GmDism6X5dQK6J/HDwtGBELZNY2NXM14VSD4jKd/H5KJ+bkgJVjJ7M2vidZy?=
 =?us-ascii?Q?215pt4PpH1Wlgjqi2PzbWeki+DovFFX5GK7vF6vo9OxNRnmcofKDNnwUYo/9?=
 =?us-ascii?Q?j8pTxSO5XW633amSyRZCciR4W4ezjrC/O07fpDjSqT8lqP06m8ePbI7nt+lK?=
 =?us-ascii?Q?YIVApufrPJ5pwIoLYQAdL3zLajPYXmxMuZOl4zGVwSeVSjQtHoSoDUoJW2ab?=
 =?us-ascii?Q?Dqyn5R8Jq4sGJ5rPIZFln3MwvYNj/sjF13pBPyyqiKaC+gGXmwWlk6vv5itg?=
 =?us-ascii?Q?yEmKFt1EgUoCaKQcjqHPhXQM40ZvGM0lGka77oh5MTA45SZW5ikO5yEKPs69?=
 =?us-ascii?Q?UHvv+1lxeCF8C4tTrSKu9IMuwuQEyb+Bnzui8XALKHTZDofRoFMM0dRy/PzZ?=
 =?us-ascii?Q?0JfC3QKq0LIepsJ9wQn1JFxe7KZEUb67c8ULSr1Co8bUFUDL4NXNkdTLBMbB?=
 =?us-ascii?Q?mpZbuN3oJj5WDcWy68oIA8LiRLy7EybCfGO/pR1l5JIBS9P38YX7XMkk/+0f?=
 =?us-ascii?Q?DfLjGDK8dgvl3EtnV8BbnrDhBj9/pMh2OvVnUwzIILyDzvus7cfI3LeG9J6D?=
 =?us-ascii?Q?wgyd6LUM8fXp1OLOIdgex6kezTj2gegpVhN3Af6fJ9rci2BgEsjqCgfYqAe8?=
 =?us-ascii?Q?28w4mI/74pSBlHne6ctKGPn4wY9zuAAQ5TGgZTrWE4YtTGECKimUgunuuRrw?=
 =?us-ascii?Q?c1BTM62Omb4U/1+gsgJ4vxVRgPX+HLFZmEEvVIaI4mvjr0ETW8e70F5Bny9X?=
 =?us-ascii?Q?akTi729ETUkti77s5w/cLsnRksjPJAPAhgzaXKE8VunQ8dty5Adgo5HpOJ7p?=
 =?us-ascii?Q?PjigbTXv3wj4PzU+I3ePooIrp13qyi32GpbF2J8LzCxBfTEnoEV7kzgN1g/Q?=
 =?us-ascii?Q?YWyn90NqQuEY8IEZJbNEmpokrrxHr9NWqF6npzZ0meEQEW1kuusP4EHHsZY1?=
 =?us-ascii?Q?1nIqP8JLP0A1eK3PDuXChQT6J1CIXZKZ2TE1kVvRBjtrnMmn28jW1d4yKKOZ?=
 =?us-ascii?Q?B66WF5smrPiHDyD9U3D9WTS5jgRNWD+5A4Cycu97DiNJHg5WWJ1MOjho2qJ+?=
 =?us-ascii?Q?Q5IzxSTCPFzydCBPl0WLaMg0vK0ET9CqkJYjEt9J?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR07MB6837.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c1735cf-1e04-4524-d90b-08dc686b19a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 16:40:38.0831
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnhkJDlmz7iRt2iLi1FR9FjKJAidT5kg+nba62dw03fGSuvjMSkTTwEnlaWXfqBP3yKbafWoUvoWvXx+y0m+hkOzVC+7Xgwwe8quUqdkMvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR07MB8250
X-Proofpoint-GUID: 4-tVhWL0GQsVhYHYeUHqn54QDoJy2hRk
X-Proofpoint-ORIG-GUID: 4-tVhWL0GQsVhYHYeUHqn54QDoJy2hRk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_14,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 mlxscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 mlxlogscore=547
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404290107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_094043_381914_32079D65 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: tlsf failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a prototype board with a LS1026A processor (LS1046A). The system ha=
s a primary SPI NOR and recovery SPI NOR.
>From the recovery, I attempt to program the primary NOR.


I have the following error while calling our command below. This command sw=
itch NOR selection and calls barebox_update through run_command

OWBOOT> / oft recovery openware-core-prometheus-ls1046a-20240412112207-OWC-=
2022-09.0-prometheus-6.8.0-EA1-0_nor.img
Programming primary NOR device
oft_storage_program: cmd =3D barebox_update -t nor openware-core-prometheus=
-ls1046a-20240412112207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img
DEBUG: block_size smaller than size : 0, 32
block_size(block) >=3D sizecommon/tlsf.c 598
Call trace:
[<fbd7db68>] (unwind_backtrace+0x0/0x88) from [<fbd0944c>] (block_locate_fr=
ee+0x144/0x158)
[<fbd0944c>] (block_locate_free+0x144/0x158) from [<fbd09738>] (tlsf_malloc=
+0x2c/0x44)
[<fbd09738>] (tlsf_malloc+0x2c/0x44) from [<fbd08b0c>] (malloc+0x20/0x3c)
[<fbd08b0c>] (malloc+0x20/0x3c) from [<fbd517cc>] (xmalloc+0x14/0x2c)
[<fbd517cc>] (xmalloc+0x14/0x2c) from [<fbd51824>] (xzalloc+0x14/0x34)
[<fbd51824>] (xzalloc+0x14/0x34) from [<fbd0bcdc>] (initialize_context+0x20=
/0x48)
[<fbd0bcdc>] (initialize_context+0x20/0x48) from [<fbd0d204>] (run_command+=
0x30/0x4c)
[<fbd0d204>] (run_command+0x30/0x4c) from [<fbd78158>] (oft_storage_program=
+0x70/0xa4)
[<fbd78158>] (oft_storage_program+0x70/0xa4) from [<fbd78270>] (do_oft_reco=
very+0xe4/0x154)

If I call Barebox_update directly, there is no  problem.:
OWBOOT> / barebox_update -t nor openware-core-prometheus-ls1046a-2024041211=
2207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img
Image Metadata:
  build: #1 Fri Apr 12 11:21:46 UTC 2024
  buildsystem version:
  release: 2022.03.0-g06e02c3d98.prometh-00008-g06e02c3d98ea
  of_compatible: fsl,ls1046a owc,SWE550S owc,SWE450S
  model: owc-swe550s
bbu: Devicetree compatible "fsl,ls1046a" matches current machine
update barebox from openware-core-prometheus-ls1046a-20240412112207-OWC-202=
2-09.0-prometheus-6.8.0-EA1-0_nor.img using handler nor to /dev/m25p0 (y/n)=
?


The image being burned is 64MIB. We have also a NAND image 2.5 bigger and t=
his error do not appear when calling our wrapper command.

Any clue why this would happen?

Cheers,
Renaud


