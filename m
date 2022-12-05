Delivery-date: Mon, 05 Dec 2022 17:36:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2ESb-00BlS1-6U
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 17:36:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2ESZ-00062X-BP
	for lore@pengutronix.de; Mon, 05 Dec 2022 17:36:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZZRUOEEyHEllmIuSwfoiDh02WyDUCFyViCvzfX2lDk=; b=mh/RdrDlMPIYdB
	LqB76tJeiqz0OuaQdirZZZGUY/A3mI8Nqis6hP7GudsRHRP0Bna//ps5VpvDGXjOYYaq2TxCCFYEw
	AdS08Yl4CGZYp4snoBngd2IGqlPaWQaCdcZND3du379OqW00u0e4VDsBSscxhIN2cvxMeONO2meqG
	ldBl2+mWbUy9zgY8aREZ/nBTLu7sfa1k70681exQwUIhHaCAIETFlKfPdSaG2vw+9IX8RMX9xZg7+
	+m2mPWgYfAMuLcgnSZTRO/yqriZhAGNcUfdwBWcC6lf1dsscT6422Hm1slTfJ7Aeom/rChP2KlDfs
	OwPHk2+ys9d9FuQdYnEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EQs-006XIv-DF; Mon, 05 Dec 2022 16:35:06 +0000
Received: from mail-he1eur04on0728.outbound.protection.outlook.com ([2a01:111:f400:fe0d::728] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EQn-006XF6-0x
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 16:35:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hM2fDMNcVq3TGvZeoy3dgCvY8hWX5kwFJuHwwWLLmAx6ZIoAMfihg460Vv9ZCfkIMvcbHzfhX49XOXwfS4X2rdfvb9+A+uDUFZZSgKuqjOaOK+AqHOUFIHqaZv4XYy/qIQU22DUIDJbbXwZvJIC+AcP3G+HhbORkgu33qX6kfC209aSJvj4yjbs+oyG0rxLEDTHJYtcKyTqJwnwBFmrqjceCbYPawIUsCNgLpC86pkNwNIwmZ9XLcpk/Co8snWVIFgbyvlC0YE6VLM2ytDdHZ8gLkZtd+i5qrEC1cJ0CDcB9SKUniJ1oshTfGDouT5T0mJkHR4mwO2JTvUY8mmKPNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZZRUOEEyHEllmIuSwfoiDh02WyDUCFyViCvzfX2lDk=;
 b=XwNSKZ74cvhtRiDnm1kdCNwSir3hx93XK93Y5rpflWVtAqtEytzey3bR3t+TLIaymN1SI3B4YmTAgvHsUnIThaO3GzC955sf7EWhJItgzFhQg3udQ4g+ajO71UMVG7U5l0o6euZm4gdzsc+k9cg3MhntaLDqs/C/WKyamCXS27x2Zgzl/9iCp8tBwfzcnJ8mmOpU6tqzFprRZev4JiBlT1X333icgv0hBYp5a+bxU2U5AAxnaLuiXlz2vBBDe6YgoyexhszSH9yy45eEyCShuaN9Ul1RQGqD2/gVtVAaDaxRnfyXVA1gcWT3cvBw8DXz4ZgOVO6XMNNPy/5oBXg51w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mt.com; dmarc=pass action=none header.from=mt.com; dkim=pass
 header.d=mt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mt.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZZRUOEEyHEllmIuSwfoiDh02WyDUCFyViCvzfX2lDk=;
 b=qmZhMpn7+cCdoDFJDZiM5keTkaXSIcJFd+JhHsw0M/rZ6mi5JnMTY7JZhRdGcLq7v/8BkO0ImqoOC2ZPXopVRdaZnP757hAfpZzJdO7wp8TVAUi1OvQcDBRqRcdgYLjRA7V9VhkXvETCi9FEFS5Kn8qJay/sBNh6pz0au7raOtET8s3eCcW60Zhg+8dUDwwtCXlz8udFYlC9o+fSJdA+/AJmQnHBVZ/2SFzKl8xBW96B+DGtfotB9T1xsGUs+C4Y8j4c481ftj9djg0xlh1GH9V1wyP3HmuCZLqa1+CzwfjmcBoMQ/7nJcBzkUahL7hoCBk93jRFwKabjD9cibOvfA==
Received: from DB3PR0302MB8966.eurprd03.prod.outlook.com
 (2603:10a6:10:435::20) by AS8PR03MB7318.eurprd03.prod.outlook.com
 (2603:10a6:20b:2ea::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 5 Dec
 2022 16:34:56 +0000
Received: from DB3PR0302MB8966.eurprd03.prod.outlook.com
 ([fe80::e25d:cd1d:d554:c91f]) by DB3PR0302MB8966.eurprd03.prod.outlook.com
 ([fe80::e25d:cd1d:d554:c91f%3]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 16:34:55 +0000
From: Gerz Burak LCPF-CH <Burak.Gerz@mt.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: barebox hooks in userspace
Thread-Index: AdkIxz6KKY2gSWZkR569ttIG63QuPg==
Date: Mon, 5 Dec 2022 16:34:55 +0000
Message-ID:  <DB3PR0302MB8966A4A44D35F989B46B88B0E7189@DB3PR0302MB8966.eurprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Enabled=true;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_SetDate=2022-12-05T16:34:54Z;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Method=Standard;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_Name=Confidential;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_SiteId=fb4c0aee-6cd2-482f-a1a5-717e7c02496b;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_ActionId=83e1bb7d-4ab2-4ac4-a7e1-5f5f5e314a52;
 MSIP_Label_af615ef3-aa90-4fa2-9d66-c4f70f9fc413_ContentBits=0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mt.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB3PR0302MB8966:EE_|AS8PR03MB7318:EE_
x-ms-office365-filtering-correlation-id: b27e80fa-ba89-4386-0c3f-08dad6dea488
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  VW0PccHYpSvjjfBWySk8paOgyPBPp8jlE30qSz20BPEmqz/AQflAiR+WyV5Ol23LY5ctyxBN5t9V2zntaVTw0eB8oRkK4htQcR+8iQnMASedaQU3C/dWxi7l0mYTT9V/GWwTcbOtoWZG8xoXYh8R5oyf4sA5JErNxplNbgXko+k3LlBiIDoq/ovOhAPKHQFUC6lRtHZ9UDeYvLINXjmPymQsbwYvVN3BIazDswqXEaMYcuiu2O5BZv5MTgYXMGQrpLh4vogIWUSvXRlQlFzoo7Wdw7ieO6MMVXdZTeXAuExhIWdDq0jjDlber50A2U1RYc/i+mWzAUeD6tTjSVfEneJ0faQ6pQYDFSLo/AbixPjkDgp9UIOPL8fsA7NRAxGUqW0z/ZbYqfWu6KUH7RaMFvoWjrTWQMie3sLwN4pUGqSdG0nZbOWGT1uCu7Px0GgO9QvIzvAxhwAgAZ3FxQvqw8KtL57bCYt/mh0Tpmnqc7x3EvPxitOfUdH05acPMqPFUGpLqiz17pq19NiHyNEK8OSt3Gyas7jQu4P6KM5ZJgU37fHMKqnIaEx/x4t8cyAsPL8triXV0QF0ab+LfFp6kf47KN8ZRswYf4q8dw2N6/o9DX40/etpM8SGy7SOr2q4AVeCg53KBj3CggkbEVmI9Y7Bq8z3mt15YUFoXdsISfTPxeLHD1DBMV2iZucIvzBL38WgaP23knkUYPDLhnZjlA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0302MB8966.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(39860400002)(136003)(396003)(366004)(451199015)(52536014)(66556008)(66476007)(66446008)(64756008)(2906002)(8676002)(66946007)(76116006)(478600001)(3480700007)(316002)(5660300002)(71200400001)(33656002)(6916009)(86362001)(7696005)(55016003)(6506007)(186003)(26005)(8936002)(9686003)(38070700005)(83380400001)(38100700002)(41300700001)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?A+NGri3RviU/DBc7hGjoIJ+ElvWdapL2WDL6lvC5mtnMAfimx9AKdTHtxbGA?=
 =?us-ascii?Q?Gj70Bv13YXlGVtItA5LlXA4l4gFzs4RQHWtW2vNjkAxsR2LlbkVHptSfadMx?=
 =?us-ascii?Q?7611Qs0o+g0gr+hKGz1cYPzkQyQVOlhap/kDpx8ioAtU4vQ0JQtgzOgpffHy?=
 =?us-ascii?Q?U3KeLzMcGH34NYDi7+21DXUnHU+srAQ40TLUcyiuLBJl/XI2JPTtyC+PmV2d?=
 =?us-ascii?Q?yPOzRtwzy64JkUrZZUU+SevW1JAufzqt8nTeGCHaQc+7dhG/necMF/ZaGDN8?=
 =?us-ascii?Q?SRJjinWhziWWnLRiy2o2hKPHI8RWGhaFDE7+Nw2uzy5GsvM305wxaRHho+tT?=
 =?us-ascii?Q?H30BDLkdbj0B7ogEjCGfcHxfCeYVzjPXp6dNMuf6fnRHWOizj0XIT80UgxJW?=
 =?us-ascii?Q?lx/XmIj0JBcRZmpCzI+oesETWqH3U4u0uNATYnUT/AOIOE7t+aUXl9YVHFP/?=
 =?us-ascii?Q?rKIw5pLWTn/5AdwH1E/1muWuRyK9YyFlW90FDsDs5fXrSVCyjTnPD+EJWxCi?=
 =?us-ascii?Q?EVsSLw1p4kLJ88K0JmEhNkqjsP2pIbFdPBBxjOO6badzrzNi5qNjP8hK188N?=
 =?us-ascii?Q?LKBzDatbI0c6s2x3crFLUhjhU/gsZmfsOLl0xOFlSbfvGNBT6EdjjtTonp5/?=
 =?us-ascii?Q?HaaL3djGVF0tIv8wJeeDiOz8q7z1u9CcS22TKFfOQUnbbB9npl7rnS6WmHcs?=
 =?us-ascii?Q?uLl038ck/g25GtOel4O2KTtHTHx6SZPqytXR+6/1kB5KD7m2wiEwZ8J/wGBY?=
 =?us-ascii?Q?hlrJ6RRzAJqUCUFdO/klt1Blp2RDajXYqGbNcDB5zQZU4exYY62pP8fJykNH?=
 =?us-ascii?Q?AN4Wb1cTr9PFpdzqbIqjxWElYxFnLdnicR4CHhclBzD85ptuTDIArzfIG1d0?=
 =?us-ascii?Q?pSGGkgqAvy3C5TyPbQF9ikxyWST50lkxVz9pvgkjsD7xOrQ9FfdgEY+aJFt9?=
 =?us-ascii?Q?JWkbF7usEWh1ANQsYRXEoE0zCwSBR+dOzhyPyLa+PoUlA5SPE39wO+fCjC71?=
 =?us-ascii?Q?El5t8x84paQ/3nqA63+lozsgrmMoNAcOHQAizUI3RwDaHx9uOzq7Ze7UvcVt?=
 =?us-ascii?Q?8e234cxp8oQ7e10X/UYF9HKwiQvkSXUZv+xo64/HbHfGfMWvvNnSaPh9WpRg?=
 =?us-ascii?Q?PTNph2O8+yY4gRxXgTw+PRrROJ5FH8RfRXL7xkKF0yp4+yiSKquYd5lPoXja?=
 =?us-ascii?Q?0RC4tRy09fw+oU//MrIOduBuypvmevtqRCZNvZRtHOUOut1DdlG38OdpxBj0?=
 =?us-ascii?Q?y6C+stbQCrkvkAQpsIQ0DFYedXFRvuVppcedODCFl8IwnvlkyI4f7o5S9GAr?=
 =?us-ascii?Q?wGF6ncSR7gIrcEu9k18CjECwJpEjJe71ovk9eU0jdNT9BdKXX0nyEfNVfXgT?=
 =?us-ascii?Q?dS/le7YshaNxW9mlCiufBIt7efRnw7xDMdWo50+tFpI0KBx93DbgDi927KLP?=
 =?us-ascii?Q?mkeuf20C/erpS0yIkfXT3/bLXOuKI4A5ZMmsx84dHOwuLbzGmsJBtZNGZMHN?=
 =?us-ascii?Q?Qu62yC9+rdBNy0yfQL2bYXCucK6hd9N1u5ZkVSF0J1TJLWqlfssBOeIBd0hg?=
 =?us-ascii?Q?eY0OZp5ncmx2q+tQBmg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mt.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB3PR0302MB8966.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b27e80fa-ba89-4386-0c3f-08dad6dea488
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2022 16:34:55.7497
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fb4c0aee-6cd2-482f-a1a5-717e7c02496b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jVzjs1ZInfDHnB/gMJcGd8zirgKujFrBryDdfYdnPE+4MB9j8mnzWezHWXjpM2Su7jjz1bIj9a8Cc0pO+Ej52A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_083501_516145_0968A752 
X-CRM114-Status: UNSURE (   5.29  )
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
Subject: barebox hooks in userspace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi

I'm thinking of integrating something like a very simple "hook executer" in=
 barebox - so that it can execute scripts which live in the rootfs.
This would facilitate updating the barebox hooks by a simple RAUC rootfs up=
date.
Since I have an A/B setup, I do not know which partition will be booted by =
barebox beforehand - so currently I just execute all scripts twice

e.g, I have:

/defaultenv/defaultenv-2-base/init/zzbarebox-hook-exec
@@ -0,0 +1,18 @@
#!/bin/sh

#Execute all scripts found
#TODO: Get next boot target from bootchooser and execute scripts located
#      only on one target

SYSTEM0=3D${bootsource}${bootsource_instance}.0
SYSTEM1=3D${bootsource}${bootsource_instance}.1

HOOKS_DIR=3Dboot/barebox-hooks/

for i in /mnt/$SYSTEM0/$HOOKS_DIR/*; do
        . $i
done

for i in /mnt/$SYSTEM1/$HOOKS_DIR/*; do
        . $i
done

I see that bootchooser -i prints the next to be booted system:
barebox@Juno phyCORE-i.MX6 ULL eMMC SOM:/ bootchooser -i
Good targets (first will be booted next):
system0
...


My Question:
Would it make sense to extend the bootchooser command, e.g. with bootchoose=
r -n (get and store next boot target in a global variable), so that it can =
be used by the hush shell?

Regards




