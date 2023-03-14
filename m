Delivery-date: Tue, 14 Mar 2023 18:39:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc8cX-00G39v-Kh
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 18:39:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc8cX-00063H-4i
	for lore@pengutronix.de; Tue, 14 Mar 2023 18:39:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M/G4ENaFbI5uEAISpnTyazWIDhC1gPKa0Ma8oUH/pG0=; b=ajdpJOdniKV9xr2Z7WiFCfL88z
	VAGkv4pZJy7T8KbkrjHf839UCEZaMbAkoEZla7CW57mGqn1SK72QphF44AmXmJASSIfyP+8NVGMna
	MkmmLcrUqJuIs2WYIgMkcB5WNlsuDyJfic2LgcebwGTiBRnSTRBa8prJxKoHhqknUXepFlWkmXrK6
	TtRQBGLLQMI11cqCWMqD6emlZ6G9UDw9SwNm7WURLX3jFZ+qeACj9r2h2sjA3LD2CUGnvtVea2s4w
	l6BhH7Tmz68E8L+F7ImxsDlAZfIXwURtwmlvsIs/8dZAVvNM9E31wYAGDgK/bVIBsde6N1mpD7LOG
	/1OZOcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc8aw-00B2OC-1j;
	Tue, 14 Mar 2023 17:37:54 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc8as-00B2NQ-1W
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 17:37:52 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32EHB1EP002692;
	Tue, 14 Mar 2023 13:37:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=M/G4ENaFbI5uEAISpnTyazWIDhC1gPKa0Ma8oUH/pG0=;
 b=zwZTfJeI1x+I2us/+HRsIH3ptOmJubqVb05n37G4YsVo4fL44BgKZAfURp16DlpWIZgY
 F0ywC4GzGpoOKoCVKmdqlypzWK73eXSrG0qyyzxWMmOIOB+nQccmaTiqI+YOyuVtIIlp
 ART/9seQsV9PERXDCRpqulZEx35yFY+cLpM9L9L1N12PouaSNitAOVTkLw99HTJ11Kji
 DO5d2Q/f1idQ7TH9V5ws7Qo2l+UN7MCzBi+K1gtJnkmSpRpbx+gKYMNfpFdJUMxeE/oa
 iM/t67qV4EdUuI2/n/yxB/d0/xXkAHUXxFTOjny0VDsMNRcHSZODsXQk1avLuGAZ34X0 gg== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3paw35r3b9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Mar 2023 13:37:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ItSykZWP9ynBC7Cx7H94PFsxPOiVbeSxxk4PR2qzv4ZMXD6RV4qnOZG7JF14Fb0zJwrEFgPZZkfy9ntzOff/MGhqkRFxIOVONMNPsCMwA1BjYHqM5XcATWfaslYlr32LVZZFopGEiwTuSW03NWFl5c4E/HEEcQwXlfMOQSUbwHHl0SlgZUxbbo2uGZ59bivnbjHMiy+p1GZVMu+M9TtRs1ACNp0asTrUyyLDzGpRL3aCu39a74ERoyucMAylIJ1f6YoFEvBPb3ohJaQDfOGKEoHgqcOv2aN+iGwLrO7ZYDouRtu+PMc2ap0ECKqb3PS8xMDlmtZ8hWXm7EQNHUWMRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M/G4ENaFbI5uEAISpnTyazWIDhC1gPKa0Ma8oUH/pG0=;
 b=CkFy5p+RHi3prN6IfvUDGVVYSSWzA3/44VWItVYnfhxjCk6ayj4mCpuyLMQ6gch1iU9cJdjN5YMrWYAQgOtSYRyvvF3T3CmTXWwCQfEHnTuObJ1dbycuC0fvH+Z85FW3gKQcFaj8CvbA69ppg7L+XkU66vfSPQG3PTl/heFJwgFPoL3NtY/9i1bO7mze+Qd5xmxDyH4ml6FV1iaoxcW1u/zBqtunvAtzMn5DuQMxzDQ/BYfkMb2bjTqrH5tCxQjvXKj7upRUKgadJ4kIUWmIcu251ROT8A1WtU/2wAQiwDE2waiYmqXEqTQguKC3Q02/wwNVQoZq7w4nZV1LGC9Ngw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M/G4ENaFbI5uEAISpnTyazWIDhC1gPKa0Ma8oUH/pG0=;
 b=gaYPrSOy2myjOrf6zhr7tx7CCe25uecZgdxiZyQgSxVoAwFPD1LzeZ79QHW4YNlGCfCu5CQ6jHT/c6ynFWTFFnX+x8e+p8FvkMNcc9vOdfdsB/gzjzWuRw/umolGVMOTBv64reSe/VFqSDlOrp+kJvLTvL8KEHWZ+fkgx5pfPOA=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN8PR07MB6835.namprd07.prod.outlook.com (2603:10b6:408:be::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 17:37:44 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 17:37:44 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH v3 0/2] Initial LS1021-IOT board support
Thread-Index: AdlVuiMQ2DVws+SJSj+P47mTitYI4QAwe0GAAAffcgA=
Date: Tue, 14 Mar 2023 17:37:44 +0000
Message-ID:  <BL0PR07MB5665FD3ED2EF99BFE6702806ECBE9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665108F4F12614684A2569BECB99@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230314135123.GI7446@pengutronix.de>
In-Reply-To: <20230314135123.GI7446@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN8PR07MB6835:EE_
x-ms-office365-filtering-correlation-id: 3767147e-6c3b-4d3e-3164-08db24b2d1a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  qPUKm5Fn32ptpjri0FL6UuTSKHdd1JhTe0aGyl9ZRnWnEEUl7Po4PXf/Ads5p/zjoRfkPIFQuk4CAJ44QjFd/MjfOuBDeuANp3tqgpY+WNsbsvpj6GJRnRZGMPLZGkguXvoJdv/DA+rMxqT+XL0Ua6E+tZ3lcXNnzh7w5FCBADxA0OhZp8kg0YRu+VNpUH9lTMumPUhIC3zjM9M1/BR/XxA+uaaj5WyO7GpOeSV+om87JGmadnOf7tL5OaUXQ5JsjwqW/wI6eTOJQaS44JFT4UH2D57qGNHIP1c3o/sKvdP9ye7MRg0H/hRfnT+qheouKMSYryVcu6JvRNc+OLT6s5PZ9Pzj1+nfxU90mrkGNzX14fZayumRDbqCrX3Q2DwUBa+Hyn/MVXOurhJn0t18Kv4NqhpwsDJCkL3MyA9p1Jk0LGG8cpS9JwsdEmHq9CYdP/Bzf9O5q7g9ScVoKTagyiUJe4OLx2aGgFltkgh5qwvLHmxZ3UjpOlyqOAXIDqN5UgFTHPTtbn8nRgZ8xOaD/dgma4FSCJCBPN5NGRKJfvF3snLidueWIlhMkqTK93MIm0ATUY3k1DiSisjqfyDR6botgZq5oK+gzZ2Yk369BRdl6e1C4YLhHptOvCsHGDdI9yJaaIf2fbmDFpmDoBaVwQd6TclmYGxMW0388Bvzk+DwwCoJXcIceViEdNC8X3la5vOdjUU7uHUgBoE0QhefrQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(366004)(39860400002)(376002)(346002)(396003)(451199018)(71200400001)(6506007)(33656002)(6916009)(64756008)(26005)(478600001)(7696005)(9686003)(76116006)(66476007)(66446008)(66946007)(122000001)(66556008)(55016003)(8676002)(4326008)(2906002)(38100700002)(316002)(4744005)(186003)(86362001)(52536014)(5660300002)(8936002)(38070700005)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?L1hzTmZP8Y15LE6A+OqctHqty4j9PFLwOKzkMiIyUZXwpja1hJvF+34w3qZb?=
 =?us-ascii?Q?VaZi6Xc3kA/xYj9/lGTK4xeB0seaXhkCO3nFDeqxnxgJoz3Bfpl2c0HVKTRr?=
 =?us-ascii?Q?ujXK/miBe7v6IUOsykT0B/KTWghQiYIpVON+kJouuZjBFPGzhos5RT4d/IEv?=
 =?us-ascii?Q?3PTrgX/zAwjSBoUHZbpDJmFJ/CIKsvtqEMdFB7s9xfL7JABdfVyf3gi0uoZG?=
 =?us-ascii?Q?0xyPZQtwshQcRFF7nwOQrjUHeaypJ/IvaL8535ocna8SlZN5s8njZDn/MG2W?=
 =?us-ascii?Q?cRo4ubaVsZXhewPCbD/sRloZu5nnmCDfIyVOb92oU+qiOIH4YRHc9DiEnHw/?=
 =?us-ascii?Q?oTUyNAlqGYk/kAegKesJ9Puo+DKiOc7zGPEW0H+hn5JNQqdDhHSpXX+eJ+3U?=
 =?us-ascii?Q?uuIFp70z1NUQWz2AUFTVdWIiaYBjDjHRpV9fVo2FiYftxoo49rTMTLjCcf5X?=
 =?us-ascii?Q?MBau0XcexKRgYpZqs684WBnqIeRcX31U57J1jKUpW1K4pvZmTCmiuvlxpJb2?=
 =?us-ascii?Q?R5PSMO6RWXc7rv2OeRA9dJLugNup4pLuyFCay4GoNxGogvDBJTfNdD0NymDU?=
 =?us-ascii?Q?UoxPp84EQqWAD1CaDmvszJ95vH1t/CgQnNkMEuhPpnlxTJucH+T0LTJM0miR?=
 =?us-ascii?Q?e9K3tGh9J7dZWiTrUdKABMZUSX6OPCf3jqFzqMkVYUNgPq4pQWxyGsAW3wkc?=
 =?us-ascii?Q?rons+3i9ecqVTlwE0wAdkDCu8U8Y04/T8wyRrXsBdE47N57XhEHjCvMKi99q?=
 =?us-ascii?Q?a9SU895gEfZG4U33mR2FMILNgEqexTzT//bm2nlCw+BqCfcDaAyX8nBjdzC0?=
 =?us-ascii?Q?plZzgRB3AaLDK5DFu86o1/EKGdLI5Kj7iY5PPA0tGqTFL7GtP8o6/0PXUEpq?=
 =?us-ascii?Q?x4Si56xfZTfIjDPdf4B29k3j/S+r6FtSFIax6COy+6wEEN9iQoHLB9W0S0Gc?=
 =?us-ascii?Q?evxWiUm+9y6AEmaEFMspIClMDeYiFcmb+1e5d+S2k4Rr4mn82juVkQB+eMx2?=
 =?us-ascii?Q?m30CoZMis7Xfwrpzvz7yfW6ZcNtPQ/35EnHOZxphIsK9FLcyrHnijOO1ln0s?=
 =?us-ascii?Q?WFg8eK4RzU4zs83dmSKg5sJcK6YKsDMBjzt0h+l2VM5zHBdStkn4Yl6ac58A?=
 =?us-ascii?Q?66yt0SVzrO4tUJhVna4gmKEmqU9T99lutjShya/StTAtqby3eCRQMy1iKNPp?=
 =?us-ascii?Q?XyDi1SwsKtFQWMMAjJIr5dm0fynAg3hDoaYQezzOp2QL2C2RgtpGwuI/VbhQ?=
 =?us-ascii?Q?7q0zcjDCyQPGNMPRyPkLZpuJBvc0lC3LweP7EGBXCjN/eah2OxtvXn1Fogks?=
 =?us-ascii?Q?NE4RWGM/g5S5a8CJRtEU2LhB8ds4EzJM+VUyDUoOsvP0GFAo1SCKnr++7dES?=
 =?us-ascii?Q?3BrlShb/nL9HvbhRtKzkBvtrtCjEmbxYtpYavS+pZo8VNdgtgXm6k8+Y9Icq?=
 =?us-ascii?Q?zmtaMEDuKQSeOIBO+HBkI8mw1JBD1UuQP0fjbJIdjZHnKoO5RVEJjpaso4gJ?=
 =?us-ascii?Q?X438NmCEfC1XQPMuaacNGUNWtZfQKqiPUxodVoZCFIQKiH4j/b7Z5yPXdo6v?=
 =?us-ascii?Q?8hN8M3rUiihtgm9Kl/fZygXZwMypRYxMvMN1RwQF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3767147e-6c3b-4d3e-3164-08db24b2d1a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 17:37:44.2278
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5N4+17WUZmVdQ3CUDOF6pwgL/bYPew5pbr81CLS7HpBzrJjywNOjacMGzdqLNVNuyjabBqkswHUUYSoSTM5ncqVN/59z2oUSaJwtl6H/XS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB6835
X-Proofpoint-ORIG-GUID: q0t_voOuTv8rrPDtnaRRgH3znR38Ukhh
X-Proofpoint-GUID: q0t_voOuTv8rrPDtnaRRgH3znR38Ukhh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-14_10,2023-03-14_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=830 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2303140144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_103751_087891_756690FF 
X-CRM114-Status: GOOD (  13.93  )
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
Subject: RE: [PATCH v3 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



>=20
> Applied with some changes. First I rebased on current -next which means
> renaming arch/arm/mach-layerscape/include/mach/ to
> include/mach/layerscape/. Then setting CONFIG_ARCH_TEXT_BASE
> shouldn't be needed. Also I renamed back some layerscape_ prefixes to
> ls1046a_ and ls1021a_. Please check the result in current -next.
>=20
> Sascha
>=20
All good. Thanks.

barebox 2023.02.0-00261-g96ec914c95a7 #1 Tue Mar 14 17:32:18 GMT 2023


Board: LS1021A-IOT Board
m25p80 flash@00: s25fl512s (65536 Kbytes)
malloc space: 0x9defd4e0 -> 0xbbdfa9bf (size 479 MiB)

Hit m for menu or any to stop autoboot:    3
barebox@LS1021A-IOT Board:/


