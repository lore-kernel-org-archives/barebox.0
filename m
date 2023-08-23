Delivery-date: Wed, 23 Aug 2023 17:10:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYpUr-006KLv-EY
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 17:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYpUp-0003mu-9d
	for lore@pengutronix.de; Wed, 23 Aug 2023 17:10:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=//Mz4NxYHTPOh+di0LEyoloQcq1/2po2OX0MyuiHdog=; b=mxjhG3g+KOEZVsEKqPrs1Wojkw
	d60XEahWdMh1bKlx4H89u58dEsF0MUBHIJtQN/wSvtFhKt70dhJP6Pc/fCfHfnGeaoZqE2kkGx4uh
	1steiqlOJrxLZJgdI6re3IqTf4BYJNsJF/dzn4iiZe49WgZh3mbZ6AWWNfqMbcyvaIa4XbBNvedHi
	tAe2N6MQ71dVAK/HXBBGxEOJX2yIdPW1Xf7jWwG5QoWOhm1rcswEpP1wMIhsws51qPn2P2Gcox29k
	WKmsbGjzWcKiHEwjjgrP1nz7iIxWfK84BF2SkU1cqvZJrS018E2ceJogWhWa/q0bikQC7w+6+Bkh2
	hvYx3fHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYpTO-000v6F-2Y;
	Wed, 23 Aug 2023 15:08:42 +0000
Received: from mail-he1eur04on070f.outbound.protection.outlook.com ([2a01:111:f400:fe0d::70f] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYpTL-000v4v-2R
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 15:08:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OG3M1y5/pZdqrJ22b9Jrxv+FuJpy6e7LM3BGZWviMpNR5Omkdb67FxxoWeXz/071NqB6BFZraois6XhywS3//wIsvPuVLAtXoTUzswafkGI5QtcrtDsKxaW0YVioMAKp1Yd/9HWszhUOGnYaoDAn7OQkpGmVIucHtO8H9YmPKAJ2OqVxhfu4I2Gg4lqz7J/S+AUAcvJZGhqG5obzaNSg9yKCElXRyZLZKaIAqIidOFCOlGd0nzmx+T4xLWb/3+vVRC86KmIQtEBU18gaLhRrWJyWbhT/ldgGcH0jbARM8O2c4khpOAqT/ddTK+jyMEV/DdjxJ9SlhDnyyyAP2mcPXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//Mz4NxYHTPOh+di0LEyoloQcq1/2po2OX0MyuiHdog=;
 b=YxvbDmXD5dz0D0XKqBVEjzpqo/z8jpnsHwbmRlQYSQPEvNgbR96SqusSMp05i+5SbQHWzeBdF0Ab1kKmpyhMxhD97bwF1eGF6Ezh/e5YRJWoTzzwLI5aOCLOIClLu4ru5L8VNAJm7bohGnfwl0y28gTbK86T88/HzhUf5a4bSq4319yHGhQUBORqEYx1p4Wpeh9tbzni73/jSgIsf298cxCmlpVB+CSqP1d/Rx4daJAT4IfZL2YeL9O62fp7u4nVAsTX5MlhH8dqbwtrtkH4a5XT4SbLcotzMgXJZerkUKWZcKZ1YUEMd4y59LDJbUBQbMMW+PH+eiS4sKT/d4uZGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//Mz4NxYHTPOh+di0LEyoloQcq1/2po2OX0MyuiHdog=;
 b=k2W8gmIoP61JK7ss9p1aEgSO2yalfhTC/rsRYROcvoQHlr+QJm6SxNhzGoXdxQKoWqn+OZhacwXHBR6nTG9cnCv4U14BKwh6okQ95taiZwH9cEe2sL+rL1jAdRUQmvlYqrgK3Dc+ySEorENKc/AML61cYNN7PbSUvXbBohm1kSA=
Received: from AS9PR0301CA0041.eurprd03.prod.outlook.com
 (2603:10a6:20b:469::32) by DU2PR07MB8329.eurprd07.prod.outlook.com
 (2603:10a6:10:2e4::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 14:53:04 +0000
Received: from AM0EUR02FT059.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:469:cafe::eb) by AS9PR0301CA0041.outlook.office365.com
 (2603:10a6:20b:469::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26 via Frontend
 Transport; Wed, 23 Aug 2023 14:53:04 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 AM0EUR02FT059.mail.protection.outlook.com (10.13.54.184) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.16 via Frontend Transport; Wed, 23 Aug 2023 14:53:04 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 23 Aug
 2023 16:53:04 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Wed, 23 Aug 2023 16:53:04 +0200
Message-ID: <5977114.lOV4Wx5bFT@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT059:EE_|DU2PR07MB8329:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a8a9e6b-f96f-4acd-6a10-08dba3e8a7c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j0TDMDa3MeV1JqxZcHyIvxsJmtynSYkgzv0IHWkeoh5QdAG9GJQZBblnnlhTUq5fyaT581yaHRrHm+v722pWm/TiIjpGN+b1F2HGIKQUswc0SC/w1bVLnQQT+/pam14rTL1SfsvP7W+17IM0jINpE3GKNBiABlMFDFTzU0Zd5ekp4/BKXLAz/f/0fvdo3LIw/r3yQFeyymUcSWkJyOXeFRfpO4EXhrbu4LrlfbhWuMkuK/eFKtSFE1Jx3ktKkUfa0+cGI88HGBa//TzdOxWdHzTJKbNsl9CGrpMog7JORPew+/FL+3r/0oMhXHHVAknGa7L+lpTitFkoUI8XRSA4hTSuMLUjZHLXCHjWwJRL0XFV1eT8+vhZouLmQtttuOPWAbAjDDb2YwmqUYzGl06WvrpIdJluZacA8V+kpKyxFhkaC0yt2VNSm+jw402mSC9qS+2+LiJqwYUbYwRxpp84fJaziz4yFCiTvtJOfKkGm/08M+w07Wv9RP5050DZA36R1PyzOKWVkfrgo8tEib+svmHnlwwQNixfNKbUv2906npouReSupvdS/n+R6OXhkZLG6YewS0wewLp0X3Vcg2jq54MR4JsswlLVxePDEJwZdzqkhJ3wOpvUrG1XaOzkXvtCYcztWfJQO8gLO1e2SJsCGOYgLvfHC9WHVdqHUvdZeUODvDdubXc1Yxam8q9Z20mSq+0JVbl6fpUQ+640DBQ6MskkrLieFtuLBp4bimmBWOW+uurZFkvIKlkjczwgTOamc8EwLif+vHLm8j+GuRqOh2b9ggP9Z+dAYyrZEnu0NhLzJyTK66SsO16DT2skHUY8coLVKmMv9A805U6rAerg/GTtsozBO86+1c42BUQxDk=
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(39850400004)(136003)(396003)(346002)(376002)(451199024)(186009)(1800799009)(82310400011)(46966006)(36840700001)(478600001)(9686003)(41300700001)(12101799020)(33716001)(86362001)(70586007)(316002)(70206006)(36916002)(40480700001)(81166007)(9576002)(5660300002)(336012)(6862004)(8676002)(4326008)(8936002)(16526019)(26005)(426003)(4744005)(2906002)(36860700001)(82740400003)(47076005)(356005)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 14:53:04.5217
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a8a9e6b-f96f-4acd-6a10-08dba3e8a7c5
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT059.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR07MB8329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_080839_793364_6FA09F99 
X-CRM114-Status: UNSURE (   7.36  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: aiodev: imx7_adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

I am currently porting the vf610_adc driver from Linux to Barebox.
Must thing can be done similar as for the imx7_adc driver.

I have one question about the reference voltage:

static int imx7d_adc_enable(struct imx7d_adc *info)
{
...
	ret = regulator_get_voltage(info->vref);
...
}

What type of regulator do you use? I have declared a
fixed regulator in my device tree:

	reg_adc_vref_3v3: regulator-3v3-adc {
		compatible = "regulator-fixed";
		regulator-name = "vref-3v3";
		regulator-min-microvolt = <3300000>;
		regulator-max-microvolt = <3300000>;
	};

	&adc2 {
		pinctrl-names = "default";
		pinctrl-0 = <&pinctrl_adc2>;
		vref-supply = <&reg_adc_vref_3v3>;
	...
	};

But it looks like the fixed regulator driver in Barebox
doesn't support reading the voltage (the Linux driver
reports the value from "regulator-min-microvolt")?

regards,
Christian






