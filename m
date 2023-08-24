Delivery-date: Thu, 24 Aug 2023 14:22:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZ9Lf-007LBl-Ur
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 14:22:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZ9Ld-0006Ty-HK
	for lore@pengutronix.de; Thu, 24 Aug 2023 14:22:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RRKibW7s2j/WRZOhHdLZ0Kyu4q9rMpTm4eHKx+yNFGg=; b=VJPqiOG0sZMy6S7uL7Og5mYRDL
	f3VUwwwgtUvmz78qOvMFEFT9GxkvDH02pUoU7btwOeNUBmE75YG9/tgaLOxmJaZ9oQPLrSoRBlmh7
	ksmzLkQQPTN06PbttYkakLg5BGRQCltXM2btbtIatZ3Nd8b8EHFPAHprIRnIoLtvtr+R/We90HzP/
	F+JnX+O76Wk/OzHkez8WAK1/1rUP8k1YEF9Nwt5Hc0uuQ2t8fuZ+ZJ4VPZ99e8PaQM+hbHxcSg+UL
	a3SFev2ylnL5uzRD0ZrUkPxWoDX86jan1MiXRmP/fPNA/+rAMViZ1saMZl8g8xuLEZpfiM4SU3Zqf
	baRqzcWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ9KM-0032xU-1W;
	Thu, 24 Aug 2023 12:20:42 +0000
Received: from mail-db8eur05on20707.outbound.protection.outlook.com ([2a01:111:f400:7e1a::707] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ9KJ-0032wa-0D
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 12:20:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGaU8Ql5J1sPS2eAdGRd/XqbfONpLxt+uXsX/QM3ngGZ0jpR7S30jpFmQtXw023ZGNcoeHW5ntmiLZRHIdjSuh8vd/MDnU64eyL/grJP+PrtsB+zOxsvAGQpgrrn+PBC6BtWUxWY5JUkmvxuTVg1MCdEJlm+/ByJPiBVfvDOGoLpXyKfpgZVa/UNdCQnwpsW3Zdehf7SuxMW0cdUSe+tZBpTJKYPOP1czQwGuamfLjhd2NM4xZCgWJlO/FvgNlqCrObcSz1o9dpC5VpJh3V9GMuYzYio5/+901S2kLrM6xyjhOkPexx8EkAO7NUDfeKGllZSdlADEXWzP+UC5NqJJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RRKibW7s2j/WRZOhHdLZ0Kyu4q9rMpTm4eHKx+yNFGg=;
 b=IyBBMEeGXAGaM3zpl5TsXhLDOnAr/NHCEatJoyUBToY2sd89ugFJ4Mr+I8BgzO3OipLldHGHyvJyG2GTqvVIxrMRhlebLYK9KIucifadtN4YzChOFgQ51B7HDYy0RtsxB2jMmdRjUDcap05WAQmR9O8pN10ssZVQiW9ZurvGoKnb8J1iYjIGiAJ2jZ18/iEOqvnLwYAS2tbtP9IKdTKdb1ZAE1vnTuq8dL3/tbApvjlu0XNAlcxXP2KfAkAJdJNp296dsmGBRN89Qza7HYv3BPR0VuuLZG5dUSbh0YZoAmoiZbh5+UdPG/kXx1ODXGszkj81xvVIp7ugrXS1POviZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRKibW7s2j/WRZOhHdLZ0Kyu4q9rMpTm4eHKx+yNFGg=;
 b=hfiPGgIimWf20B8XeIuO3FT1AUgEhs3wXZ5AejY02TupegWNQUG7NOHdueP+8/7k0rw2vUZNQqe9IyS7RYGVRUiwQDc5W56jPeL5DI+tEVrYEZK3/a0iivUtqsdkCX+aEDdxjQ4wUiSO2HU5rs+SHpm5HoyUIBnd+aPv2UrwsE8=
Received: from DUZPR01CA0057.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::6) by AS8PR07MB7208.eurprd07.prod.outlook.com
 (2603:10a6:20b:239::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 12:04:31 +0000
Received: from DB5EUR02FT014.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:469:cafe::d1) by DUZPR01CA0057.outlook.office365.com
 (2603:10a6:10:469::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27 via Frontend
 Transport; Thu, 24 Aug 2023 12:04:31 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 DB5EUR02FT014.mail.protection.outlook.com (10.13.58.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.17 via Frontend Transport; Thu, 24 Aug 2023 12:04:29 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 24 Aug
 2023 14:04:29 +0200
From: Christian Eggers <ceggers@arri.de>
To: <barebox@lists.infradead.org>
Date: Thu, 24 Aug 2023 14:04:29 +0200
Message-ID: <13350806.uLZWGnKmhe@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <4523384.LvFx2qVVIh@n95hx1g2>
References: <4523384.LvFx2qVVIh@n95hx1g2>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT014:EE_|AS8PR07MB7208:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c160ba0-8289-4dbd-84cf-08dba49a456a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: coT0R75F8vSKA79rib2+U2Fs8dQPU3Bm1HDI/QxsfqpJ9staUQI8rZT+XVjVcEumPGz+f5v+LuaEDLNtnPSlFTQWttZBGW7VjnZ4KP6lihNIP7oXW3wqHh3XW+8mzbQW79qiFTOQJZ4/wmLs1AYKgKISWOfbaH1GduLRknmLswSCecSGbZbl05u36ZeMZZiS0epKY5I2pEuk+8mSaAToaXZ9izrk2wqJMybkXfbWgpprhNQS95w71igN7emybuZ3i/TFahP1e8ldlelYFVeSrDQgVEU7GtQgGubX80nXmLORbT5ZtYRidrnkh7wIN3PJgs7UxZHwSc2kIj+V349wNLUVFXb7krD8j1GHjQ1PU1/13Satnz3B7UkZX7yAxaa7iTcYA5G1q6Ur5l1/hDR/W4QkHzb3/7bLY4C+vb5VlnnpuFW0H53060R9NrPPAYSUFop7od5hwygf6kjGryko7Kads8XBPeWJx1G7rwC2tCz+HfN5mrIsG3Z5RUKUAbOAlcacop6CDZqBc1/8c+iSVU/vZrrkX1pL4nUlyP5TVTFIG06lW803hxAGaC+Iaj/bhJTOCK3cqd8sFPzOAnhGsMTXxeDOeh+Rk8DVWyek6A9oMkCHkxjBP+FEJvvVVy94Q+d3fmmPSCC9Stv0lC1TLoEu3ZLLHg9aED50cHnIjTPQzkNykHoNossj0La3mJEEZvvkYFf/UAZWl0fvK+5QOLCmSqh/qCYaxODcXKUf/45NtBA+fdlvPBNF6lLSwmnI/QwU1jDXzWmEX1al4w1OCBkq6z0LgQRpIKHw3k2CUQlXngXkY9zWMEVOX84NHy6I
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(376002)(346002)(396003)(39860400002)(1800799009)(451199024)(82310400011)(186009)(46966006)(36840700001)(9576002)(12101799020)(40480700001)(8676002)(8936002)(2906002)(6916009)(316002)(41300700001)(5660300002)(70206006)(70586007)(82740400003)(356005)(33716001)(81166007)(36860700001)(47076005)(9686003)(26005)(16526019)(336012)(426003)(86362001)(478600001)(36916002)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 12:04:29.8803
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c160ba0-8289-4dbd-84cf-08dba49a456a
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT014.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR07MB7208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_052039_155051_86671C6B 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: Re: usbotg: otg_set_mode() can only be called once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ok, I should better read the manuals ...

"Once a specific mode has been selected it can't be changed later anymore."

In the past I used two OTG cores, one as device and one as host. So both
OTGs were set to a fixed drmode in the device tree.

No I need to implement both features via a single OTG.  But probably
I can use another criteria for choosing the correct boot methods instead of
trying both.


On Thursday, 24 August 2023, 13:30:46 CEST, Christian Eggers wrote:
> Application:
> 
> 1. Try to boot via fastboot (usb device)
> 2. Try to boot via usb drive (usb host)
> 
> Problem:
> 
> barebox@i.MX6ULL:/ setenv otg.mode=host
> imx-usb 2184000.usb@2184000.of: USB EHCI 1.00
> barebox@i.MX6ULL:/ setenv otg.mode=peripheral
> Cannot set parameter otg.mode: Device or resource busy
> 
> Analysis:
> 
> The otgdev core maintains one `struct otg_mode` per device.  The function
> checks whether the current mode is equal to USB_DR_MODE_OTG.  If not, it
> returns -EBUSY.  There is currently no way to reset the current mode back to
> USB_DR_MODE_OTG after it has been set to peripheral or host mode once.
> 
> 






