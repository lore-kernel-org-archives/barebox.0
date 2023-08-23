Delivery-date: Wed, 23 Aug 2023 17:22:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYph3-006KzO-6N
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 17:22:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYph0-0005e8-QX
	for lore@pengutronix.de; Wed, 23 Aug 2023 17:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZDUGikzCUDNnaIJ0/olBhMh/eVAZgFPLAr4HZ2TxX3M=; b=cJA2Usrx5SCX8ktsItzUE7qJFB
	Ul73cUFwYBhxd7kkUwrSZouzlecSqF2SedM8o8I4XUJ7ZMxoiyKddbWiKFNJQejfBkj7ICZyytbHZ
	DOdi3XJ5MDAp4OXil67kukPWIhJS9oodK2+SBcatBzmTUlJoeKMR1pnSozbca9ETz5T81eqKBELCC
	mn63q65lI62xHdcyfusBQnHjUN4ZwXBGIJehXIEOPv2bDo6ao/RKxiwoq+CooaqatD3N/vPEKY3oK
	azHZWCVovnxTvVGl9EPmzscwLvms6gV7JsNhnMAhX1czWXN/FC3vYgcjdM2OggZozsAZ4lKTPBFsj
	7ypIDBEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYpft-000y1d-1M;
	Wed, 23 Aug 2023 15:21:37 +0000
Received: from mail-db3eur04on0731.outbound.protection.outlook.com ([2a01:111:f400:fe0c::731] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYpfq-000y0r-01
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 15:21:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcBSstcMDA9jJXIS5LegmCXgP18w7epdOmhicbWFHas85mBkrr+lUi5Z/kH1GXUw3Uo5LMfsjCmLk+AqYT/zosBp6Ij+Z4UgpY4pRswzgxwDO3EajKxzDPCne/ZjHoEYeHpFeHUJXu6HXJmlWy8/G4FKaKfkzW38C5lR2XBDngwUHJXlZASkPhqxJA920ryk5ptHV2Isk+tK7cMCHjpqlw0UDkJacXv74zNHgThNDFeqmBxjI/MbhrjenWyCGVn8ByV2QZEEbQaYFBEUCoHX5pNZbIQIoMAvD92tz7agZ0j9BKidmjlA8A83sWLMOk4nKUg7ItYtduY4N5SJPxSkGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDUGikzCUDNnaIJ0/olBhMh/eVAZgFPLAr4HZ2TxX3M=;
 b=inV9qHmAhjrs8VS9qazfUc+eLzFiHV6Sp8ZoUxXrSb+qgrKbHM3iVDdW2Owc/XilZu6g7UeI1Jqbev9prcpagVpgL2L2dUlKX+XdEFvLYqbrG9afXkArd6tLgS6+9VtKrBHDuCWevWzAAmPmOLY5EF+Qfh/35nPwUVcdLwdv/v23Zu8HLDDZ71Qs/TieYA3GbvpE6iXL+UgILO1+0e+R/27aPC8Fb6dQ9+gck8P0D0SFH4z9Nhp5vYE5FyHbwf9lsJxBrnu09d+u/qLn0ofK3Bo6gKvepCeS6mb63z/YbGx1XbcXDwgI9dMEwNVT53kw4UPQ4nSREEeaF2/T1C5WfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDUGikzCUDNnaIJ0/olBhMh/eVAZgFPLAr4HZ2TxX3M=;
 b=QdENfKN2ZK3fAilgqWL2yXEHGAEVLr/yAl66GBPC/c6b+Ty7XoA3ZZwKHwctn56fBnDfUzebdyVLfaJuKFZclgvxBNM/E9WEU2i2QWA6uJLN0+uNXJy3H6IKQcYFz/SAAFB7ADbiJsediMh7a+pmx14WoRjf+ER9oWaMT9lp9kE=
Received: from AM5PR0301CA0035.eurprd03.prod.outlook.com
 (2603:10a6:206:14::48) by PAVPR07MB9288.eurprd07.prod.outlook.com
 (2603:10a6:102:312::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 15:05:31 +0000
Received: from AM0EUR02FT068.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:206:14:cafe::4c) by AM5PR0301CA0035.outlook.office365.com
 (2603:10a6:206:14::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20 via Frontend
 Transport; Wed, 23 Aug 2023 15:05:31 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 AM0EUR02FT068.mail.protection.outlook.com (10.13.55.244) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.16 via Frontend Transport; Wed, 23 Aug 2023 15:05:29 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 23 Aug
 2023 17:05:29 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Wed, 23 Aug 2023 17:05:29 +0200
Message-ID: <4518678.LvFx2qVVIh@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <5977114.lOV4Wx5bFT@n95hx1g2>
References: <5977114.lOV4Wx5bFT@n95hx1g2>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT068:EE_|PAVPR07MB9288:EE_
X-MS-Office365-Filtering-Correlation-Id: 7572dcc2-f0ae-4edc-ce05-08dba3ea6409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EyYmuBhNjyNQ4yjppXExXkkeHoo3DaQ99wvCUIxveCwzSPkSIH0+G7yl7M9cazJauu5yv3+9E9ou7lxkQSjxUbGJR7ttAIOiGtfr8X71pHiBgXtftSl2PtP4lIazbrDQjlM6bBTY2wwk29vpSQZJ/uEvn5piFKAoNJw59om5l5ClZ8XhtMz8HT8NhXdCvhyWQOu+FTGiMfzBhEj+BAEsR3kvaXyS6kxZYFP23DynX1yFFI1hzXhNmaUiaU1JoZm3Z9fqSr5liVviri5SBfclfUAXz/kipBBsJUfzU0WE+o2X1pvD+Flqy29WZuUwoKTrob81wE4pzIgB1tevlqtl9YiyjxV/jlH27zlHix5jtJfje3NEMwjgdps4p1H1oEyGuV7KO2ZXTCfX+J3kMBaDFe6ZyK5KsGZ9AdO5qJRpdaBL1HaPgt5/K7Kao/9JugXqMTlNlUN1M82i8qoFgH7NqlGPKYpJoafVsbTNb/nAsHBvsurDmzPPnt+xLIT6hhybhurnBg1qcFQAO61ctoaLWD6xnAjtCjTlVLUGWIHX3F18PWtIntQhwrpBlprHIPpot076VWIsg3DTYwHfRPWFCtTZUyIAn/WMljf05f/50kduA2FPPrn/7+3h1vBkX2ZcbNwbHABFVYK+LwfrN4UqYzuZspwoYRqWeB+QlekXuxMT0678FkKVJ7Ly+aLb7GFHbK8/Lc+C2hs3Dy1N+QUittQqSqxvp7+nB9u61p6j7onm5hsc7T+YsB0jD9gRi9JT24WyqIWFHR348MsEZv6Fv+Tnd3ugZGA8kcBfHSe4eeyRdZyhaI4I/j5Dofk1IqsPQoN4c+ApV7BvUaeYf+9Whw==
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(346002)(376002)(136003)(39860400002)(451199024)(82310400011)(186009)(1800799009)(36840700001)(46966006)(26005)(16526019)(336012)(426003)(36860700001)(82740400003)(2906002)(81166007)(356005)(47076005)(41300700001)(40480700001)(9686003)(478600001)(9576002)(70206006)(70586007)(316002)(36916002)(12101799020)(5660300002)(33716001)(8676002)(6862004)(4326008)(8936002)(86362001)(966005)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 15:05:29.8627
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7572dcc2-f0ae-4edc-ce05-08dba3ea6409
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT068.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR07MB9288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_082134_045084_7DBB1EC3 
X-CRM114-Status: GOOD (  14.73  )
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
Subject: Re: aiodev: imx7_adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Seems that I found the answer myself:

https://git.pengutronix.de/cgit/barebox/commit/?id=d353ffd5c6e6d4cee6eee72726125c965a0814f0

regards,
Christian

On Wednesday, 23 August 2023, 16:53:04 CEST, Christian Eggers wrote:
> Hi Ahmad,
> 
> I am currently porting the vf610_adc driver from Linux to Barebox.
> Must thing can be done similar as for the imx7_adc driver.
> 
> I have one question about the reference voltage:
> 
> static int imx7d_adc_enable(struct imx7d_adc *info)
> {
> ...
> 	ret = regulator_get_voltage(info->vref);
> ...
> }
> 
> What type of regulator do you use? I have declared a
> fixed regulator in my device tree:
> 
> 	reg_adc_vref_3v3: regulator-3v3-adc {
> 		compatible = "regulator-fixed";
> 		regulator-name = "vref-3v3";
> 		regulator-min-microvolt = <3300000>;
> 		regulator-max-microvolt = <3300000>;
> 	};
> 
> 	&adc2 {
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&pinctrl_adc2>;
> 		vref-supply = <&reg_adc_vref_3v3>;
> 	...
> 	};
> 
> But it looks like the fixed regulator driver in Barebox
> doesn't support reading the voltage (the Linux driver
> reports the value from "regulator-min-microvolt")?
> 
> regards,
> Christian
> 
> 






