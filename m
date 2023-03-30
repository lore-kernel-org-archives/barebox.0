Delivery-date: Thu, 30 Mar 2023 13:35:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqZ7-002hBo-ER
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 13:35:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqZ7-0000aK-0Z
	for lore@pengutronix.de; Thu, 30 Mar 2023 13:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=prQp7Pr3fX2sKR74qskvwuep/OYq/M6h1ThfS4vQpWc=; b=QcHnR4TaEuYo2k
	FSr+R4z5k/iw/OJhKr3Fxp7tKC4FWIStuWxTlTsbdX7DDIHHhCvyNY5X2YGVp+69+b0wNS8WncCJA
	Q0lBh/NkQvky2mIHuq6EY0sayFFn78190yGRO88upwgHhewCXPWT+nUojTX8RxsZ5A5YcDtyNooj1
	9Rb3GqZ0FJkqkkxgJ2iWxnPTmHbsjEGQczGMZ5SgHQ21mQtWcOskyBnY1PcoIDPiSmHa9scUDeSw0
	xA/s7r+h3Sv/dvoOFabvu4+I5PG9+8aWTG9hN0R/CKYdEMlq4hglSUPksjYndl94JbadsXrJkTUSC
	B8YECZpG4qFo2dOLZJCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqXl-003cdL-3C;
	Thu, 30 Mar 2023 11:34:13 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqXi-003ccL-1j
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 11:34:12 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32UBDnOm025368
	for <barebox@lists.infradead.org>; Thu, 30 Mar 2023 07:34:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=prQp7Pr3fX2sKR74qskvwuep/OYq/M6h1ThfS4vQpWc=;
 b=JR865BX7P+D9A4O1S8yPrsse4bK2PtYaX2oux1KbIshVZ/UYs+wiEmjzk0nvXX3x6TMO
 00kVtkxpbwgdLR/n/Ov5nIeRMYp7PwJQYduLm+Mn1g2ObbbkFTcUN7EQxISDVB8Ua2Bu
 e5HeOdNBLe7xO3AaQM2JwJv3RyuUOebW7JxZ07/QlZmx0NVtyOTHg4z+HdcWXnoAQ1vY
 kStKcCmYqIVhXOXb/R1mcQAp1wainuMTNek3lwUmGYugD7Ml217+Cp88ddoIoi6y8yxn
 mxJSZnhoiLKX/q65J7fQ2LkfpGs4HoHG9e/KfDAMUBgDeO7qimrjJFkmzPK+C4biL1Rr KQ== 
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2169.outbound.protection.outlook.com [104.47.73.169])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3phucfx1p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 30 Mar 2023 07:34:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONCbN/AgRvZksE52o1M9rguDyTHQiSdP8e6WiEbY+X8yU+yI0sqFGGKOqCdW/kjer04e0jhHyBdq708yUdqv52QlOv8TFfx/nZ3Gr/vdibdkpkXgRGL5DmBOLvkMIichUBPJQJjtJZp7Ex9WMiqKjU0f+xUBcEhPB11NP3prwLQsXL92j+zzh2vDo3KqF5EB+x9OZd6+5V1fuRGE+ni2bU5U2FZ7GRhFtt9fKo+G8eXhS3KWlWmms0qBAo6GjDUPxlnVDk9pZWPFWYDuXxd+O3ZV7fyWRApyOLYUroYB1JyT1hGIwz7RkYrso+jocr1/T3Z5S6k+neDXxsAPGbzD9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prQp7Pr3fX2sKR74qskvwuep/OYq/M6h1ThfS4vQpWc=;
 b=WWX0cq260ZKzsxQlw0T4knnLV8UMkr/QExOJe/gAyxAt8QhH8Lrolz1+OU6vpEYFki6o7eyTxTABuZC+FifIcdJ8t2bj96lizn/Yaamk6YDxi5SxRIDIEcJFTBHZO9RtBwFRoUcSeZAB+V1UYBgv/H3rePweOyfI9EIe3+bTUfcTw/cWB/tt6MuYxHwaXbLNKn7nLW3AT8dsOfl9PdF+TiWpj8PSYs5PmZoTab2gos8+HDPxhAenOqZy92bUaQXUVUWOmDUJZYRtt/KuscUU/PLcb29ygl2diFRw/xUpDbCBd8DeyGF0DYWrwDbfJTA8U4nYU3s8FK/ESHhRlU69EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=prQp7Pr3fX2sKR74qskvwuep/OYq/M6h1ThfS4vQpWc=;
 b=Vlg6ZlSXQwpr/6WYmfl+PrYw7bIxNlRDPlNPxLx0aFaMoj1B+X30nsIme7Cv+SDk4jmsWTFT9z3Ksw/Z9LkfH9nwcxeun/Tm/8EcaN1Vyg7DcJx3IS106EHf/vG45Dw7JeeyHi4UR1GGrFb/GRA+zpkJCt9iFYmVF6dXkJ4mQqQ=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM6PR07MB6137.namprd07.prod.outlook.com (2603:10b6:5:155::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Thu, 30 Mar
 2023 11:34:02 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6254.021; Thu, 30 Mar 2023
 11:34:02 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: LS1021A performance
Thread-Index: Adli8/MSQZh0oqFCTDGUikKl7/yNnQ==
Date: Thu, 30 Mar 2023 11:34:02 +0000
Message-ID:  <BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM6PR07MB6137:EE_
x-ms-office365-filtering-correlation-id: 2fc32bb2-5bde-4f62-a25d-08db3112a965
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  kNtpKuuF/PrVhb5HzTfFELvIG7QGR0YVW9oKEoaXDbMpHzppxNeyqx27S4160/6RnC+K2115JFQxlP0s2f44O2imVHMLPxSW1SUIJTqHbGACLlSuPPssonTZxa1//ApFc5YF8xGwtXGmVZiqPHg28mleJ97WiON3hstXceR5Vow42Bag0NdFu110G/vFgcQyw0ygmVjAM2cpQZrIERP4Z4rYOznqVvszE5bVtIo+eZ/x1oiI8J6NNhe9DKFox5CiWN1n3hkrV8vzsD2J+P61/r8YfSCzcbmwkZg45UqWJ9NgyIiKgM2AHPIN632iC5yN4P/u44W0BXCGaLAG1xdXncAWcKNkrTgdHvgOF5AFdE/u9DolZGoyf5JEnUodAcLFsUMapWxkgWp28s758mv5FGtpYPEpKo2OlPrgNhbeqiTGFRjDBXGMUV9GdtndJPofgOsptqZznM+mqsNrMcqyQmTFQqtx0zCa68bZBpSzyiS8PZp3Ebtxr7D3fhP2McQbj8V/+yG4Fb6laKd45awlibv9A20ZQ9SmBCHYiVmRMUoYS9u9IMlrhKOesjVhfnfrVxKAyjtH6SOezXS74149nEmcz0FzX5L9AhewoqLvx6+2O1Kb9fyDMZmgBKt4geuB
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199021)(83380400001)(86362001)(316002)(33656002)(66476007)(38070700005)(9686003)(55016003)(26005)(6506007)(186003)(2906002)(38100700002)(122000001)(66946007)(8676002)(478600001)(71200400001)(64756008)(76116006)(66446008)(66556008)(7696005)(6916009)(8936002)(7116003)(5660300002)(52536014)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?5Fe/EuQq1APSDLK4Iw4k92d5KmUVHJp+YQgaYb6BlE1tzkOG2/jCJcaxXFbC?=
 =?us-ascii?Q?brBxClM5szH7Ey2tyc1nR9fzRqVTcMLZ8xCcK1OgtEeaILMQyuA45XcoRcng?=
 =?us-ascii?Q?vfVY24kmjuH0q81OIBn05MrsIICQtOz7FH/RhnMR6aSTl5EYUlcUHoNkzj33?=
 =?us-ascii?Q?yFgy83g8bnKyqmqAkgh6JfnGQMJP6/xjMHUyRc/fiV9nwclybHORIuztcDlg?=
 =?us-ascii?Q?orlr4fvUDktivms1lT9Irv86pKAKy5igTPp7BDiQIT+Echi3frv4zbc0J6tF?=
 =?us-ascii?Q?Xa1BMco+wiEVRhThZ/G6BUEsD9btWzzz4vmEiZotIr23HN1fCtWdp+p2wXdF?=
 =?us-ascii?Q?F+x5NlRUAjsWQbyv+T+InZdSnnmdMDTZZaCKwDyCTtAd5IicuCvjAhSpRoIr?=
 =?us-ascii?Q?j6Vq38hjLOO4aTBH90R7VgfRNZ4lBqbg0IpD5wL4eZ3k/rLol71W8h/R+giN?=
 =?us-ascii?Q?H4lFWRJ9NuiC45QGIwk9iUUIcVYcKPw2pNif3Arkaj3oSFclUS+Y4p8rz/3C?=
 =?us-ascii?Q?dzdAyxQ2fAliOBRczrVgSP6FaWksm1kHKTSLVumO0B5PnWXJJvU/DBiSVxOX?=
 =?us-ascii?Q?S5kOlmfYotqX5Yrnyjr+PX0FQbgQZ5LBRyQG1X5VZITLK75dN2ezWkLqbfJz?=
 =?us-ascii?Q?/XjvRypSTEkCDiR9XT27Y9T3tRFNN6RrdfEBs/Ip1SUMtdhOtZAEcFlF+m8E?=
 =?us-ascii?Q?X1rmXGkFoMbCp7c+Vt5sgk8C+csKdWZc4AXwgs4tfj4xumY2Dc7On5XOup5+?=
 =?us-ascii?Q?Mz6DbiqzoTkGAWSGgBcnA5pRRsAgdPlrLdYSjZYaM7DBlMSFWImlNRKeO7Cw?=
 =?us-ascii?Q?27bVy4CpFF8YE6igXz7356E8kG+yG7yJtce1AdsMU9sev7+lDxVUZqZ6+Smf?=
 =?us-ascii?Q?s06sQNFJ8T9Ow/aoTWflP3ik8ZaknEHJQEy3w1T0jBRypLWGfjiHApKzWCAz?=
 =?us-ascii?Q?SGppbNyMsmni3rfzqoJWx9kmXPlxd/1Qx2YDQYivOWpgEvDeH2WZXHwwjq0r?=
 =?us-ascii?Q?9ea6+f+5ekZq5xjiMNXua1rvJvq8IlCSpw1uJR1r93Cr2PMHKm/3kkUu7u4I?=
 =?us-ascii?Q?mLt25LaDKvwxSy4PTbowfAa/MKt2QmncIh1af4+suwotiIvMlYkUa99e5yk0?=
 =?us-ascii?Q?mfZXQDpnn31s/0smRgQWTAfNHepz+/WsIYqmc/hJ8JouwrwagbRzBovd1qBO?=
 =?us-ascii?Q?EdGqs7H3D9moQZika6BEqAToQatH7ydTd9Wj04bLfpXx7LuQKqOinrweSLsE?=
 =?us-ascii?Q?zgA4pECG7itG6ccxisSyAbbwAESY978y5qyHOsT2qM6u/XsSpUxtl9nkLS8v?=
 =?us-ascii?Q?HCXEl6cHoPMh+wQAx4aeJ2ywrmN+KZJWkG1aFncrR/sVlfGIyBn8gYJgyJer?=
 =?us-ascii?Q?g1BTngygdbt0ztUIOKJmPszHlJwKYegZeXIGKC++bX6nPXxc1kBSj5YHntOQ?=
 =?us-ascii?Q?L0ynCzux5rC44CrqgMaFyzlqTpTeYTrCisnj1QdY6ZNZA6kKzfZkpf/3mPi4?=
 =?us-ascii?Q?h/g9Cgbn3+0ZpPuxBnidxCwqrsSh371o7WETHLGxP6qaddHIC8mLfk960GDd?=
 =?us-ascii?Q?iUgNyeBYwmg2cznOI2JFCn9aadDqMPTAXO2TIHBi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc32bb2-5bde-4f62-a25d-08db3112a965
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 11:34:02.3621
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BIk265YR/WeYLllKhoeQ89/5zFlniOk2xVeHbYUdURMdrSgiyw27Gk5S3iW3/Htt6NFKSEB7RYShLDkbhW6n5bs2E6UYjpubcbH5WNWZfU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB6137
X-Proofpoint-ORIG-GUID: cu00yiJ_HokzZ5ut3w99qn5x9u7Y1fjN
X-Proofpoint-GUID: cu00yiJ_HokzZ5ut3w99qn5x9u7Y1fjN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_07,2023-03-30_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 bulkscore=0 mlxlogscore=352 clxscore=1011
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_043411_244565_36A4D729 
X-CRM114-Status: GOOD (  14.75  )
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
Subject: LS1021A performance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,
I am looking into the performance of the LS1021A between Linux and Barebox =
and a PPC P1014

I noticed the following on md5sum calculation on 1MB file;

On Barebox, md5sum of a 1MB file in memory:
barebox@LS1021A-IOT Board:/ time md5sum /file
27a45e1d2fc461638aafce09b6397841  /file
time: 494ms

The DDR is cacheable:
barebox:/ mmuinfo 0x80000000
PAR result for 0x80000000:
 privileged read: 0x8000005c
  Physical Address [31:12]: 0x80000000
  Reserved [11]:            0x0
  Not Outer Shareable [10]: 0x0
  Non-Secure [9]:           0x0
  Impl. def. [8]:           0x0
  Shareable [7]:            0x0
  Inner mem. attr. [6:4]:   0x5 (0b101 Write-Back, Write-Allocate)
  Outer mem. attr. [3:2]:   0x3 (0b11 Write-Back, no Write-Allocate)
  SuperSection [1]:         0x0
  Failure [0]:              0x0
 privileged write: 0x8000005c
  Physical Address [31:12]: 0x80000000
  Reserved [11]:            0x0
  Not Outer Shareable [10]: 0x0
  Non-Secure [9]:           0x0
  Impl. def. [8]:           0x0
  Shareable [7]:            0x0
  Inner mem. attr. [6:4]:   0x5 (0b101 Write-Back, Write-Allocate)
  Outer mem. attr. [3:2]:   0x3 (0b11 Write-Back, no Write-Allocate)
  SuperSection [1]:         0x0
  Failure [0]:              0x0


On a Freescale P1014 (PPC)with Barebox:
time md5sum self1
f168af3541bc7109150e6be2f6c8cde4  self1
time: 57ms

On Linux:
[root@openware]# time md5sum /tmp/mtd0
26d8158619e5791859519654557aeeba  /tmp/mtd0

real    0m0.029s
user    0m0.025s
sys     0m0.001s

This is almost a 20 fold difference.

>From my In-Circuit-Emulator, the cache is enabled on both Linux and Barebox=
. My guess it that it comes down how the MMU is used.
Any input on how to speed up the boot loader would be appreciated.

Cheers,
Renaud




