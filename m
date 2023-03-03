Delivery-date: Fri, 03 Mar 2023 18:07:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY8rz-007lE0-Sk
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 18:07:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY8rz-0004dg-IQ
	for lore@pengutronix.de; Fri, 03 Mar 2023 18:07:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x9/yYBjBK4EybJYRKqehhoIoH2tJZkyXT68RM2wCmK0=; b=UxMEI1lWSRHLV1
	0pJ4dkwWH0l5QmdAytMSwbq6e4aLPyOSyk1+4V/L1DDpNn2/Rj9B1svPn3bIr7/UryGNjE6hhATJd
	mA5B7pIQ678TBhJkGAdn5/U+B4QA/8ClVpPZPnMN39YRmIupxpqNEB8ZdBVjSOV7EQHf5DejMUYVU
	lgcs+tnCe4FSsAG7u+caRs84CJW9LfxaJQinuzstbuKzpuI7tIDj8H6IY6RkJ3DkkvyLkJ0sJT81l
	CLq4mwDQRoCGmg1aKPm4GmPFzppO7S9TN4XUzjRYhodvfWB4x6RGWftBz59R7xdk8AQiPKLsLLOPV
	NmIrGS8wAvAFKjlFAu2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8qN-006rV6-1g; Fri, 03 Mar 2023 17:05:19 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8qH-006rUW-DR
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 17:05:15 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 323ETspN000756
	for <barebox@lists.infradead.org>; Fri, 3 Mar 2023 12:05:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=x9/yYBjBK4EybJYRKqehhoIoH2tJZkyXT68RM2wCmK0=;
 b=HF4sDv6sgfpSEVIvVVjnUsUNemvz/BY7LowuYprE4/4E/PDOO/k7DOZXZ926RNqQcNZ/
 ku2brv/nIliH1WKcM7Aug08pSBopXP+0PGHVH3RkJdezD7ASV530Pvorb4ddOuZF/6li
 FAtV0l6q08RMl+Q9DkslIA+w3xUaUxtKdMQhQbFJDkyfDjSyCKCMmVlU/XVMkyaw+9GX
 QB7ZkH8BuFEkdn7vzxoATHwgH1sL0q78gSWKoj9xZ8ngxmnKiYfwGSNruggn48WNSb5/
 nILZzJPjVSjxSH63eRXVuNrrl+j4+OKqnXLYTWvt8UbfM/CAazbqOB0E/Hjq0DiH6Y8Z cg== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nyd1eq47q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 03 Mar 2023 12:05:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnNCgxs+F1XdSNzX2hV/une/ljF6pp48C1WdtVCRZW/u6F4svYlnMCioj1+VLuEgbwRHV/3Sd0OEuau0J5cKqAQlZRhg6SjkOoDXXvDklw30/z7o8xUJBwTkutq5vJ24zzw5xUNIJS0FsqoLjYLUGrfr26UfeBFXxqM+N+lj/RJU6OcfY9at23ysIs4CWJEwcMdX5ZnjvIWYI/OXUPE41yPWjLdr9gZyFbPKMeEHsHfV1b31GK55nhsHGZi3TNTaKVz4Wwjr+wl8lEObEyKcHe13O4W4QmxhtcMZ5mS2RybiRykMTpi4SlWFAwv/ozqUQeoxlc95pDU0wlonxl/dtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x9/yYBjBK4EybJYRKqehhoIoH2tJZkyXT68RM2wCmK0=;
 b=hF9R8PXnAVdeJVZCQL7uMiq8MQjnWope/YIsCaV1+jSPjvFVFhbBCHo9gTXRsVlo4jqhxi5N5/GKnNwE5dZqnJV+d2oj7oeN++kiXenMPrVmozhPtFA97eFqiTr79nX0BNzapKZH7rTQ/mpZcOvZK+kBNPjoa0IhfGZKy+iqAI7IiJXF4WCdILaYGu/sjOzPhm96Pgvcs1VANcvF2tKx1SKJJFHPT9oWDLWkCrajCeI/9/a/kl9ZJHcw1j9DN5WklhL9Lg1hUpZLV9mo02X/Rd7j2PfV9+ZVcdxI+91336/CGX21ZP3VGnZzNdafFA962pxEWYXzRDiyHUkfUqIg2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x9/yYBjBK4EybJYRKqehhoIoH2tJZkyXT68RM2wCmK0=;
 b=f221VyycEiyiYkIB74FRzfFr5sSAaYnZjmO5IwBC2Y65uS9aa8zLw4Qo93yklgw4lnFAUmJW3ATy6TnoaLs3FUy7cHD20rATAYx2rydWQuhoGvccGP+ZycF0bVSHczRI9kOOCja0FmdCI7F9yTNKTIBfS/BuvGFhhX/32i1OXf8=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BY5PR07MB6578.namprd07.prod.outlook.com (2603:10b6:a03:1a6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Fri, 3 Mar
 2023 17:05:08 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.019; Fri, 3 Mar 2023
 17:05:08 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 0/1] ARM: lib32: add architected timer
Thread-Index: AdlN8dK/cE9VFEytQK+0GOUA/kaV8A==
Date: Fri, 3 Mar 2023 17:05:07 +0000
Message-ID:  <BL0PR07MB56656E5D1D1D8BB7ADBE5A34ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BY5PR07MB6578:EE_
x-ms-office365-filtering-correlation-id: 93b4ed81-903b-4b66-7147-08db1c0970fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  +S9BGDVl/L+sIvHCiY0QYNWpxBU67WsYTSTFw+KmjrXuNC0CJ45tDPIeTOBMMu5YT+atXJTx51yftgn3PdCl1Lpk/J/6QV4tzpqhecPad8SCd1CucnJq5XynfDhIdOoNF5g0lFG4UJjKdLAsZ6VZmGj4ubR5uhcgp1mvFmCymgCx9Mik18WBtMUOHpQc7RTdSyKWoZQhxR9BLCQ8h+Hrd3DoL7o3QkXjKkllq+ddtvbnIUvsmzpSOEohmNNNjMCzJ4T94WSfp2uPgY82MVzDJJ2M5VI2NbzjxYK1i+aDut1X0q7FsiIiceGsFc4SvByu/Z+TEpVQMyefU29bSsrdDu++KV1IIo7M/8Hblsunymy9YJr2OrIYJmAfh+RpTfTvjgvUxVctJjVHJdvApTpol9AVpMisUjqgtGrPIIv9ON9bHjjGPXddLTWtEaPVk/9wkwd6leiCnP0watdZ40RS4AKenl+BhdPdkse/U6Ueb6xeg3XkCTLo1eR+KOo5TNkx3RECGhjIqpehZa5IPQK9KhUWZZtTurapxXiNa79dZc41fkMrLpZm76eVPY8v4lwrhvehMKIBhSFqe/MtFKa+O6RrVk0+vHb+wx1LixKk4LZDb4lnxNYQF7xJ7E0gbilb6fqew5tiglzdVQB7CS58/VDDpOdoKwPlMnlkM3VdVHTBzRay/auD1PsAqD/CjRg+pPK6vIOM67vdrpEpPHFFIQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199018)(33656002)(71200400001)(55016003)(8936002)(6506007)(9686003)(26005)(186003)(122000001)(478600001)(7696005)(38100700002)(5660300002)(4744005)(2906002)(83380400001)(64756008)(52536014)(316002)(41300700001)(86362001)(8676002)(66556008)(76116006)(6916009)(66946007)(66476007)(66446008)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?PFl8LSwaWERJq36avuhvO7BIHs3q2kv+I5xxwp7bfC2gVeBPj4Iq7AeXWl7t?=
 =?us-ascii?Q?CCLV5+p/8UjXKhJmAmqF5LRluNk4B6kzR6ueRRizSx1RRVlX9+kZkOGyqVWH?=
 =?us-ascii?Q?J1GD1hbEaE1N5wMJG6Vo8Rj7u7bWRalp5y8Jtp3X9/c79W5nvmL/qo+qIKH6?=
 =?us-ascii?Q?sCygMnkMbXiJlE7lRBLfxN75yoCj7UXYaKt+yNACadanb3jsGUxXHRPhFi2W?=
 =?us-ascii?Q?JnM5obe1dMpJh8xjgFgoqbfG/ZXyZW+jRLNjHRMJke2VA5DguTqMtgMq7Qga?=
 =?us-ascii?Q?+Hz0bQSaQgbG7XawPEPra/8/oyMj63JnFPKK2VXs4tJ1MpnFUmLYVhzmQepw?=
 =?us-ascii?Q?YDosFbvGp/SFvCy7e2S2KzfZUYWyWeQCQTzhWaNTTUyIiEx7Qw3okpWlsJ1w?=
 =?us-ascii?Q?z9F+q4XiOgexIw6ad2t8pUftAqUvSLBAGj0xy0qYoaOgRlr3HqDWGODuahas?=
 =?us-ascii?Q?4eNuOu87f7PU7aPQqmw302lkerDw4dzyIofGy4ZMiB+Jmsjg7x3RpUI6omTK?=
 =?us-ascii?Q?Ch4I8Z2KrziKlLHC0MCAYGBjt/7eSjljd7iG/ngTd/JrD9TCqpXK3VY1p1y8?=
 =?us-ascii?Q?lEgUIHUsPlTf+xKY8jOydCoNPx++4E7/PbwFTWwW0P7N33yXAGQWwkdyFKmD?=
 =?us-ascii?Q?m+SGmTNvlKOdPrKmrXvFlJn9owK5CtWtUqYe+nFfeVhj8Qxi9gfwmAuf295i?=
 =?us-ascii?Q?C5ukabdqXQco2FoxjjdiiClXgmG1SzeRTX8Dx4RO1nbW9huN8yGMiqEdye8d?=
 =?us-ascii?Q?W/wcQtpUUY1HWlZnGLcRRy63aEckP25XCCb9YYJa+EZkMEwcm03y4x/CHoV2?=
 =?us-ascii?Q?wizrUhyQ/7XjqQLU/ml1wtdKqdhoBBP2X0gmPrK0fb5k8khc3Uix5iUpC01a?=
 =?us-ascii?Q?ztVEUb5Yov8ASkUSIl5OiNCVk3ywsoGrNRne0ZTo4cXDEYscN1UtIAo4WMSB?=
 =?us-ascii?Q?0DdfdvitVmcRkhavn41HvDCs4g7H1eQPrEalg5iXkRXK9k0wN6qQ/1AP7xTT?=
 =?us-ascii?Q?Dn2Q32RR+np1Z1zT3HYsr6hEGg/YZ31KQd+jrWWNoUcFLqbtJOWLFNfTev+G?=
 =?us-ascii?Q?4xvE7hBG0RgP2XX7QPo8TjL0vU3TPmdYbHt9XBbUy4BG4VhbLo2yRUAxCmpw?=
 =?us-ascii?Q?a4wf6n3ew5W5H6sxtc+4Ba5vta+mc0QrAVn9x/vmszkYVOEu4wrzT/Kl0FqH?=
 =?us-ascii?Q?s8MVGtRxD1/5VxCYMw2JcQUW1GVl8LrSa4/dYenW3WNKKOQGg6qybMVuGrBP?=
 =?us-ascii?Q?IPCJQhTeidQvka4pKfM+1Ody3VzLggVemqKMjhY+RsHdSHDWJlLaTpKlMfB4?=
 =?us-ascii?Q?boh+uEqCppMfhPa41cU2Hqwzcz+ctKoucEpaHkXKLF0Ae6X+7PUHoVQP0QfV?=
 =?us-ascii?Q?Ix+E6kVWjdHhVykuNKauMw46jYi2lgZdo6+1u38IUxF0nCTLug12KDYmY3lG?=
 =?us-ascii?Q?gcizVrkypWgzr9REKpqT8kxzPF3SZ1gmmLGnD6vPOmFHFfNRiv1cDc6IMvcK?=
 =?us-ascii?Q?VdXewOzrBuipNCgXTZMcw6xpJ3dbiTaFcxZMn1DpZ0/Xqysvw0fHPvzrxlYF?=
 =?us-ascii?Q?LC2joQVhmYvUKfeiCHi4F5YLaUtxvct9z89ZtOUIECOGBv7oFtyf+7RcY733?=
 =?us-ascii?Q?iQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93b4ed81-903b-4b66-7147-08db1c0970fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 17:05:07.8595
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tZsHC2IWVUCjx1jR2a50X6Nw7bgV2PeBlAn/iMLSfzWRhlTwMJLPXGi+rUFD3N2CSZ2A7vp74A9Z7+Sdb179iQfvq6PIKSVyuIaTnuVxQMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR07MB6578
X-Proofpoint-ORIG-GUID: ZQc597zSBIj5W2uF_rfdQvtvPLvpzQ2s
X-Proofpoint-GUID: ZQc597zSBIj5W2uF_rfdQvtvPLvpzQ2s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-03_03,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxlogscore=309
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303030148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_090514_084509_370A1F10 
X-CRM114-Status: GOOD (  14.71  )
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
Subject: Subject: [PATCH 0/1] ARM: lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add timer support based on the LS1046A in preparation for the introduction
of the LS1021A-IOT.
The LS1021A-IOT support will be sent in another patch as it was noticed
in the barebox list a patch where headers in the Layerscape machine are
moved.

Renaud Barbier (1):
  ARM:lib32: add architected timer

 arch/arm/lib32/Makefile                |  2 ++
 arch/arm/lib32/arm_architected_timer.c | 17 +++++++++++++++++
 include/clock.h                        |  2 ++
 3 files changed, 21 insertions(+)
 create mode 100644 arch/arm/lib32/arm_architected_timer.c

--=20
2.27.0




