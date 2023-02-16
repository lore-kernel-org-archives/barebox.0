Delivery-date: Thu, 16 Feb 2023 14:59:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSenm-009MfX-Hg
	for lore@lore.pengutronix.de; Thu, 16 Feb 2023 14:59:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSenj-0001iu-Nn
	for lore@pengutronix.de; Thu, 16 Feb 2023 14:59:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WymnohFPa7HkeL4jPMNoh0CSl2GFLXqJRBRYRfRcufE=; b=jxw53s62gAsDq+afkgbW5UNXwb
	ifqhSpu1wow0J+ewD/T0MJjSEcfHlJ6JH6tzO/+bXNvj8eXdu9Vauc0mfuCjso4sVjOTzbvbJuxxZ
	A3bFQ3AEnZsqZZbIcLC8XNir8kacs0rQ00qPF6lrIL9dMhVVA4iOZeqiwjCv+os00Vm/dwZPTr54k
	zZeeoUCJJLeK7h4v1H8TDM0xBLAGZuWNhokQxRAXzm3EEbPqjSU1sX8leBMACEbIZhUJUULGSTIUq
	h4i6Y+BiKfYpeC49rZQSfVdMIG9t5IdO0hlh/D0OPSNb4nSsGFngkusHUIiqtmzYeLcvy9oCyUaTJ
	fmnE2vHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSemV-00ATSF-OL; Thu, 16 Feb 2023 13:58:40 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSemP-00ATQr-6V
	for barebox@lists.infradead.org; Thu, 16 Feb 2023 13:58:34 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31G9hbxs003159;
	Thu, 16 Feb 2023 08:58:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=WymnohFPa7HkeL4jPMNoh0CSl2GFLXqJRBRYRfRcufE=;
 b=PGNNbO8kd6saM1B80qsPee0gALi0gs9OA3h2DCsdUf5LhubGQqYr7QOe5CeA10f3QPjk
 YwZZpql5VCwuXJetsU3CFAeBI0CWhDhcVyKGb2mGU248Ias1NPy6aObqjaKuqvBO7tTf
 zxWe8aY90YaSNv3rJHtbPDAlgusbVGdc2g/mItifBMmYbvMRfGVVMECK8LR1tdGq9069
 m+pehxPLtlsEUzHoIV0OilvU4HUcMfjRnR4HBxp6Gawxh2oQB2pXoJS+HVifuCPsHCAc
 TE+zdrOHdLDQXKidlefFmh27gMD+eGBk1clK+zmP+OP+2je5rxl/4pE0kpPwxq3VXeYy eQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3np4sc5px3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Feb 2023 08:58:30 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjJuyMx/XY+HxRmA06hHyUeBCQMUhyAFTguzrrFYb24QDEb2FPPJEAn2zFx5HpR65zVzpMJNofv5UrbcRfUQwNFw82thoHpDGhyE86I4dbenvdhsIejwT/tRwzeFA0K7U8ugX0l5DzA/TuNqkUh48wxAwVLqNqdCu0SlkUmqQ8YwjOjKbFQ4gGHowZHmavoRfYmO/RcmLnNFISsBmRg54xLMnGpzI47uK5WXl28psNNADJRj7a9F8w/6/InCqE4vTxHeGKKIICKX0/HyoBDZfnDRm3TrD7QwRFA11AsncJoejYiYu6Ks/iVqMSyNT6NEy4QKOdw3z4OgsmPCHCfs4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WymnohFPa7HkeL4jPMNoh0CSl2GFLXqJRBRYRfRcufE=;
 b=QKXxpDjp9ZwZvEohI4QeqMjenJv3ffkhvnXDcSl8Y37dU/uJdr28jxgCSyuS/Y59u/xYJCUcCf4p/i0qoIEdJno3sBnmAAY2daceWi6kE8iK9XnmwJM3dh49+xsPIyNuqoReRqUF8APX3ttlFQ27WnpLSAXcFEORuwphWkpBYrQoG0EF/PKMP/z5IuckfbfD4RALySGJtcSCecnut6oMwNoh0W+Yj8I9Rhw2JKOs1xh+D1S8TKmWQOO5izXF5h/RrbaI+Mz3AqGj3TMv2DXFfkZf0nRWIEyoaNiF7iwLnujziCH4R7cDghL8BbD+oXJdlUeOBGAqT+beynsj0mhNyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WymnohFPa7HkeL4jPMNoh0CSl2GFLXqJRBRYRfRcufE=;
 b=RRgpnzLSlI/z9AI5tWNCyWUR2SslkSCPrYFyrB34tf4GN0nd9w2ltfZ0KVnzWyHTvWxwGXIPwEJEccm0AYdcE6yxBWjX6lm6mnA4rM+/uZxwJ6aaG1vIFAS99/wnAqwVy23kwtMVZa6RHMOUzVELOL+Z4h3FuhmO2/HAmnqyM54=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM6PR07MB6699.namprd07.prod.outlook.com (2603:10b6:5:1c2::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Thu, 16 Feb
 2023 13:58:27 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 13:58:26 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index: Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6AAAuYuAAACNXIg
Date: Thu, 16 Feb 2023 13:58:26 +0000
Message-ID:  <BL0PR07MB5665881D6015FEA6184B8417ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230216125434.GN10447@pengutronix.de>
In-Reply-To: <20230216125434.GN10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM6PR07MB6699:EE_
x-ms-office365-filtering-correlation-id: bcf1d16b-e089-480d-befd-08db1025e01c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  wlihdgnDJDu82guhnOS6+RnTcq8ZCWyTXcXcla4berGbp+rWhQMZDfNRxLq/cvgDHGoAiaWIzS8TEQw0EPUaj+4swKOLz5r7+u7KvsbqqLlLfRSXeIGP5O7Q6/OFA6c9WDe/IaZjSDdtcBurnP3tVssii0hyuGOnCIv1MIMWHee10mQVjS6apy+cqKdETQmr4HSw+g/tKSrfD9vEkWVszAd/K0oLOiwTgMsodSnk4LMBv8JcGCOdgzBVZOjVpUcAfHBFaY8vFBwR9NSH2PGXDS5w2R1aZ+Ms6kPPiqcCuwPWgGWzehLwMyRxEnczyrRMWeTN+KpRyfNpLJ+jyxGRMzR/FVNkIIx3qeMcjjDr4KB2YNgwFIGCRwwuRVulF6E21EEjN0KdbAuaxi8JeBKlUagktwRo3cw5G5ryb/MNh/A0R4C88kkbvzNtOgPNdNmRdP/fje0mEVe3YvrFj2FEzjpkLweDSUp2fuVDZVJ2uaEKWLCtWvwqNyVxrxizvV2uK8s2YqSxC1/03YKFcxki6lXrI0qGNxL1zMHkZMv3KelNQ/+LxCaVdAhhPosoOEN+/plnTJHgHWdv/aubH9Z48Q+46Xw55vD4JMgg0+kgMG4suNIUIZY27qv6AQrgCAagNeOW14lXQpyLD+WgPzoGUnuE0omErzSYYN1tuzFCwNhF0lHlZDxnqCwbopnIJgo6D1A+gHs4Mhrr70fF/SgzbA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(451199018)(38100700002)(122000001)(33656002)(38070700005)(86362001)(8936002)(5660300002)(52536014)(2906002)(4744005)(55016003)(478600001)(41300700001)(6506007)(9686003)(186003)(26005)(76116006)(316002)(6916009)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(4326008)(7696005)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?cdLXVmRz9VuEIu2mQ93YJ5GuelwCBZpCYKUV3+rr/EjuuK5/kGL3c01+Ek/Z?=
 =?us-ascii?Q?THkQ6kDdMEQ7gKgvSGo/T4RhVubfOiStyktCJtB2m5d1ohS5qfWXUEbll5v4?=
 =?us-ascii?Q?U1QPpHjrwxqt+EXxfu96zDh3WYcQJbiritdgS4t4VSl8+XqSh6aASbyPcZOz?=
 =?us-ascii?Q?OWpu6TCqQJPPafBurGfM2ERlUbHTbkYwJrVmd6xmDz0yjrHpx2kYWiI7VB4/?=
 =?us-ascii?Q?Pf1FSGEfsk1DBsiEEOqUEGjTN1eGUSxpkvh/isHY8M4AZCEM3Q6LeGF3P3GZ?=
 =?us-ascii?Q?p6Zsi6jjI/cjmLB3iegNsVMHe+p4MZK5mYh1deOjFqFm5ly3LZXx0ZLUp0FR?=
 =?us-ascii?Q?zFwuGhnJ4iV3GaFIbTUFdjdNrou/9vN/ZWzIe3Z4PybHcEruFCzHfbsyz7uS?=
 =?us-ascii?Q?NY1UwQNDekEmqYE3pLIlqX2q2j0DEARTYWrrQv1bE7gMmcBRz1RJBwYal4X5?=
 =?us-ascii?Q?JeX0TioHrJVyfalvHNQ2G+rI2shajwHqhCgSt4SaEK1kau6r5CQY+OkjLSln?=
 =?us-ascii?Q?KZlBWXPz0XGWtGwqhtYqjE2spxg+Dc+n1ADw3xcPW5v3ROyclZk6PlwKEd3P?=
 =?us-ascii?Q?i8haasWAF8Ii+2G5moKKIjVELSZaP7BSuIdpLLqR7Phae/zlmA4KL9DfwUUS?=
 =?us-ascii?Q?0i8DbSvrAFcBhEpm6qXW6kMGmDVDGSFVkx6gqhd8X/yyp5A2ujM6nnVUVAnw?=
 =?us-ascii?Q?m07csNsxtSX+sQ6FPjzGo8SkmJUy40AlcQDZFoLchh4ti71gb8dRWd67SMDC?=
 =?us-ascii?Q?kogockLQlHGdHXGlopsTxrtTij4n1gelNrajNiBd6TF4R4CBzsnC2xvo3TQf?=
 =?us-ascii?Q?H8T2AEB0UfexMCkFaaDdyIBpOhPXATcRqbg1K7/vSa3DFNQbGgd6RutzZoF7?=
 =?us-ascii?Q?3WjhgYNYFbcCQZvnZ3SzBi7PXuVMBE6AcGnQEQ+zU3LtP6HyPxVyQ/Vacbgh?=
 =?us-ascii?Q?WFVjo8nzmmbEn04lS8c4GLfIj9I4uhn6yqjiLM/SVnpLaPz0ypQJd5DadNlT?=
 =?us-ascii?Q?zBJOdftHtTW16NCCmqA8w4TEYUemrtlkzzezriszpXFThMAdXSDDqIkOlKwL?=
 =?us-ascii?Q?h2wrFF7iFqpOeXQLN9tG9pTkKshj4/3DAWNEkwycNhk/VS7sLmLG1RK6G9nh?=
 =?us-ascii?Q?dmRfr2DOAlLmH/freRdJS7LLAfbqCR9LtG5yB2WZmXHcnAxiC/l3/0SULYQ2?=
 =?us-ascii?Q?AH0D9u7cG6Zru/1j0JBiFBoS9wjztfW3orPmB2Ig9OvCCHLXNXQC5VeNIbBK?=
 =?us-ascii?Q?V1TKxfRuVi2e17k2ICwyYUXK+5orvpXynsIUbup/59bKWQ8Ahrey3C0f2Yj1?=
 =?us-ascii?Q?f6GUWLDcalXRf8ydjFESnwAwptz3NAPZJqo7ly7luJkbjY3oyp61PzlIUljY?=
 =?us-ascii?Q?RF+9rm/SIBvmbcvwvsQETdjbkXddKOGsxdxhW165MfcyPZ5kzcl33Rxt9U01?=
 =?us-ascii?Q?U5RzSi0jLIRqZ3FVDvnqfmBZZPwu6agdTPbGN3RWb8r0bxfoqO11C7UgMzEk?=
 =?us-ascii?Q?FlDr/KN1HRvNs4sRRWD75XL9+blN5Y4EWshf9Ph5H+rIef8T0yj5mg9C1xWQ?=
 =?us-ascii?Q?o8y/OmGn9Dgfbcqk4VcdLrrE1cnXE8tZ234ydu1J?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcf1d16b-e089-480d-befd-08db1025e01c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 13:58:26.2715
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ihX+GVCmnuJ852Kq8IiwAHGle69Wa2NDsi5+s4pd0mUQbq1rcA5AJawHLEb4SfkyFFrKgjwJdoSkEoU+vRF0qTekY4DBMug6kF90/zqoXMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB6699
X-Proofpoint-GUID: HsQ_RsTwSqkV0RV4fKGIwDEav_6HkXfx
X-Proofpoint-ORIG-GUID: HsQ_RsTwSqkV0RV4fKGIwDEav_6HkXfx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-16_10,2023-02-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=617 bulkscore=0
 phishscore=0 spamscore=0 impostorscore=0 adultscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302160120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_055833_374751_7378CCA7 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>=20
> Is this the only phy or are there others? What does "devinfo mdio0-phy03"
> say?
> miitool -v output might be interesting as well.
>=20
Forgot this information:
barebox@LS1021A-IOT Board:/ devinfo mdio0-phy03
Driver: Generic PHY
Bus: mdio_bus
Parent: miibus0
Parameters:
  phy_addr: 3 (type: uint32)
  phy_id: 0x004dd074 (type: uint32)
Device node: /soc/mdio@2d24000/ethernet-phy@3
ethernet-phy@3 {
        reg =3D <0x3>;
        max-speed =3D <0x64>;
        phandle =3D <0xf>;
};


