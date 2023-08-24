Delivery-date: Thu, 24 Aug 2023 13:47:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZ8oa-007J0a-QY
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 13:47:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZ8oY-0001hs-NX
	for lore@pengutronix.de; Thu, 24 Aug 2023 13:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8gNFMmVv4ST7pIXa2+H1WOXUxD5UhgPyoETnqjSLvfc=; b=SO/3BvFEEgppZV
	B9DC1EmnqNHykXe2yJ+VK+iB+GHRqVnK+tTx3l0Ew4VGKDrd7oi+XpuTg5bVgT9Z89n4Si5Hu61nc
	LHfhRajWIvjsl9yMhoBLXnEuX7NHQHAgfBu2tcYjc0IA+RoOmzhy85anaUT+FpbKKYGE3+0ltAIdb
	LDNOIFBzlt9HsctK6htfkWzwDPNYeyMGlIGSbjQdd9VHcHmo1v5J0g57273g9lJkHcHk+mFtgcgde
	a6sYbxM+dSwxRJ+mWHrPyKVoBpHYqv+A9mVuZ4ZHfag+ZVMCU4V6ND5liucMPCQK1wTaRP+YGgS0N
	NZ0q8JZMitwMO753O3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ8n8-00307X-0c;
	Thu, 24 Aug 2023 11:46:22 +0000
Received: from mail-dbaeur03on20723.outbound.protection.outlook.com ([2a01:111:f400:fe1a::723] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ8n4-00306H-1N
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 11:46:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eq+nof0p+/oXnJuSJ/gxCr5VLhfRpWRN7uJojU4+i+9Zqq1ylUVaOO5RAoPTGOl/CPHvMSP7v3JOUZCGoHajeRYFd8lU00khn6rNMfSZbeZFgZtN2/THNwrsA+zQoQHaVU7P2m11F8v7zFZVmeypn7gkTT4AeuM17aV6hwLmNFd2oXEwunY0v1q3uQoUim5wGH6tchRrBcpXStBCqwry8+YR9Svv6baZTPQjbtQED4Utm8MES/4luX0vHBfEOoqF9on9fQXX2cFt/mSC4bItm4oD83OZ4RFGLoVcjJDSTDf5cS7X5bhKegql1KGllQLlTGEiM1rGrPHea0i9oh1Xjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8gNFMmVv4ST7pIXa2+H1WOXUxD5UhgPyoETnqjSLvfc=;
 b=CTI++OfcGna7Giq7QjAZG2ltloMvnas/tdPuyIFzmPXkePJiP9U2U5XCYikRIwL2F0N1p9jbvc8gvvR7Fb6ZeT026FEf6xUxFhacvidwLemWt0gAeGslrRiK0mSBqpmSjNZm4r95OArxgvc7BZQjJQGwGzqvYL3YvYVFUrwDAXaK+uePp6uXBLdOqtJYgZ1/VPngJ6OpojkUFw2toM0fI22bzmSi5DEHjYVByN3odPY3ioM1mfadVHvyyJYi+UCjz5iDd9AAC3TfWjtrUYGUzBIlMk3gV9qH7HpTWTMI0P/JqaHHjfJUPv6oWdYW0crkwH1TOux89JAjCO4VDsJ+Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gNFMmVv4ST7pIXa2+H1WOXUxD5UhgPyoETnqjSLvfc=;
 b=Sc9281DlEPZAGE547820ZaDHqTETNilvoR7XhMWnBa+jzepTPOv6dAzJrhC8ohYlWRF7ZMYEdJPF3QeD8KuR6uLM5mZXwhy6VWXU4Lrv0TnLnye84RJQ2gv10JH8LTtC41XQRltIJ4xb3CCEEiR63Y2fGqDMg/1kmnFAZKqRy8o=
Received: from FR0P281CA0267.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:b5::13)
 by PAXPR07MB7870.eurprd07.prod.outlook.com (2603:10a6:102:15d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:30:47 +0000
Received: from VI1EUR02FT013.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:d10:b5:cafe::1b) by FR0P281CA0267.outlook.office365.com
 (2603:10a6:d10:b5::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6723.17 via Frontend
 Transport; Thu, 24 Aug 2023 11:30:47 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 VI1EUR02FT013.mail.protection.outlook.com (10.13.61.187) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.17 via Frontend Transport; Thu, 24 Aug 2023 11:30:47 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 24 Aug
 2023 13:30:46 +0200
From: Christian Eggers <ceggers@arri.de>
To: <barebox@lists.infradead.org>
Date: Thu, 24 Aug 2023 13:30:46 +0200
Message-ID: <4523384.LvFx2qVVIh@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT013:EE_|PAXPR07MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: e81081f8-0d60-461f-c821-08dba4958fb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JjBpwSY1tFF5Z5ZOqS4o8HobcjylUPwV4L9nVsjzNdvyekZdGpUImCyFzY0+uwlfuwcqiueypRjEpQNpu81Ugkv1B+o8SHpYiy0ngVKw1+qyidPUWpKwIwrakBPcLyVpdknHc2jq2qWmKsdGYCVtuo5VYoBt5uSp85a7gea7vkQc/aa+Df3HRavTIY4fo4OVUWLGcvxvSN35zF3EH3racOw4MxpaNyP8zthuuEQFaKF47NieeVeaOuX7YQi8Jvd8E9jOKQMTmmD3zsDXaF+Wv4qMi9W9C2IT7fe0/usXY6djAR+9424e99M/kOpiK1pdsMDsXWk91mxlOLXjdp/j9TuFy3ITFjYxBWbwrgO983pEIJJJtGXp9zt4zTuE2hccPRqmS37qAmZCbKgVLZVu+TSAa5Mf5M0zew3uuQR/E0IuvS8PimXaHUrmTxsyV/k8nHES2LW1K1Noog2u7hognwa3t+lW2eHpHfqHit2/ac2Sh1CdSHvWOxPW/0eRUhv1tz+HBU8CT2tsrBlZqYw3LT1wprp2b6+YQXLFWc3P103/x3OdvAbHtAH+/p9XosxTvEW/QzvbZEAItJEXMAiboJaPAAt7kSjNxrbYctSBom2uJGYlO2tnMxcqixgKXPmidGQpdN8s54fcfotp+Hkv8G+vOY8tXnEUVaQwCMuXig142iuORBSJZW+eksV5wuKLpjA5zKZCNvnk8o1RkrGPd9a8qLjdxU1KVYhB5n5gAcAj3QZtv9k+XN0Ayq7PwDfiwVV5+aQJfRnhl8W6OPRerjBlbaS8dfCmZsTJK/O2GnaB6zgIYLoNuXt7TL4dG7lM20iIocslzdu9JhQTAZcaenc7Omoq5g8jnw61yncV4i4=
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(346002)(39860400002)(396003)(376002)(82310400011)(1800799009)(451199024)(186009)(46966006)(36840700001)(8936002)(36916002)(478600001)(4744005)(336012)(426003)(26005)(2906002)(16526019)(6916009)(33716001)(316002)(70206006)(41300700001)(70586007)(5660300002)(9576002)(8676002)(9686003)(40480700001)(47076005)(36860700001)(86362001)(356005)(82740400003)(81166007)(12101799020)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 11:30:47.0010
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e81081f8-0d60-461f-c821-08dba4958fb6
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT013.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR07MB7870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_044618_465499_706B9FF1 
X-CRM114-Status: UNSURE (   3.78  )
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
Subject: usbotg: otg_set_mode() can only be called once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Application:

1. Try to boot via fastboot (usb device)
2. Try to boot via usb drive (usb host)

Problem:

barebox@i.MX6ULL:/ setenv otg.mode=host
imx-usb 2184000.usb@2184000.of: USB EHCI 1.00
barebox@i.MX6ULL:/ setenv otg.mode=peripheral
Cannot set parameter otg.mode: Device or resource busy

Analysis:

The otgdev core maintains one `struct otg_mode` per device.  The function
checks whether the current mode is equal to USB_DR_MODE_OTG.  If not, it
returns -EBUSY.  There is currently no way to reset the current mode back to
USB_DR_MODE_OTG after it has been set to peripheral or host mode once.






