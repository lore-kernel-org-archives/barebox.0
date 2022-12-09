Delivery-date: Fri, 09 Dec 2022 19:03:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3hid-00GKze-Ks
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 19:03:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3hic-00042G-Rk
	for lore@pengutronix.de; Fri, 09 Dec 2022 19:03:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W5AkQkyXPWUjmy2Sc/NRrYRc0DXhDkJX3TLuVlPB1Hc=; b=TanH9p/L2bB+9eG6Nsj68tFKz+
	0pUqMx+loT4dh1NcQlFWgJLof1UUAQ6Vcaan0bz1g/V6VNzH67RdpushPR3JoE06p71tN38VgvDzy
	zX/Fmskdf2ymhm+hN9rRggNMw9PDx/0NkTVcm2KrX3fH7jBCFUDrZ/966voUz5s5o6GvhJbDDbnWp
	18uxko+ACHMoplRsRBrI5BXuYpfflIXHMj4un/g1yKwz7+V11igRe6wTojiTPJJdMEKW2einu9SnG
	Gz+4fr2wW7h+3405VAq+bpAHfna/IU+s270Q473B4n4Ox2JEONHChvqceIkEJgM9YeESpE+CkTpL3
	lzmR3hdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3hhD-00A9RB-Px; Fri, 09 Dec 2022 18:02:04 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3hh8-00A9Ld-72
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 18:02:00 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B9H6aOX004817
	for <barebox@lists.infradead.org>; Fri, 9 Dec 2022 13:01:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=W5AkQkyXPWUjmy2Sc/NRrYRc0DXhDkJX3TLuVlPB1Hc=;
 b=D4Xwa+G6s5m2N8DK2+36jOhOlCfeJBlLWJBbbhRX6WL4DRe7qnXkApT/DIC6FCRUZxgo
 u9SEUZkYOElHcUcyctNl5iX14nEy+e8XJfxO1bx5spV9oy28C76oswhtm3Lp3qqiaPVb
 gfn887UCY28X6zmjkKpT28so4EQFrmVyKfG9Puc8TxiCxK6y1Ma23k/xF+E65gNIwkik
 cVNFBVxGggZhagEl2TDFrE9fIwA4TKRxS5AeqfAvbMdZIS9WG2rKw3lubHyy2Q7cQ+XO
 aShqGAcncTy80tSHJg9Mpp2hHUXaXCNtJpVpC8JxbbKvmu5c4e5leWbAw71JRDAAijor ug== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3m83wxj1ck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 09 Dec 2022 13:01:56 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oczLxfg9pZr3JvtTTnmT5dq2fT17PZKRMytzoU6SG62F0h/sLhxQdoXBsLvid4PXkOcw+Q789RR1m1nPKQbz7yZs9bH596E6wOsP+8NvEJEnFIIuEkaUguBBdcJHAFi/N5dHGtYUt2TzZFUZUm6arKQUgAv82v/7waJlBRvmX07Lji8EA58XLOBNO7DVEfm7Gv8z47s9dHUgEWbXbGUYvMmgU7EqHFJr68t3TPPx98nEqCloCS9qDM28MGnwrzkDnOqUQH41Tmzj+d4eCjVlyv/hqM9HWY0XAHR81Ee9QOVQjWeCdUa5scov9KqM0pqUuh4koc0qkU7sSa6N8BkhqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5AkQkyXPWUjmy2Sc/NRrYRc0DXhDkJX3TLuVlPB1Hc=;
 b=MmcpSlP6BFoc3O38kCLv8TCclTu17LzL1Q8Xp9E6HahDtXKTx5ZWDcMoSlXcspPCC6UUrhobXob0Cl3rvsUgoW032FZIka1/NfiJyE7xWjhiKXucYOLtOHyX8PaVYfBSVrMjukJx2XK3/uvgaBS/7int9aBghVvbu5rzyADBNmfbSQ4T4uw5P7pgTwZqWPj1BQe29Ip8UFa0WzWwW+Cv6lE53gV1UqBwYZh5JoHadcNzlOMBG+4tnleqG1EqG2GIFf9kFM8BBtrSwzIJdwJNsQlxff9dgCz9ve/hQuvgjN8aluxnqeC3qQdcVu9/WyQcxP8kChM6oCmIs1hFIJzCbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W5AkQkyXPWUjmy2Sc/NRrYRc0DXhDkJX3TLuVlPB1Hc=;
 b=Kc/gixszzimVYt7havw6j7uEJ+Gf603gM8vdOffuWNy4e4ZwKFBL5Wy1+FYQHyvh52nTVI6ndQnqV5Q6MoJJEIZ/wt4x2oBoCyoKuH9S110VEA8U3utswzAVVAwY7/8F3LajK9vTDtP4yo31NMlGcWqD/pj0aZCX1NFTId1Jwo0=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by SJ0PR07MB9243.namprd07.prod.outlook.com (2603:10b6:a03:406::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Fri, 9 Dec
 2022 18:01:54 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f%5]) with mapi id 15.20.5880.014; Fri, 9 Dec 2022
 18:01:54 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwAB+2FA
Date: Fri, 9 Dec 2022 18:01:54 +0000
Message-ID:  <BL0PR07MB5665497DD89ECE717142A94AEC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
In-Reply-To:  <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|SJ0PR07MB9243:EE_
x-ms-office365-filtering-correlation-id: 165f8de2-2c3b-475e-b5f8-08dada0f74de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  EB3ro4BQyTAu2tYj+Jd9yxnNKSQwz3DirTWKHWk1cyrDj6SLRAcy1Ij4PK/GUR7woD9hEVRp+QHzhbmVWwaUPdLogIpqlJ10motM+hlSwjOa65mwdRmknIWnDzT04dvbqegA7s03nlFmqzDSfb+MnrbgwWHkL5CN0nK/KwcmjnS4RknQK2LvfmznGj6Pxhq9wu29lzAFtwY+egd7rOnoETR7s/j2anCCojdJLKbwyRCcsrAMyEr4Ukk6nXofBk8ti6bo2el4W8JCrDLoUjuoxBpLPeHWRASGjXnytYNwSt85R6+dJ5Bj2BGpwj3DTK/yZEhUAOw8z0FwdtvuKw1YdVRBeC73ykjGwykFZHLiNsl2+KI5PYtV4ao9fLDJqwECcAVxlYcpPyL/w3HD0m0f4Fn8K8h8t5vr6TKFgbboBOTEBSmUL8vGHRh+6NkWNNnBO8XZyq6TVLV3H7RJuStmNS9JZpq7W5LH2f5cMh6CDRkdBflVA9NXAv2ALJMMTLWmTH1YwjD6MKmmA+FbfsVABoT96eZGBUfpB6WEh5IyiJ5rRN/+U3XN/gGK5CZOu2sA0jnWjafbK2jF3RUevzznrmaZXLzOonHytMuYvBbIDuYVjYjnxohmPa9k0tfjaPYC/LubvuUALijPiqV7HW0cApHg5UcnLTINQGY7mzND9vMUez+E7OTgHN21Np80fn6nTcV1b+M2BElHqK5mADo/8w==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(451199015)(33656002)(8936002)(8676002)(52536014)(66946007)(76116006)(66446008)(66556008)(66476007)(64756008)(41300700001)(7116003)(316002)(55016003)(83380400001)(38100700002)(122000001)(38070700005)(53546011)(71200400001)(26005)(7696005)(478600001)(9686003)(2940100002)(6916009)(186003)(86362001)(6506007)(2906002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?Z4QvGRpvNU2RAGGNWFY8HkomtQplT+eYCIfqLWEjqzTZmlQ7CoqjNvJt2SG2?=
 =?us-ascii?Q?EL29LpnxTd8C7urN+YUyvuVy48XuwAYnGvsUPfl47EMhNXH/k0ujWakdx9yC?=
 =?us-ascii?Q?aWe1MP9TWVrt1mCKg0Ha2+kj/2Y8lmEgrdbVw9JLaC6x1x+pmM9d/QEOStTl?=
 =?us-ascii?Q?1JRPn6Wy1cUHuMWvVBvBN1n9o6XC6awqznZy7bMPEOrgQU73DLJ2ap41S3eZ?=
 =?us-ascii?Q?HtBHxlml4zqRCubk7Ew0Nm6QI9+s9OhV3zdqh7fVFiOnl0H26EjOF95vwRFh?=
 =?us-ascii?Q?D9hFjpMNtv/48B0VENcaRvgvxls17F49d6lqg1WVeriuSSWKbaOpdU+0swrz?=
 =?us-ascii?Q?YpFNr+dwoGic1clmX63XmEngcUtx6HqIeB0ajR4iH8h7lPIem0tE0SF8rh9B?=
 =?us-ascii?Q?kSYKuGVqjRb7tY44udQdhBJMj1bUBVXc2UPWzYcdIL0WsltcQsZTDHohdzGV?=
 =?us-ascii?Q?EfLxpFNvCahMxZEn9hfMqCDdcS+J74YxIp5So5dZLUfxCEKRv/U8W2l9bpFE?=
 =?us-ascii?Q?boihX5rzxa88Yyre2QZVXx+FFzUcZ7CyFLqK8M6AxStAkt7QjLCkhShvw4/T?=
 =?us-ascii?Q?ERTt7fq4bzWqHCW1++lc0pZ8ydxz09FM7XCBpRG41CrPhABuyuvjZlSs6/f5?=
 =?us-ascii?Q?sYQb/sBFyZ+FyH9iiWnwcmW80CHOV1r9TJHC9CZubfIaCMEFDcBqr8t6PVU+?=
 =?us-ascii?Q?bkzQM02fqHri9H9ivh93+PgI0HAj52wT2sA/jvHpI68PkdkWzbE0mbjnvT9g?=
 =?us-ascii?Q?P5AV1a8O27bvaIhPWMCJUkPgKmClD+V3EA/ILboMPFHrjvauFPm+oKPozACZ?=
 =?us-ascii?Q?foSjslvKwlav4ER1FHFbzT2xg3Qbs+b3kRUfI7jmSOxm5H3d2MKZryy5c3Qw?=
 =?us-ascii?Q?E0Mbz+EVNRP3aXaPSnM9etyENFmFGVZrT+zZntPgu97/BIouSqXcTIPIEXY6?=
 =?us-ascii?Q?jEn7FVoACdyMXl4MJ3oS74HjTsZKQGM1h9zmwZPL4bWVTp8wcjembRR/fYE5?=
 =?us-ascii?Q?DrlPNCAKLy8R9OBvIVonnbdiW2/n/3xST77EFX15jisZZOa/Sr79vFnFxd9N?=
 =?us-ascii?Q?3agIeIXDyUJdJNW++iAMb+8v4LEHubgLZiKNCzPixJDiYx9hupIGlQX3twoe?=
 =?us-ascii?Q?UhZ8qGrmSoAn59QgscqxEMtL7k4U3DarIfVq/x4ILiBrZs81gTd9WQnNHJas?=
 =?us-ascii?Q?Rs5qoebbrjSYkZMSltpr55mhVDPpRLzHbSaoL9GxV+jCVbbOCS0UPoOA9J8f?=
 =?us-ascii?Q?8bSrPYC+IZvmAR9W0GgE6VX3FXuyDInZSwfV44OAgSP80cE1bfnRZpq32QjQ?=
 =?us-ascii?Q?kL9dW1RhGW2n8LzsSOjrGm/ZoFxNkOV57D1JtEaC0BJ/oSFw8oio2qcMBTFA?=
 =?us-ascii?Q?kOEoFOlUszoOFaxSrlQzoJavIJ5ldK1T/ul1zv0f2ei3SzUVX16SCyW6xe0Y?=
 =?us-ascii?Q?X2LrKx9dPGDk7PdIT5dmTGDjkqZFaPHRJr6029zqTqV6rUEBAcvRNVyjpK/O?=
 =?us-ascii?Q?ARChTXBMDpc40NJ1l7suK3fNhZ4mHttWN4mYP9McLo93Q2UGcu9kcaPZWOgt?=
 =?us-ascii?Q?W77aSHgh3AAGIAiPHyhMghzyS5bmlS+C9QF+ZOJO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 165f8de2-2c3b-475e-b5f8-08dada0f74de
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2022 18:01:54.6151
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K7Bs8jmSLxMAVp8a38HcwkruW+byCTDpuQEfV7mH/ISjnFqBEHitqeMrs0sJDki6CX7LVouFNODLvPIpD5LcEtgQaCcwlW+yZjiA1TJo/rY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB9243
X-Proofpoint-GUID: vZFPAboQeNdLW_FvvaESSYf4TDCXV9U0
X-Proofpoint-ORIG-GUID: vZFPAboQeNdLW_FvvaESSYf4TDCXV9U0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-09_11,2022-12-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=720 clxscore=1015 lowpriorityscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212090146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_100158_810221_49B8835B 
X-CRM114-Status: GOOD (  24.05  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ok. I did found the piece of code in U-boot that maps the 40-bit space for =
the LS1021A.
Is barebox able to do an iomap on a 40-bit address or should I add the U-bo=
ot code for t?

Cheers,
Renaud

-----Original Message-----
From: barebox <barebox-bounces@lists.infradead.org> On Behalf Of Renaud Bar=
bier
Sent: 09 December 2022 17:31
To: Barebox List <barebox@lists.infradead.org>
Subject: PCIE on LS1021A

***NOTICE*** This came from an external source. Use caution when replying, =
clicking links, or opening attachments.

Hello,
We have added support for the LS1021A in barebox (from v2022.03) At present=
 neither Linux and barebox are able to probe the PCIE device connected to P=
E1 The board has a switch fabric connected to PCE1.
Using U-boot we are able to see this device and the NXP bridge

Using barebox we see only the Bridge. Then, it fails on the first read to g=
et the header type from the deivice on bus 1.

We know this driver works on the LS1046A as it can detects a PCI card on th=
e LS1046A-RDB.
Both the LS1021A (32-bit cpu) and LS1046 (64-bit cpu) have their PCIE space=
 to access the device conf, I/O and mem space in 64-bit address space

On the LS1046 I do see access at 0x40.xxxx.xxxx while on the LS1021A, it is=
 only a 32-bit access using the lower 32-bit.

As an experiemnt in U-boot, I have disabled the PCI driver and configured t=
he bridge to access the device.
To my surprise I could see the device not using the 40-bit address. So I am=
 not sure it gets mapped (I send a question to NXP)

=3D> md 0x24000000
24000000: b86114e4 00100000 02000002 00000000  ..a.............


Doint the same operation on barebox, the data are only barebox:/ md 0x24000=
000
24000000: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx                ..............=
..
barebox:/ md 0x4024000000
4024000000: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx              ..............=
..
4024000010: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx              ..............=
..

>From my debugging I can see that the Layerscape PCIE driver use VA address =
=3D PA address =3D 0x24000000

So  Is the problem I am seeing an issue with mapping the correct physical a=
ddress for a 32-bit processor?

If yes, how can I map the 64-bit PA to a 32-bit VA?

Cheers,
Renaud






