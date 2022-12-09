Delivery-date: Fri, 09 Dec 2022 18:33:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3hFF-00GJuI-Pq
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 18:33:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3hFE-0000kf-Pg
	for lore@pengutronix.de; Fri, 09 Dec 2022 18:33:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kHQUCThXsCvOUrjzerdGy55DcFdBObmL0Iw6wy/LELs=; b=VDS3127rbkuMmB
	RzZkk/m93sJo1jU9aULVeuTcmoed/WHIE1Q/JZCB/woShy5uB240UXX/gJDrXuq2YBjE/+jMpURki
	sbqzHnwkCb9KPNyOpDXi0vpRM71Vx2T91T4mbaShciEBSp0WSiiL1VrtkmaeRRnFb05NebWJX6/CD
	8CGviSK50/Y74OqfFyqHfssV+S4bKIHrW73PFncUfgbQRNkHh94zLBTi49XUw/JGuMrnnM/dlmUvx
	nxcxJwkTLvhfnS41RX1QSJsx+Bbim195jGVUCoKnHaZbwOTgRkhU+WnxEzJluhVtuqUN6chA6UPdQ
	rLUtOKSIPw0zlGY7ouCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3hDU-009wKV-EK; Fri, 09 Dec 2022 17:31:20 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3hDP-009wJb-G6
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 17:31:17 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B9FuZ4t001866
	for <barebox@lists.infradead.org>; Fri, 9 Dec 2022 12:31:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=kHQUCThXsCvOUrjzerdGy55DcFdBObmL0Iw6wy/LELs=;
 b=0Y1SedvZVYllSHSweO68Oo3KjgHPtI4ddPQ2gjtYeOJdrLNO5TMZlqsAoleuF+jlEXeK
 Y1mAwBcgsUB+xbemU/HW6pEKgOcoKmCi0jWgQYTGqrXGHrwBVNNjdS+U3WCpGI7w80Tu
 8n6z6tC9APoQoEL60bX089k7AVCPXIurAwSYE6wkU4FGWx+dteWZJVwFNhDtCUflFDc6
 UVcpam3FW6YqAHs7GSt1MWkU4yyBXyYB2cqUShstkaxSyeYQ10aToUXEfuplVXXn3ISN
 eGGpLi331J/8ObrvqOtNusyLfeFcC6/fw+JjuudPsj8fKTXe3DHDDj6xmmsLxZnxCVzf 0A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3m817sp33j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 09 Dec 2022 12:31:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DXJO2SkkLO/YpFiO1Rm+TH5csWTrB5BQSHNDsMAQPiShiFwLlOJUhE/BKhc1EIjVHIsFWYInLs24sdpSozNjoOcGRLK53XtONkLXXXKQLL6yNuRjRIUNGuJJHREb6pOU7ZVgb2h6197nJ7qYNMz1rku04pWnXte3UOa2EC0RdoY/HyywYq3k3tBCWhz2Dvh1I/FbMktSdP75UQiFbZY7Vsr5MXCE0a0XibTL1dbALHyamc3C8+eKuCF/rAxVo2HRYFmZREEBV+jTTpaNTdRlBrA4drKEPWuAk3Ut+QbupOT4Uxfcw78/H3LiTcsewXTn3IitONuFUWK/6CM4KK8PVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHQUCThXsCvOUrjzerdGy55DcFdBObmL0Iw6wy/LELs=;
 b=fDf1N1yXwGzDOSmNryJ1YvFQ3688iALrqgEkkPUqx2FHXfzsPmpgBxJAAv505zQMCff7HXGtC3QSAC3VIY0NbtMTDriF/03opKxKAyYmaV5n5HMRegKbOggd25CcoHQU5HDx8N6+lvcTx8VgkZIHjEJ0x8Iw4DhbqY2qwZOO4sJPg7dlxBa/eD0PsWRpCDJG9P1bHdxR5HYXGWrU/yCVFt41qQZOvV8ZvnmJs14hl5wHYpyeLEzOClONhvsAb1V5W4DPuJkGjlP+npcrf04ZFQjKZtGRR0puSOBId9Pnf3t2nJQ9+cmu7UqbHzDTuNS4DhFMU8/e+Jiy/gI3hC9yeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHQUCThXsCvOUrjzerdGy55DcFdBObmL0Iw6wy/LELs=;
 b=kSL3a/D46ERK/HPEQnpCXVKXMw3EfRJHJJdCqnHV0Wv3xL1V5UAmrBi2WCG16PH567gunYduQEGbGszaMUsapqLazLUPVlGBKj1qPSpFkebGzHrIW3VZlf9M/SxKUVr8f8bdyiORtqImbdYVHxtgQ+a1x/fc9smhuf/mrbaE8I8=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN8PR07MB7009.namprd07.prod.outlook.com (2603:10b6:408:dc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.16; Fri, 9 Dec
 2022 17:31:09 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f%5]) with mapi id 15.20.5880.014; Fri, 9 Dec 2022
 17:31:09 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qw==
Date: Fri, 9 Dec 2022 17:31:09 +0000
Message-ID:  <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN8PR07MB7009:EE_
x-ms-office365-filtering-correlation-id: f20e26cb-50cb-41a5-75cd-08dada0b294d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  qd7fFGdkRkFUhLAtUIUD4l4uxe7k7YXagvJVl83skZe8aLmA+TijEOfek4cxhVzO/Ha6OeSSYHJc7iTQVRG0mnebYQRTo8axNacpH25bxOTyMlFafxNEmS7JblSmnVQd7+4VtYnaHfgYwDv5ONoLfPB+WvxusQmWdcJfAvX4pSTmPwL2TXAR8PJ2NZbc14TFW6RCMSpqE5I8MbqAuyYnRJYGLPuYeu1e3TNUIAjIuJ2cNiVnuYxT6zQM7JogF9b85jdR9taNFiNrL2oDlu7YVn3xYhV8YXCOmBcij0GNk+IDqDLJMoGhPhqWol3D8xEjBP8vEovoBSVYK/LYEKUabVVnQO9xh27SiTeBfu6sWVBmLeoAqjia8cETgAjIfu5bn01R+v+XKAFaZqJgZmt0v3kiwd7sFYhtGmYMzcVV/OKGGgYolW/krX7VeDZukR2OCmTsRxp2ullQaD8ERyQJWPW7tXluJ88ZAt6+G8DITDtnvZQnPcH90bTPL2CiGBlsqwnPpL5PvnDoeeaHi6icvvz7B+eMwOTsYsNFR4P8+V3w+VblQf1aUFrzrpPHlvCcLG5aYg0fBZjbV1GueqAnTNB5duBTXhBHHYfheYX8ACtlbq/kEUUOIxgadpC+KdPRBiIT5nkGrqquxzPaY8W8FpUTfjx7J8cAGCVODkN/rxPoctMKKzpyU5fpWJ/uZ7w/sP/cy/Yq/3kDFr7MeZqZUQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199015)(55016003)(33656002)(316002)(52536014)(38100700002)(66556008)(6506007)(66946007)(66446008)(66476007)(76116006)(6916009)(64756008)(9686003)(186003)(8676002)(7696005)(5660300002)(71200400001)(8936002)(7116003)(26005)(83380400001)(122000001)(86362001)(2906002)(38070700005)(41300700001)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?wPeqJbyRO3ApaRE+YitLXcV8q+d3v6BRH7tulCOnTWjqa4iEoZevwTCRbLVY?=
 =?us-ascii?Q?yyrKjGBkajxn9LlcERIjpGgWncEuj0Kj5Xb4SeM1cLeZqye0lmmP7zyS+N9f?=
 =?us-ascii?Q?aa9zQc5qAMePAubvp+GLk7Wfn0HKwu4LbTVkOcBAUUrBNr5STGOoiwb6kYEx?=
 =?us-ascii?Q?sHQMXdybRahzNXvVe3lCpR3eI1cYewE51uNTyao0pijZhvX9e3KGZhKi16O3?=
 =?us-ascii?Q?Apg2njSjuLho6pxHcPwO6rLOnTJnlObOTFxfsvP/hEtpyHPS9Q2bt0AaAKF1?=
 =?us-ascii?Q?vw6N1wOxjRiNkyVV1uNjej9afbDvPEkUWziCwSoqTIuWySaU2hdljLX2Yx2T?=
 =?us-ascii?Q?BVYe0GSgBiOsmvTv6Q/whBryHZr+frYTBKMydTgEp/6fOuZP26A1qPppxY0P?=
 =?us-ascii?Q?4MOCcrGWEUJ49bBxTG9bL5D2WMs8VpyKB3t52blh5FLD6UgpNv5Xwhl86Xdr?=
 =?us-ascii?Q?W8RhPPoxCL7bayovOhbVWpfwzQhhSSgC7XTldcq+pyUkNyzv+VidEKeEVAnP?=
 =?us-ascii?Q?6H+kkTOSRDyh1GfzY5CWP/LzpHj1LmMMhXJY8IAe/JZm2QmJ/dvZrRVF/cH0?=
 =?us-ascii?Q?7lUJlhph8flUr26r1jzFhawrO/zsIiZHGfJA/1+MGtrnGsIpiEodj+9BYkyC?=
 =?us-ascii?Q?BLZYKkcswvBXNvrlZfeCYuhJxbPfei+tOYKLv7N+aycJ9dyE6Tz7RGg4ufPe?=
 =?us-ascii?Q?9Yk1ay85y40Lr1/pluSTRuGKXsfXS6aUEQmmV3+7VmSed3A1uu26+McinTho?=
 =?us-ascii?Q?+lLUGtgr7xUXaQ0zluZn8Kht/8NwcTmNQjiA8GSLcTRMp7+7+jPHKy3W8IOl?=
 =?us-ascii?Q?u8nwf3yaO0W6R86ymS880csWnoTVy84UxWpM953FJd2ySF+v1RJbCf3Fq0CX?=
 =?us-ascii?Q?24wOcBOvcVxiPMg4lUAu9FlLIX8GwNTpyoY29x1RbHLVGV8z6Zit86YhK/+r?=
 =?us-ascii?Q?WqWRdH5xdhO6nFx/jNMDymTypg92+gizoq4Ojiga6csZ+0YMpWiLohr8OjjT?=
 =?us-ascii?Q?OMmvRJ3gICcwgZzIjYW+R0b7Nzf2WEl0nmp14AxLtQgr4xboXZpMDnMahXUI?=
 =?us-ascii?Q?KoFsd0UTlq8cc3EH92A5nk3EIO94dlfM6yg7tqHcy3s/z66AotqVggr5mNCv?=
 =?us-ascii?Q?3UUzskeR5B/cbdLGPVbiojioGVeZn9bAlxRCXfGVJO9iALkQgPhKESFgUuIM?=
 =?us-ascii?Q?9cmmCK/2bHqBxxLT0zL6byIwRGrPJz9AEaZ1oiRF9FUqbr9D/YZUv0etZE+A?=
 =?us-ascii?Q?I74Ow6ItBoclpOZCmt3BZjzMD2aBq2jhWLXjjeLn7/1JiCyBc3MxmKNfXFgn?=
 =?us-ascii?Q?Nml3+XznVhzrf3ElNWkaGHbfmo+QBF1tKuEZBiei1VU9QW5hNoQxUSkbmGcG?=
 =?us-ascii?Q?XxLwgMxt+DQ6C2rNp8de+cmR6+epRv/flGD6m/cAy/3rKOBhjMPsEqZOYUTt?=
 =?us-ascii?Q?s5/f0fFe33jvvdjlkLiKNojkdRaPWhI2lOwt5dC6VuPwdum5ksmlb4PmYfqs?=
 =?us-ascii?Q?RUfYP1vQNZe2qs+yWdNQ2x9t98+5mK/wTGJ4wL3sKZjDAH83kFIS3WAhw6If?=
 =?us-ascii?Q?ni+7zFgvPrH6AojU9yVfEN82It9wIhfrKmCJMR2v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f20e26cb-50cb-41a5-75cd-08dada0b294d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2022 17:31:09.8471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5A0aaBiutXfTNNpccMy/0gsJ+YWyfivy1ALeLAy+slaK20x/Zkof5E4Y/emKnFewIfltHtR5m7IaJKs6gjXZLytIlomQpYk0Xg7V04InS0A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB7009
X-Proofpoint-GUID: tLJswYt1UfFJ21KvWwucrYEj9b3MAsFV
X-Proofpoint-ORIG-GUID: tLJswYt1UfFJ21KvWwucrYEj9b3MAsFV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-09_10,2022-12-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=538 malwarescore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212090141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_093115_972888_CCA6711C 
X-CRM114-Status: GOOD (  19.98  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hello,
We have added support for the LS1021A in barebox (from v2022.03)
At present neither Linux and barebox are able to probe the PCIE device conn=
ected to PE1
The board has a switch fabric connected to PCE1.
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


Doint the same operation on barebox, the data are only=20
barebox:/ md 0x24000000
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





