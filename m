Delivery-date: Thu, 16 Feb 2023 14:58:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSemg-009Mdz-OC
	for lore@lore.pengutronix.de; Thu, 16 Feb 2023 14:58:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSemd-0001eA-E0
	for lore@pengutronix.de; Thu, 16 Feb 2023 14:58:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y3YxK4Sfd+UUSPfIAc8bNLg+zOnmuAvYpcH05WM2dEU=; b=yfH09I+5I6L7D9tVYQOxUcf+z+
	VtN4QkrX3qyteuzvJAzMyX2SyjXzIrhP/x7TEIT5OZ02J50jsWbqznnkwPhyLY4bp+Zb9i2WoieL5
	8pTMGO37M62aQjp/43+U+87DBSmbwI59/Z8NNq2/EPV567F6pcfW3ww6nVRlGkeIPfw0Dy5N/Wcfb
	50PtKhLyluIcsB7YUWH2JBrI4/Cq+Bbmk9/1hL277VRPmnx7Kdjc3mFyF7qN7Wb3YBwKyIB1+jjXX
	Jb1T1xVi2qTHmF+QoXN+RVcxuIZQfapb1sZuJ8u4Cthw64b/6M/r9JuV6dq2rNgNDZ0ptldTzjvzt
	juHua4cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSel1-00AT8e-JH; Thu, 16 Feb 2023 13:57:07 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSekv-00AT6T-69
	for barebox@lists.infradead.org; Thu, 16 Feb 2023 13:57:03 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31GCK7Ks030017;
	Thu, 16 Feb 2023 08:56:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=y3YxK4Sfd+UUSPfIAc8bNLg+zOnmuAvYpcH05WM2dEU=;
 b=xF9qGEHlQpCTwLpp5QikCizjNngeB3QKljiwAxD+QLwoah7QbZfxQS9QkfB463cIt9pG
 h78XdI3T52sFkL3zcFrSTma94vWtXKpgBjIolHDQFQguxhI4Irvdk5cQ6v9FNBh0ePwt
 dq4gWXGz5CAG1ttQWmuOikccxw0xWzxPvxPQ01lYuLgf+d+r/LmHUvuPP4lXwvV+1I0p
 tDlk4fwkVcAbnpj0HpUuytKkk47Vr323r0LAQPqealH/a+rE/Onhca9YVz6wECpPY020
 YxjKi2XvH1+WEcsqZ6VRMrOy5hfhfYUxomzJXAwggOiww55tZYjmYzlmPozk6r1+E9MO ow== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3np5qdgy25-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Feb 2023 08:56:52 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FijAHffrm2Z9g9Ll9IzqP6vPGA0+FduNXDY74JBClPL1rjfomw7VGZFHodeP7iDj9Tibf3J+QNO+mbQmiXc6hExehHWq0nrXwpeQafkHkexbBSdK+Iyr4Krk27+zJ/YjNg2byohl7wDsBC2LF4H6Fhit8+W4ZDp5+2UPbqRrsLCv/073tPmT/EYS9iMGSYvZhH2zTPihP7Kzj1QjuGE+/s9bd7u/42zMB72FROetiVYJbi+adKHPgIo7AZykFYgtrncna7BygQ5K95xBYbu3vkXS98cMfuhC0HaqmoNrkOh8lU/BOyl+mCs4ZuQqrEl2VqnGQUJ4oYbc4+ffVe/xJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3YxK4Sfd+UUSPfIAc8bNLg+zOnmuAvYpcH05WM2dEU=;
 b=XfoGkrRI/jYcWCCFlSGYc7ePn2EWKfalAKU1rO0/K8ebKNjPHdijMxFn7EdIOpjdhTYhnkzud6M7M2hyGKeV3zG9eXVOHylmAmJ53nrWksVf8ldWnTBUQ1Z8nU1V3+KE3HvZj265tBUpywa9qPFrHynyPLziK1VP2THEYxBU+Ehxi7h1xEZBxCxA265iss6XtXdJXBGoCyi+eRndCK1rUVQvXKJ6zIDIValE3STv5E8IPeHP6/5npIwpyCQK2xuinRvtrGYehnToIg7mqSEtIO5RckS0EeGA6touLpzrXRR07b66xnOymgnO6NvWVnRi2ML0p4yBrLZ1eWW7uf6Gww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3YxK4Sfd+UUSPfIAc8bNLg+zOnmuAvYpcH05WM2dEU=;
 b=uVXADyeLaxc4p6982pxLAE3Px14tZLxdawl1CBgrQ4oMWk8muk6I0u1ZmeiYVxouj0pIwKfatrh9yLwlpJthQLuXF3axkOHAi2SLwqq25+t8OzEA+gWHR8XVFRdpB/GJt0baJR4/8f5OXqKxD0AV3xGG1Rln2yGCEt7qZzxYUC4=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DS7PR07MB8285.namprd07.prod.outlook.com (2603:10b6:5:3a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 13:56:50 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 13:56:49 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index: Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6AAAuYuAAACHXTQ
Date: Thu, 16 Feb 2023 13:56:49 +0000
Message-ID:  <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
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
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DS7PR07MB8285:EE_
x-ms-office365-filtering-correlation-id: 250e74d7-652b-4afa-282d-08db1025a694
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  m/7KX+pfCjjpNlrzG1NeKLCHzsBgIjP0uWQB7lXnrBucobNrfI/+QA9pOdu5kYx9WAu4QYN4natItt16+9gzqqQNK5teIalSYIjEbYoDY2+j+82F89073/Vtzw55yacfPc3ZCYAo799ReUarjQo4pCUyfT0GqJOx6qd6seNy3mdC9+9L68/W0ucbhrF79h/u2gXTO9FacYm3Qqb2rUy4B5GFEa/6Ch0ePDhZ+zW4Tfxhx60wBC10VvPZ2ML+kzKO+T3plTaALjUxHzsvGfkp+yhve71A43TvK1Pag8yGHA/19klmFF5pWhYob/3pm7vwo3aTKm4+iL1FKBdbSdS86cXBpS1r1a2huaQsb8fj3lTQKeFq64Fpkvgs4YMvLeoyT1A4CofuFIEPcetjgHJ4qwURlZvgM8iw2cRdUWchVOI0WlqBrZkLo5nspGDRfZMk645mVqg7/WRWsfDtOwMBALMU7BJgop7bVhIO7o4g8GvLOjQqZKBu6yC0gmJ4VuVY4D/cmE7tm6QMS/YH2cwiezULuj9H5oSSPF98Wv/4swXoR5AxZMh1ztWf6anPx8fE66OsxrxyI9OrJTW9z/lvMhtE6DmpceeV121NAZoyfAaDW97SqAZ8MLNHKPYoi8cnPpr/Yeo7ArsD2dePcVM92EaAwt9BeaV7xlKwXppX6kd9SXpu3RJVXl4LMb335jP2AstWQEjKu8B09vbOTqs42w==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(451199018)(38100700002)(41300700001)(6916009)(33656002)(52536014)(64756008)(38070700005)(86362001)(8936002)(4326008)(2906002)(122000001)(76116006)(66446008)(66476007)(66556008)(8676002)(5660300002)(66946007)(55016003)(186003)(26005)(83380400001)(6506007)(9686003)(53546011)(71200400001)(7696005)(478600001)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?HaEzYLul4CXq+Y5AcS8e4A23VSv/UFwmHt7MszBGkKtoDCeAnOnCz7eCXMmr?=
 =?us-ascii?Q?ve+a32dNna6/TaEY3g6mffFqw3cPoDngOKDg1nH9zA3Cz+vaQco1c2utpxgR?=
 =?us-ascii?Q?YH/trdktOZm826dvEQZju9IbQCBXIoC8KTAuDR4A2SXLJbXWlJ7HKGG4uiRr?=
 =?us-ascii?Q?0Aw3KJ+84EKDch9mhDBskLdwmUT6qyK2IIO44V9GG4xhSzhXUZsUX4dklOVV?=
 =?us-ascii?Q?itVPl9m3LDRFJl/7rQyVVo1c3lDwnzhNR7V/MaYeieh7nLYruol01BToUzDt?=
 =?us-ascii?Q?Muo+lGX/vJd+oZBcM80e0bHU/aqpN5PFWDcpnM78GkhV1iaoYGP/yF+QriZn?=
 =?us-ascii?Q?owY2GsVkjaYFYLfpq4NYs1jm08Cl72UYkkoeJ9pi4BUMHFast+hJqFxtjS8W?=
 =?us-ascii?Q?szuNHwOa7dqvhR51X+I+75kxrjovwxjbNDDMj3rRjkGD7QzxR4jXCL2kOeET?=
 =?us-ascii?Q?3T6QgpR3/kPd96EZTj4HM5/04T33kLHiJgKOJjSfjhGQYMCfJ6m6txnsCkvo?=
 =?us-ascii?Q?dz5o0K7JElqGQVzIHJ9AywEL3NZ12k35T4yEbp00m+8p+P4ziulNJRsoYqB9?=
 =?us-ascii?Q?eV3nkNMQVNj3ElvmoM26psVkah85aTFk965267IPMpB4jA8WRMiNwuLVHuIZ?=
 =?us-ascii?Q?xI1TWB+znQj6ma3JnE6Wa329sqtD9/wMM+jdTmUEqls9U8KxLJCT8aqaigIa?=
 =?us-ascii?Q?lBZMotsw3djTdbGFnWRXajkK5YpHIkU3oX/exUQVJLd+G14+fua+mpocAIYF?=
 =?us-ascii?Q?ATZ7PqP+WTEUBGNeMv4ghQ76kOWPiHp5L/eEjvOruJkdso1WY6OCjYdNOm8R?=
 =?us-ascii?Q?Nautz5mdz9Sly2fqrd0YAaJHBhQPDsgmfwu+51fjAGZFQISVhwMfrXGXWa0w?=
 =?us-ascii?Q?FVQPcKP4Ec4xQJY3RNE3Q8WvIKnpZThFveTZB8Lz3y3xWHpqCRC76tSArZfX?=
 =?us-ascii?Q?Ni7ckOBYaVdUsHgTNwJRFFZ9DBVmjDHmdhVJeHf0V0/2ynl4wDPr9qL1F6g/?=
 =?us-ascii?Q?7Oo1ScpXQey5o0SWMiFu9IgvEJsjyG7xVqeTU0aOKldXNtLKnle/jyE9STHy?=
 =?us-ascii?Q?8ENGiXZI3pfitKtF05pzWQ4UeLNKbT88pp20yOT66QhH8uUk/v7unVpMon9A?=
 =?us-ascii?Q?aOjpklGBaQGCkdHkjcjuE1MUyNdAQAKqSATeXGNrKGMtpjcd2Zma3B6OjTOQ?=
 =?us-ascii?Q?PO171enkkrFMNBmxKPlvbgeukMDupgr9NvCHq2LfV8ro84epG7Y47lbT05zz?=
 =?us-ascii?Q?LXImcsb4n6gBQuH1tvaZ49AHLaYGvbHt76an+QEs6yBsiUgLv5hELjaTYpWq?=
 =?us-ascii?Q?6R6DsrJXRLbx4YumNiHjMDe+9Udfjg4naybAMfyiR/fE2an/5dNWOMK0845C?=
 =?us-ascii?Q?CoFT9mJgRzNBQPnJ9pG40Swg8qCzbx018wM9mZd6eG6x3b5RNJa+6RhrqGMD?=
 =?us-ascii?Q?WOsRbqrA8B7AtCNFvdTHf/ivo1rTrGiRA4xjKAGp04t6kupKpUB6yUj7r45z?=
 =?us-ascii?Q?YEdPVBKtHFR2gAYJrf083FaJv7zgGYB5kxcEaES8m/jY0GhlzvfRy/0ODPJ6?=
 =?us-ascii?Q?WXVPdPZKHmCB9rC3ENRx8S6LvA5RvIQWdklWQEba?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 250e74d7-652b-4afa-282d-08db1025a694
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 13:56:49.7462
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gfaFixpIDGMVBWIRcXn86JJ7SeubLlEqmiWGh5LlBQ/MSWfrR8ePVkWoV45nH9H7rDrthSzEKcWtqNJyEvyqWOEu7D+PKMhe8mdAG2ogTN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR07MB8285
X-Proofpoint-GUID: qvUc3wXhAhuFAAcAP3OgIgm6wQAd7Ryc
X-Proofpoint-ORIG-GUID: qvUc3wXhAhuFAAcAP3OgIgm6wQAd7Ryc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-16_10,2023-02-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 impostorscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302160119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_055701_830909_AEB14716 
X-CRM114-Status: GOOD (  29.72  )
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



> -----Original Message-----
> From: Sascha Hauer <sha@pengutronix.de>
> Sent: 16 February 2023 12:55
> To: Renaud Barbier <Renaud.Barbier@ametek.com>
> Cc: Barebox List <barebox@lists.infradead.org>
> Subject: Re: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
>=20
> ***NOTICE*** This came from an external source. Use caution when
> replying, clicking links, or opening attachments.
>=20
> On Thu, Feb 16, 2023 at 11:54:14AM +0000, Renaud Barbier wrote:
> >
> >
> > > > +
> > > > +/* Currently 1000FD is not working. Below is a bit of guess work
> > > > + * from reading MMD3/MMD7 of the AR8033  */ static int
> > > > +phy_fixup(struct phy_device *phydev) {
> > > > +     unsigned short val;
> > > > +     int advertise =3D SUPPORTED_1000baseT_Full |
> > > > +SUPPORTED_1000baseT_Half;
> > > > +
> > > > +     phydev->advertising &=3D ~advertise;
> > > > +
> > > > +     /* Ar8031 phy SmartEEE feature cause link status generates gl=
itch,
> > > > +      * which cause ethernet link down/up issue, so disable SmartE=
EE
> > > > +      */
> > > > +     phy_write(phydev, 0xd, 0x3);
> > > > +     phy_write(phydev, 0xe, 0x805d);
> > > > +     phy_write(phydev, 0xd, 0x4003);
> > > > +     val =3D phy_read(phydev, 0xe);
> > > > +     val &=3D ~(0x1 << 8);
> > > > +     phy_write(phydev, 0xe, val);
> > > > +
> > > > +     /* Use XTAL */
> > > > +     phy_write(phydev, 0xd, 0x7);
> > > > +     phy_write(phydev, 0xe, 0x8016);
> > > > +     phy_write(phydev, 0xd, 0x4007);
> > > > +     val =3D phy_read(phydev, 0xe);
> > > > +     val &=3D 0xffe3;
> > > > +     phy_write(phydev, 0xe, val);
> > > > +
> > > > +     return 0;
> > > > +}
> > >
> > > We have a phy driver for the AR8033. Can you use it instead of
> > > putting this into board code?
> >
> > Hello I have enabled the at803x driver to support the AR8031. However,
> only the generic PHY driver config_init get called.
> > phy_driver_register: 00000000
> > register generic for: Generic PHY, 0xffffffff
> > phy_driver_register: bbe15d54
> > register specific for: Atheros 8035 ethernet, 0x4dd072
> > phy_driver_register: bbe15d54
> > register specific for: Atheros 8030 ethernet, 0x4dd076
> > phy_driver_register: bbe15d54
> > register specific for: Atheros 8031 ethernet, 0x4dd074
> >
> > call phy_init_hw
> > call config_init for: Generic PHY, 0xffffffff
> >
> > I do not understand how to connect the AR802x phy driver to the device.
> Do I need to add something to the device tree?
> >
> > barebox@LS1021A-IOT Board:/ md -w -s /dev/mdio0-phy03
>=20
> Is this the only phy or are there others? What does "devinfo mdio0-phy03"
> say?
> miitool -v output might be interesting as well.
[Barbier, Renaud]=20
Indeed,
barebox@LS1021A-IOT Board:/ miitool -v
mdio0-phy00: 2d24000.mdio@2d24000.of: no link
  product info: Generic PHY (vendor 00:00:00, model 0 rev 0)
  basic mode:   autonegotiation enabled
  basic status: no link
  capabilities:
  advertising:
mdio0-phy01: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link ok
  product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10baseT=
-FD 10baseT-HD flow-control
mdio0-phy03: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link ok
  product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10baseT=
-FD 10baseT-HD flow-control



