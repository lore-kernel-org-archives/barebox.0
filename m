Delivery-date: Wed, 01 Mar 2023 18:01:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpM-005ms3-DR
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:01:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpL-0007xg-ND
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:01:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AX6fSHsC+Q7cWUhHfNGCwXFZ4OloCrQSBYKyH9acF0=; b=1mdmvBpJF4aeQ+
	Dz0OIFjZYbNsdd5dzu5rM/fY9IawPj6xJRodVjP5TEybKjlxCy1n3JdnrMejoOhJjEkS5rI5ZKENJ
	HiHCguOS/BkXJUw3CGb8Rap1VXYLo6xOe6KMbYTCw3k1F0pgo7fdWFcw58VLtpuh8i70lEnxc+Ayw
	YfbTVfVhr1NEeOGLs845AaziLeRwxOiMVA1AZociK8Y/7K5ymcADtsCklcEQCt6lQxaQaQRs6tsOb
	/O+4CJMcQPD0Cj4rIDmEJAvkDHHDxB4xfMUYxJMNz9EfCuYV7EoJbwt8EOI1gYwT8qpCxvLC3dOac
	i70EZx5DvrrW3NS0/pYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPnc-00GuUM-V3; Wed, 01 Mar 2023 16:59:29 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPnX-00GuTH-Tq
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 16:59:25 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 321FjkJP009224
	for <barebox@lists.infradead.org>; Wed, 1 Mar 2023 11:59:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=/AX6fSHsC+Q7cWUhHfNGCwXFZ4OloCrQSBYKyH9acF0=;
 b=W/tSawvYbWidvVntxyBQfbhBvLihIq7ajNNn2RNVPZsmmUe2xeVZl3NHFpbJkfgzB7Pm
 UkSVb88ogtVxrd1Ijts0njW7aL0ZyHNY7Bx+VQhrqUws1YFyjNzaKDcn14Dh9Te2gD/D
 g6RWHJ8KhkJXk1f+b7zp0yjOMe8ZjfIOiCpNt86bhEg9/oCtiZzpDl+aMveuZUaUM5AX
 9g3esxMwL7Y7LY4pJn/s2T6cm3mXJkJhU/g1YYkKonFL8nawBF9UklkD9Yb3dW6bebaZ
 YIkXx+39XYIVyK8ZG5soYnQ/cfqVuoBD9eFtTLrdFjWmr3lQGVgmGjgORWdRohkuBVm8 yA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nyde36j3d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 01 Mar 2023 11:59:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4oj4FW9Fpg2WmUFZmcw52LhVjdU4fKs1k/OU9gtPaZh+SjqlD0PJP5J3LNqRfXsNvI+99PZJwCJjC+eoxpJxqWxcP++f14tcyXAlx+DLb/4CwcG7ycEazFzGJ71Nbi4FhKRYFtdNhiN98kQ9YlTVRZUxOAflkoW4L0hmxsPCEVOFb8fBJjYijPhwTLcOV4KQTiNykWse5ZoNXkfMac0T2LXm6Y1sJknqs2+FQcBnvTKwr3IPfS11R2hvI1o0bfsXsxoS2h7oyv3VAAPmqex+VQUPivbAWO96tF0deDdQj8vwESgtIWMTI3UxErRzvU0CojVYe5pAEfc1arcjGfchA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/AX6fSHsC+Q7cWUhHfNGCwXFZ4OloCrQSBYKyH9acF0=;
 b=EdhTYWF17vtUzOkTIzv0KCwQMNxknrvDHZ1N/vBKARq4i2l6d8Ahms7t1RexeBqZXDcewRBjTN9HWncKCVs/chFPBPBOKveG++2XmMQ0qkuorI61nADHdB8w4ZElDm4/HZnzVyvntcQKzbeLmeoawY1HDz4z50dqx2qpeFKEBwn5YJ56Fc6u7sssePZpHwhiGL5uDDd9ktvLNgdP6mMSx9NUEfOoBFUzFIZUmukJAisSb31rjJbMoAUJVWIEDb6GyCb/TAtSra0wqp0K3+XajxvSVApgHqVuBBO3snnIQhYYw0x3ixVHTU8c8xzps4ZtsLEvjqPbAXN64RwOVaJm+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM4PR07MB9888.namprd07.prod.outlook.com (2603:10b6:8:18d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 16:58:46 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 16:58:46 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH V3 0/3] Initial LS1021-IOT board support
Thread-Index: AdlMXRP/zpHqXvzgQcWh7lOI76t6Fw==
Date: Wed, 1 Mar 2023 16:58:45 +0000
Message-ID:  <BL0PR07MB5665B1D5327A65E125A8B291ECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM4PR07MB9888:EE_
x-ms-office365-filtering-correlation-id: 41fa6c03-07d9-4376-2a01-08db1a763891
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  pYmB9yg/M3xTIPTYPcl9ey/bFekKRg2WVT76DBlMAwjTFRiJ+6ouuVBqlHJHE5gk+PGO0DTAWRyicRAvtU0wk9+C/ySAQfadQMvr65Gu+W6J+YImvDZ9bsQ98MvGxsn5Ve2q7MqCggMTeQ+GHLM/KdulOyStJYKJiCeM/PxqsjMoBTdhKhbW0pMX5towaZ36BcTNl3fysfaxyPPc8okqjIOD5QMooAg4zSn0FsZXu9+7kvOSyYYeXpO+bO+4U4aZkRiaIFVwHiQ7/y0MPfRvodZAu5wXMfnml93PiGWDNq50/l8HQgpz6N6F0BXRrqxzlhAQqVa1BciPIoFv7dTAPX3/oEDVtjuy20NNmhWPWCB8AGXaTAJzqXqWiU1YHqpap9kzo1He4wzyXxMTzBdjg6RcZEVT1RLQFAFJ+YX9OHUX+beLAY61mkWEbz3TaQf7Qlq7Ad+LT8jvVzz2ncJBSNBzD2F9nkaQX255PcsWlzKLU1FUFV/m/ibcLf+vhBv113VgO2S7PmoLdJI9/Hz71Ww1LIXMJNJQCYN5k0ojzhuBXtJaonuouGK+hp3FOoDKXqzAgohK0zY2XXeZS6jHDNhfVw63yx42vCyc38I/1VpskdN+Oe124qKOUCSeYl37SbrXFsHP1Pw4koKij68ZPfnnBZOIM/HPc+C8qcqMEPj4Jai2aQg5EISB2yXCX5FU247aFpOdaco3AS82ch0ZbGnfP5jnPEi8OdWQL9F/nOGT1sgG/ufcEp1r8tASeNPl
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199018)(5660300002)(38070700005)(7696005)(38100700002)(478600001)(122000001)(71200400001)(41300700001)(186003)(9686003)(52536014)(8936002)(6506007)(26005)(316002)(86362001)(55016003)(64756008)(66446008)(66946007)(8676002)(66556008)(66476007)(33656002)(6916009)(76116006)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?visBESbRqbufSM9tl9+dsbXUkYiDeQYVvkzDldryAyqljcL4moX34WtgOGQe?=
 =?us-ascii?Q?vb6X9PHIBgV1geS0oBRNO0Z8m9g3pptxmijU7g4Hfhx7jgP0JnosoRtCWpP0?=
 =?us-ascii?Q?zD3cd335O660sC0tKhGD6EO7arXd3G9nH3Yfx6lJp9owPrAbVfVv7HQMWES/?=
 =?us-ascii?Q?Q7OWseR/KpBjGFn4EO0BDzMVmlhPp/mNmm+hq/JUlz50RTyzfLXbQwWF8/Id?=
 =?us-ascii?Q?U8+OgIZLCx4oJKaEFU1l2CQH6BnKlFAeirxzurvvm+2y2jt0jzIz+1x6SyM8?=
 =?us-ascii?Q?bAgT+2efnsJynEPcRwFgTTyc8GacCaAFbKCua+ab3SZAgfmpN0MSenDz3icQ?=
 =?us-ascii?Q?NEZARK+7tMcyfGyZS8jXffNFF6Sj4pGni8HzxoNsny99RIKAW7LeAijdaIv/?=
 =?us-ascii?Q?q8VzAGFmQKSJQn+YOwo9eJiWNFWEAzS2BR4ZxQRaMWXYYtYoCYvNwkQgI4LB?=
 =?us-ascii?Q?w9ppDn5d2fysWD+mYct0WTTXQ/GMzZawa84yWNgKKOufqDF5UJrmn6wUh031?=
 =?us-ascii?Q?LeaPaAOayWCYYmqbOzLAdgCMTDK95iSv2Ydvj/1CJMsIvLpvjhgtMqcsEZCX?=
 =?us-ascii?Q?NPKeaIkGUZ4K5J+7D9NPjFvZEYuGt65lOBv6l1wuvE0BxZ5u7eIsfOLduD27?=
 =?us-ascii?Q?todbLzWIkqYUBslQEmxwiuJu9Tl7vEuOzxeSmKgoHhjBDHrhrGQISWLzQGhj?=
 =?us-ascii?Q?oltvbjYEZx5EhpI5J6aOkk3Mu1G4vkgREcR7uoyFm7KCLEMWXG+eOCjTgOos?=
 =?us-ascii?Q?7CXb0xwY6r9aSloKO1s2XqIsT5vcmM/1qniWhs8GuHUWWy0Nort1IUA06qyo?=
 =?us-ascii?Q?M4NqPsQv9rubECTN15PfhlTtL36SJOb7z0DF0/Hx6z0jT/YXjeDiCWyTYcUX?=
 =?us-ascii?Q?t97rhgsWTs3Ml6emyQf2V5jBdKOVOdkAtnXqLRtNR8pBtt8f+4QFPGx8dpY+?=
 =?us-ascii?Q?pJ+YZM4xKIZgNEww4GqzMQFzuCGE0ayswkFN/68E51oeH7lNd+fPZh7SdKTM?=
 =?us-ascii?Q?vhHj0r7EfEBQU1WLCB5k6MwqRBmSyeyZy7rPe64/MLAwqojKSa8pHob9r10e?=
 =?us-ascii?Q?W/HMnY9wzegdKYmRv+mqsQJER3EWjoUDJ1qGpeZnKU3ioeUuTcVOwrn2rhEF?=
 =?us-ascii?Q?skj5+5e60x1TjM3QOqJ+AEAH1X5tnkG+FhwO7g86PMr9zOVHFHUhnInHUF+k?=
 =?us-ascii?Q?2XJQhJY1mNWv4igdjN777HWN2XkRG/E4WIE1l/J5d2IZG7jnOdim3vIncbhs?=
 =?us-ascii?Q?panm2VrgEekEN6IaouZGtNCp1Nn3kUAYw7jfiLxQWCGPbJAInPlMe1Fkcpqe?=
 =?us-ascii?Q?nVZJc7STk/N3aaTlQlJnuki6AAxV5MkJAW9InzJFt4vceZNNinAs2rnEstvo?=
 =?us-ascii?Q?mF2QcmJCq1oPDoojYBA1YwLgPFD5BXuX1CELBgfKJkxPHjrOpWMCBYBLBCQH?=
 =?us-ascii?Q?h5bFcb4z65Q0yfLeA2OURtLOfMwkPtNawGKgKocXK13qNmCW/UYIrKlaUnNE?=
 =?us-ascii?Q?5JwlxIRioaNaxFhaI5K543XTbo9clwK9z0QzlYm3+J2lCOtpn2QdS2dhI6p6?=
 =?us-ascii?Q?QDLe0HqCAv30HTBvHcsIfKgk3rFM3cGmCfW12AsiX84aTAFtxkRZciMYNkbG?=
 =?us-ascii?Q?Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41fa6c03-07d9-4376-2a01-08db1a763891
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 16:58:46.0401
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vC3JFrMOnEUBz8o8DDgW4VAVooZmRzPGXiqnjOB5loMrtk/6IPwKF5z1t70Z3OxBbKtxGXjPa+mN/kE56+sKDEHk6x4EGy6vAUYgZyQsGv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR07MB9888
X-Proofpoint-GUID: OHgbuXsY592CY58BAmPwvrF1-MCEmMrM
X-Proofpoint-ORIG-GUID: OHgbuXsY592CY58BAmPwvrF1-MCEmMrM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_13,2023-03-01_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 phishscore=0 suspectscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=520 priorityscore=1501 adultscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303010139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_085924_169564_2DE10521 
X-CRM114-Status: GOOD (  19.20  )
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
Subject: Subject: [PATCH V3 0/3] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.

These patches provide a basic board support with:
	- DDR3
	- UART
	- boot from SPI

This patch set also includes a specific timer function to support PBL
udelay as the PBL delay support copied from the layerscape ARMv8 clashed
with other ARM32.

Renaud Barbier (3):
  ARM:lib32: add architected timer
  ARM: add LS1021A to Layerscape machine support
  ARM: Layerscape: Add LS1021A IOT board support

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  47 +++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
 arch/arm/boards/ls1021aiot/start.S            |  11 +
 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 arch/arm/boards/tqmls1046a/board.c            |   2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
 arch/arm/configs/layerscape_v7_defconfig      |  94 +++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 ++++
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/pbl.c                          |  17 +
 arch/arm/mach-layerscape/Kconfig              |  14 +
 arch/arm/mach-layerscape/Makefile             |   9 +-
 arch/arm/mach-layerscape/boot.c               |  11 +-
 arch/arm/mach-layerscape/errata.c             |  76 +++-
 .../mach-layerscape/include/mach/debug_ll.h   |   5 +-
 .../arm/mach-layerscape/include/mach/errata.h |   2 +
 .../mach-layerscape/include/mach/fsl_epu.h    |  67 +++
 .../mach-layerscape/include/mach/layerscape.h |   7 +-
 .../mach-layerscape/include/mach/lowlevel.h   |   1 +
 arch/arm/mach-layerscape/include/mach/xload.h |   4 +
 arch/arm/mach-layerscape/lowlevel-ls102xa.c   | 389 ++++++++++++++++++
 arch/arm/mach-layerscape/ls102xa_stream_id.c  |  55 +++
 arch/arm/mach-layerscape/restart.c            |  30 ++
 arch/arm/mach-layerscape/xload-qspi.c         |  43 +-
 arch/arm/mach-layerscape/xload.c              |  20 +-
 images/Makefile.layerscape                    |   9 +
 include/clock.h                               |   2 +
 include/soc/fsl/immap_lsch2.h                 | 171 +++++++-
 33 files changed, 1275 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
 create mode 100644 arch/arm/lib32/pbl.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_epu.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls102xa.c
 create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.c
 create mode 100644 arch/arm/mach-layerscape/restart.c

--=20
2.27.0



