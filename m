Delivery-date: Tue, 07 Mar 2023 17:19:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZa1l-00CV3d-N8
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 17:19:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZa1k-0004Fi-9L
	for lore@pengutronix.de; Tue, 07 Mar 2023 17:19:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5D2zbYe26kFQZdVJC1YXNcSJ6lPgvhSv8fVJGHftbw=; b=15o2SZAcauF7pf
	Iu9JNIjVAqZKFatmsGTDF/OqlHqJsFXcGKAmsVa1MOjB8clvHC6rRZaDiUMqiP5LN1EnNZ6fQdSHx
	xVQGlaWDeWayX2/iqXvxjPNsxiAxP/hCH4z2tzX4adIAHJRdcR1Y1vZf5X+GzeQgg48bu7wrynuAK
	WyShFc6fuh843DeF0hsda33zb8qdhUjO3tZzVWrRYfsn//7P7U0unLIznGavKQ+HKf8LMEINbcvaG
	69cuYyaJD+nOzaJIgQ2sEN8p6Nk5/XTICiVNY2Xoo+MSb82UFKspIlBXjOTRnxNp7aZ+x6ONIKUCc
	v8ZcDMtCgCG7/2y9hblw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZa05-001T9P-AL; Tue, 07 Mar 2023 16:17:17 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZzz-001T8A-JZ
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 16:17:13 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 327EEFJ8007977
	for <barebox@lists.infradead.org>; Tue, 7 Mar 2023 11:17:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=g5D2zbYe26kFQZdVJC1YXNcSJ6lPgvhSv8fVJGHftbw=;
 b=nQ2qnx+Uxwi1mCutGgPColap4MMDbB33+OwBDyEwNCMSKT2AcVd3IozP7hNvi701OeoZ
 nUJHdzWL4ucXbdJgnZymDDXnewpHoTent/OgRg8K4QAuQz7qn3eBPTIZmG2md3GZOLK8
 v66uCNB0Z8J9iTdLoyJHw/kRE2wBrDcdUWArOnk3bbwWpdznon1aHy0YOfo5eIYVYAaD
 X93oPF9a/D4YDrEtS928exuVbO86O14gsYOVuGrhSY3ilhAe+FNpCEjLHS5+qnu1aZbV
 T+WyscZT10LiPjPUqIoRKLVyrWUt0kopMfp4v8VfE0hrrMjPSE1Ux6QCTyrWEW8QcLur 8g== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3p426dt66d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 07 Mar 2023 11:17:07 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TyDa1w5W0gjW2QastuTCWZ4uMWN/MExEiFuRxtZKXFwz6xDumiz4gIc3WvHY/m87ykDQp/yTL2Wts/jEnJy7Xx+fNhck6B3vl11b8p+tP+gMyrPTUYKrsD77XMJsJiE85ON9Ugyi3mqEG+5/l4Rb38dBDq7EEy+R0eDOMGDkGesL6c8Nz8mD1pvUrIuVfFgpbkmq2BW6J1TK69VR395RqAz5b+4SWCO6M6jgxnR7yKghAlPPiWt0gwdGSMl5OZixWFHuRvAFqMBngBUOfrrFI7J++gHeqCRErnvpxPBlAtrr9wZkcW/rH9PHZqUzY8cAc9GWC0YefbExpqv17HauAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5D2zbYe26kFQZdVJC1YXNcSJ6lPgvhSv8fVJGHftbw=;
 b=hflrEXQu8JzupiKWtXca+CF3UzJrJ5IwYGsG+66OPgTT1DoiInIGCo/OK8GdhgsBt/+e6HEnVzNAMaDB9tpkTRiuFx/pQa6qpFqQnmZyANkJFqy1GVZLvptRVAkCvJS3H85/kU1501mLbfkXh443RoOMqelG0kL2at1OIx9j6D1dXgbvWn64axU1qHg0o0tqkTgR3t9B4EcEkmNnURsLpd2s83EyVZnZJ5XDOA3UiPFc4mYRgvxYJwnZ4HJ5LgIlfJEfj3FLDCMXZeJdmFiL14wXoRW6kxCT8/0Y8sFORBg9BgCNZs0UWCcjGWCS11GSY6ao1j9gNYQQf6A6YvLOtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g5D2zbYe26kFQZdVJC1YXNcSJ6lPgvhSv8fVJGHftbw=;
 b=hJwZQoFjOpCr1pEx/ONRXdbOX1F/AFgBYEu4q/pNhsHD4FRZKPi7vGY+irEoranjZ9eGU658d1+QdAMOPskIRqb5hHph1+CdQDCmetaQ2E5ADJ1TM/5iUd6adzg09x8DbONgmP3k5Az8apN7JsyR0TYACogGQCEMDooMLGIv5cU=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB2740.namprd07.prod.outlook.com (2603:10b6:404:3f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Tue, 7 Mar
 2023 16:17:04 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 16:17:04 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH V2 0/1] ARM: lib32: add architected timer
Thread-Index: AdlRD9gbK8dsYcpYRxCkJ8vqZYX55A==
Date: Tue, 7 Mar 2023 16:17:03 +0000
Message-ID:  <BL0PR07MB56658D3C9DE8D0248E4E05D3ECB79@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB2740:EE_
x-ms-office365-filtering-correlation-id: 966a6bac-d49f-466a-8153-08db1f2763a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  c3OJ6+GkFgS+oDjUTTyYOeVqXv2PD1aHS5fOzp9r0toc+ASONEsm7DaFH5Y8MHisyifjEBD84clJY3TCRLx14QtwlbCzgbULvQc9hbteqEsVE0WJ12F1+tbm75jmTAcGeRgvOuWxVrYH7E7FFKIm9Wv2zFWvRbTvKH3cu+FfRhSNlHFnhLgzu52TR5WvcovXMYDmIaJorJ8Vh/9daoMDNhXFd8xwQTtMNwEGP6v9cGNhOBYDA5DEjz9vvTMHDB5nCPJoifBp6JWf5ZfOYFOIRB065bclEb3GVsj+k6vBNRtDjyqM5G6TwWrJDvb6pkZW8yJgITD61uLZei8u3/cnXTbcM2RUnwvAMghpwJXgwtZcOuSRRzcD98fVyUh0QyLYcTgMZVyYj3bJwjRlVkI0BdOfYbpSZyaz7uB+aPsuR0RpaUSzmwD8yuhe6CPCkVzEbpi9AmKePY1iC8V3pUPLepoCrG2RTaLDnjvtEVBWnpA8bNdjQPlcrQyByCHISDtaAztd1FrgijF9s4uHl9njX1ZuRP0o9iO3gesy3lE8KWUDjdF1YiYI8LrVgQHOZzrWP6PDZw+nZmM08nz6KAj8ilR/PbGnQ02jBAOGoVXvW2zdSlH0nXPyvtREeOxIc4a+Ty+Cz46b0rQWnmEAvb3po8SRF8d6X7h79Mn2XhNSHVYMf4ZpnNaJC4nUUlDA+kipPPG7VhMidCkeyaC8BzvmiA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199018)(7696005)(71200400001)(6506007)(478600001)(38100700002)(66476007)(66446008)(64756008)(316002)(76116006)(66556008)(9686003)(66946007)(186003)(26005)(6916009)(83380400001)(8676002)(52536014)(8936002)(5660300002)(4744005)(41300700001)(122000001)(2906002)(38070700005)(55016003)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?HYFhscCuxG6wDzD/ao9mtdAQErSczHSW2XK1r1vyOG5Elf/4YXy4jHG+rpvt?=
 =?us-ascii?Q?PT+CeyTgUHxoYT9kSMetRUko6z+uZhxG+ShjPS8EmpaXigTpmiGpmHCgIB1f?=
 =?us-ascii?Q?NVjna//KqR38DO+FfIc7LYJXgEGiRASEMaF33XfR4iq4NeE1O+tHNznBZu48?=
 =?us-ascii?Q?N8rMdSyFr0hTr0BJBxFZFBkPlH9LwDgv97LyZ6yOutL1tony0UBxOLJNgvc5?=
 =?us-ascii?Q?TzrIHpoyOBsYHCZmaGT8Q5LO3s1VqKy9aDYi3pS3mZhChTHAVtXH1ndHZpfZ?=
 =?us-ascii?Q?e53CGQNBRkqRsAnB09N8kqY4e9Zlnvdim9aPJSQJDHk5bP13fzzObVHJE2v3?=
 =?us-ascii?Q?tA3umWUvMPAOknvN/amDYINbYqseIpua5yn6qjnTJc5yb2YAsaCz77nZyhqR?=
 =?us-ascii?Q?IOH1iAXQgq3xwm4UfutmG+NYqH2EHzsoUOWbcFHfXGCRnRRzXSF+YS/cYOXa?=
 =?us-ascii?Q?4wp09xIqMhykgOSYy5yI60yrHUx+Awf9ZCwsgAlp9Wb26Yu6oEUDsv1GvmiE?=
 =?us-ascii?Q?t4ZCenQtIPhtK1ueq00H8Bjn9/KYQpcRueINaMgV0/B3HeEqtBPls2ZQZqQF?=
 =?us-ascii?Q?RP6cw/ZkCKm1HfhYvdOD5B7aGqev93PeDjoEybTE3x4m/yvjEqJfACWkRdPV?=
 =?us-ascii?Q?vNUVQRWlJ6+d1NY6ugyCMWsdnD5j/2+8AVSPBQFGME+p+ATUQGRkosygEhoK?=
 =?us-ascii?Q?rv/MdbT1kFGtZuuYsTmw/dMz664Bgpj/sGDdd68E/tHsnudWtScy5zWXwz3y?=
 =?us-ascii?Q?VnzmA9nVK72od8EfFVjg+8Q0ToVc9wYc2jzXi4sFFThrJDqyjNk+oT0BbwMp?=
 =?us-ascii?Q?nT9U6H84fe9nc7UoEkQDg5rPx86ROUhVzP1DY4bwT93Ax11xVSIuxsOIDDHR?=
 =?us-ascii?Q?zI2iWFjluiZzJngmwzF2dZtZbolkzCi4WrTwYbNpIImCnVJujx4aVwLAMUI5?=
 =?us-ascii?Q?nl0ckYzh453rtmD9OurblHAoYiLUYvb3IdPTgBbLTmfYUgfCXwbQxPyuXqGH?=
 =?us-ascii?Q?j7TQeEIJCqhWxKG/FMvCDgLH7gGIjsOi3iNKozHE/5TliqwO0vEJ+Bis7ddU?=
 =?us-ascii?Q?KSrXHFSZFxeg2JvGexo3DoHyj+fVFRnY9wRuUvyGr4y7eI9dG380UuIs3SN9?=
 =?us-ascii?Q?x3vvTxAPGrQ7cuOMmZRI/rq594QAjN3Pbst0mAdGuwcqIc4BaNgSoCI4qW4a?=
 =?us-ascii?Q?BCDRenkEeP6MU18TKmrzP08KrnqqY6qyvLmZn/YKnZOa08IS9iqV5dIysa7w?=
 =?us-ascii?Q?tLUuqU5Yt5hcONDWXFJ7ak28+QhMbie8Tfryd05GijcYZIPo920hAmpy374x?=
 =?us-ascii?Q?x7DgvkDX/Z3S2+dLQ2XzDbSlLSoQYPJosVaikvNqP5s5Qs/fmZbyNGiz2pK9?=
 =?us-ascii?Q?9LXkaYCcvlGlQpYWDEsz6+jrs6eP4kg8AyRyoPotmRAUcKhAbJnlmvX2jgD1?=
 =?us-ascii?Q?LbEb6Vyv11nBdrG5MMVezat84KdT52cRFzDGEIOmb9qmNWb6JamynQMtTswr?=
 =?us-ascii?Q?H9iqA/b9tkDhT0rfic8qFSJNwFJBXTmtd1U7PQNT0yxuE0dXKdgeBfjHHGXg?=
 =?us-ascii?Q?5+7yvk7K+LESgIC7etIj2ImiMGsv9ieGu1ykz8b5jiAe0ifOiZrMzqshdtD6?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966a6bac-d49f-466a-8153-08db1f2763a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 16:17:03.8942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VAoirwr2uGCTZd8wEpYw406T0t81vlquBMB/UXhYOo830QzAEFivVbvjMlSIVioaMoGodkjxJjs5kgseRB8fweAYwKcksrxagbwdX4czapQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB2740
X-Proofpoint-GUID: n5zbw2wldgdVPWTkG8wNkvriFeOWzlbI
X-Proofpoint-ORIG-GUID: n5zbw2wldgdVPWTkG8wNkvriFeOWzlbI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_11,2023-03-07_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=604
 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303070146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_081712_215431_A405B373 
X-CRM114-Status: GOOD (  14.07  )
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
Subject: Subject: [PATCH V2 0/1] ARM: lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch version makes use of the divide and round down macro to calculat=
e
the number of ticks.
Following comments from Sascha, the Makefile is unchanged.

Renaud Barbier (1):
  ARM:lib32: add architected timer

 arch/arm/lib32/Makefile                |  2 ++
 arch/arm/lib32/arm_architected_timer.c | 17 +++++++++++++++++
 include/clock.h                        |  2 ++
 3 files changed, 21 insertions(+)
 create mode 100644 arch/arm/lib32/arm_architected_timer.c

--=20
2.27.0


