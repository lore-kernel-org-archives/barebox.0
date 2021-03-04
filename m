Delivery-date: Thu, 04 Mar 2021 13:33:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnAU-0001A9-4F
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 13:33:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnAS-0006kE-DX
	for lore@pengutronix.de; Thu, 04 Mar 2021 13:33:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tUrKEqjWr8BBnEk+fEU2GopxfRsMlPV2DBuEaFe4PTg=; b=Y0PVWM4k804Ebr
	c3WZfJqZY7f6Tid5BRbrqHZXN+QSNXfV9PPE2Yt+YQWvLVW3v5Fmiu4Nj6Bt2mMAmLBI9AwibXYQ8
	vYieaeFK2HGeKXC+wDNsjmNfT1ljz4jTDVvF16lZE1L1nrm2Tvfhl+Ah9s/naVpEFoaYdfiTfJyt8
	OAPC1xahtQN8ENWPKFiEXSueXV1DICLM7+RtXVUgHBDJXaJeqDyCf0gSs3JOVoit+WMUW1+flvaBJ
	dtqsCTDKWj1oL2Tny3AJ8PmaJWhvvIw+6MfFLrw9cQ9hmeEfAwubhioT6gl+IXVpY1HBSFdD1PJQT
	WKh9I+S0s04/pDUKWUkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHn8S-008cJg-Us; Thu, 04 Mar 2021 12:31:21 +0000
Received: from mail-bn8nam08on2122.outbound.protection.outlook.com
 ([40.107.100.122] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHn5M-008bkc-HB
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 12:28:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLIWS8LrE5A8N7GuJm6+6nr0uCZBKxim78Q9+2+gCGqzes0hw65WBUuiu1XeBjz6hyCFjAVQyaEVFyq8IGr2d8crfQefBpATI/8+NUd4jHfFwN2NrPuWkgSiwL4c3Nn6X5a/XrVcLjQWEGdoJFJVKAHHygkYe3upxz5WENG8fW9LmXQqmofl6zZaL9Pj8dpbsSjtsiu588zgo5hTM7jYr3AE1sk9myqAf1RcQNs9OhzFRKSAn4aByqow7fHyfOZ2YVCToDQwbBm7+V3EiNbuw+VWht59kvHAq1ogr6otNZ47yh05VL+jeFGvEnCZtHlasDtpwmYOpuLRPCUiny0g1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UDFW+H72nMpITh/kyHlzLHxLCjqH3OisThuYIa/t3EY=;
 b=RtkP5bhZTaDJcppdwZ8EeEAUToxu3pcZnxApJ6ykbIkIHaZ/IXChWhDku5zpWtHv9MolR97U2ttjnS1q/YT/A1ZY5Fx+4Df4aLXxg4t/+3uk4Bt9YOSgtnL+0wXnvskGBha6l5VVdg4ZqFdksiSzuWR8IXhOcJxnHMY/vHl7P/2EOUB2o4YBKPiADPGnoCniKTcP7x62dY+PJ6+VQ3EppsirbDS2+zcT02J1jeP3BP9+a5ZV//ik9Xfp6gAdTfmKX2aPL4is1e5zAJcqXYZefHChNX+x2CaCW+W+W1SXtmtmBQUrU+rhNmPIHRo8a7PeCIuHWcQVO00d9eXbroPZDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UDFW+H72nMpITh/kyHlzLHxLCjqH3OisThuYIa/t3EY=;
 b=fYEcfjbY/gA6Dd4hVy3DSMZMywV7HrErGF+m15PCkc+8yrvvoFeLSBOnrumsOS36fPBe3LJG9tKVbBUqy3GXATo6h83F3lt51K3UIv8HzU54Vb211vIVUmM3oDikaeTH44Epo1Fs56RR5Sc0szrLRmI67QRWu2nR5vtK2M4FKV0vkYDsXGUdZbSCtP4PtKbdRSdIP+AaeevSJiu83DVglmiAIl9NKZUjzaneKUsfGpP+ig6cxNhtHclxJDdBECX9rIVOKnKROsLQ2ioPcuS6ZO6XQDFcOn9E+CZHRZ+l0Xl/YquTwJTfyiNMPPyFGp/4ICCLAvyVrcX8MiF/5eO0pA==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3277.namprd16.prod.outlook.com (2603:10b6:208:139::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.31; Thu, 4 Mar
 2021 12:28:04 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb%7]) with mapi id 15.20.3912.021; Thu, 4 Mar 2021
 12:28:04 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Uart set up in PBL
Thread-Index: AdcQ6WFSwU4Pyw2qQAu4RKrRueL1NA==
Date: Thu, 4 Mar 2021 12:28:03 +0000
Message-ID: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
x-originating-ip: [205.182.146.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2409e8e0-1d81-440f-d5e7-08d8df08f54c
x-ms-traffictypediagnostic: MN2PR16MB3277:
x-microsoft-antispam-prvs: <MN2PR16MB327767BCD261DF2526FD2C9A91979@MN2PR16MB3277.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tnemkmY1+9xid/WDEpPLLxL7Gw80iy8TwVNDta60Kpo32XOTLIGCT9hGVthneUTU9ScN+6613/OdPFFiapF+d5gcrZmuNf6WGIkrdy3QPMWeLQUXLYLdW+dQCMkN9Z2AOsjkq28Y8GYSbPPMDih73w6NB6Yt3+8oL1n3rCsBJnCM8A4dXYmmR97uAZTw0DlWpsDZugN9uL47Oz+GMDKu1bziZoUz9m7X1iWY/0QYkb9qnCQqwXLnc/h8MQ79Mzkyu+dvUMUkgJ+JJ1l0oAhFLXzva3LTSCRbphd0C0k8GIDGHNKhyxrNF4d8420FCXVdQmVkyunbINACN5ZXl4h6EUbiDh3ZxsuAaWCIn42UCjealLG96K2cnbAmuc+0d3kTOxWigZfeYH43XHT3/9Fhp6lWgpL6PJfqMKFY9c8XFfNGqmLwrcsml2QvZ8PYiHVNvpgaUP0uz6Y6nM6kr5bQDc5OkAOzLFGWqN8QLyznxR057pORgjGSvaCi+axqF4H/k7+Vngyeku23mvXPtEJd5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(71200400001)(64756008)(66446008)(55016002)(6506007)(86362001)(316002)(66556008)(66476007)(7696005)(76116006)(9686003)(558084003)(8676002)(8936002)(26005)(2906002)(66946007)(186003)(478600001)(5660300002)(33656002)(52536014)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?TuRNuggwID/b6DcBGukfsElLyU9i5CNvr7E6HYy2S9sm68TU/LihMwDXZujB?=
 =?us-ascii?Q?rXmlkJxKExd1p9RJUbm0GcBUgYY1ySxm6Zr12teq0WJ4VxYf3R4p7ODm+92m?=
 =?us-ascii?Q?X0z8SLMz1LvmCl2Z+K/dIzz6ppVV1fVCLOxAkDMwd/WYrPA0QmYujcCAHSFJ?=
 =?us-ascii?Q?XfppxkJrqLBE37TuEf1Hdtf3yOACiNsqlTbaXHF1kySYwISCrdB6I7SYD00s?=
 =?us-ascii?Q?8xokTXkPMLN+AY7pazab+O3mDHZsPHoWfONpjcuLulbqssIr9cE+bDds0+1Y?=
 =?us-ascii?Q?7nqXNVlR9/jRNdXwpJJ6CDRkaQQt//kO9sx0End81hZCgbSab/YjorVrJTOS?=
 =?us-ascii?Q?WLWN12X0kjFZclmVWKuPPqeZzyii1Ru1MnKEiDH1r0uXpjzXnMfG3W+8rON8?=
 =?us-ascii?Q?c0krhjIB6sGqXn6x/OItbj8Zfq5xPCouJxR8SCefTSL3rAFivn18hMMwesFT?=
 =?us-ascii?Q?I/3voj8jMQImJiAMsgLX7R8be0PL3JuUK4DFkqT0WHdfaVhlu0MKvhaGEOgS?=
 =?us-ascii?Q?ZiS2gZGSnPp7EyGNcbAESBWpjVE4KiTCdY2e+RWyEcXBbVXgKOEM+TSp/6ip?=
 =?us-ascii?Q?VnOAiTmA7ikJ5WDRfqnNfwR+2APUrpP4Ff2OC+/HniEtpSLyLrt08oQ4S5zV?=
 =?us-ascii?Q?zzQONbNZEgEo4VNJ/Bvdu1pqglysFNx94jf//wUtfW1Zcnq226d/ul4fso+6?=
 =?us-ascii?Q?ZEUBQMphwAqsc0wH+sSIRGYAvEdvJD2HYBpw6s29pm/uPa+Pljwj+zmwE1oU?=
 =?us-ascii?Q?oQf3lNbA9nl++nUXgnAnOtMgSgEvdHJyTBsMO5F6otwM/zCYa4hlLNXh8Wnn?=
 =?us-ascii?Q?buvPx4qQwdQLkOvQjwFxItwYp1Az1iXTz8LmqOnNHXpcCk0d9O/wg02F/EiL?=
 =?us-ascii?Q?af/a1ULKF3ur5IAy2VZwhIaR5NVAqmmtoWFd3ahDLYVi5jBOrkRGqrgB8sVV?=
 =?us-ascii?Q?IDMCYm4TSFBahgdDn8GXHnwQM7Oujl2H2teXadEARtG0KIi9MbKmjrpMYgfs?=
 =?us-ascii?Q?k28PseITsjFoVDYXEkp65XR7lBwceHADZgEhDP11BgwMEG/VwxuBU/VYdJIV?=
 =?us-ascii?Q?z4UVkgNEpaE53NlRYxeCP5rUb7bP1gyHxkyd4ItnoQWCgGgeBLU3BMpI2m1Z?=
 =?us-ascii?Q?2QkBndJdhtlEvp47YSrQV//lug2iqx5bEC/1SzHAT7dXKig74kO3NemtovQJ?=
 =?us-ascii?Q?CDH/6488zg09z8FBwqDpDdHTPgDCurxu5s/9p9UJt6RaWIL27IuNFw8hocJ+?=
 =?us-ascii?Q?Wrb8peChLEYr+MClBzBwTtmdtokS5SLFUC0/yiPC6pLdS2Dax3qYRkDdFXih?=
 =?us-ascii?Q?8ES85kGKFs7yAd6o0bH37KXq?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2409e8e0-1d81-440f-d5e7-08d8df08f54c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 12:28:03.9751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bjf1Ll33BAChPKQ6+VMZYtbuTtkpLAkVP1sdMW/wu7OKqtbRCfP+sa0viHu/S5+p/R3yUVv4s2HTJDURTNG7uVbvbVUTD5V3qqxQqjqPfBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3277
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Looking at many ARM platforms I see the UART is set in the PBL.

I guess the baud rate is fixed.

I am looking into a way to make the baud rate configurable. 
Would it possible from the PBL to read the "baudrate" variable from the environment?

Cheers,
Renaud


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

