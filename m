Delivery-date: Thu, 13 Oct 2022 07:22:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiqfm-006zul-5q
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 07:22:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiqfj-0001RK-VX
	for lore@pengutronix.de; Thu, 13 Oct 2022 07:22:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gUYiNn9OfH1VrbXU6AI6A/8LTFTPpb/mhNSltR3Y8aA=; b=ZFpZIB5oVAsfNF
	NpzibV23OntGH+ug11h0YIkhvThZvUXrLYfw4x+3xO66//pwq1jaANmkT+MPAC2+L3uT3kzeoMue7
	0vCv8pcHEPjvVgTTn4hus7IZVbV8RPDxuaoADqtRC8akh0E3zHZL2LggvJY4qimlILxVK/jYWsZqU
	ENsU3Lj2a6rTdDtIctySoko64ExECHNnJimZXnII8U8ZwCuVWlwT91bJK232AIWGtHJUgl7dqjdTr
	DHMhm1Usd8vbd70ws/CWzNIkFLq9vIhc8V+EDf9dmoeQDmrQ+vFvoXDuq5UOXB+Cgy0U5cb13mUYT
	kwvECxmo4XLU3M2B9JjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiqdl-00AhU6-Tc; Thu, 13 Oct 2022 05:20:18 +0000
Received: from mail-eopbgr90049.outbound.protection.outlook.com ([40.107.9.49] helo=FRA01-MR2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiqdg-00AhTI-Id
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 05:20:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E57T+rtl6w3SLVzbIpmbliLEgb3/reqkq+GGgpTbgAV0vwuwK1c1DE4wNgIYL60Y2YklKq5M/HGnL3kIzNm0ONCISVqZVounn0tUj5AqdcYlU8IzZdTxncB3kxq53wMGbLQGoj1uNjQk7iTJtiuAH9F8qN4SX5++O/wNVke0/n6RhpEjiFEXerGn7JSNl10V1jQQv7sDmeW5++vXx91FuWPwgiJsRrvJF1ZE4aahU71LKAvz33V7sByg8yVgyHjRFU2sXt6j1Q80qSU1mDqD+IcCI2gGakUH4ijtqfPLuWOAfStrirs8BxgVX7uRDsS2LCH0H6FQ5LNjLx3tzD7v4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUYiNn9OfH1VrbXU6AI6A/8LTFTPpb/mhNSltR3Y8aA=;
 b=nB/BLpR+b/pc2nXoAJavD/7RiUFWG93/36akm5wR5Z+yTUeavnWlY7gLPhTdJhoQI9dYNCWphvRoqityEYPoQbwbTb3atLZj3db0rehZ5wg/H4hbJZqOg5T1e6ckiotvOh2FjCzzP0W05PT6uKIWPxWc00lRZs8Y2goi5YmRIDmUBujLOGplBhkHPJ0lPt//AC5Q1n88f5+dhftBWjAE012x3GytdUu8pqfYa5EQo/DLNBJxFcjb08C/A/WzyzPPoHY6RUIYgfUwgZei8pY7B/uDEx5o5OrEIMRWPxgarOVyeqFSIl3eO9bTpAw/XUu/Y/Gv8C3tLX44j3jRpX1ccQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ses-imagotag.com; dmarc=pass action=none
 header.from=ses-imagotag.com; dkim=pass header.d=ses-imagotag.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ses-imagotag.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gUYiNn9OfH1VrbXU6AI6A/8LTFTPpb/mhNSltR3Y8aA=;
 b=lSUJU8JwFCjQwH6AdHhnBih+AX/nPGX4fwNMvLnij/2+jiYCqL/OPvKWPVSTXpnlSBGHic9BASGIOvwtfQdNUZajDc487Vi+MNy+h0m6n/vdFWMJjaz+8F4dtaIo5iO/Lea9g/FqFSR/sPLztmwFrmEjyUY42GgVNhQUFDLfVEA=
Received: from PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:110::13)
 by MRZP264MB2474.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.21; Thu, 13 Oct 2022 05:20:07 +0000
Received: from PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d93f:dce1:6eef:fbf9]) by PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d93f:dce1:6eef:fbf9%7]) with mapi id 15.20.5723.026; Thu, 13 Oct 2022
 05:20:07 +0000
From: BAUER Bernd <bernd.bauer@ses-imagotag.com>
To: Barebox Mailingliste <barebox@lists.infradead.org>
Thread-Topic: HAB/SecureBoot on IMX8MN
Thread-Index: Adjew3QqlZdjr+/eQJKZCbpzh8lxTw==
Date: Thu, 13 Oct 2022 05:20:06 +0000
Message-ID:  <PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ses-imagotag.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB3289:EE_|MRZP264MB2474:EE_
x-ms-office365-filtering-correlation-id: 64015d01-c74f-4cbf-1528-08daacda9774
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  8VmmNVUFhO0iiDgQwbrkdE/UeoUah7g0JIyTxqgiqzfw4TOhs7LtganEbBf/PWIvpjPr5lH5+CYMDZH5XXKLLJ8jJdzckBSXTCU8H0LrehuSgXDQmYqlSufpm8mIetwURGZ3eoEjXD/B+g6UF5K+EFTchhkezCvI3ruZwljmSG2pyX4Qu7nJvcfglHEosBsstvkZ7qp72dievHwDB5asl0GN8vDIAaXSl2ujKl8tJ8pBwzCQp0Bkunzwlsr9ZfK3Czmu560Gj3X+xochUsh+rKWdSo5QOkI5iCM7wkv4UmJjjKFo8/b/6h/T+Jo9IzgRsHoV4tdCNB0WYFEEXt1I9eSo1wGMPPgqRO9JJwSfPl0Cwo+M7jJ1JYjELKRs9XDgOrXLKMsEPTDUmempeuiym4RwoCh91UO141cH5JYiyRCb8KroJTYSb2grMrfp5nCfOhLlveO1c4a7dNwQlo1dPk0YX9fonf2tbkR85l0iOdIin0dzT1FfhPeaQMuOoW/bQReCn/zM2w44B7/pMOLFB4uCkqaSRMhi4uzJUjlcKnaLCJHgHiYAR5mq1byvttxHTA+GW685hl0mLRNI54F1zhkXd8ENSIUEEzZ/XIFYFQiJndlSAqER3eREFR13/4wG60rgDWpt4ZV1lL3gDnxWfPFmh4VL8oqPH48sAXzJttadSmOL8UICOX0ZGdyASzvGXjhHr7/R0HJUUuxYTx4qk/OGYm+5iNnviMM5Q4K4CQWtvb5iI9BZcvmFznM9qdqA2JgY3WaoDgAD6C190Uq5e8jZ3hUyapY9i18NUwSz1Jc=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199015)(64756008)(66476007)(76116006)(66446008)(66556008)(122000001)(8676002)(66946007)(186003)(33656002)(2906002)(86362001)(9686003)(6506007)(26005)(7696005)(5660300002)(4744005)(55016003)(41300700001)(52536014)(8936002)(71200400001)(38070700005)(6916009)(316002)(38100700002)(478600001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?/ijRAORU5QrCIWNoX937KTWCFBtcAzkYZuKCwESsKP3DHUgBjPrdCGz5tM5g?=
 =?us-ascii?Q?O2kObTUhCTdxY8i9m3bi7FkY5dMo82W7yLebLoSdDGlmhPeJU1yUmKJJUabk?=
 =?us-ascii?Q?Rk71uZRCcZ9DLm5WvS6mYX5nVQKzS67KCNUuSwYQ2Yv0KTs8pDdGpyedtkY3?=
 =?us-ascii?Q?75SKuqMHtaG2BmGTiZDI8Y88IVMS11d3Pnw8DLZk9fZDQPfl77ScfVeYjwwc?=
 =?us-ascii?Q?e/Cm3f0oAUMox6TaJJe1p8dPH1JI9d46JtEDnMcVvhsc/hR5wEHE7HvWuzfl?=
 =?us-ascii?Q?si4Ixt37G4ehMjttO8P8xQctWll9V7ggI5ZDbF/lLUMlSOO68e9kVIfjhPgm?=
 =?us-ascii?Q?ql2KV7MavzJWMxFzDAsc7AB8971ZrrQ3xXoW+z9hRPKefYxOr5FTgEJSdiOG?=
 =?us-ascii?Q?SJhTqsh3pqmMRyBC4sD9OFl1GCI2Mz45rx5hyUmC3eBGcZpeJvFVD0JZVI+A?=
 =?us-ascii?Q?n5d/q4Zv7S3Woyblkkog58gGRQk8SDP1xTJxiaJOwjw09Ox5AMGbU7py+8Ji?=
 =?us-ascii?Q?h7Bhgp9AUGQjyxqY6fqxTQa71YntdfMKN0IjSZmStQKt4+DE2kQwKciFnch9?=
 =?us-ascii?Q?xiiJBzTdN2v35R7cLoMrWyK0yB24eP3Toz23tdW032XWBC93TiAeDPesuE99?=
 =?us-ascii?Q?R2goJrhSMLfqqxHq+5YcqWHq6xWEs9jQ6rj2r26vrnzHnSXRjIsynC2Z7/ib?=
 =?us-ascii?Q?E0dvp8uSTgNIIoIv4zcENOsxeK2u8+/2Jqe9Zc+nJi8s88PrlZd/CePykKFV?=
 =?us-ascii?Q?8Qq8TGY+MJrXN5q9yqbLLoS1ZXp82qc6ADW84hi2JmP5qTxfxL5L73qwzz6A?=
 =?us-ascii?Q?YOpmMQLqgCIFTxqz44pFaIWYiV7E+6E5LnH+5Qwz08WoyakJq8ndzoSW03ix?=
 =?us-ascii?Q?52BhoTbAFCtKe4ELGv8q1/lbAbAuTL9ZZ4vbQjhc4T9l+gVKhAc4/buGmkqb?=
 =?us-ascii?Q?dIvCPKy2sMXm82HUItrdIQjrjQVfeUmLQgOZ+XXcLrM1s24mII77miLhgLaj?=
 =?us-ascii?Q?H2+mkNrmIuLyu5QP4Bl0//G9CgwQzj+wORunFRkaBvL4AzIVLr3tpXtDJJD6?=
 =?us-ascii?Q?qZ4hTJysTIUyycu6PGAzhfNuqHoNxhSqI4jA2TLsjVlXO0vCUY0w9qUyzzvB?=
 =?us-ascii?Q?Tm4lEzFdMoPW3+pmfsuYNxuJadoaPoy43eTgX4tlsN0mK4uzB+ARe4mIZVQ4?=
 =?us-ascii?Q?Ttz9POMoWWOTl7/lT7/0VtLh7iMSF+RI6sgkbHDdlc3cJ9TA/5/ykbg9Yq4k?=
 =?us-ascii?Q?kqghwCmtCYKSMw7R33zSGQqXaPaAJpCfr+bH0h5HJe975MnxoinGHfcsFbYp?=
 =?us-ascii?Q?xjKJapL6sjHYMt3R1dhDZWFaERvdZdH9JVa65q/zMy03wDR0z2bXHqImgWg2?=
 =?us-ascii?Q?MlRgeVWTdUyQNYynZ+gyxhWfMgHEvh1ou5UxgAGe+vTWLgRH6ezT1zRUuJi5?=
 =?us-ascii?Q?gUhS/pwApIMgTYTsEVVua+TpYf+0QJXhdFE9//ZoEACtiRgXLz1e8wbjIq5c?=
 =?us-ascii?Q?ndSWrUfEnjkqRnvVYgRp/XbAiCzpgpW0wfMy9Xg9fINRDW8GIwhpdq0XQKP0?=
 =?us-ascii?Q?eam8Qag1GD0Wy2Mz/yg1mzoRWQzxGT6JQHj2+oVZ6iC+Uuazzeal2IKsY0ow?=
 =?us-ascii?Q?DA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ses-imagotag.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 64015d01-c74f-4cbf-1528-08daacda9774
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2022 05:20:06.9536
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 026f3f97-f463-4c41-ba74-bc156c3be494
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ktFiBDGzSqwq0Oa7WFqlCeQ05fPvZVDCzz2elqKFp4HxS7Yzy1Lw8/m+2Eykm0OHitSEI3seiryU3McWxVZzjkGBUEvXcZzvGKrkDtQ6rY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2474
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_222012_998360_320F7B7B 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: HAB/SecureBoot on IMX8MN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I have a question regarding SecureBoot/HAB and IMX8MN.
In barebox I can only enable HAB if the architecture is set to IMX8MQ.
My project is based on an IMX8MN.

Can I just extend the definition to IMX8MN and enable SecureBoot for the IM=
X8MN?
Does this work? Or are there differences in the registers that have to be i=
mplemented first?

Greets Bernd


