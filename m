Delivery-date: Thu, 16 Jan 2025 11:52:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNUS-000ZDN-0J
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 11:52:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNUS-00050x-3G
	for lore@pengutronix.de; Thu, 16 Jan 2025 11:52:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDGauPEz3ns8qnJlsoXxbtKx1BIEVCwQiwGeu4oXA/0=; b=Xsqf3nvABNBK64
	b0ohMbRejMXgoRcOAhZ1J2jEBOzsQy9jLeCbsi6ws5GhJw29T8zuRnpHUv9Sd9rEIQAtCdSlI6lxb
	42F+ZQfwCyu37NAaKZJp1Uwu8622jdbiPTKlEs/JlYpYjzUdq3y0DY3fJaS7yGO2p+NplyzzbEkG0
	OG605EzjISHF0V3J3/ggcON2yJzES9K4EucupaKmq0sd690dAx7Spe+b6z3T3WxiFycyQjfqRamt4
	qGMtOYXwcnfZkRSasbcUp72d3v2II93w6A/TGLaING9Y6SE6mZFq8vqkN9CBHl3RJrIBEnXLeliJx
	f5pYXs2lTVhMY0XDYwMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNTs-0000000Ecd8-3iUz;
	Thu, 16 Jan 2025 10:52:08 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNTo-0000000Ecb8-3Z1I
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 10:52:07 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50G8On8T030406
	for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 05:52:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=zDGauPEz3ns8qnJlsoXxbtKx1
	BIEVCwQiwGeu4oXA/0=; b=4Y3+tTsV5N2uRzU5krNeXvRpfh9ndgHWrrlTxxszf
	eyaRjAEeaEZBC8qaGBSrtO5JV7vuKq3tJZg0BZE7tIZ3oMIvzW0oP6H7Ci4D8Yvr
	pWX2biBpbeHhqGt6iST5MsMv9Js0hhOwjHvAF4bSzDZ/eIqXxhuhKYQZTrceDxN4
	zi+JZ9T7yeBmrZYJv+Ox6yXyKWUyri5yHjh7REcbXcH89iNiqa570EqRW4eWki0R
	rD1HI5tG9HsPgWtptszlHakyr18WrBObeznFy5RZuvy2jFCJS/038ySM+MSFxlRg
	7Jr1SrE7DzgCQf5NLm/VlDOEpc6fGl+aMdiMxtdjE9PPQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2045.outbound.protection.outlook.com [104.47.55.45])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 446xjn8b17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 05:52:03 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mG3eXXywgvXbZ0kDcUpDNgJ+enKILUdnkpBN2rFASuz01fGslF64HdZk8ipN2maKLkp0E9rBvksAFddFw6eMi3u6PpoE47e05Yw0uxmcQIBGWbU7BQGW3UNUO91DlcpWKwexDXXHdQbQyVGq/IHA6B0h2Nkp0crI0OgxSeL7VxCz/riTNLSGESmJodduofSJeFlGy5n7vMEjN0/Ex6OxZCkw1CcLGvxOmFthISmke5yLPa6Fv/2qC4LpMDd26MTfWRKbP97kAA6hMzXM4hJ3dGQdkqKNEK0ZGefb+Ht6KS2ejaVDlkV3gkNIQ0jKvzMMzznVKqFOhrb3jIkcQ87xbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zDGauPEz3ns8qnJlsoXxbtKx1BIEVCwQiwGeu4oXA/0=;
 b=VIbDY1dFkp3cLND0H7uUFyKiwmv7g2ff44RUyE1zVTvvM37/ZNuOwf4CYEl1j6c8YBmP5xY0fKQE5ZixLr8rdV9uWqccEKCuHvf/ScRprf5VDswafPed5eitdxqkMMAhA/YwEzTjRh66e/cnKYQLSETv4az2RdqdujqYUEorV19GzWjztpGWOQtjJy2FleRyVtdLE1DNLNBdh5nMUlDtgdoBvlePyM1rvDogLesDDmanmeeD19VvP5mROBFb0Rrd1ku0JDZaqc+14B0drDpDeQflg8+egbcb/KGzRMjHyc0XjcGQt3yWR4ERHKQRBxkbywZiD6d7wmLLthvtdCFBQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zDGauPEz3ns8qnJlsoXxbtKx1BIEVCwQiwGeu4oXA/0=;
 b=dISFqRBmr7OX9X8R0jeKUj9avzhy6/yWmwhG6rNM7qvmOvWDqeVAPKtF0P4zRjUY6OnGrDICIljZUl4omF1VOyyfglBLmE9EQ92Cq0Sbk4/Nbru84AenOBmVDKwwmeLg4oExF1ZJtLoiNzdFDPZ67YJ7rmoFbZ3LYwTERpzW9o0=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 MW5PR07MB9330.namprd07.prod.outlook.com (2603:10b6:303:1c5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 10:52:01 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 10:52:01 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 0/1] Initial NVME storage erase operation
Thread-Index: AdtoBHgxf6dHFtYaSsOnALHndgt31A==
Date: Thu, 16 Jan 2025 10:52:01 +0000
Message-ID: <DM5PR07MB3532F89A244DCCEEB887707DEC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|MW5PR07MB9330:EE_
x-ms-office365-filtering-correlation-id: 1e09dfe4-5d28-44cb-8c76-08dd361bce5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6YIY22fujxXXGHdTH2Zsl44sTUcDT0UvOXCsW8jq2rZpJB3eN2BGPFyw6sTU?=
 =?us-ascii?Q?2fnRuFSXcUxgpeLCQ6h97GJFQDttrMFycYfWVTBLrMGCmDYC88oGgvRrE9Pc?=
 =?us-ascii?Q?EWOnRZ4WPSzxmOr9843duf3jtPjso5kDEufxgvvEiHDRNR3/i6kXtKAIC2oQ?=
 =?us-ascii?Q?ncAknsgPfkWwIH+FytnNGoNEw96VtHq29yqvEYrcyVBH8qrHwCb0uisAMwSm?=
 =?us-ascii?Q?9BTZBYZCo5Lvi24no5olhxsSSlPm3YKVArS5pHAlMFUL7ihe+MsdlK73Fpyl?=
 =?us-ascii?Q?Gtol7f1mf2IJZwIe9yEJUmIhbDhXvzlVhkAQFX+lHkIGYL3QHeOOgud+iKDR?=
 =?us-ascii?Q?HQICUvcG3IaF09cqpI6Us5Xm0okpKYONRfcaYjJosYhY62G6ddDtzMYpPX3a?=
 =?us-ascii?Q?RDCxIL6kqotU6zcnQntvMVhsN8vUUjw77aup7nfvWnMa4W22gRo669g+RU/+?=
 =?us-ascii?Q?3iLOGLj060FWdsGhU94qqsmbMDY2Ibn0E6J7zXWPGB0xFwTV4/APpqrY1pvj?=
 =?us-ascii?Q?4EfjpZGhsm3a+p+1eP69VG8mEOLaMOP/blEPixxXKrocG7lIyv0iQWJ92Z1C?=
 =?us-ascii?Q?j1Rj81yHM1d5DX/JPXELejKdYa/zWOb4B5JqPh+X+DEYhLCdKb5/qaGJ1rz6?=
 =?us-ascii?Q?MGDDNLcGA/R4K7m0gRZrdaWq8+kM2ZBFrfqi0GQfncHo5X7bAVpgJ5mTIVFO?=
 =?us-ascii?Q?vPkBXOklQ4DO/QOr1XQe2AQcMvCCEKCj2dAvu1DsgO4q5kpBW+TSMFSiHHQE?=
 =?us-ascii?Q?jebN7pgl9oy98v/rcUgfgxAI7JqLzDioZajhgW8B/t2Nmiij63wUB7JOSgys?=
 =?us-ascii?Q?id0UZYBSUZnEh65JoJHU7n3WvxmWxOyioNd3iXQlxBB6X+059X3zHDQKE345?=
 =?us-ascii?Q?ndIsgPXXfM3OfKAb3vX/5SoweXXsE56IKX0iCW5uAHLK5njm8Hf70eXbnnLJ?=
 =?us-ascii?Q?lJkZT1IT080tM6LyHnmarD0gSKBrUrSMKVkQTjX9XVmi+KyJlk6KvX/Qtxnp?=
 =?us-ascii?Q?IK8B9NxpC46mDC8Tpk3wpdrTk2/wCg9BZW+O6hYMYJ5dhDWMdZDjyk9SUWwN?=
 =?us-ascii?Q?2FR5H3nt49WCYmOUMehpy17d441YDgzuMZEscoqN3EvSTw6BxvO9XEfiA3R9?=
 =?us-ascii?Q?e1MSyjUZo3+fxrvh/OaKMN3Z4eIBNDElCgfmOVRQ8UhlS9qftn7Anmv79301?=
 =?us-ascii?Q?uq6CPZUb5ONEzthi/cqU0OmFzf+JkASFTWwEhvHq9wEN7tLGrDa1gxETKEZN?=
 =?us-ascii?Q?7PFfA8PMwZMKW+INL7kMlXp/C0tZdinIFwrumH1h6Dug/v+Qw0kD/UYqzhx/?=
 =?us-ascii?Q?mARmMgXjtQW6xoYf+5IxYFne7bng7V/0INi51Sou+iHGw7LAH+AM5HJ15TuT?=
 =?us-ascii?Q?Enj8LMW74Ng2YwZU/3JD0Bdlhi7YKHFC6aA2rkrPCZEfGXIidc2Qtl5ofo3f?=
 =?us-ascii?Q?/DM+PE+H6WRW71b79CvY8UuceP1VFRUT?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y6bNpH6dH38X2mRAyVYWyauXCbUWFOQROfIrfnAXoDz8PfsZbgoK4kd5aGNs?=
 =?us-ascii?Q?UkI7vq5LSolVMK9qYcjTFjc4WWy3Y58hNHRs7bwFFdJyU57ZAKwn8yccZ+rQ?=
 =?us-ascii?Q?BZNSLQWLgElXpH1vFC8/4wdV3WIj2zQw/O/FSHRonP1NCH4ssh+kH1gmctEL?=
 =?us-ascii?Q?/RKT+YAD6XLu/1jv56td3exmdsRpn33f1G9sXcWGAgmOGes2AR92JQLC06Fc?=
 =?us-ascii?Q?ko01bCDWIoxvj0ywjgyZQPdjPwLZKCZP72uHUc+aqpLXC6sc5hJOyHfqSdpl?=
 =?us-ascii?Q?aS1zx0dnisgqpAPs8/id6A2yY2NC3q+p9iVomayvIdSbEF0v37DTeySQbQ6h?=
 =?us-ascii?Q?8CzvTOpHeXD8Ym6zC1ZtdLc6fqeRv9ViJTNnDntgngXyq8CFguoqEJyQUX7L?=
 =?us-ascii?Q?3x/iFNL50hti5lfVYozUIQ9DjPf2KDgFkIyi9n3F+sQv7neZykwvqBV+uMHB?=
 =?us-ascii?Q?wBUAwD3rhyT3LOZPQLxrvBZKWExZ/9oAmyFEguQSRkRfpEY0YKiSrxbmtl9g?=
 =?us-ascii?Q?gRM8Ml5w9g6phCk+BnJSBxc3u9lnVBsq2eoMWr4xEvIPXsXkqBlV34feBuax?=
 =?us-ascii?Q?NtMZBvUWfBRwr76mMAm+dhR1BQzrlnerX8hFZ6Nskln1SyXTKolNylFR4jNe?=
 =?us-ascii?Q?xYWQruoJ4ehMekCMMWTjzB9jy3pF6gIL/tdO5NcEMq19NFvwHXWIzm/FXlqv?=
 =?us-ascii?Q?xLcwthqSWJUah4UoUp5uy7vT5Yp7coUJoOTAk8Xx0r0PHA5x3TRByaUsnNT7?=
 =?us-ascii?Q?022bNnty96U+OG4Jtmr8G1vaDeCPQEVxlgjgbonOu0XmbTZ4wWnDok20ftCH?=
 =?us-ascii?Q?dTqT5KlSlSPiolPR/gJ1SBXXzqLQisUmbXht2G7jr73og5lwKow3Q0xtaVfJ?=
 =?us-ascii?Q?pr1NgaKW2Cd7AjXiLz1iZGMQFlqHD2hl1YJ/05ISzD3R1LbzBKlB9eARVWYM?=
 =?us-ascii?Q?PFmlWXnSwk1dNOUMcfcBeKYs1qIGOuUcY4coqf2vN74CcgjCflvbeuY8kgR2?=
 =?us-ascii?Q?JjMaZiBvqmnJjMcmmCEqlmJxy3HDBiT+SaU8MqJ4cwjEKxM+w9FyiHOcxiA9?=
 =?us-ascii?Q?Aau8sOj+bG8AT1IzhT+XyOBwJnaZQCOGUUuO9tvTYWUlDynpqblgnVi5bR/9?=
 =?us-ascii?Q?bskRZbwbxWOFO1AdOHuYoMSjjg2eSAIu+nLT9/sX49mJn9nNe+Z9alYG/7+k?=
 =?us-ascii?Q?bqVI2y1YVbxaj4dyagP+WGwmlxGuvcz9FuLKOK+AUlf39LBl/f+QKApIN8j3?=
 =?us-ascii?Q?kFiW4YxudBNqQ/PK7tvtEhr1JqGTzokZbOdteMgA2yRkciSbqZ2+9OOaRjny?=
 =?us-ascii?Q?kRSOTuV6AMiHY/YI2MbRIl2iji2heKiICDHEp34pnuzsdr1ptxyhjhr83dGG?=
 =?us-ascii?Q?zQje4g8Z/8YqREqsJ+Tw9y5e7qnWbjZ7+qzzuCexW7/AOvYPNO0qBWKY4S62?=
 =?us-ascii?Q?/ls+Xm/SxZ2hBOF5KUDHNn/ZuWbX+RY/RM6nzVOl8iU/1KGYh0/WPwHS/Fr6?=
 =?us-ascii?Q?6spqfbhRq2hTfWeKLiqduJ9LpeZvXCqZ4rm/wqjmB8HRgXX8zpbo7t5qYNS7?=
 =?us-ascii?Q?W5sIxDd77lNihabkYcBHqY6hoxrHPCXzYI5bbGvB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e09dfe4-5d28-44cb-8c76-08dd361bce5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 10:52:01.0270
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L7wa5ehZWLvnQ4hRuCuxzhesTIK8jfqi9caPAPviI0iQO9f2iJQjgeV+ttd8rDr87sbE3r5Cf1hp2nnlXoBAek/aiBWIqTzT9b4nx943fws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR07MB9330
X-Authority-Analysis: v=2.4 cv=bJ3sIO+Z c=1 sm=1 tr=0 ts=6788e4d3 cx=c_pps a=R19XVbJ/69TrMGWtO/A4Aw==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=-rv5prdvoaJ-8ZA4PlYA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: uY11g-mLiKQGD22Oos8QMba07aB8-7xy
X-Proofpoint-GUID: uY11g-mLiKQGD22Oos8QMba07aB8-7xy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_04,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=842 malwarescore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_025205_374256_68CA56BC 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Subject: [PATCH 0/1] Initial NVME storage erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch introduces the erase entry point for the NVME storage.
It uses the nvme sanitize command 2 for a low level block erase
of the entire device as start and end blocks cannot be specified.

Note that in the current state, the user should first remove existing
partitions with the command 'parted rmpart' as they will stay dangling
in barebox device nodes and mount points.

Renaud Barbier (1):
  nvme: add erase operation through sanitize command

 drivers/nvme/host/core.c | 82 ++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/pci.c  |  2 +
 include/nvme/types.h     | 38 +++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 include/nvme/types.h

--=20
2.34.1


