Delivery-date: Mon, 17 Jun 2024 15:44:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeq-007bqe-2u
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeq-0001IF-6h
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YsVPhUGgWACvA+7WEktrgxICbpW/lvSwKZCGUKogL0g=; b=FDm6z5l+XXQGgpkMvvtLcmzECT
	D0I+LurFkMQu7wwJmNO81p73bgZBNhFmZeV1JofzqN4/3/CfahXeWYQtcKJYMLAAK9OQDj2xh8+N8
	jXXsFTh1lDY9Q07D0NYHltRZLf8owQCQOJLydv3mF+4hr4RW4n0NgC1Rvpz1Z93HmtAUmaYWdmB3b
	qQjraf5SkOkn1/eXYSlfRAwJhzm3M8H7wEpVJiBWFSt1CS+ddwNJrYnl7sq543JiPC3oOyIjQGy8N
	zGs724Aejg0v7pjwJkLleuH0x9hmG7INYqYbafT7ahj2eAJ/ldCz0Vw16Wdt6hyi9EGL6cIcXkEeC
	WdN9iBzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeG-0000000Av3I-1zE8;
	Mon, 17 Jun 2024 13:43:52 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeA-0000000Auzf-2yc4
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:48 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 9EF2730EEF9
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631824;
	bh=YsVPhUGgWACvA+7WEktrgxICbpW/lvSwKZCGUKogL0g=;
	h=From:To:Cc:Subject:Date;
	b=KFJkee6Y8u22tPE3/3uWGgsoVI+Hz7lM0/IMnCrv5UT/xJqq1Z/dV0pJGaIfYjZ1v
	 XF+TYlDqZBf75gnJwKjaFO0pIL29fhhKypNV/CR4/qLBsZjFJDdFRmcXXdPTQtrnhs
	 Mig1MjPO72jTQSf+LnAcTUVPGBEHxHn+Yi/BjghM=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 6A6A930ED49; Mon, 17 Jun
 2024 15:43:44 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2046.outbound.protection.outlook.com [104.47.25.46]) by
 fx303.security-mail.net (Postfix) with ESMTPS id B2EDA30EE4A; Mon, 17 Jun
 2024 15:43:43 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MRZP264MB1797.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:42 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:42 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <cf0c.66703d8f.95e9f.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OIyg/ThVdZ14Bb9+OdYfEuhmlHk34WtOsKftbHOBbkvmax9icF+ErQW92iKSf9PApt456Flwo5MhUAZ1VV5yTcKGfJN8Yh+rx83g/71mz9I0vSDVpuDtthgmtSRd1AoqmjvGpvrZY0J6tf+JvMm7ZpsPjyOSbtVfL0bRmEZH2G9DQfK5JFZr9CFIUr+kEHIWL0GI4x2WnvkrR3L1nhEGoZTCnFdNDasAYBrjm+llyxEDBnJ5jfrhB3GUNR+h4ysq5h2YHsRDvrvgrGY/9sn2zv/OvLQr/OPyC4XonWkZC5C/vJkxJ5pF9EhQyQ68HjAajSMvEGsWcoaA71QAurfalA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YsVPhUGgWACvA+7WEktrgxICbpW/lvSwKZCGUKogL0g=;
 b=Li//w5DC7g4/dUzZLtG7RRKoekXkXf4JMnUGYoCMVj92FPwbdHPrhsreiokxahs7GGs8XyqjJ2D1vse9HfQSrekqI2eOcgDAdl65la+2KEb0ql2l4BPPaBdKxovMNqeEOvA+m25SX58h8W/mWLN7l4Iy+gT0JJfnyonYGAiVDILNBXJQJ7dPF5MUCz/lS/QSqExhCXVbzB2y6kwCUTl4m6ma6Bsg+0aHcKFzzc8TtwQVsAKoi2c8CurVPfjvViSwEhUvCMYZaO6QaUwtV2E1KKvF31EHBp4PdV1QPLOd7mde8FHTmWq7YNm8iabQ+rgdRzlc3UAHBEqKGHXCZ1SfBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsVPhUGgWACvA+7WEktrgxICbpW/lvSwKZCGUKogL0g=;
 b=PWJLlkgEHXTc05rTc/OtyFRizThs7jQck1dPOArCpkxC0TwfgbP4ID7A77VhMQmmKqjeu2moM5tUIf3hLipKzhhHeJtc7f4uR+oSq90pEpX+Onr/s1KSo/lV06fk4INCGi+GlSjId24TUOW/P0b+utLHA03JHhYtLBCua6bmECRq83bhdxbLQJNFhKSqccc+Q/zUCgiCHCC0nGl2YHHJKHZ81VmfSOwZS08tv8xD4DB8jFGAKNyrVcTCEXkmmeq8RUHkkc7QyGVMWHmodORCH0i8UwqyCdaSebLUmQD5htjIRhj3mIzkHYRc3+VhcgMix23pq6sR1c2I3OJA3szXEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr
Date: Mon, 17 Jun 2024 15:43:24 +0200
Message-ID: <20240617134329.3671762-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::21) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MRZP264MB1797:EE_
X-MS-Office365-Filtering-Correlation-Id: b622cdc8-64ae-4384-ebab-08dc8ed3805a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|366013|376011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info: 1LY5eJFAS5bReUxPLrebAINAa8ZkN78g7INWgzAuWxcv8QjoVu6RUx7erY/ekKDQ2wapfnraWaGA49yQUqOXBN1UUZMUchApN7kATNWZjYTs7zRd+sm1zUVko3omoigisEQ9whtx2mvUvg2WLDWMt/7ltVFZMVoHg7MJYZ/iN4q9u9WLNTlh52Tx/MyRSFRKEYSzTDLY75+yIX3wU92yI2IZv31yzNj6vI+rh6ZYZN7LOdLgRPAf+JCGTexQR4lI0vuKLBhCFJ0j7AECMWqpcY0iPhJ4EPs4msJN2A2H2oUucvC+NTbq+sYsx3F0g5kbn6bHRoCe4/WkB6Q3FE8h1g9eeyX3gJNfkbakOyDv/A5c+eNU8jfsAyqnCIY6s7EqZPVFRqfzVAQYTvFbGxVoDwVWCq8JDd8Dn+wbokqWiM7Ee4uN2Xnx7CwHEfJpMP3cAD879pAUt8dZS+Zm7BTrpeOqUobGlWTWFaL1MjZS/f0MPIK6wEEbZEbPoqTaZ1jFCQuU98Rr5YfPrYkjfm9XRFVvEiyJ86Us0/F+xhqcOajwLlQiQomFVugdQKUV60Y7byG3A6Gbmripl5KlUuKhRNTBU40FHPGzZn+2rwL0MIIJ/2UME2CZkcoX0GjDSrG7et2bn1QhNQMdddck6bOG8GlPNgrGNcSxVU26arv7rrpVR3LYx3fr8i+seamIpWXv0Exb8IQbg+vtATD/HNlzHPwd61t3ff2ECKVT364itj3Cz+ML7ixSsnO2Ny4wsotlCKv6Qr0CFjlhK9QXC2QtozTTsbRCg3nqv9vw5VhimDp+RKPSI0SBLvjV79QO8wyjl7TXCBpEwB4YzqH2v0/yqaLZwiYhcOnemuvMiVSn4/dKvBrsfeAcc3l+RcYBpTrfmdjUE5cR8yWAIFZtZlE5gJgX+9YCJx4arEGHx0MCCs3gVUSUEAxPKnSRE2doKlZ39Xl
 trtWxrJO8+sLTjv0yWaA92zd3CIbPJ8a9Dz5soA+NchWOkTlVGCoLDJ3/luppJhla2rXFBfJDe5O5ZIXKEVnD9MFiLxdsVgBG00PkrxEVCDQuBVzK8oM5qI8os8GVHXvK8Um2ea77X9FoVoZO21nzaAePQvhlfrQYr858Q60j36MrkrEHiOJYtce/jkHwGHpF5IQ+FcMY6fPSG6tzqsXClwiM8fLNlTrL2B8HD65IWZFVHvV4d78idmk1/5T9BY1NhPP5INNGUOswoiO5EzCUE+2exYf+0gD+TfcSj5Ns7egdH7onWHkj7jV0WwZbWakSWciYuEsRu4WirKNAUA7y3AlP2hzKTNAUtNxhazo27gqEi8yCKF9Nc0hEEho7NOpBVdSOQndk+zq/gAZS4NGGeGhskpV1OXBNSzwhkKc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(52116011)(366013)(376011)(1800799021)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Gz5Uluiu+/Fc9v5dSi3U1qwL3ZX3upirZvIz/vL5rWGdideW05xcUuo5hNlCxiD1na9fPU+cZFeXDpPXbll36pySF28uKrTe1GHG1ZQ95BMgcmsqv0DaRCRPw3XS/BnTif5FuEWzx0dXVDZx1+iISqwnFq89HNTXOH4p6I8I1LCLUD441lqVI7EkdiSO8ARF4chqPkIVVFjxMARHLhNbKoSQ6N+LHgWS3QFKUICXOfJolVUuJBJCsqhAaJ3pii4s4UHbpSzL/IG9lXvcj+OLzTrLmlYlawPBxDkhNDjztJW7fpFJMWSr5H8yicRVvVm2euS6KR0QTIp8x3AzQSGOhMvE/zbFXNH8y9QKFpWi+/PY4GsDV5DKpMFWi4AoRkG2QMHIZrCooGheUpFnostdy8wKX+fWCQLVX94MMd5zpIsSj40QPWFoWOLRH2IqOzmKYVKOKMTzh9Mv6IgW85UBNMtXAvzrtqEgS0GA1iSgNT7T/toA4Xha9uc1HVD0MU1A+JlwSl3sWP0URGtur3okAys8okQJZjA9EV0QFbYaSlZskwKVYVqYdF7pPIDejJ6JX6ywruxXrHCajnZeZiOwMaELf27QGfIt4WDLPpXKCayv3gCcwl6kZ9uKlP8T5HWUj6Bz4hZPG9/+7Yb1uaVwZC2SIevDzWic0Fm8S/OU7WMaDaX9uCvuIt0KYwsAToniEwa2ZLYBSdbt8Q7EAlOA26akwMIOzJsfuDdxwSi+ixEghr2YpDBEdeMM16h2glNbZtGzoykpoKP/LriIWeU5vpVpeC8mDY//1h1Xl0f1oUhtCUEtfnRu95RX49xPfhNeZwAZlyYTMFkfy1OQaOkYBzVwYEZmueOxd3terEsJw/6SO26eamZ2Rz4c++itmVPBUSuTyzCB4Z/KRQM7o039Dq7d58qz/UbeT4+QO7HIt9L1OlIqbgB0AVdgu1u/htbU
 6MhO9YvGKLCVzh2SXrJF5SUMBXFmFpQjCNjZBC3fyb5ZZYUk4jWWWorwjdFMIumUloMGEoJBdqAl5DVS6mvRr8aLRyHxxXZkdoOQiiAYtcFK4s3xlmPvkXvjczrxbqRtcMEqE684cLJzfqNcAeXeLwnx80jzw0A/g6cm9zeUXq4H9AM3IPm6VzDH4j0t5toWa7I2Fj56uAjXKhONp1GjxfQhZsPc5julnAexViDd9e7ODIZt6R76Y67Frx8xmRf0akwtFCzYaQZiWIUCOhfLD4Hn7vNd3o/Q1dj7CTgeSDUMK65X+8tFEPqPPGYi2kXoGHA9wk/dyPnbFP9CzFgIdU3A5qyIu0fhFUBEAtdLxzdyfRO1sue3GSPGh1fpuVzurFojH9JncPWBJO6Smp4e5c0fC2ajr9B7aZojrOfXs5nGuDGaRnedaguWkRRnxs9HYriOVIxkGvTscHZVyxRlQxKT1sQQchioxJiILrgIP68B0vbv+Ns5RRiBzYsM96mMKGTNAOHpAbR2ONpElZH16/DoDIwGp4gE560JK/xbgRecz8KGtQkln130Nza4wR03V7TdWW8CcYzwficrAEXXqab6cn9Hy2uD4hm7so0TgFqpChqRpc9pDnTGj9DleCsyzGhBRH5oC7gmOxX8K7utBg==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b622cdc8-64ae-4384-ebab-08dc8ed3805a
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:42.3923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3yHpzP/h0Q++aY8YuGgXrBA59619mYw9UfYOgIWfsyaLAXN8ElmhIAOBXDGgkUeQrs+OTJpsyNHpdQg6hfBarQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB1797
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064347_088637_DBA5D2A4 
X-CRM114-Status: UNSURE (   2.48  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Update kvx support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a small patch series that updates the support of Barebox for
kvx. It contains some minor fixes and some additions that we currently
maintain in our private repository.








