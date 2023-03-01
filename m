Delivery-date: Wed, 01 Mar 2023 18:01:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpw-005mtb-DG
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:01:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpv-000885-IM
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:01:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BWSFQfwOTCN5k1E2ciBGLNBIOrG8CVi0H/lBIuCMC48=; b=NKL6itfUh2BzH6
	7ahYV+Z5NKzG6ztYWB1CwAcvWsVOdG8orLltAcF9HD7cR0UKEDnFKtU25xWKQVr4p2Eij7nbV0rU3
	1aceoI8OZlSZYZHj7W9loMqis6COUwIncdhErdfDz7nWLfFX/MHVgsvdEDWhaDgGwcsL0waRDVCzS
	hsHNLfOe9pjchgbSAudxdWTgKpQdZj9Uq/JOOo+L4rfrTQe1Yul41Rna2SuT5r+HLBKk7eITFOZfa
	Uh76cgyM/SSwKLEffKp9xbaJo6DJA+0t4y1cU92WFIwOlO7kLsvfzq16wePhl4M/NLFjghbRbeGXS
	Zu/BfIRKeFkFwjOB0JwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPoW-00Gunu-1u; Wed, 01 Mar 2023 17:00:24 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPoQ-00GumL-C6
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 17:00:20 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 321G2sm0006694
	for <barebox@lists.infradead.org>; Wed, 1 Mar 2023 12:00:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=BWSFQfwOTCN5k1E2ciBGLNBIOrG8CVi0H/lBIuCMC48=;
 b=gSKUWt7v32UCZ2lknAAqlkKDef5ngicbw7NrRGdpqeQVLI1ub+4cWCCR7b3+wzZROrEu
 5elV/toozHzAgkO8i+xbrNA5yLO3Aqjh1QJtA5rbIFFut2+ZA0PUwGVM7Pwk0uy7zY9c
 Yv56dx07Aln0c9s7JQJelikCxI53j+BmpWKyzAvvg9H6mHJAsavOyu35hkSxM17NPje0
 JuKEe0JxrSFqcUKr92tu+45VJnaUlrVU/YhHHqk3wjamiUmsm26hTrsGWlfOy47RWQDb
 xBGGqreI8iqh0vOvhfEKnB76wbOmfb0cPvoCILgXgkqft95KKfNcTnz4n/n2JifIa/4J xA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2177.outbound.protection.outlook.com [104.47.57.177])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nyd1eektd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 01 Mar 2023 12:00:14 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ASgkZKQHpz+pDeeZZzfXLonfXrfEPiw+xR67ZPjin3gcNT0gM3rimxOQf5RvZWksoj6DEbfAWz5/iMY7TJMbdP/E3TczDWHoF/13Hc3jbdTKQKV+Jay94TezhVUysNZz5zjkRiLDeSj28CATsIiVUogS9WDH4lnGHW9AosZKHsUBv3jcNDI4xD4yL7zdaXo0JEF+tdweWNKQa/qpHt1JcblOKv/KxRX/fgoBTkrcUuXZuD6OB/dL2MODMBLmLKD0Vhd1lH3qVaHsL2kz928Xk7cZ5FI469LSVPWlQ1e+biu1PgxbhRC26kNg1q8FuCByb4gKaaW8ACJPmhriAa1VeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BWSFQfwOTCN5k1E2ciBGLNBIOrG8CVi0H/lBIuCMC48=;
 b=AolDIA2omudgBqK1yZ4PuwDKaqIfXbNcAThfeA/2hBoymw9LEVAd/cdZxdRe6CMkGLHIYynpaKLupaQ8v382C82g7xvDR3qZDsoK3tSSQGKfkyWSqRenVlBqjaZ0bJtKZkUJcWOodCBK+nn7bH3OVpf+CXWx47oWfOmqBgkjYp+/7utjs6SoQIhUIqrCM7+XpmqWJuplwRGF10JauEEzhS8Sq5fOIpIKfFo6VL+wL6WG6nOnRaiSjwTER8mLghDOoFLr2Gibe2lXhfZSbWYv41G2QIygIHPVDIO/3fJ2zyCxCA6jY6z0Foh9DxLmlf7GjnIb41cWRQ2SJ/Ldz0l38Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM4PR07MB9888.namprd07.prod.outlook.com (2603:10b6:8:18d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 16:59:57 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 16:59:57 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 3/3] ARM: Layerscape: Add LS1021A IOT board
 support
Thread-Index: AdlMXboqQ428+L0AQvqEsr6fvAtb2Q==
Date: Wed, 1 Mar 2023 16:59:57 +0000
Message-ID:  <BL0PR07MB5665B3F32CEB4AC68DBA82F4ECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM4PR07MB9888:EE_
x-ms-office365-filtering-correlation-id: 6b83b75b-c80e-473d-c18d-08db1a766335
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  Jp0odat+FUNLEqmlJj+M5Gj9eoLdGZ9iTRK11TnZuu1tSEdr0YmRUVOnydl7eDxdCoUwBQwCJBKFN31Vpv3LXD0MpqOzSRualFxUSZVcfzcFHCXLH2yta+UxGSHrDDyc81YLU/SqAFD0S7/b6ycGTkuzxMzNBTDtfXGw+KpIxpncg737hJ04yGBILFZUiQfk9NGpzRRE5FASgKg50uoVMZ80zPpVIWhgRzRBfY9VlhTey2J1n9tYGcHw+YmbGfMZOb19VQAqC/3gG+T0x0xci80ihA+DP3wndnELZ4n+37qkchX71sRVZ9jbSTwJYqEft0OU9XBd7fJgr1MuWDSGhVQQAdVTGTd1tZ/0Sxl7T6EiJcv8DoH7fQ0c1m3nJDfDnMMqvp/qtsuLQzbUZgQWEmtAF49B27Siqib3N/Lexvhl5Vwq0fsKZZDJ+kvBAATRzFhkaeEEQ5uoRdmuUDg1OjHQ0t2yBGIhQ3ZwJtEbbDUvbWp4MJzpqnTIixocjrj6n6yKeq3YYxf3AeZheSgjy+j4RPw4oexZs7Fv4I6Y5JVx64bmnyQE5/SbiAJQOdDWKS/kX+Rar/m0nUIghCXsrNLBj87MFMfsYxYkpL3sNclPp5fYh4oEKmO5k7nam6aa1+MbHkpeuBmFflFIbX5Qdd2b29C9wjyO8LU7G+tSkyamXgv/HU4fcKzCdC/QR356RH2aRULnGF+7sAEHEPekLXvcJ3rH5xTB8yU7T/GQ7G6HWRq8Fr0heHaqNUBcIj89
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199018)(5660300002)(30864003)(38070700005)(7696005)(38100700002)(478600001)(122000001)(71200400001)(41300700001)(186003)(9686003)(52536014)(8936002)(6506007)(26005)(316002)(86362001)(55016003)(64756008)(66446008)(66946007)(8676002)(66556008)(66476007)(33656002)(6916009)(76116006)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?sdd5s21mGO+5Qv9Fgcrrg+beE3He+G1DiuHva4c84uqvim6boR97rTazM3Bk?=
 =?us-ascii?Q?XCiZWQXPKhTVcZStM0dxrYfLFaSeJwr7y6SzZtSiYwt+hhsx37K/1HnqGvHk?=
 =?us-ascii?Q?zI4UzzMMrz8kQ86p+tf43M5BuBHG6J30X3mOAd/wn7i5y8ePvZda6VVT1Ay6?=
 =?us-ascii?Q?bV4MtKtZzJl+tBjZ048yNzSTo5zTV2YQTxyHes2ztyW/qfmmZ3eYkUtwpYK0?=
 =?us-ascii?Q?GYdYYw223JCWebc/wo6wr6zVYK+/b8K/mee5IfLeEF+VU4NG5ejRrerdVKbI?=
 =?us-ascii?Q?S2HNZ+DbSvzB5feusz62Pa6kkjZRRsh4f9/UkUUr21Pamuz7mQ9OWl3m0UxD?=
 =?us-ascii?Q?+3IR/Phv96CpIaPg9h58WBEemJ5KJv/iFS/pI5khpCu9d/CbViqjYoeRT4wk?=
 =?us-ascii?Q?MdY8TVG48VGWpjjudQReO6fkLiRMfL1nw/F2Nw+t+dNCzHI/gVTi0jRWDWPD?=
 =?us-ascii?Q?2RNTX1bvOUDMFqzxcWKBHvYXe+eSFae3GCfgZzDdQzJl92alLGR0a9UXp3sy?=
 =?us-ascii?Q?V40pGf9aMVtWoBNhc2v/wEM+m2UbaFtGUMdRNgteb9V6IxFLFJfWmmx7Jna2?=
 =?us-ascii?Q?AYfQ2+C/4P3+lCL0ZmCnHu1hwhRAN9pqQIZF/wkn9sNQt06yf59juA5FFZlS?=
 =?us-ascii?Q?om7ZfI6OIiRQ9GxnjYBtYWC9q+ZVAaWfEqg9dB84VukRwMd3zPCrHrGcWsGk?=
 =?us-ascii?Q?B5mg+fy/Q5VlOH/b14euWOuRIG5F9+3zDKXWCdSIlXurYt6KQeGVl33CFngq?=
 =?us-ascii?Q?VBtlNL/7efF3X8DZr5uAEtiaakVfyxTd8fYqJmm9xLIDqRCH3TbDh6iOULBT?=
 =?us-ascii?Q?NLAda7BwvVxyGJkoYuCWhEsnRAI6CSsaB5Os3i+Pelhq0zTXG1QJ9Y9Irxbj?=
 =?us-ascii?Q?0Z2bMlJK5W9QLFvuySqxO69yMnmrNpH/H2YH6a5Q0majUSsrvQZLR0oyd+GQ?=
 =?us-ascii?Q?ebvMweUxL/wd0DE0GO7hznPqH4T1CAIWZqNdzTckgRplGkxXLCy5cd6lks06?=
 =?us-ascii?Q?M30DHsaIYuA2ML7tIHZqlv1Lp8DifJiYyOGdJV9fljEH4qsmmQ5Lf2zrlyku?=
 =?us-ascii?Q?1qvxKtgLfupmse/1yhZYHKo7nDpcDP/8JWtPMu5IVyMHq5r1HwFLkUxIND44?=
 =?us-ascii?Q?MkR9Lw1KklUiJFjLhVFS5Z5r0uq7e5o3/nv724AorYffiF/MRfyZ5kSQEE+k?=
 =?us-ascii?Q?lGIteK83ZkAMqYPJsgmCn9xygOwJDS8KnO0url6c8Bej9G+tQ27bcC8f5ujZ?=
 =?us-ascii?Q?vjZi0VH7JYeZN/tr8PN56Y+qY6B+8tQrbdbSeqMock29jlmVl2FQ3e+qhC++?=
 =?us-ascii?Q?FmlftSxpKkqMEm5Dj8Z8BWtizw0XuXcXnEGuskgHMwVsuopvmEW2rdKjHpzz?=
 =?us-ascii?Q?SarEecWjqpW2a4FFLWgIqmvSfjIf2nzfXesy1a0P6LzFILhDlC9H+5RWgIfw?=
 =?us-ascii?Q?QC22hi1V7Dd+kro44XSzSeVL8JnVeHaC3tdGln6/bXLk94EZSZ0ZQN7l8WKC?=
 =?us-ascii?Q?x/ybQUg8OHSVJyJWnI++DSjRIXkZd9Zf69gFarJDWUx8TYjOP6KcOS3VMZ3f?=
 =?us-ascii?Q?Leh0ojiMDkZ1NmMn8szgotbBEQZ8oWa0Yi/5WCoOE/yJ3CfePGuTZvz15Rly?=
 =?us-ascii?Q?ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b83b75b-c80e-473d-c18d-08db1a766335
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 16:59:57.5362
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LN+FlifCUmuaPl6SJ8eU3ffIjmboSfNQ1FXrXgKOLfYUApZHtj8J/xPQgm1giXqNx00TbBP7E6PBcVb06s3tDtNY5Xq2ljDivcoPmpsWO2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR07MB9888
X-Proofpoint-ORIG-GUID: N5ebDEhWZ4BNwIUEF9NDYXT9umy9tWYH
X-Proofpoint-GUID: N5ebDEhWZ4BNwIUEF9NDYXT9umy9tWYH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_13,2023-03-01_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxlogscore=999
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303010140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_090018_502234_AE39776C 
X-CRM114-Status: GOOD (  22.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Subject: [PATCH 3/3] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOT is a NXP reference board.
Currently supported:

- DDR3 RAM fixed settings
- UART
- SPI boot

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  47 +++++++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++++++++++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 ++
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 ++
 arch/arm/boards/ls1021aiot/start.S            |  11 ++
 arch/arm/configs/layerscape_v7_defconfig      |  94 ++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 +++++++++++
 9 files changed, 372 insertions(+)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts

diff --git a/arch/arm/boards/ls1021aiot/Makefile b/arch/arm/boards/ls1021ai=
ot/Makefile
new file mode 100644
index 0000000000..df69ce814b
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/Makefile
@@ -0,0 +1,3 @@
+lwl-y +=3D lowlevel.o
+obj-y +=3D board.o
+lwl-y +=3D start.o
diff --git a/arch/arm/boards/ls1021aiot/board.c b/arch/arm/boards/ls1021aio=
t/board.c
new file mode 100644
index 0000000000..6fe35f008c
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/board.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2023 Ametek Inc.
+// SPDX-FileCopyrightText: 2023 Renaud Barbier <renaud.barbier@ametek.com>=
,
+
+#include <common.h>
+#include <init.h>
+#include <bbu.h>
+#include <net.h>
+#include <crc.h>
+#include <fs.h>
+#include <io.h>
+#include <envfs.h>
+#include <libfile.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <asm/system.h>
+#include <mach/layerscape.h>
+#include <of_address.h>
+#include <soc/fsl/immap_lsch2.h>
+
+static int iot_mem_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0x80000000, 0x40000000);
+
+	return 0;
+}
+mem_initcall(iot_mem_init);
+
+static int iot_postcore_init(void)
+{
+	struct ls102xa_ccsr_scfg *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	/* clear BD & FR bits for BE BD's and frame data */
+	clrbits_be32(&scfg->etsecdmamcr, SCFG_ETSECDMAMCR_LE_BD_FR);
+	out_be32(&scfg->etsecmcr, SCFG_ETSECCMCR_GE2_CLK125);
+
+	return 0;
+}
+coredevice_initcall(iot_postcore_init);
diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021=
aiot/lowlevel.c
new file mode 100644
index 0000000000..4cc6673eeb
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2023 Ametek Inc.
+// SPDX-FileCopyrightText: 2023 Renaud Barbier <renaud.barbier@ametek.com>
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <clock.h>
+#include <debug_ll.h>
+#include <image-metadata.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <linux/sizes.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <mach/xload.h>
+#include <mach/layerscape.h>
+
+static struct fsl_ddr_controller ddrc[] =3D {
+	{
+		.memctl_opts.ddrtype =3D SDRAM_TYPE_DDR3,
+		.base =3D IOMEM(LSCH2_DDR_ADDR),
+		.ddr_freq =3D LS1021A_DDR_FREQ,
+		.erratum_A009942 =3D 1,
+		.chip_selects_per_ctrl =3D 4,
+		.fsl_ddr_config_reg =3D {
+			.cs[0].bnds         =3D 0x008000bf,
+			.cs[0].config       =3D 0x80014302,
+			.cs[0].config_2     =3D 0x00000000,
+			.cs[1].bnds         =3D 0x00000000,
+			.cs[1].config       =3D 0x00000000,
+			.cs[1].config_2     =3D 0x00000000,
+			.cs[2].bnds         =3D 0x00000000,
+			.cs[2].config       =3D 0x00000000,
+			.cs[2].config_2     =3D 0x00000000,
+			.cs[3].bnds         =3D 0x00000000,
+			.cs[3].config       =3D 0x00000000,
+			.cs[3].config_2     =3D 0x00000000,
+			.timing_cfg_3       =3D 0x010e1000,
+			.timing_cfg_0       =3D 0x50550004,
+			.timing_cfg_1       =3D 0xbcb38c56,
+			.timing_cfg_2       =3D 0x0040d120,
+			.ddr_sdram_cfg      =3D 0x470c0008,
+			.ddr_sdram_cfg_2    =3D 0x00401010,
+			.ddr_sdram_mode     =3D 0x00061c60,
+			.ddr_sdram_mode_2   =3D 0x00180000,
+			.ddr_sdram_interval =3D 0x18600618,
+			.ddr_data_init      =3D 0xDEADBEEF,
+			.ddr_sdram_clk_cntl =3D 0x02000000,
+			.ddr_init_addr      =3D 0x00000000,
+			.ddr_init_ext_addr  =3D 0x00000000,
+			.timing_cfg_4       =3D 0x00000001,
+			.timing_cfg_5       =3D 0x03401400,
+			.ddr_zq_cntl        =3D 0x89080600,
+			.ddr_wrlvl_cntl     =3D 0x8655f605,
+			.ddr_wrlvl_cntl_2   =3D 0x05060607,
+			.ddr_wrlvl_cntl_3   =3D 0x05050505,
+			.ddr_sr_cntr        =3D 0x00000000,
+			.ddr_sdram_rcw_1    =3D 0x00000000,
+			.ddr_sdram_rcw_2    =3D 0x00000000,
+			.ddr_sdram_rcw_3    =3D 0x00000000,
+			.ddr_cdr1           =3D 0x80040000,
+			.ddr_cdr2           =3D 0x000000C0,
+			.dq_map_0           =3D 0x00000000,
+			.dq_map_1           =3D 0x00000000,
+			.dq_map_2           =3D 0x00000000,
+			.dq_map_3           =3D 0x00000000,
+			.debug[28]          =3D 0x00700046,
+		},
+	},
+};
+
+extern char __dtb_fsl_ls1021a_iot_start[];
+
+static noinline __noreturn void ls1021aiot_r_entry(void)
+{
+	unsigned long membase =3D LAYERSCAPE_DDR_SDRAM_BASE;
+
+	if (get_pc() >=3D membase) {
+		barebox_arm_entry(membase, SZ_1G - SZ_64M,
+				  __dtb_fsl_ls1021a_iot_start);
+	}
+
+	arm_cpu_lowlevel_init();
+	ls102xa_init_lowlevel();
+
+	debug_ll_init();
+
+	udelay(500);
+	putc_ll('>');
+
+	IMD_USED_OF(fsl_ls1021a_iot);
+
+	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
+
+	ls1021a_errata_post_ddr();
+
+	ls1021a_xload_start_image(SZ_1G, 0, 0);
+
+	pr_err("Booting failed\n");
+
+	while (1)
+		;
+}
+
+void ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2=
);
+
+__noreturn void
+ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	ls1021aiot_r_entry();
+}
diff --git a/arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg b/arch/arm/boards/l=
s1021aiot/ls102xa_pbi.cfg
new file mode 100644
index 0000000000..840299be8d
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
@@ -0,0 +1,11 @@
+#PBI commands
+
+09570200 ffffffff
+09570158 00000300
+8940007c 21f47300
+#Configure Scratch register
+09ee0200 10000000
+#Configure alternate space
+09570158 00001000
+#Flush PBL data
+096100c0 000FFFFF
diff --git a/arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg b/arch/arm/=
boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
new file mode 100644
index 0000000000..3b5300501d
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
@@ -0,0 +1,8 @@
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+
+#disable IFC, enable QSPI and DSPI
+0608000a 00000000 00000000 00000000
+20000000 08407900 e0025a00 21046000
+00000000 00000000 00000000 20038000
+20024800 881b1340 00000000 00000000
diff --git a/arch/arm/boards/ls1021aiot/start.S b/arch/arm/boards/ls1021aio=
t/start.S
new file mode 100644
index 0000000000..c907777ca1
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/start.S
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+#define STACK_TOP 0x10020000
+
+ENTRY_PROC(start_ls1021aiot)
+	ldr r3, =3DSTACK_TOP
+	mov sp, r3
+	b ls1021aiot_entry
+ENTRY_PROC_END(start_ls1021aiot)
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/la=
yerscape_v7_defconfig
new file mode 100644
index 0000000000..69176738d7
--- /dev/null
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -0,0 +1,94 @@
+CONFIG_ARCH_LAYERSCAPE=3Dy
+CONFIG_MACH_LS1021AIOT=3Dy
+CONFIG_MMU=3Dy
+CONFIG_MALLOC_SIZE=3D0x0
+CONFIG_MALLOC_TLSF=3Dy
+CONFIG_KALLSYMS=3Dy
+CONFIG_RELOCATABLE=3Dy
+CONFIG_HUSH_FANCY_PROMPT=3Dy
+CONFIG_CMDLINE_EDITING=3Dy
+CONFIG_AUTO_COMPLETE=3Dy
+CONFIG_MENU=3Dy
+CONFIG_BOOTM_SHOW_TYPE=3Dy
+CONFIG_BOOTM_VERBOSE=3Dy
+CONFIG_BOOTM_INITRD=3Dy
+CONFIG_BOOTM_OFTREE=3Dy
+CONFIG_BOOTM_OFTREE_UIMAGE=3Dy
+CONFIG_BLSPEC=3Dy
+CONFIG_CONSOLE_ACTIVATE_NONE=3Dy
+CONFIG_CONSOLE_ALLOW_COLOR=3Dy
+CONFIG_PBL_CONSOLE=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
+CONFIG_RESET_SOURCE=3Dy
+CONFIG_CMD_DMESG=3Dy
+CONFIG_LONGHELP=3Dy
+CONFIG_CMD_IOMEM=3Dy
+CONFIG_CMD_IMD=3Dy
+CONFIG_CMD_MEMINFO=3Dy
+CONFIG_CMD_GO=3Dy
+CONFIG_CMD_RESET=3Dy
+CONFIG_CMD_UIMAGE=3Dy
+CONFIG_CMD_PARTITION=3Dy
+CONFIG_CMD_MOUNT=3Dy
+CONFIG_CMD_UBI=3Dy
+CONFIG_CMD_UBIFORMAT=3Dy
+CONFIG_CMD_UMOUNT=3Dy
+CONFIG_CMD_EXPORT=3Dy
+CONFIG_CMD_LOADENV=3Dy
+CONFIG_CMD_PRINTENV=3Dy
+CONFIG_CMD_MAGICVAR=3Dy
+CONFIG_CMD_MAGICVAR_HELP=3Dy
+CONFIG_CMD_SAVEENV=3Dy
+CONFIG_CMD_FILETYPE=3Dy
+CONFIG_CMD_LN=3Dy
+CONFIG_CMD_MD5SUM=3Dy
+CONFIG_CMD_UNCOMPRESS=3Dy
+CONFIG_CMD_LET=3Dy
+CONFIG_CMD_MSLEEP=3Dy
+CONFIG_CMD_READF=3Dy
+CONFIG_CMD_SLEEP=3Dy
+CONFIG_CMD_ECHO_E=3Dy
+CONFIG_CMD_EDIT=3Dy
+CONFIG_CMD_MENU=3Dy
+CONFIG_CMD_MENU_MANAGEMENT=3Dy
+CONFIG_CMD_MENUTREE=3Dy
+CONFIG_CMD_READLINE=3Dy
+CONFIG_CMD_TIMEOUT=3Dy
+CONFIG_CMD_CRC=3Dy
+CONFIG_CMD_CRC_CMP=3Dy
+CONFIG_CMD_MEMTEST=3Dy
+CONFIG_CMD_MM=3Dy
+CONFIG_CMD_CLK=3Dy
+CONFIG_CMD_DETECT=3Dy
+CONFIG_CMD_FLASH=3Dy
+CONFIG_CMD_GPIO=3Dy
+CONFIG_CMD_I2C=3Dy
+CONFIG_CMD_LED=3Dy
+CONFIG_CMD_SPI=3Dy
+CONFIG_CMD_LED_TRIGGER=3Dy
+CONFIG_CMD_BAREBOX_UPDATE=3Dy
+CONFIG_CMD_OF_NODE=3Dy
+CONFIG_CMD_OF_PROPERTY=3Dy
+CONFIG_CMD_OFTREE=3Dy
+CONFIG_CMD_TIME=3Dy
+CONFIG_OF_BAREBOX_DRIVERS=3Dy
+CONFIG_DRIVER_SERIAL_NS16550=3Dy
+CONFIG_DRIVER_SPI_FSL_QUADSPI=3Dy
+CONFIG_MTD_UBI=3Dy
+CONFIG_MTD_UBI_BEB_LIMIT=3D20
+CONFIG_I2C=3Dy
+CONFIG_I2C_IMX=3Dy
+CONFIG_I2C_MUX=3Dy
+CONFIG_I2C_MUX_PCA954x=3Dy
+CONFIG_MTD=3Dy
+CONFIG_MTD_M25P80=3Dy
+CONFIG_MCI=3Dy
+CONFIG_MCI_MMC_BOOT_PARTITIONS=3Dy
+CONFIG_MCI_IMX_ESDHC=3Dy
+CONFIG_LED_PCA955X=3Dy
+CONFIG_EEPROM_AT25=3Dy
+CONFIG_EEPROM_AT24=3Dy
+CONFIG_GPIO_PCA953X=3Dy
+CONFIG_ZLIB=3Dy
+CONFIG_LZO_DECOMPRESS=3Dy
+CONFIG_FS_TFTP=3Dy
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dca13df4ba..f3dd88241b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -200,6 +200,7 @@ lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) +=3D imx7d-zii-rpu2.dt=
b.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) +=3D am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) +=3D fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) +=3D fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_LS1021AIOT) +=3D fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) +=3D zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) +=3D imx8mq-mnt-reform2.dtb.o
=20
diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-io=
t.dts
new file mode 100644
index 0000000000..85331eefb4
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Freescale ls1021a IOT board device tree source
+ *
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ */
+
+/dts-v1/;
+
+#include <arm/ls1021a-iot.dts>
+
+/ {
+	chosen {
+		stdout-path =3D &uart0;
+
+		environment {
+			compatible =3D "barebox,environment";
+			device-path =3D &environment_qspi;
+		};
+	};
+};
+
+&qspi {
+	bus-num =3D <0>;
+	status =3D "okay";
+
+	s70fl01gs: flash@0 {
+		compatible =3D "jedec,spi-nor";
+		#address-cells =3D <1>;
+		#size-cells =3D <1>;
+		spi-max-frequency =3D <20000000>;
+		reg =3D <0>;
+
+		partitions {
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+
+			compatible =3D "fixed-partitions";
+
+			partition@0 {
+				label =3D "barebox";
+				reg =3D <0 0x100000>;
+			};
+
+			environment_qspi: partition@100000 {
+				label =3D "barebox-environment";
+				reg =3D <0x100000 0x40000>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	status =3D "disabled";
+};
+
+&i2c1 {
+	status =3D "okay";
+	eeprom@51 {
+		compatible =3D "atmel,24c512";
+		reg =3D <0x51>;
+	};
+};
+
+/* I2C1 and I2C2 are connected due to Errata on rev1 board */
+&i2c2 {
+	status =3D "disabled";
+};
+
+&uart0 {
+	status =3D "okay";
+	clock-frequency =3D <150000000>;
+};
+
+&uart1 {
+	status =3D "disabled";
+};
--=20
2.27.0



