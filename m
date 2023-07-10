Delivery-date: Mon, 10 Jul 2023 19:26:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIueR-0060fl-Lb
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:26:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIueO-0001fh-Gx
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:26:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nhe1vc6PG1FfPpOKEeBFIRPT3Zos0LB9kcO9zzGx8ck=; b=JBTvGydJnvZBrXnnZaWS+75ZSQ
	9o6sUXPpiq4Bfl1Thww4wi7ZtO1+MAv/Kkiet8tIHjU7r+DcyfgCOlMHblGi9lX4RWTcrIbZccBqH
	sosDHJwcjQbMo5XIt4EoO0VkqWAZpUBLaCNjrULGvD0e8mkejLWZUujUaQZrS3rpWiSOiCXuWESO6
	DBxKDlSrlH6gH+09M7A4LGM7yIRtbZQl0wFhqhatwpqZgPLWP4Y0P8c2WMpkp7vuQVWdAmQ85fv8k
	maVh3gZMSu3j5WyauEsS5QyicKO07nWpfBTPsG2M8CBsuoBhFQDFOVENAOJVwzTqvlSlJtayH1PDp
	cmuu/yjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucG-00CL6B-1J;
	Mon, 10 Jul 2023 17:24:04 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucA-00CL2W-1b
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:01 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 4F97E3496C2
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009837;
	bh=Sd0ae3YDdTA+i8lRBa0hJZrWAAFQfhD02sgMJ1GTkXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=56h3EDvJTgHUbNTvvpzPz8PhBK0zfD8umqQJDoiXKPHP10XaL02QinuhjWjuCjZ6z
	 cTP8TPS9r7nVOlLIoggiYV75qeLwGuHcWmfBDKYH6NUJl/U37isyQHyViM6ZgyFMTF
	 i5cT5PIWMXwwpaHV49zqPyQNIwq3G+wXz4xKhkX4=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 18CB434968A for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:57 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 436BC349504 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:55 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:53 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:53 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3eab.428cd.2>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cz3iDdMm8QMzkO6ChF/2KnUAIIOIjzqFAeC7mu0ictEvK4rZWf5+15F3W2MYG+Fhl4RUOJVkVLdrHJLt0PZLbvTdVEP3La7MRU/De/LRR7pNdneba9JSugq7fwjuZkwx2grEHsJg5mpmSXazVkUAMPCx3uytnnlzm8BFSPORTtJN61eNK9jVhXRrN/VCbkGRhREj4Zpze6f2on9SQarVo7CdYCnRa2yIFGDlLXI+i0HCJ98nZVmb9kvxZ2PE/R8tuROqKMeqW6nISv07EZOKD/IsBphOYgKBBV5bjIRsaiWzw1fzimrp9Ufbn5TcB8Hk4CDpEc/WEpTmdBYJvte8dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nhe1vc6PG1FfPpOKEeBFIRPT3Zos0LB9kcO9zzGx8ck=;
 b=KhHgXonXymiHbzhuqXsEYtTMGxAMAI6VFMcwVXn//rll/G5w8TFbULsL9Ts7PF0+kebI2AF1rHZFnbAP4q3+UkXLPp/BGC24D+P6b6nqr9FxUqIYSmZTz9XAmrgQxbDxzW+kjCk1VXsOlLut9tZPCjC7rTZ0/a3ZidTB9BK9KQrN7tXBbWU4lWX5VknI8g215fgtIqWQdmhm7zAUqztMzfsSWJ7CCnxiljn5V6DcGYHc906feeMC9tFygfAQ+bopVpoSUSTCawe11kN/nf8/ErTu2/OMtyP0WhLBiXGc/wUoJLN7ZlyfOzIgXCGhovopToHHVX8XLkpOrhx2ZONQIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhe1vc6PG1FfPpOKEeBFIRPT3Zos0LB9kcO9zzGx8ck=;
 b=n5N010CGEPYdrwpbDbhf4HlOxO83YrP0RXw2F6w4apacAS/lp6amKG5xou6r0eWjfy/2ux1ExejhiGzTq/mQ230HJbT++y8n9YjOki+hjH03BtsMr7g5gVw0LAKt4eJXHtvyHm/Vhw4NsuDUHpaU58CDQf3JAezp7hkHg4OX5psWuE87BF4u76b82uOdhHQEutC0/rvPfHSxqt5AcDrQAbEfYDiVs24XToOV0kuU2uDGclhQFjqsvkgHulIaRwyer4bjXoy3r2xqoaLvdS52tMCxRTEDN2N2f3uSL65QwFxuwNqM23YbMf1aenw7jnfjBtyJy//qnAaR5yZzDfkA7w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:30 +0200
Message-ID: <20230710172335.26701-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230710172335.26701-1-jmaselbas@kalray.eu>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LNXP265CA0065.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::29) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|PAZP264MB2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 10acc297-8274-458a-23d8-08db816a6f22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c6waKOoUYXyuOsxvLEv8/dXNTgz0/LvG+GarCCdquNeoB6ln/8TtbLaIzPbGoGq+hCt176X089eOXBwX1YrCjuTpFM8oymzVKUqD0JIak83W9bDOb6RfJB2aaZ2zXXV33ThWuXJSX43P6VSLw7GGK38Qy3evvMrFS45dye01XqCaBNukRAynw2EV8r/xxfXEe7cUKgubF7/Qyxe0AbjvTVwyIV5aKKGxNk1GgBONfAI6xVJ+hd/IRW70398YGuubeEbS8LpjIpaYOqv0xBaabEi/Yu3diIWYEwlYSlZp7hYAbGw8j4qXrylewS6LO+Wh8zY39GLSm8JDY2mTFHkfOI/78cOYh/QVo4GvuRiU2kW2nXyhJsiWrhFrveQBxJ7VIkzzxHDzFiey+rxm19lYIdPKZaQzaTlPwetQIVxM2kEXBtIf/7vK5ewb6kKdkuMo0PRodH3W9h1RvimPnC/mFya3CGZgKoX18gh32P7PIaSnhsDZCgq5gpoMpniM0ojF+JaMv3UIbQ1+JdfQU09/vEzMZQ84MCmX7BOYi5mIfzCpKBX9KEKbXRTxmwc8wimY3gruKaNthjy8SpitDAX/wTZ4JNo7M0M3amPolau6F6HIn7haRMc83i2taHOIsbxG
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(30864003)(6916009)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 0C50/gM3A6GdhLWGWLQyQVlrXu5ZDJeP1VwP82GAWfs3PvvX5ciHDuG86kQFxQVYQI9e645yxAyfIW+TXhb+EZN4j4ybO6+BJbTMcs+aTTOA+6F5IFbKOY4/jLHClkBwWlsJrhV6jpe9dDXvKHM5m6Xr2tBnd5N7gd0bgoSnfm6qtNKpeKn0P501s+e8JqEjifF/kRdCu5vjreWt4QtepfAa2cLR++yvGxIkHfpVD/vVMYu1f8YqUY/tmPi0eN86OekGLQFsGtXKlZeifMHp5Xevq8bO6gRLE/4d3gdQYDrthqB1ZRY4/XjhETNCXCcqEDu9+x/cdPAijo2vroi0RZkMLbhlqeVMCb63fF6xPJW8HYFVSNEB/yj//kJWYd8Ep8MuIX6RhQ0cNoB6Ohm9SIz7UPfUoCioyAi8q94o7FJlYcRncsKZyjMKOoBlnE/NitzWMWl4iXXIS3dbOzz9wGqAbB6FFQXvQtFQGlm8vyZTpZz3e/FGeWHZm/Jo7mroanIEqw6FhNhNQI6hxLST7Rzv4qhBFUrNbZkIl6DMXjTn84fRNtppIzvNCllUAgzSy5cKpKi3TlYyNyu7hI6f5Pz8Xy+uafOuuCaTyABVfTt7HqE/aSQkEtf0vIzMV+gULHfuX2ZQP1KEqYZp6Wbt9Fk0om+BuwnKy4TKo1DlOTDWu14YMoXLC+TSDcMVGkaMUrDzHRZuNAC5Rq02vAMz7/a85C6ZTwqxM/6YA9m3CPJAIJVRBBcJ5aQ9pEwceXg2QHLFGYFPhM7prTyRk3XFS/CSZVUoJPKqZSWNxZAK6AmIQ8ESjiQ6laqebO8xuaaeQ3Ra8XBPM1QtoYYMeX+LIM6WJqnqI6b/4o1UjJq5e/xPaIMq5VxL2WyiihSEBxWLv1Y0vOxeTP8BIs8m+PDjk/ua2Zu8nXF3t0e2Kk3uNXrxmVM5FchqwnPuYQ7oBv1G
 8lRNbE92nqhHmvaZQ7ChPirbFSlP3gqqiH26RqE0CDr47/MhEZwchSCAM0MZiIeh8KJOjHndMXzXfPac16n6UCdEHe3TO7KevV2viMj0hUiKXDbDjDKHA8yOdpZg+2TvBHA3bbtkdUVmWh1+mfPk32wx+AnKWPRt3R4BwcGVxUvjdWhjKv8XnDOLfNU4iLqK6NXP+6kzi9Ph5lQ2fzwg5qT4PXMlDXTKW+mQ39eZP60Y7ZQ4ttDe/Gf9qM3AH4Ik5M4wiE21EUZ6VPfWcXszql5qO05o7zzk1DHwi2Uf5XZ8J0GElLry5Z3i12uX5oQbNGyDKDlIGpSoiIPzKnXo3ZAw8pACobW8l4zh6rGwMOX+H5gtc6q5JGvOfQFIj2kwU0vG7xNKJTljTxa5ZnR3zvi9YfVMotFtZK+JD+TiXQE96j3be9Vo13jTQfKA/yBiduRbnastQ4athk8c26YfnjZ4I4B8wgUArIpCeCd82uUTuXrRmbBccZPaJ8C9JCOLF3KEVT3zyGZs4Ak+XPczKLxw9noLBBIp9BjXQGJ+YEZIfNE0LmfvlL2mkkqJFS3llic0O+7RbAfea9AxPT6WpSteMKmg3W6oOjTHfzC1+mg=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 10acc297-8274-458a-23d8-08db816a6f22
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:53.4780
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BiV7LR0w+RzDmCAyfAZwCAozHxnyPqNl3UFpFoJ+jUst6wTANEBq2Jkzdwmqp7Ks
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102358_935146_BEFCCB97 
X-CRM114-Status: GOOD (  19.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/8] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver initially started as a modification of dove-sdhci driver,
it has been heavily reworked to be closer to rockchip-dwcmshc-sdhci by
using more common sdhci code.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/Kconfig         |   8 +
 drivers/mci/Makefile        |   1 +
 drivers/mci/dwcmshc-sdhci.c | 520 ++++++++++++++++++++++++++++++++++++
 3 files changed, 529 insertions(+)
 create mode 100644 drivers/mci/dwcmshc-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index bbdca67e9d..1fde0c8ffe 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -58,6 +58,14 @@ config MCI_MMC_GPP_PARTITIONS
 
 comment "--- MCI host drivers ---"
 
+config MCI_DWC_MSHC
+	bool "Synopsys DesignWare Cores MSHC"
+	depends on HAS_DMA
+	select MCI_SDHCI
+	help
+	  This selects support for the Synopsys DesignWare Mobile Storage Host Controller
+	  block (DWC_mshc), this provides host support for SD/eMMC interfaces, in SDMA mode.
+
 config MCI_DW
 	bool "Synopsys DesignWare Memory Card Interface"
 	depends on HAS_DMA
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index e3dc5ad8ae..35d11fb439 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
+obj-$(CONFIG_MCI_DWC_MSHC)	+= dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
 obj-pbl-$(CONFIG_MCI_SDHCI)	+= sdhci.o
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
new file mode 100644
index 0000000000..1e0af06f50
--- /dev/null
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -0,0 +1,520 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2019 Yann Sionneau, Kalray Inc.
+// SPDX-FileCopyrightText: 2023 Jules Maselbas, Kalray Inc.
+
+#include <clock.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <dma.h>
+#include <malloc.h>
+#include <mci.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+
+#include "sdhci.h"
+
+#define CARD_STATUS_MASK (0x1e00)
+#define CARD_STATUS_TRAN (4 << 9)
+static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				struct mci_data *data);
+
+struct dwcmshc_host {
+	struct mci_host mci;
+	struct sdhci sdhci;
+	unsigned int in_abort_sequence;
+};
+
+#define priv_from_mci_host(h) container_of(h, struct dwcmshc_host, mci)
+
+static inline int dwcmshc_sdma_supported(struct dwcmshc_host *host)
+{
+	return host->sdhci.caps & SDHCI_CAN_DO_SDMA;
+}
+
+static inline void dwcmshc_write_dma_addr(struct dwcmshc_host *host, u64 addr)
+{
+	sdhci_write32(&host->sdhci, SDHCI_ADMA_ADDRESS, addr & 0xffffffff);
+	sdhci_write32(&host->sdhci, SDHCI_ADMA_ADDRESS_HI, addr >> 32);
+}
+
+static inline u64 dwcmshc_read_dma_addr(struct dwcmshc_host *host)
+{
+	u64 addrh, addrl;
+
+	addrl = sdhci_read32(&host->sdhci, SDHCI_ADMA_ADDRESS);
+	addrh = sdhci_read32(&host->sdhci, SDHCI_ADMA_ADDRESS_HI);
+
+	return (addrh << 32) | addrl;
+}
+
+static int dwcmshc_wait_for_done(struct dwcmshc_host *host, u16 mask)
+{
+	u16 status;
+	u64 start;
+	u64 addr;
+
+	start = get_time_ns();
+	while (1) {
+		status = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
+		if (status & SDHCI_INT_ERROR) {
+			dev_err(host->mci.hw_dev,
+				"SDHCI_INT_ERROR, normal int status: %04x\n",
+				status);
+			return -EPERM;
+		}
+		/* this special quirk is necessary, as the dma
+		 * engine stops on dma boundary and will only
+		 * restart after acknowledging it this way.
+		 */
+		if (status & SDHCI_INT_DMA) {
+			sdhci_write16(&host->sdhci, SDHCI_INT_NORMAL_STATUS, SDHCI_INT_DMA);
+			addr = dwcmshc_read_dma_addr(host);
+			dwcmshc_write_dma_addr(host, addr);
+		}
+		if (status & mask)
+			break;
+		if (is_timeout(start, 10000 * MSECOND)) {
+			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for done\n");
+			return -ETIMEDOUT;
+		}
+	}
+	return 0;
+}
+
+static int dwcmshc_wait_for_status_mask(struct dwcmshc_host *host,
+					struct mci_cmd *cmd, u16 mask)
+{
+	int ret;
+
+	ret = dwcmshc_wait_for_done(host, mask);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "error on command %d\n", cmd->cmdidx);
+		dev_err(host->mci.hw_dev, "state = %04x %04x interrupt = %04x %04x\n",
+			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE),
+			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE1),
+			sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS),
+			sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
+	}
+	sdhci_write16(&host->sdhci, SDHCI_INT_NORMAL_STATUS, mask);
+	return ret;
+}
+
+static void sdhci_rx_pio(struct sdhci *sdhci, struct mci_data *data,
+			 unsigned int block)
+{
+	u32 *buf = (u32 *)data->dest;
+	int i;
+
+	buf += block * data->blocksize / sizeof(u32);
+
+	for (i = 0; i < data->blocksize / sizeof(u32); i++)
+		buf[i] = sdhci_read32(sdhci, SDHCI_BUFFER);
+}
+
+static void sdhci_tx_pio(struct sdhci *sdhci, struct mci_data *data,
+			 unsigned int block)
+{
+	const u32 *buf = (const u32 *)data->src;
+	int i;
+
+	buf += block * data->blocksize / sizeof(u32);
+
+	for (i = 0; i < data->blocksize / sizeof(u32); i++)
+		sdhci_write32(sdhci, SDHCI_BUFFER, buf[i]);
+}
+
+static int dwcmshc_pio_xfer(struct dwcmshc_host *host, struct mci_cmd *cmd,
+			    struct mci_data *data)
+{
+	unsigned int i;
+	u16 sts;
+	int ret;
+
+	if (data->flags & MMC_DATA_READ)
+		sts = SDHCI_INT_DATA_AVAIL;
+	else
+		sts = SDHCI_INT_SPACE_AVAIL;
+
+	for (i = 0; i < data->blocks; i++) {
+		ret = dwcmshc_wait_for_status_mask(host, cmd, sts);
+		if (ret)
+			return ret;
+
+		if (data->flags & MMC_DATA_READ)
+			sdhci_rx_pio(&host->sdhci, data, i);
+		else
+			sdhci_tx_pio(&host->sdhci, data, i);
+	}
+
+	return 0;
+}
+
+static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
+			  unsigned int response)
+{
+	p->cmdidx = cmd;
+	p->cmdarg = arg;
+	p->resp_type = response;
+}
+
+static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
+{
+	int ret = 0;
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	struct mci_cmd cmd;
+	u64 start;
+
+	host->in_abort_sequence = 1;
+
+	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at first cmd12!\n");
+		goto out;
+	}
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
+		      MMC_RSP_R1);
+	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at first cmd13!\n");
+		goto out;
+	}
+
+	if ((cmd.response[0] & CARD_STATUS_MASK) == CARD_STATUS_TRAN)
+		goto out; /* All is OK! */
+
+	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at second cmd12!\n");
+		goto out;
+	}
+
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
+		      MMC_RSP_R1);
+	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at second cmd13!\n");
+		goto out;
+	}
+
+	if ((cmd.response[0] & CARD_STATUS_MASK) == CARD_STATUS_TRAN) {
+		goto out; /* All is OK! */
+	} else {
+		dev_err(host->mci.hw_dev,
+			"Abort sequence failed to put card in TRAN state!\n");
+		ret = 1;
+		goto out;
+	}
+
+out:
+	/* Perform SW reset if in abort sequence */
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET,
+		       SDHCI_RESET_DATA | SDHCI_RESET_CMD);
+	start = get_time_ns();
+	while (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) != 0) {
+		if (is_timeout(start, 50 * MSECOND)) {
+			dev_err(host->mci.hw_dev,
+				"SDHCI data reset timeout\n");
+			break;
+		}
+	}
+	host->in_abort_sequence = 0;
+	return ret;
+}
+
+static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				struct mci_data *data)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	dma_addr_t dma = SDHCI_NO_DMA;
+	u32 mask, command, xfer;
+	int ret;
+
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION
+	    && host->in_abort_sequence == 0)
+		return do_abort_sequence(mci, cmd);
+
+	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
+	mask = SDHCI_CMD_INHIBIT_CMD;
+	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	/* Wait for bus idle */
+	ret = wait_on_timeout(50 * MSECOND,
+			      !(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
+	if (ret) {
+		dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
+		return -ETIMEDOUT;
+	}
+
+	if (data)
+		dev_dbg(host->mci.hw_dev, "cmd %d arg %d bcnt %d bsize %d\n",
+			cmd->cmdidx, cmd->cmdarg, data->blocks, data->blocksize);
+	else
+		dev_dbg(host->mci.hw_dev, "cmd %d arg %d\n", cmd->cmdidx, cmd->cmdarg);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+
+	/* setup transfer data */
+	if (data) {
+		unsigned char hostctrl1;
+		hostctrl1 = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+		hostctrl1 &= ~SDHCI_CTRL_DMA_MASK; /* SDMA */
+		sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, hostctrl1);
+
+		sdhci_setup_data_dma(&host->sdhci, data, &dma);
+
+		if (dwcmshc_sdma_supported(host))
+			dwcmshc_write_dma_addr(host, dma);
+	}
+
+	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				dma == SDHCI_NO_DMA ? false : true,
+				&command, &xfer);
+
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
+
+	ret = dwcmshc_wait_for_status_mask(host, cmd, SDHCI_INT_CMD_COMPLETE);
+	if (ret)
+		goto error;
+
+	sdhci_read_response(&host->sdhci, cmd);
+
+	if (data) {
+		if (dma_mapping_error(mci->hw_dev, dma)) {
+			ret = dwcmshc_pio_xfer(host, cmd, data);
+			if (ret) {
+				dev_err(host->mci.hw_dev, "error during PIO xfer\n");
+				goto error;
+			}
+		}
+		ret = dwcmshc_wait_for_status_mask(host, cmd,
+						SDHCI_INT_XFER_COMPLETE);
+		if (ret)
+			goto error;
+	}
+
+error:
+	if (data && !dma_mapping_error(mci->hw_dev, dma)) {
+		u32 len = data->blocks * data->blocksize;
+		if (data->flags & MMC_DATA_READ)
+			dma_unmap_single(mci->hw_dev, dma, len, DMA_FROM_DEVICE);
+		else
+			dma_unmap_single(mci->hw_dev, dma, len, DMA_TO_DEVICE);
+	}
+
+	if (ret) {
+		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
+		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+static u16 dwcmshc_get_clock_divider(struct dwcmshc_host *host, u32 reqclk)
+{
+	u16 div;
+
+	for (div = 1; div < SDHCI_MAX_DIV_SPEC_300; div += 2)
+		if ((host->sdhci.max_clk / div) <= reqclk)
+			break;
+	div /= 2;
+
+	return div;
+}
+
+static void dwcmshc_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u16 val;
+
+	debug("%s: clock = %u, bus-width = %d, timing = %02x\n", __func__,
+	      ios->clock, ios->bus_width, ios->timing);
+
+	/* stop clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+
+	if (!ios->clock)
+		return;
+
+	/* enable bus power */
+	val = SDHCI_BUS_VOLTAGE_330;
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL, val | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	/* set bus width */
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+	if (ios->clock > 26000000)
+		val |= SDHCI_CTRL_HISPD;
+	else
+		val &= ~SDHCI_CTRL_HISPD;
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
+
+	/* set bus clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+	val = dwcmshc_get_clock_divider(host, ios->clock);
+	val = SDHCI_CLOCK_INT_EN | SDHCI_FREQ_SEL(val) | ((val & 0x300) >> 2);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
+
+	/* wait for internal clock stable */
+	if (wait_on_timeout(20 * MSECOND,
+			sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL)
+			& SDHCI_CLOCK_INT_STABLE)) {
+		dev_err(host->mci.hw_dev, "SDHCI clock stable timeout\n");
+		return;
+	}
+
+	/* enable bus clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_CLOCK_CARD_EN);
+}
+
+static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u16 ctrl2;
+
+	/* reset mshci controller */
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
+
+	/* wait for reset completion */
+	if (wait_on_timeout(100 * MSECOND,
+			    (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET)
+			     & SDHCI_RESET_ALL) == 0)) {
+		dev_err(dev, "SDHCI reset timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	sdhci_write16(&host->sdhci, SDHCI_INT_ERROR_ENABLE, ~0);
+	sdhci_write16(&host->sdhci, SDHCI_INT_ENABLE, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
+
+	/* Enable host version4 */
+	ctrl2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
+	ctrl2 |= SDHCI_CTRL_V4_MODE;
+	sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl2);
+
+	/* Enable 64-bit addressing */
+	ctrl2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
+	ctrl2 |= SDHCI_CTRL_64BIT_ADDR;
+	sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl2);
+
+	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
+		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
+
+	return 0;
+}
+
+static int dwcmshc_detect(struct device *dev)
+{
+	struct dwcmshc_host *host = dev->priv;
+
+	return mci_detect_card(&host->mci);
+}
+
+static int dwcmshc_mci_card_present(struct mci_host *mci)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u32 pstate;
+
+	pstate = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
+	return pstate & SDHCI_CARD_PRESENT;
+}
+
+static void dwcmshc_set_dma_mask(struct device *dev)
+{
+	struct dwcmshc_host *host = dev->priv;
+
+	if (host->sdhci.caps & SDHCI_CAN_64BIT_V4)
+		dma_set_mask(dev, DMA_BIT_MASK(64));
+	else
+		dma_set_mask(dev, DMA_BIT_MASK(32));
+}
+
+static int dwcmshc_probe(struct device *dev)
+{
+	struct dwcmshc_host *host;
+	struct resource *iores;
+	struct mci_host *mci;
+	struct clk *clk;
+	int ret;
+
+	host = xzalloc(sizeof(*host));
+	mci = &host->mci;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto err_mem_req;
+	}
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		goto err_clk_get;
+	}
+	clk_enable(clk);
+
+	host->sdhci.base = IOMEM(iores->start);
+	host->sdhci.mci = mci;
+	host->sdhci.max_clk = clk_get_rate(clk);
+
+	mci->hw_dev = dev;
+	mci->init = dwcmshc_mci_init;
+	mci->set_ios = dwcmshc_mci_set_ios;
+	mci->send_cmd = dwcmshc_mci_send_cmd;
+	mci->card_present = dwcmshc_mci_card_present;
+
+	mci_of_parse(&host->mci);
+	sdhci_setup_host(&host->sdhci);
+
+	mci->max_req_size = 0x8000;
+	mci->f_max = clk_get_rate(clk);
+	mci->f_min = mci->f_max / SDHCI_MAX_DIV_SPEC_300;
+
+	dev->priv = host;
+	dev->detect = dwcmshc_detect;
+
+	dwcmshc_set_dma_mask(dev);
+
+	dev_dbg(host->mci.hw_dev, "host controller version: %u\n",
+		host->sdhci.version);
+
+	ret = mci_register(&host->mci);
+	if (ret)
+		goto err_register;
+
+	return ret;
+
+err_register:
+	clk_disable(clk);
+	clk_put(clk);
+err_clk_get:
+	release_region(iores);
+err_mem_req:
+	free(host);
+
+	return ret;
+}
+
+static struct of_device_id dwcmshc_dt_ids[] = {
+	{ .compatible = "snps,dwcmshc-sdhci", },
+	{ }
+};
+
+static struct driver dwcmshc_driver = {
+	.name = "dwcmshc-sdhci",
+	.probe = dwcmshc_probe,
+	.of_compatible = DRV_OF_COMPAT(dwcmshc_dt_ids),
+};
+device_platform_driver(dwcmshc_driver);
-- 
2.17.1







