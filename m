Delivery-date: Fri, 10 Feb 2023 12:56:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQS0q-002x5w-7O
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 12:56:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQS0n-00016L-14
	for lore@pengutronix.de; Fri, 10 Feb 2023 12:56:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bDxqPLVVdFAYHuVRPqnew5ZeDeQ6VMZejO+9t0kXqBQ=; b=3VjoflOz7O5MulfE9H4KHKZetj
	lrkUmVAU5nPgx3elyWUbIvGD1NuNnD4NSJNUoESAK8Drwu5YzqeKxThwLlF9MKuiQ4Q9lysg/zjbG
	zWjizv+7n1ztzt3SwUDqTSMMjxi+x0BhRNqx41Sbo8Nmhv7m5dLg9XbH71ZV8+OdCWNxvmLjZK7KL
	8g/jxYeyz/7cAzkFpZp4vQGGyYOFCOYb+tVHddEwrdLAz+pACov9xuUv5yBV9zbPyg1htZPDqwMmp
	BjNE0QL/kbMj1GY9Bk6+fVhJR3VXZHEalGwr9IdsYhOx9C9jtn8taj/zEEN0WC+BZqb9brUAWVodI
	BTnezKYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRzM-005YyH-4b; Fri, 10 Feb 2023 11:54:48 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRzE-005Ywj-Q0
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 11:54:45 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31ABZu4t013468;
	Fri, 10 Feb 2023 06:54:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=bDxqPLVVdFAYHuVRPqnew5ZeDeQ6VMZejO+9t0kXqBQ=;
 b=J39rnHO9UhDjgTRjRDeVPzkMjwaVTH3uM+SreyuSBgE0D1CfFCC3gYF+WRBYU9IM1n7i
 R7Mdh5uouJi5emOmDZmq3LubaJZZ9cUKsIHodaFnY8G9L0pjDxb6NrA8tejKKSTmz4x1
 yGB2vwcrjSHC50RVx1IUejGkFtedR/dB3bYH6gnzPdKNEykLzi7kRy5AnwIyVbHwCC/U
 LzoITceeK3/clG91mTeylmzGP6n0JhQP6hb65pDvSMERBKLYU+zV7FMuKvyXgE4EGEKT
 JYTM1kCGyUrFsBG4YJFlhNrN0W3mFHvDKhNZa7Qeui25cWiFvFXJ21BxUAH2unwlIrZg ww== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nhh4dgxqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Feb 2023 06:54:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXWqJTMqf0CMUtMOM7FZYA5x1rBWbj0AS01uGKaI1OZSbDWgeuWaLV6yCY6yn0VASpo+ra7YZob7NKPdjnQoH8htFaSEHfhGC8sJOq1pFaWrL1OPibyCEhOslhJYW9R1ZiwFO1UNSrkrj64RZ0+yr5Z9etLD/O8knktZjjetXQBxnAExumbRgJCJRU9ldwTuv2cZYyJJPwjC5Fuw++FZq5vEOdex4PSg6O+uTMybndYG9gHPCrlQRKFgxDE3vugEKMFhLqYpt1e4BJ5ezjRKMyjk20xsyyq1kpcy6hy2idGujS4DpdnDS0D0x6tJpGwtLzELLV/xi60jDSGHFwZBHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bDxqPLVVdFAYHuVRPqnew5ZeDeQ6VMZejO+9t0kXqBQ=;
 b=O/c2Bb/zKpTq4kAZEqPUsIQ82fVRx7uvGMznICyjGmDT//ASF/V59C9EON2UK0w0rycbra8IDSxVTAMAfPqKXdD0oGB4Z7XwKcxJpVQUazxm2Fdrg5SbolRTPgSSz2mqx2KX0VPmH/9lKdAA3pc7IxlBCG9H2v3il0f1Py/8I3l0brTnMtwnareA4vIrkBCtZlvQxIcpCv5I5b4vphLAqgRuMFTC7iSWtigN53dylHWBKwS8rrV0NCMnrdn4CJ3DtUXR9jZwzbNwOaRoiqN2fl69VDojimgsUIc/fSC46prlujjDHW3EocVq+bG7bftac5r6IkhMj35LS3jqo2oDRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDxqPLVVdFAYHuVRPqnew5ZeDeQ6VMZejO+9t0kXqBQ=;
 b=qQIUOd+rOqPVVX6ecICTBm5t8+70RZSjDKybXjFkqXMCpOCTX166uCD2NmtgHTz3QteaT426Y310k1l+KYoA79yx9GN6/3Cy7rsbLEHExyDOhfRJP+w+o5OD6HuQe/JETXigP0PEjxisqApx9EALcQEdrZc/LB/xZRGvpMFXH1Y=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BYAPR07MB5095.namprd07.prod.outlook.com (2603:10b6:a03:6c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Fri, 10 Feb
 2023 11:54:31 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 11:54:31 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 0/2] Initial LS1021-IOT board support
Thread-Index: Adk7v9bvPBNVfXZOQru13eL/yEG7oQBgpREAAADqgsA=
Date: Fri, 10 Feb 2023 11:54:31 +0000
Message-ID:  <BL0PR07MB56659860B1E024CA7DA2AF55ECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB566568DCB4AD086C7C4C3961ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210112546.GW10447@pengutronix.de>
In-Reply-To: <20230210112546.GW10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BYAPR07MB5095:EE_
x-ms-office365-filtering-correlation-id: 6955a254-9b13-4cf0-0d0c-08db0b5d9205
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  UExZs1nAgOnPA3ZGTlDola9d74o6dYVehcF85G6PvNiNo21Dk1lPu0ySC+XE+XZ8WlQODwTLSXhzQ/+JSEau8tjatB9YisscGkgYzXvfSnmvlA13oDIXPVNW3uerjvZ7ocv6bMiOC/Utx4wyVAwBDY9AL7mc0vP7oyz11CDQruDZH9ItLWYALPuk7bFerbj0Wn6AYDUj/MTXx+mWGUnP3gS4NobctymwRghJdiyGoWT1tOXTgHfppuEUFT5DD9ZRAWtLfO6AoAc14ZVYXyUV9wg3+s/Q/BsgXZ80sqXfvXqUTKVFKu41HzeJbL3jm8kIZytaMFDzaVou5TBGi6BXzHx4u/Xg/NHxZu6rXXSWbGCf/lLArGTHxGkva6gJbxuL7N+p+P/QJwN85xBpeZrfq9FPXZmDRD8atkQN/GYnpJVQc1B4EGqrQScofTV83cNj4BloYjzYMCnIbz4j9WJcPewA+uhZIY6cIvFra9fOF6uUabriDUVSfW1pINck9OsQuUdI3QmgwSHVTVhLnBUZt1l0echOJCQqQzPJeslT867Wzl8b/0pp6kp9jfAXLhRRzBL7kcMQM28bdkPp4rTBKue9WHq5Tm4i77sEjpKEbZlKiDmfCKE7GJMhjkMxIVHSCjEXz/xtGsqVlpz6yijBlgdQbyYDpIlxvCkISwKqN7Po/9ruQ0zs2M9sXeg8WJk77FYrL5l2DLssBYr2vIzncOOCRzwA6efpmoFi4wa4vSM=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(451199018)(33656002)(86362001)(122000001)(38100700002)(38070700005)(7696005)(71200400001)(19627235002)(966005)(478600001)(316002)(2906002)(8676002)(66556008)(66476007)(76116006)(8936002)(66446008)(6916009)(41300700001)(4326008)(66946007)(64756008)(5660300002)(186003)(9686003)(52536014)(83380400001)(6506007)(26005)(53546011)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?yV5pf1f6VfE5ekX9eWvk9rnMCPEVta2r8tV/WqKqki7oUbI5wD2CdtfursT4?=
 =?us-ascii?Q?Arh5+50eDwWEy7fsJILT2qwwco3Rj5tdVFwtWUROI45KcOee+Iv6kAUzqGSm?=
 =?us-ascii?Q?XtZ9ilyQSOVP/CNfWIK/lvFJnlLyoNWA4c83xwvuTyzTXqex1SYuHaBw97EZ?=
 =?us-ascii?Q?hKuMGAfIt0Jcjp8hE3YzC+BXf3bmt/m4hUdJil8KgIvGoJFdaKGavdZ4mljY?=
 =?us-ascii?Q?Bd/KYxPPys7jaEosJZrKtzXkceTl0bGvmXz8WGQDaoFUyDF3Aq5Q6o3a+orj?=
 =?us-ascii?Q?7EI6hyxQteb+AsNE5j1GShzW1TdVdMtim+B8Tgs5BUecEWSLKMB9JNw+TU4L?=
 =?us-ascii?Q?v8B3hOlbb8TSNiVIiTm7xTisVSedCBhmX0wrq8x4KkXSJAeJb2Hq/m6Hdzug?=
 =?us-ascii?Q?EQhk7ob+Nq1ATR/WP6xNO91iVvGnTG+vDa/mrW/IKoAnikj6g0GKmW961ofX?=
 =?us-ascii?Q?+IUIhBgmpzL/sOb2iBCIqGQnbGUiLtOBBLrhU/k5xETxXa7eNEjiD1dMwR4u?=
 =?us-ascii?Q?oVo2S54Ut70m8TX7MFYDqEAYOttfFkewfTwMAbALBObowneFE+W+ilnanQXf?=
 =?us-ascii?Q?ngDfr6044cprLFptI79OtmSsbIE5EheRxZ5QTJtpF70H5IXbSVKkCK/7yeTQ?=
 =?us-ascii?Q?QDadcOSKzpMwj40+AYLZ/O2xzOh9/9sBnKFAUnO8LNXCrt1v5DZybrNwzAAt?=
 =?us-ascii?Q?kJY2tfU6GEpQjn/lwSdJfwd6mOjfSTRrsiKUYL9YyyqxLHKXKfZkn/KgxhCf?=
 =?us-ascii?Q?tBSxpkj0eSEE6mv2kiHgHMOUuGUEoxMmGRovdEWvGNmLiDm+ObyvjjMtcuvX?=
 =?us-ascii?Q?oem6bct6tBt/y780s6mHAKqwGL4KZojFRxV0nHDl84ew99opzB6EwuZKT/Ax?=
 =?us-ascii?Q?P6/7Dv/JrEfEm2L/pR0IUGsO7l2AJ+WvqK6U8dEQ9k8qJwH6WKzeKFig9KhN?=
 =?us-ascii?Q?J0zAbJtEM12cIHPROQ8PMLwwnnnQqbC9HNwWZTdw9ZVJr8D1Ahz1aCrgfVuA?=
 =?us-ascii?Q?H6BDxOjZRRsgZW7GDKb/Qz/34K8f30zQC0BTN0btm6qVCUBOinHGn3pfph7o?=
 =?us-ascii?Q?e0XDL2JEX4n3VWJ8r/deRR+lFY3Dk9UeGMS6RcDnmFyisPwGnwmaotmS78br?=
 =?us-ascii?Q?kkk3u1FHAorsiyjLC5MhbSCAqosLlE8tXgcqq1+oOtuY7b30I8x0HrL+f1VE?=
 =?us-ascii?Q?NnEeznHO6rJk/p4RGi+sN1VHhuuQY7DVgNk58gHRXa4dqyShboHpNOdL/veD?=
 =?us-ascii?Q?AW6m0nQ6CavJIyvSQBkPJBhdzIVutcgknySMqT7PyC/jz1cbpu5ZBRDBA2kL?=
 =?us-ascii?Q?H5D8YNe95ltu4PbcstQscOa5ofnfSarnOUvf7AhkBjw44VGWG0oD9M5hx2SJ?=
 =?us-ascii?Q?cUSEtaw4Ew3CPZvRCoLcnBkzQB+brD9H6RG4Qd8gEqaeCXAD19UerzBAQqOg?=
 =?us-ascii?Q?wq+2Zmp/uin9gqU92OhwtvXh+nVKObtzaXBQrwPCqrJJ3j5neNNcRzRnpKsE?=
 =?us-ascii?Q?eAUbOZFkSkfx8Q2xtQl28Xm7DJRjSOt3+XHuQye+LWV6dNc31y6zg1sjLf0l?=
 =?us-ascii?Q?ynVIT1axJK14htAz8mb1TD6kHPojZ2XxoazMqcwb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6955a254-9b13-4cf0-0d0c-08db0b5d9205
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2023 11:54:31.2100
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UPhO2G6OZ5cb2540UIKo4zMeIVbAmLjX0OOt571T0da9bUvkdCqTLuXkKilzjkAhJJyQfyMYzk4bx6WPDALw67AFhXf/0smnrAWkIjMC0OQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB5095
X-Proofpoint-GUID: XOxfHf9-_hNOwbnWoWH8ww6BzlIYpio0
X-Proofpoint-ORIG-GUID: XOxfHf9-_hNOwbnWoWH8ww6BzlIYpio0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-10_07,2023-02-09_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=799 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302100100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_035441_485427_B3273F4D 
X-CRM114-Status: GOOD (  29.99  )
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
Subject: RE: [PATCH 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I have not tried yet. I was not sure if you like to have separate machine s=
upport as there are some differences in the SOC .

I will merge it and send you a new patch.

> -----Original Message-----
> From: Sascha Hauer <sha@pengutronix.de>
> Sent: 10 February 2023 11:26
> To: Renaud Barbier <Renaud.Barbier@ametek.com>
> Cc: Barebox List <barebox@lists.infradead.org>
> Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
>=20
> ***NOTICE*** This came from an external source. Use caution when
> replying, clicking links, or opening attachments.
>=20
> On Wed, Feb 08, 2023 at 01:26:21PM +0000, Renaud Barbier wrote:
> > The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.
> >
> > These patches provide a basic board support with:
> >       - UART
> >       - boot from SPI
> >       - One Ethernet port - eth1*
> >
> > The content of the EEPROM having been lost so the MAC should be set in
> > the config file
> >
> > The code is ported from NXP U-boot 2021-04. Like U-boot, the machine
> > support i.e mac-lxxx lives in its own directory. However, it is very
> > similar to the ls1046a machine support. This migth be merged. Please
> advise.
>=20
> It would be nice to have this merged to arch/arm/mach-layerscape. For
> example arch/arm/mach-layerscape/pblimage.c looks identical to your
> version.
>=20
> Have you tried merging it? If yes, which problems did you encounter?
>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!C
> ZdG8RU9gQpSVfJzH_T4b8q5lFRdLrpGiJsD5H-
> H351N8ycvCriKuoi6quenVmESFrbU0Iw9qhIlb5z4ifTE$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


