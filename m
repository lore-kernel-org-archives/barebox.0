Delivery-date: Thu, 24 Aug 2023 15:52:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAlE-007PXx-9E
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 15:52:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAlB-0001hl-VR
	for lore@pengutronix.de; Thu, 24 Aug 2023 15:52:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MMQgiTH9mmlM+3RMkEcZk9UYfkMiUpTdCr5UraTjCfg=; b=HtAEgE2OcvC1k9QwD/fJUtT4nn
	pcV4PS+nKfEPol9D7eqHgesVA2aspJqin7w5bFfaFpYTs5eT6GiqKTqw6rcw0qA6hD4DGTPacLjGx
	VHQvT1MDDbksapNbTDk7+K/2bWRio+g2XWt5iT8gckK48ZmGaQvFm05dVRl01w8Dr7n3GjTxf3Qat
	lex55dMqDXsj4d7jWaqv5ZbXTflpHj2VeOcCqgJh8FgNGexaLRSE2XTh+q52+HqdFGT185JR1H0H8
	HBU/xhBh50qnd7caS4n2FDqn78k2C0+BojJ/qNgyzrMNgreYJlKhNFfF9dquHiswzGbx+IMr9RtJE
	Eo9o0hWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAjx-003BaI-1n;
	Thu, 24 Aug 2023 13:51:13 +0000
Received: from mail-am7eur03on20725.outbound.protection.outlook.com ([2a01:111:f400:7eaf::725] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAjs-003BZq-2J
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 13:51:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9pxFDBeX5Sk02R/HqZxCYN7EjQxuJHTjSFeBr3OK9kbEx2T3kAjccHZ/K1laNf13F8+JJPRXOh/thh+0UogKEzaKTmsWm0omA3dJUHs+IoXUdj9wCTtRHf8RH6mgx4/yU1bw9idRAYsxigN9NfC862/s21I9pU4S4rRzBPN+tWY56BKp2R1hXNidkQQL7s9H4lwzsreZIvtZqOUH0K9QQK8oWSFx03sbQP9jHSNk08I7GXt9Wqy7DGhkXr9rz93kZgY54gJ8RFiMtV6F+8VMOmKpJYeJxpluV4GYEMOCd5UxFw4GYT1Bvyh/TEvJwOZehV3rJDS7erDzLW9CoQ7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMQgiTH9mmlM+3RMkEcZk9UYfkMiUpTdCr5UraTjCfg=;
 b=gK/ZwVah2qkcM8RPo+q0MAOAP3bishU/9CRDirhLjTpCFYiNWwXP8oDJSwQfycjoRduQGO7fRzD0+phjHQeYLok+rYN47/yr65PL8kcE7EessIxYYgxtvkZQHuQ5cux6Hm/Zz940EK3r5KBGYrsD0YsJIawvxGXILJA36s+Ny5P/gFxIYpxxY9WvGoj2ABgmbxzeajY4dbEfUgIeIp6EETE7s8q1PfP9d6PMdGqsPCxoD07iESOO6aaBmpjS/MjhwZRxTiwlarIgSmnPncSRzl/emj/JFNiSwncjUa5f3YmX6v5xn8hj00j1jWnD7f4mDvYl/bD3A3BnxQL5toEsMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMQgiTH9mmlM+3RMkEcZk9UYfkMiUpTdCr5UraTjCfg=;
 b=dSGAh7YLhIOqMRxZO4fW3rHSIZSD+FXFeo4Qj9TmecxloFpES8vAri8n3BeMNq3LltFhGIua+vo2itin1j0/Upy3PmKDTQri8+OugP3sFnDner9tq5VznQoEmRlYvGqfX5bN60VTJZeybaUD8D0DsnBx+O3+R79vRg9OZXo8qq8=
Received: from AS9PR06CA0319.eurprd06.prod.outlook.com (2603:10a6:20b:45b::12)
 by AM7PR07MB6548.eurprd07.prod.outlook.com (2603:10a6:20b:18e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 13:35:34 +0000
Received: from AM0EUR02FT016.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:45b:cafe::ef) by AS9PR06CA0319.outlook.office365.com
 (2603:10a6:20b:45b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27 via Frontend
 Transport; Thu, 24 Aug 2023 13:35:34 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 AM0EUR02FT016.mail.protection.outlook.com (10.13.54.178) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.17 via Frontend Transport; Thu, 24 Aug 2023 13:35:34 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 24 Aug
 2023 15:35:33 +0200
From: Christian Eggers <ceggers@arri.de>
To: <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Aug 2023 15:35:33 +0200
Message-ID: <5731472.DvuYhMxLoT@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <a86f7a3c-202b-7348-4766-3c0579eed72f@pengutronix.de>
References: <4523384.LvFx2qVVIh@n95hx1g2> <13350806.uLZWGnKmhe@n95hx1g2> <a86f7a3c-202b-7348-4766-3c0579eed72f@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT016:EE_|AM7PR07MB6548:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b7cc946-b62b-4541-6127-08dba4a6fe8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2FIvSdaKQg1u3wCqXbW9zYloAynbDBawXvFjcqPsSnQwjoO+nIT7uXScSuqVcJJMHQD0k2NggqOIinGWJiUC7usutGWOUZCt4cumsdtl+J+F9Y60DzobXOAgNAnJoLLdNrw1MPIONb9PZ6qJJVxh+BXZtLQYS9uLDREa4e8ajssq0F6vksrndSjw/X5fauA3WXDwq38ZZnV6EKqiS8LpO/TJv91qgEFyzgoJwZfLfYcULcFdjZbRsw6LEZJqKd9LKuvRVaLlqADb9qLGqCCfy+W2npZPy4UQtK/30Jckov6QBLuSoQwDuosISHNCvEGDkx4yeoJQc+pG0wzG27QM8A5Enisl7fvNqH22DcrJXjXdySI4QUgr8wzo0FEhdniq1Jxo7h4d/VE5FiC5Hjx3cyTMk2ybwD3myK0D/AzDu2QhmwALZKYbCsTFTU7b46TLPi0ysDlCdhnAkC+eSI8+1hZBMr+GFs3lov/6UJGUU4B04hbwey6q8cwJwLFL4O4Q/QMjtZDxgZLz8y5p0AZkHVK/+ubLnCL7r7ekbIHpiQkWrlD2lLadHwolVWcQI//3jabkS5cqTlOIcGK/asJcQJ4Qse1Ol29RfCrJKbw1G8VU7iE2BVnO40Y5quKHR9SPomA09Mi+AFBYy16W+Vix7jzJsk4zn278T5LONEZplKM9FxDVoPsl842xI2WPDoSra2h5Ba31k2jKYB24nbI0hEeDHSIXbtd0jwsfRVatrqDR3Nte6lrTcUsj+2hsyJ4NisDC52+E2BcF170XCBj/YKzKVN9XuZj8ILRnTFWFYgb9AbG1+RQ09/JK+PXTnzh0
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(39850400004)(346002)(136003)(376002)(186009)(1800799009)(451199024)(82310400011)(36840700001)(46966006)(33716001)(70586007)(70206006)(316002)(81166007)(478600001)(110136005)(40480700001)(16526019)(26005)(82740400003)(41300700001)(53546011)(36916002)(86362001)(9686003)(12101799020)(356005)(2906002)(9576002)(8936002)(8676002)(83380400001)(5660300002)(47076005)(426003)(336012)(36860700001)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 13:35:34.4858
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b7cc946-b62b-4541-6127-08dba4a6fe8e
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT016.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR07MB6548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_065108_762858_99F96340 
X-CRM114-Status: GOOD (  19.67  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: usbotg: otg_set_mode() can only be called once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Thursday, 24 August 2023, 15:23:17 CEST, Ahmad Fatoum wrote:
> Hello Christian,
> 
> On 24.08.23 14:04, Christian Eggers wrote:
> > ok, I should better read the manuals ...
> > 
> > "Once a specific mode has been selected it can't be changed later anymore."
> > 
> > In the past I used two OTG cores, one as device and one as host. So both
> > OTGs were set to a fixed drmode in the device tree.
> > 
> > No I need to implement both features via a single OTG.  But probably
> > I can use another criteria for choosing the correct boot methods instead of
> > trying both.
> 
> Obvious choices is checking [ "$bootsource" = serial ] or checking if device
> is gadget through ID pin or Type C controller.
> 
> Is that possible in your case?
I currently check for $bootsource which is sufficient. But using the USB-C CC
lines (that's why I am working on the ADC driver) sounds event better.  Currently
I use the ADC only for checking whether a device is connected (I am allowed to 
enable VBUS), but not for determining whether a host is connected (activate USB gadget).

regards,
Christian


> 
> Cheers,
> Ahmad
> 
> > 
> > 
> > On Thursday, 24 August 2023, 13:30:46 CEST, Christian Eggers wrote:
> >> Application:
> >>
> >> 1. Try to boot via fastboot (usb device)
> >> 2. Try to boot via usb drive (usb host)
> >>
> >> Problem:
> >>
> >> barebox@i.MX6ULL:/ setenv otg.mode=host
> >> imx-usb 2184000.usb@2184000.of: USB EHCI 1.00
> >> barebox@i.MX6ULL:/ setenv otg.mode=peripheral
> >> Cannot set parameter otg.mode: Device or resource busy
> >>
> >> Analysis:
> >>
> >> The otgdev core maintains one `struct otg_mode` per device.  The function
> >> checks whether the current mode is equal to USB_DR_MODE_OTG.  If not, it
> >> returns -EBUSY.  There is currently no way to reset the current mode back to
> >> USB_DR_MODE_OTG after it has been set to peripheral or host mode once.
> >>
> >>
> > 
> > 
> > 
> > 
> > 
> > 
> 
> 






