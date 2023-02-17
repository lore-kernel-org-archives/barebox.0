Delivery-date: Fri, 17 Feb 2023 19:08:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT59h-00AJCQ-2N
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 19:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT59f-0000oI-Qz
	for lore@pengutronix.de; Fri, 17 Feb 2023 19:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K6maJJuNWz7DuzfoZX45PGLjLSDI9doUsUNO4wyqMMg=; b=q8yaq05tUiMDeSkBE85qXp8oeu
	+53jxJS9oDq1JLu3tXUtfXK7wMYR6JnsrnXr8I1AAC+FeqdGbhL25Wd8wmzpidE4NpF12VPG8w1UV
	EJKxsR1GuW3l0IzmYZeEMW+wGqtvxBotuKj4uj8hnVgrOpHqXZ404EqhClU1T0CEDK/25rcbeUjPL
	SD9QD0aCj7mubQtgVHXWosejaFTAaJGWma0xeTqs4SzM6H1d3VB5zfK4wmb+2JMW3cw0oOz+OyJUa
	gIPYGEPpv3RbQTHUOCZEVN13PZxZBrrJ5tZL0o/K6mvJPf0cS3XnYUAD7ZqZXeoHpNu680few3lpd
	BIeyl7mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT58O-00FLvv-T6; Fri, 17 Feb 2023 18:07:01 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT58I-00FLvG-Do
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:06:58 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31HEKMat025531;
	Fri, 17 Feb 2023 13:06:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=K6maJJuNWz7DuzfoZX45PGLjLSDI9doUsUNO4wyqMMg=;
 b=JUJywNt1zPe0VmexDeXSKUQUJxOT2Tvi5I788BmHf31fg06XnAKEcBHHk8vjkWFK1wXd
 KfW9l0e4k2EWTF5fUxFbWXEgNGZvafR2KGnAXMRZYeT8OdXH8F/r4Xe/evdDLsZHzDfW
 8YXkw0neY0UgW86nK7I83m3Zb+pb0AhEBR0ceehDn/bBuwm0907kp2oh6BarOOpZ/0e7
 ulo8toJLV3JTRx9ULm/xiHrMfO4dN7xLyqzaCO+MjLkgatGKyMBsMBaJnggxLGwX3kSJ
 xCPLNFLhgaJ/0cYqTzilzRdRfTbDLZAB57u7cPZeDXbGYI+VEOSrGvFL7L944l7RhSjF EQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3np6am1jv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Feb 2023 13:06:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGI98Z2uXqFp3vOoW81qWvdfq7FDEob3nlhf4EZyCbpw9DaILlzpYAZcPOchTMYQi53k4BqjBS0Dgk44PG2ahfSt9WdmjgKJmp3phd+jbXfwe82opIEuFKE7SFcahIrtJtEbjN/VUjEhxABwcSBMG9xRAbmv6iRFs/HYiE1v9trqecnBAcVFZp6per+TdZjFy6BDaT+jb2hUB0BqPc8NAPbQBCBhj8uVUZFRJG0qq+/47G2SWJa1C5UnkRA8OLNPwjZlyQjTND7iUrukMtSOVk/VLbMhkzCx0FHTkGdpamuTzZ60C0uNGv5QRaJIjuqqFrSUYEv3yVyVhQruXyJAsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6maJJuNWz7DuzfoZX45PGLjLSDI9doUsUNO4wyqMMg=;
 b=h5Pz9YXPLLWYB2p58oAsJJiU8v+jIWeOL/Best72Lok4tpJigbSgTTYUspRi5UMQObn/Wtu7LDfZ3AtDMTkiOzOzhaYskYMLRlVkBVwT8+U2zP8loCkH3lpmqFKBFRLz0WneTBKMXCz8QPFGcjakmHrHcXPPyU0dwMIMnzDBwrMQN66JgBUxN5Ms5JFjOZjgsGS0AqjSldx4kFHRhv+nNt3zGT0E+Gtc3g6L9cyWJXBKbWpIAcNLPgymBZA7jxQDnYucydOVnpl5+/sWRDmiCLtO3/nAQlf2DjrYwMUvwIb65aKVCDhk2laGtiDnJKaZjuzYm1PHo2MGexXkDgBjhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K6maJJuNWz7DuzfoZX45PGLjLSDI9doUsUNO4wyqMMg=;
 b=YBFo9jCrauLcpj2zLEgVN6YF6xF5kVQEQmjo+oM4d5qYLHycOPKm4yq2UGO4tXzXwY9l8gqCWLPUFv4BMirrWVnWb41evYXsfpuof8N/8UCnu4fEMfFI9YWxXYN7IddbaZ9lqJEnJW7Y/YWgMFsO2Mzjx5lA9lacUyE4qgxJwpU=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CH0PR07MB8828.namprd07.prod.outlook.com (2603:10b6:610:101::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 18:06:46 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 18:06:46 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index:  Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6AAAuYuAAACHXTQAClAqIAAB2UEEAADnm8AAAa846A=
Date: Fri, 17 Feb 2023 18:06:46 +0000
Message-ID:  <BL0PR07MB56658366E162AE6450FAAFBFECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230216125434.GN10447@pengutronix.de>
 <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230217093619.GP10447@pengutronix.de>
 <BL0PR07MB5665182C6ACFFFB3B4AB456AECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230217145140.GT10447@pengutronix.de>
In-Reply-To: <20230217145140.GT10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CH0PR07MB8828:EE_
x-ms-office365-filtering-correlation-id: f360b200-8d4d-4674-d82f-08db1111bbd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  yd/UqRAI3i8qocMulvQ0vPOws8lB2NdjEC5xT8gisB2EDrvBnaV66/kMeyhJy1Ks87mP5ai/So8LNcmo9xe4hn+NZAthWMwftEovXGS8zudGiDo7LzOlJc2yvNBbXF7O1XwiqM5JJHTQ3//0MynoR4O9rzyOSD7eiAHoQuQm0R6WSnWlwIP7kFSJQ6YOES91dVhlt3buN1SjXqjG23vpIcXlEw0IKtZOYmEs1aFepO0Ohc9g2HsEMb3LJGoGFSxZ1kDKEfmfFjopJVz//lxN1IZg7QFglfGhlP4N0GxjNgtWldV2D+gPBiAC5jMr+F6jzRVH7G0qBLJvOir1rRySzaS1PIi5gCBbjE4pgGzfjnoB5YaOHVYbXHBxBlRFnKcFA4tmIEvfJJDMlVj4Kjx9EHvhGVl13LvYLEEowR8eyErg5vD4TKM0X2tSWCFRENntmhHdeRG9Gex7fSi2cuqk5XlPP6H2GI+12kPy9OyhHsDqyr2r7iMxuIGa8r/zloUTOLb1385f+tiRuRloedYL+OopBwQe546yI20nBFW2yXDNnd8RQzR4cgHFnHmfaDSY2MAB2h5sR3YezftG4k/Dog4hbZL3XkuLtXCy29PVT5TSoDznUVqhiszybbgpd3QH9CDg1yIHzDyac9uENNmqMbFXciygCKCuOX15/17a6wgeQhO+wNB5IKhUyPpCf2VZP3DSIpztrUzmOrYiPYtpKw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199018)(33656002)(558084003)(66556008)(8936002)(66446008)(66946007)(2906002)(66476007)(8676002)(4326008)(76116006)(64756008)(52536014)(5660300002)(6916009)(38100700002)(86362001)(55016003)(122000001)(38070700005)(7696005)(478600001)(71200400001)(316002)(41300700001)(6506007)(26005)(186003)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?JKpHwNygm0hipxT0aoGwqqzlIyVaraLk6w7ggfGDyGqOQ2j+GA3fQ4oE88iH?=
 =?us-ascii?Q?XUQn5l9lTuHwKxuKRRRoPiwXXGE1+EZj8h6cveQPRcAEMtMnuRTzMtJBX205?=
 =?us-ascii?Q?xexvlC/leeqkW95vmc/159P6WMuUjdnSv22CA4Ah2xgWIwRIMFQNS6mPxyaP?=
 =?us-ascii?Q?w/lDkROVfHo/Pr+GJgy6odVf4CUmURjMa/eymL9v6hPC0tTbj33QclGzF+my?=
 =?us-ascii?Q?0QLTFEQVhOXKAdFnwroIPadKtt2Qaeau29lh/e0oxOaFj4XUhuwEE8+W8Wr6?=
 =?us-ascii?Q?j45id/qzelRZYSBYnKFl2/dzhaYkzbQr7wyGKR0dXa5m5QnKkv/cf7HMgcPT?=
 =?us-ascii?Q?Ma48PmyWfat9vqH2M1ShbWXNQaFQ6sPfFRxO7pv8t+gk8Oy3pmj1oL3e0f4I?=
 =?us-ascii?Q?wpqq+hYfACF4izUCdDk8FQt7dpVsvcRcO5eruwmgUWpgPkoZs9C4rfUZfxcG?=
 =?us-ascii?Q?XL23Ka15ce4cuFA+OdfASzjOPtva25M/LHcuBMiGWOK4OVmFLcvwADffmmyO?=
 =?us-ascii?Q?JF3lT1P7Y4BhRMNgVjU+UjG14coynxbYP1QWaZu6zFk/IX8WdcrZgk1zOzxu?=
 =?us-ascii?Q?0bdOoAXZFLy9kx6XKCSh9iOFIzpMr6B8Ddb2H+WHOiVxRPpGjQ1sDvJ1fhxr?=
 =?us-ascii?Q?HCzJCvgxkopa+pi0rKFX/Mboe/1CLQRmsOG0MhsSK4ud+q1BkdI49PurFjag?=
 =?us-ascii?Q?eHMgws482RLmvAwWtpk62bgPT7muH8CorWSdPy0cmiSww0pKEl7wg4a5N3Qa?=
 =?us-ascii?Q?uU4SjazQjv8OmEiwQRzqB+5TiWmTGwNcHigfx9aXKFaN5Li1IOnnxWUh0aFz?=
 =?us-ascii?Q?eB4SRMIKJfCaldtjh9pDC/wXjLC4ISUGdj019IFAOau67ZLjpiSRh7UDQ4Lo?=
 =?us-ascii?Q?VoNOJLe8tO0P2EXHLLTJTCWjDDHwA5/8XjnyPwrczi7mcfWkxWgBsTGS21xj?=
 =?us-ascii?Q?7B09f5Hv/sn9T4otBO+tzXiJTYN7D5kubgoUYyeQDhjoEdy6HJq3hUZt6g9V?=
 =?us-ascii?Q?m7hJdqgabb6G7ds0hiFGxuWskceHgPQALm4qKeOi305ofBCmENtjR02Ejiot?=
 =?us-ascii?Q?ZpQvA8I57R3SbvJNKlhakw9Kt/XO5ie267EG5IgDcQ511xL+kynq7tfzp29E?=
 =?us-ascii?Q?ycnLrRVQPzwQJnmt3kAqjbaEAUq0joKUNfKRLqYNyLBo6+sQPE6Q4yo88WQ6?=
 =?us-ascii?Q?YPt9Jz2kVk/Rg5x2KuNOEhM7kznWOHraLKRqeBhyt1h/nqJW8IigC+Ocgxba?=
 =?us-ascii?Q?jJ5lQQ5hhCG2TJmQiERhCJG79RhtbUVKMFe+MGqz5eVXJftUjWw19A32ta02?=
 =?us-ascii?Q?hLOcUgXxOY0W5wmlCGs8KGBBol3OXEYH8Pi2ZZgWIlqehyM0FCB+y3TQuq1d?=
 =?us-ascii?Q?RcCHbPH7iY7ETw/uKxGT3iD3k18rANYa9Bn+Wqfhh7GrGFt2BwZCHMHQtXX0?=
 =?us-ascii?Q?CWnrWYE62HOU+MgiQ7IjORfgFbMssQwmdnxQtXqC6nZpPpkRMtorFlHfZT2l?=
 =?us-ascii?Q?ST6Gm9eIEVLL3W/2DKwj6hFv1CPnToQHBINhbLPjZXPR1jSLTu3A71ljNGTg?=
 =?us-ascii?Q?OOCa8jq7+ndrYQZTfNdMsOZXYC5CGVao/juykLnc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f360b200-8d4d-4674-d82f-08db1111bbd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 18:06:46.5927
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zbAA4199pTeXGJo02US5x+iTm8kn0FK8VYenF2WfEJEZIsBW7KFS6Qk+TLLXUkE0FAgIRHbS6iglZokX5L47YEJ5XKoyHlHTPNBksyQB90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR07MB8828
X-Proofpoint-GUID: D_bZAfquHxA9R2mWTTO33puPfotogVrx
X-Proofpoint-ORIG-GUID: D_bZAfquHxA9R2mWTTO33puPfotogVrx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-17_12,2023-02-17_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 impostorscore=0 mlxlogscore=759 mlxscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302170162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_100655_153576_8A89EA18 
X-CRM114-Status: GOOD (  12.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,
Thank for all your support.

>From next week I am going to be really busy.
Would you mind if I re-sent the patches without the gianfar support?
You will have a smaller set to start with.
Cheers,
Renaud


