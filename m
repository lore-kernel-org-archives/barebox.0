Delivery-date: Mon, 18 Dec 2023 16:17:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFFNF-0031SG-1W
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 16:17:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFFNE-0003pZ-I1
	for lore@pengutronix.de; Mon, 18 Dec 2023 16:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Jra+9bZrBOUVE0n/+D0St3JwR30BqHvwf4Cu/oCypI=; b=3/+lxx+1+m7oawr36mgLuPtUWe
	Lf/5y2ZOTtjE1ynZBL0MTddwmEe4BTfvIMBucxnPZNctOICOW/Ar+vJSCtqvXqfDB5P9IBpRHuH+N
	eYn+fdl9LfFjhHPt2sweWhqwzKwtgZ1ZfJaqHrmKP9QOgeXReVWeDc6rnp77hF9trszMs5gZqD2nl
	thaNxpjY5yyOe1gRkpFdDIyYQYOvIrVMyuTVf2z33IIbcmoeZrlIWzclOgNf5jukD1CNAlZVSqUl1
	JZsNR4EIzRbl9ajDLSLyghdFFTCDxR+ogLxVPulyqImX39U7r3PfLazNXIUN4kPZnURIZOXjOVUuK
	Hm8wPytw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFLl-00BAti-2w;
	Mon, 18 Dec 2023 15:16:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFEBB-00AxLR-1t
	for barebox@bombadil.infradead.org;
	Mon, 18 Dec 2023 14:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=1Jra+9bZrBOUVE0n/+D0St3JwR30BqHvwf4Cu/oCypI=; b=a8wsuP1OBbctfSJ9Xhz5i2OmHm
	tQW+SLeXaZFVGqPLBTxKgv3rSnhlbU2aO0AQK7sVqy+ifgqSoCIyzPGB8I6AeuoyhzP9tki1XMbwO
	bVCYs0k1CvDsnRo47m2csG14vyXY2nf0DcHMBOEp0GslXFIO8PZTbB6CNVXwf0NJe2jxbODL3tyfd
	6Aim1bPDgTl5RiH/xVNUZvD1j3bxGbsKbeOKJ5oc7yaLEwnZ3MSFfonwDijqQCbDitHOjhB0Hfpyf
	mfMGSssH/CqFawMeEImBq7dy4RnclK3YI/lqqGEo/ErpwEU8BjgW+WngZrh6Gn3knGmb7b8Bml26O
	prQQ2itg==;
Received: from mail-db8eur05on2061a.outbound.protection.outlook.com ([2a01:111:f400:7e1a::61a] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFEB4-00DBIi-0K
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 14:01:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NtPAUtn53YIIYQCcJK8kCT8ff/7ffS32KM+uLExLCrJ1MYgV35CTTf1l5z5zfSfvEmgDo/t906H+O5UwGhBkBVEQwq7VVWJHddG4FyO8i1XoyRcKXP3Z+Vb0hed0GOuJY6k8dJSRW62YwEQYuCDJ+7jKJuXdPXTJAgi8qGbcWq1jB7Bm/t03tIx4wpIgNMLhsUx45giXLYVR788+KNtNg3dZ9BhgmJJbQeC2AwE/yqoef7z3XBdbAfu0CKlpOUThL9fPZLGZxVx0br9/343AmtCZP//ciYmFApeRKmSuR7EfTHFo70eUWIFPba5Iq7P4JO7awUjzf+x+GhEvJvSKuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Jra+9bZrBOUVE0n/+D0St3JwR30BqHvwf4Cu/oCypI=;
 b=C71SEJJ8B1WtyWnzMihp/koECVgGK+3F4qjvtFKVdK049EUwv/9iN4xJgoto/2SeLx+luqkPdZnO8eK/VwFpX5opUZpM+g4FVOTS7wHtCBGjX65MttL/IfuK/meWPMsTmpQrKLLvEz+A2/vDmxTzNBl7QotmZFYrWdtJXojma0+3PaNroQ9pBNAdUS7fkygUpfGUfQ5KIWNVlxtWwFrVRSby1SdbaIk8XoBW8YlwZ0YlbWTGQ3gC0jItLqDUJ6s6Of+yfXgIonrym82EHXDjS2ykdIR+Js3QsFfibDY1NJ0ikx2uOTA9ozu0z1YHH6sBdMgAUZa2t4OZyL5LxX1qzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Jra+9bZrBOUVE0n/+D0St3JwR30BqHvwf4Cu/oCypI=;
 b=QYoyPT+jHCG3vRXIPgRKoLeLXMgr2LueYNhr3WlUm+kMXXhZGihhsV/htcwqJYfac+tttR4s0fkr5ehRhL+YlSC+U3C0tw+jTpkEGsqbSiQiQxpWJeegEyKO7OdyHieCDQDVvixDfqEa9QFGSL79RG3E49jJ45eCKzKpJCj0UaQ=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DB8P195MB0711.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:152::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 14:00:41 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 14:00:40 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
Thread-Index: AdoxqmQDm0EtJ2sSScK4+zUx21QfEgABWkKAAAJXvsA=
Date: Mon, 18 Dec 2023 14:00:40 +0000
Message-ID: <PR3P195MB05556CDD2E63B17C34ED907DC390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <76e13d04-83ff-47d1-899a-c96c6bb00b72@pengutronix.de>
In-Reply-To: <76e13d04-83ff-47d1-899a-c96c6bb00b72@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DB8P195MB0711:EE_
x-ms-office365-filtering-correlation-id: 1f072fc9-4c46-4843-f7a7-08dbffd1b85a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: elNY89Lbd5Fm7DZuwwMRBYgW4UpX6eN+3R89PGon3BwzeWomnJfSRz6uzs2p54veC0WqlL9PZbczdXwjp9yjvYMNcNg1TXw19iU+24clFw0IRcjhGLqmGB7RRh4JOWDokuOMk4DM1t3zQeQ/o21Tu80JjWfBGANDSHgR6Ozz3m3xrP0kW8LnmpKnfDRtAp5NDUAUIpiVHr+4f+f0SUFyww8TSp6ljPgAMxJ24/lKSDaDtkob0ti+ggY9+IqvjAGwlq2OwPYAUMlXWG6/ltiBoVfuQNojji3H7rzqK8okrhp+PbV/ofdJSYb5sk9kHiScop8OnDADAFiXvfQXmGMgf87lsHVz6Wn8oEkA7EpZgnJt7B2ZyPx21MGTs/pduK0kKm1jweG9IK44/ttn2ZwSSYzuw3S3EWFb2QI2CpS/1ORI+0WYXajSv8x6VVl/7F3EOkCA2HlO/7tePZMJFDOcJBTBmwDJQg2L7WgJFe6z1iw9V3AvrlzX7azR9Rmvsug6cX0+mTsB3RvF+d7S3vwdl/Nwa+bnUbPXX4EbsO8DdyRp7Ynpxk8aJekZN+5TgxiGQ3yMPmxkHg3+UXCqT0DXsGoCzIW7p8S6vzZmym3Jk2GnhJasnleabtBazCjdLZWI6veyWm0/xydv+mHPhNDM/g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(396003)(366004)(39840400004)(346002)(230922051799003)(230173577357003)(230273577357003)(64100799003)(186009)(451199024)(1800799012)(55016003)(84970400001)(26005)(2906002)(71200400001)(122000001)(33656002)(86362001)(38100700002)(38070700009)(83380400001)(52536014)(5660300002)(9686003)(53546011)(6506007)(7696005)(8936002)(8676002)(66946007)(66556008)(76116006)(316002)(66446008)(110136005)(64756008)(66476007)(966005)(41300700001)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cm1JNGR2MENjS3ZqdEVLZHgxdDJLQVhzM21pMjV0Nmo1QlUyMTVodTdlVVJs?=
 =?utf-8?B?bkdSakpaOE9EZkVFTnVDT2FGTEtDd3JzSWE3dDM0aTNUZjV2dG9zYWVoT3RQ?=
 =?utf-8?B?UXByVGR6dkVJWFdhUEYrYkJFQnBxWi9wakFTbThHSlpMZm5HZEl2K3dCd2V4?=
 =?utf-8?B?Zk9OczlvcGtMbGxzMWFvc2k4R2tNMWxhSmQ4WGhPVitNZXBPdXFFTFYxamwx?=
 =?utf-8?B?T3FYMzZ6eXJSajNUS2VaemFtQ0sxNEdFOXdtUjJzeER0MnBVVUV1bTFEVkd0?=
 =?utf-8?B?b240dGxQdDQ2bTF3aGRnbTlCMmVkVWtaN0tpRG1KTUNHS1Q2NkFkQWJ6aGdQ?=
 =?utf-8?B?UVNmNGJTSG44djg4bnIzSzFPQnpvQ2JqejBjZmQzK0JCaTd1bDVpMmdtd0JL?=
 =?utf-8?B?V3ZrWWpkTmZqTVpiZS9BZVpreWZMVTgzTisyQzBFd1BBOWk5VVFxN3BqSjJT?=
 =?utf-8?B?cVhDQTF4RC9US1RDM3hxZm1pM0dqcExFM3R3V1VXVlg4aW0zTjBtamNFL1JY?=
 =?utf-8?B?VnRlZUlpQWxIUTJXRitlSldGMDRyOHdmbmJoZ1ZBQzMrdGFmbFRRVUZnS0U5?=
 =?utf-8?B?cmJpTXJac3U1UXVuaDhWZ1hOQzdrY0pGV3R2ZnRSQzNYTUZ6d1BnQ2twYVE2?=
 =?utf-8?B?R2g4VUorVTRKSUc5NW5hQVlMa3lNbi9DLzlieVdCOVhNS0JScENzYS9TblY4?=
 =?utf-8?B?SHRGdzBIcE4wdXUyMDRmRkpHdW1ieCtEM0w4YU9OeCtyOGx0aTkvdUkyeWhh?=
 =?utf-8?B?cm1NOVpxZmg2VkloVG92c0NndTNJSUVUME9FZmJGbWk1dGJIbDJ6K2dwaW81?=
 =?utf-8?B?QUZhWkxrK05YVW9pVC9pUnpzUHUwWGpkSCtoZWVaSUhtY1dnUy9DeFFDdGhJ?=
 =?utf-8?B?czRJR05Ua2lrTnNWNVhQdlpZUXJ2UDFIblJSN2FQM0RYU2VWdkRrT0xJeDEz?=
 =?utf-8?B?U3d4STd3cGZtYWJDUFpzR1JUcDg2Q1drMlhMK0U1UDZWNnBRYU10UkEveGd5?=
 =?utf-8?B?dk9TODlJZ2NvRHBXYkVjZ3lIUElvWWtMaVNXQm9xdlJTMThPQ3hXOVdJZnoz?=
 =?utf-8?B?QVh0amU5WURGWTAyZ1BhSkpORGlXV0p6NFlHY0pqVWRNb0ovdDB4RWNsV21i?=
 =?utf-8?B?Mmtub3M2ekI4U0VTbFFqZ1JpcmtRRDM1R0p2M3d0c2lzaFVHbjVsTTMxTkJn?=
 =?utf-8?B?VDRENjFuMHVqdVFKekZkenhpcC81VGFXd3ZYWWcvakxMazdJdzVWb3F1UC8w?=
 =?utf-8?B?dzJPUnBGK0hRdzM2dVRhd2I5RHM1ZXZXU2NTWUU4NnV6cUlPM0o0SWdwQWZE?=
 =?utf-8?B?aWVPeFpWS3NWM3I1c1NCV0VjMVBKYzdveWpqU2lxK2l5dHpEOWtCMEp1RWY1?=
 =?utf-8?B?TzdqQVFlL1pXemRZV3NuLzJLcWxWc2prcEtzYXQxeWRCT1JEeCs2Vm9ENC9p?=
 =?utf-8?B?R2x4ZVhIT2hNeEJPOTkzTzhIelJ0eGpTaUJLMTlwL2tyQ0puSkFQcWZBVHFO?=
 =?utf-8?B?WTM0NkF1OWNIVG1jZ2NNSUg1SHhnSkNzYTJTWk1QNVNLbTliWHFYK3MwcnZG?=
 =?utf-8?B?MURCaXpnSlZvNG81OEVwZkZXdVZwZ3lrMGhVQjFaeGcybTU2N3htYnVaU0lL?=
 =?utf-8?B?a0JoMGxMd256MEJHYXR4VkJYdmtNZm5vdWRjTmZCZ2JGRUIrMkp3Mkl4azl5?=
 =?utf-8?B?RHJZU21KczA0bDYwcFJ3MTl0MjdUN2JDSVdzcFRMdXhJc1pyUE1WRkUwdUFZ?=
 =?utf-8?B?bFA1eGlpa0J3L1FHS2ZIUElBMVNLOGNucjBaT1BaelZNNUhieGRabm8rRzBq?=
 =?utf-8?B?ZGk2NFdVM3BaRTBpa2UydkxGK0lTZUxxMGhubWFLUUFQQjY2UkVpTEdwSTNC?=
 =?utf-8?B?N3JCc2RXb3V4eVAyS2hFdTI3Uy8xeHhFWCt1eWJlbXRpRW5sZ0RaQjIraWpr?=
 =?utf-8?B?T041bk5icWdrOHBVL3lNcTFXb1FvMWU3NWoycUdrVDZDRnNPZ0hNanlvMTJr?=
 =?utf-8?B?VEcrWk1lNkhDcmZJdjZia3VMS1BiYnhEY1ExR2s2VHA1UTFvdmZwUERxZDRG?=
 =?utf-8?B?QTl4VE1VMUZEVHZnQXRGZlR5ZjlkUE9UNUp4S3pCOFFBQzBFbzQ2QzJyQjNa?=
 =?utf-8?Q?CR+g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f072fc9-4c46-4843-f7a7-08dbffd1b85a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 14:00:40.8702
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b8iwxZ3cmKHV/3c6xsRGDn0/esoKErrYTvZZjhe5ja28YsfSCjFlCjcNBpNMVrlJaq2jE/RXsYX2PBA/BAl2oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8P195MB0711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_140102_407669_C240CF2B 
X-CRM114-Status: GOOD (  25.39  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

VGhhbmtzIEFobWFkLA0KSSB0aGluayB3ZSBjYW4gbWFrZSB0aGUgaW5pdF9yYW5nZSBmdW5jdGlv
biBjbGVhcmVyOg0KDQp2b2lkIGluaXRfcmFuZ2Uoc2l6ZV90IHRvdGFsX2xldmVsMF90YWJsZXMp
DQp7DQoJdWludDY0X3QgKnR0YiA9IGdldF90dGIoKTsNCgl1aW50NjRfdCBhZGRyID0gMDsNCgl3
aGlsZSh0b3RhbF9sZXZlbDBfdGFibGVzLS0pIHsNCgkJZWFybHlfcmVtYXBfcmFuZ2UoKHZvaWQg
KilhZGRyLCBMMF9YTEFUX1NJWkUsIE1BUF9VTkNBQ0hFRCk7DQoJCXNwbGl0X2Jsb2NrKHR0Yiww
KTsNCgkJYWRkciArPSBMMF9YTEFUX1NJWkU7DQoJCXR0YisrOw0KCX0NCn0NCg0KTGV0IG1lIGtu
b3cgaWYgeW91IHdhbnQgbWUgdG8gcHJlcGFyZSBhIG5ldyBwYXRjaCBvciB5b3UgY2FuIGluY2x1
ZGUgaXQgaW4geW91ciB3YXJuaW5nIGZpeCBwYXRjaC4NCkNoZWVycywNCkxpb3IuDQoNCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBw
ZW5ndXRyb25peC5kZT4NCj4gU2VudDogTW9uZGF5LCBEZWNlbWJlciAxOCwgMjAyMyAyOjQzIFBN
DQo+IFRvOiBMaW9yIFdlaW50cmF1YiA8bGlvcndAcGxpb3BzLmNvbT47IGJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBBUk02NDogbW11OiBmaXggbW11
X2Vhcmx5X2VuYWJsZSBWQS0+UEEgbWFwcGluZw0KPiANCj4gQ0FVVElPTjogRXh0ZXJuYWwgU2Vu
ZGVyDQo+IA0KPiBPbiAxOC4xMi4yMyAxMzowNSwgTGlvciBXZWludHJhdWIgd3JvdGU6DQo+ID4g
RnJvbSAxYjhmNGVlOWUyOWU3MjJiYmIwYjdkMGY3ZmVkMGFlMjEzZWY4NjM3IE1vbiBTZXAgMTcN
Cj4gMDA6MDA6MDAgMjAwMQ0KPiA+IEZyb206IExpb3IgV2VpbnRyYXViIDxsaW9yd0BwbGlvcHMu
Y29tPg0KPiA+IERhdGU6IE1vbiwgMTggRGVjIDIwMjMgMTQ6MDE6MTYgKzAyMDANCj4gPiBTdWJq
ZWN0OiBbUEFUQ0hdIEFSTTY0OiBtbXU6IGZpeCBtbXVfZWFybHlfZW5hYmxlIFZBLT5QQSBtYXBw
aW5nDQo+ID4NCj4gPiBGaXggdGhlIG1tdV9lYXJseV9lbmFibGUgZnVuY3Rpb24gdG8gY29ycmVj
dGx5IG1hcCA0MGJpdHMgb2YgdmlydHVhbCBhZGRyZXNzDQo+IGludG8gcGh5c2ljYWwgYWRkcmVz
cyB3aXRoIGEgMToxIG1hcHBpbmcuDQo+ID4gSXQgdXNlcyB0aGUgaW5pdF9yYW5nZSBmdW5jdGlv
biB0byBzZXRzIDIgdGFibGUgZW50cmllcyBvbiBUVEIgbGV2ZWwwIGFuZCB0aGVuDQo+IGZpbGwg
bGV2ZWwxIHdpdGggdGhlIGNvcnJlY3QgMToxIG1hcHBpbmcuDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBMaW9yIFdlaW50cmF1YiA8bGlvcndAcGxpb3BzLmNvbT4NCj4gDQo+IFRlc3RlZC1ieTog
QWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4gIyBRZW11IEFSTTY0IFZpcnQN
Cj4gDQo+IEkgcmFuIGludG8gc29tZSB3YXJuaW5ncyB3aGVuIGJ1aWxkaW5nLCBmb3Igd2hpY2gg
SSBzZW50IG91dCBhIHBhdGNoDQo+IGp1c3Qgbm93LiBJIHRoaW5rIFNhc2NoYSBjYW4gc3F1YXNo
IHRoZW0gaWYgdGhlcmUgYXJlIG5vIGZ1cnRoZXINCj4gY29tbWVudHMuDQo+IA0KPiBDaGVlcnMs
DQo+IEFobWFkDQo+IA0KPiA+IC0tLQ0KPiA+ICBhcmNoL2FybS9jcHUvbW11XzY0LmMgICAgICAg
ICAgICB8IDE3ICsrKysrKysrKysrKysrKystDQo+ID4gIGFyY2gvYXJtL2NwdS9tbXVfNjQuaCAg
ICAgICAgICAgIHwgMTkgKysrKysrKysrKysrKysrKystLQ0KPiA+ICBhcmNoL2FybS9pbmNsdWRl
L2FzbS9wZ3RhYmxlNjQuaCB8ICAxICsNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Nw
dS9tbXVfNjQuYyBiL2FyY2gvYXJtL2NwdS9tbXVfNjQuYw0KPiA+IGluZGV4IGM2ZWE2M2U2NTUu
LmZlNWJhYmJmZDkgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm0vY3B1L21tdV82NC5jDQo+ID4g
KysrIGIvYXJjaC9hcm0vY3B1L21tdV82NC5jDQo+ID4gQEAgLTI5NCw2ICsyOTQsMTkgQEAgdm9p
ZCBkbWFfZmx1c2hfcmFuZ2Uodm9pZCAqcHRyLCBzaXplX3Qgc2l6ZSkNCj4gPiAgICAgICB2OF9m
bHVzaF9kY2FjaGVfcmFuZ2Uoc3RhcnQsIGVuZCk7DQo+ID4gIH0NCj4gPg0KPiA+ICt2b2lkIGlu
aXRfcmFuZ2Uodm9pZCAqdmlydF9hZGRyLCBzaXplX3Qgc2l6ZSkNCj4gPiArew0KPiA+ICsgICAg
IHVpbnQ2NF90ICp0dGIgPSBnZXRfdHRiKCk7DQo+ID4gKyAgICAgdWludDY0X3QgYWRkciA9ICh1
aW50NjRfdCl2aXJ0X2FkZHI7DQo+ID4gKyAgICAgd2hpbGUoc2l6ZSkgew0KPiA+ICsgICAgICAg
ICAgICAgZWFybHlfcmVtYXBfcmFuZ2UoKHZvaWQgKilhZGRyLCBMMF9YTEFUX1NJWkUsIE1BUF9V
TkNBQ0hFRCk7DQo+ID4gKyAgICAgICAgICAgICBzcGxpdF9ibG9jayh0dGIsMCk7DQo+ID4gKyAg
ICAgICAgICAgICBzaXplIC09IEwwX1hMQVRfU0laRTsNCj4gPiArICAgICAgICAgICAgIGFkZHIg
Kz0gTDBfWExBVF9TSVpFOw0KPiA+ICsgICAgICAgICAgICAgdHRiKys7DQo+ID4gKyAgICAgfQ0K
PiA+ICt9DQo+ID4gKw0KPiA+ICB2b2lkIG1tdV9lYXJseV9lbmFibGUodW5zaWduZWQgbG9uZyBt
ZW1iYXNlLCB1bnNpZ25lZCBsb25nIG1lbXNpemUpDQo+ID4gIHsNCj4gPiAgICAgICBpbnQgZWw7
DQo+ID4gQEAgLTMwOCw3ICszMjEsOSBAQCB2b2lkIG1tdV9lYXJseV9lbmFibGUodW5zaWduZWQg
bG9uZyBtZW1iYXNlLA0KPiB1bnNpZ25lZCBsb25nIG1lbXNpemUpDQo+ID4NCj4gPiAgICAgICBt
ZW1zZXQoKHZvaWQgKil0dGIsIDAsIEdSQU5VTEVfU0laRSk7DQo+ID4NCj4gPiAtICAgICBlYXJs
eV9yZW1hcF9yYW5nZSgwLCAxVUwgPDwgKEJJVFNfUEVSX1ZBIC0gMSksIE1BUF9VTkNBQ0hFRCk7
DQo+ID4gKyAgICAgLy8gQXNzdW1lIG1heGltdW0gQklUU19QRVJfUEEgc2V0IHRvIDQwIGJpdHMu
DQo+ID4gKyAgICAgLy8gU2V0IDE6MSBtYXBwaW5nIG9mIFZBLT5QQS4gU28gdG8gY292ZXIgdGhl
IGZ1bGwgMVRCIHJhbmdlIHdlIG5lZWQgMg0KPiB0YWJsZXMuDQo+ID4gKyAgICAgaW5pdF9yYW5n
ZSgwLCAyKkwwX1hMQVRfU0laRSk7DQo+ID4gICAgICAgZWFybHlfcmVtYXBfcmFuZ2UobWVtYmFz
ZSwgbWVtc2l6ZSAtIE9QVEVFX1NJWkUsIE1BUF9DQUNIRUQpOw0KPiA+ICAgICAgIGVhcmx5X3Jl
bWFwX3JhbmdlKG1lbWJhc2UgKyBtZW1zaXplIC0gT1BURUVfU0laRSwgT1BURUVfU0laRSwNCj4g
TUFQX0ZBVUxUKTsNCj4gPiAgICAgICBlYXJseV9yZW1hcF9yYW5nZShQQUdFX0FMSUdOX0RPV04o
KHVpbnRwdHJfdClfc3RleHQpLA0KPiBQQUdFX0FMSUdOKF9ldGV4dCAtIF9zdGV4dCksIE1BUF9D
QUNIRUQpOw0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9jcHUvbW11XzY0LmggYi9hcmNoL2Fy
bS9jcHUvbW11XzY0LmgNCj4gPiBpbmRleCBlNGQ4MWRhY2U0Li5lMzk1OWU0NDA3IDEwMDY0NA0K
PiA+IC0tLSBhL2FyY2gvYXJtL2NwdS9tbXVfNjQuaA0KPiA+ICsrKyBiL2FyY2gvYXJtL2NwdS9t
bXVfNjQuaA0KPiA+IEBAIC0xMDUsMTIgKzEwNSwyNyBAQCBzdGF0aWMgaW5saW5lIHVpbnQ2NF90
IGxldmVsMm1hc2soaW50IGxldmVsKQ0KPiA+ICAgICAgIHJldHVybiBtYXNrOw0KPiA+ICB9DQo+
ID4NCj4gPiArLyoqDQo+ID4gKyAqIEBicmllZiBSZXR1cm5zIHRoZSBUQ1IgKFRyYW5zbGF0aW9u
IENvbnRyb2wgUmVnaXN0ZXIpIHZhbHVlDQo+ID4gKyAqDQo+ID4gKyAqIEBwYXJhbSBlbCAtIEV4
Y2VwdGlvbiBMZXZlbA0KPiA+ICsgKiBAcGFyYW0gdmFfYml0cyAtIFZpcnR1YWwgQWRkcmVzcyBi
aXRzDQo+ID4gKyAqIEByZXR1cm4gdWludDY0X3QgVENSDQo+ID4gKyAqLw0KPiA+ICBzdGF0aWMg
aW5saW5lIHVpbnQ2NF90IGNhbGNfdGNyKGludCBlbCwgaW50IHZhX2JpdHMpDQo+ID4gIHsNCj4g
PiAtICAgICB1NjQgaXBzOw0KPiA+IC0gICAgIHU2NCB0Y3I7DQo+ID4gKyAgICAgdTY0IGlwczsg
Ly8gSW50ZXJtZWRpYXRlIFBoeXNpY2FsIEFkZHJlc3MgU2l6ZQ0KPiA+ICsgICAgIHU2NCB0Y3I7
IC8vIFRyYW5zbGF0aW9uIENvbnRyb2wgUmVnaXN0ZXINCj4gPg0KPiA+ICsjaWYgKEJJVFNfUEVS
X1BBID09IDQwKQ0KPiA+ICAgICAgIGlwcyA9IDI7DQo+ID4gKyNlbGlmIChCSVRTX1BFUl9QQSA9
PSAzNikNCj4gPiArICAgICBpcHMgPSAxOw0KPiA+ICsjZWxpZiAoQklUU19QRVJfUEEgPT0gMzIp
DQo+ID4gKyAgICAgaXBzID0gMDsNCj4gPiArI2Vsc2UNCj4gPiArI2Vycm9yICJVbnN1cHBvcnRl
ZCINCj4gPiArI2VuZGlmDQo+ID4NCj4gPiAgICAgICBpZiAoZWwgPT0gMSkNCj4gPiAgICAgICAg
ICAgICAgIHRjciA9IChpcHMgPDwgMzIpIHwgVENSX0VQRDFfRElTQUJMRTsNCj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vcGd0YWJsZTY0LmgNCj4gYi9hcmNoL2FybS9pbmNs
dWRlL2FzbS9wZ3RhYmxlNjQuaA0KPiA+IGluZGV4IDIxZGFjMzBjZmUuLmI4OGZmZTZiZTUgMTAw
NjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vcGd0YWJsZTY0LmgNCj4gPiArKysg
Yi9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlNjQuaA0KPiA+IEBAIC04LDYgKzgsNyBAQA0K
PiA+DQo+ID4gICNkZWZpbmUgVkFfU1RBUlQgICAgICAgICAgICAgICAgICAgMHgwDQo+ID4gICNk
ZWZpbmUgQklUU19QRVJfVkEgICAgICAgICAgICAgICAgNDgNCj4gPiArI2RlZmluZSBCSVRTX1BF
Ul9QQSAgICAgICAgICAgICAgICA0MCAvLyBVc2UgNDAgUGh5c2ljYWwgYWRkcmVzcyBiaXRzDQo+
ID4NCj4gPiAgLyogR3JhbnVsZSBzaXplIG9mIDRLQiBpcyBiZWluZyB1c2VkICovDQo+ID4gICNk
ZWZpbmUgR1JBTlVMRV9TSVpFX1NISUZUICAgICAgICAgMTINCj4gDQo+IC0tDQo+IFBlbmd1dHJv
bml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8DQo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8
IGh0dHA6Ly9zZWN1cmUtDQo+IHdlYi5jaXNjby5jb20vMWxpVjJlTDdkM243aDlreDQycDNYOFFx
Nk5CdHRlZHExUktCMFFfY0J3bm5CMDRFMA0KPiBGblQzeW1XSnlfdHFzVW9hOGF6T3ZKOUpUZnFu
YzJGZkRMVFJYU1JFdkNDRlozbHN1ZmJvYldpUEJBTnlxbGQ0DQo+IEk5S18wZ0dudXBDVHBYTmlk
QnF3RUI4Z1R2UVdweXladzBycEpLMjdMeG9oc0s2OVg4X3Y0VmVXbVJGDQo+IFJGMU9odWRVNW9B
dkc1b0R6NlpudllEWm1Pa1A3eXdmQXJidng0cm5UbHBxaGlCT0R4VEhtM1A5V0JSDQo+IDBqSWxf
U2FHNnprNjJiZERSWHZ1bVBRVjNSbEFKRWNoblE3SHlIc2t4N2J5eVJHdVBRVHJ6Tk50Wl9zMy0N
Cj4gU3FxNy1tTVEvaHR0cCUzQSUyRiUyRnd3dy5wZW5ndXRyb25peC5kZSUyRiAgfA0KPiAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAg
ICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KPiANCg0K


