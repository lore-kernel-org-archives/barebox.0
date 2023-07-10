Delivery-date: Mon, 10 Jul 2023 19:25:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudX-0060ae-AD
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudU-00018q-IE
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=; b=k+GxZmQvo+TYr0PwRzEmAQ23Cb
	j28s2msBSZDjCkNqi0mm6bhiva3Z9pp7pXTcAi+j0PrkQv8td0tmEf2kWuXO+rPud6PK5eGR6DK20
	VJhtTFNHPIUVB3i3Fs0+7mSphytxsFcAJvv6wJmP6mtPcZGnCu51TMMymByAU4zrrihcPwv8tyHsH
	cNRaAOgvp7BuXyEjBtP+RwQWCEQTs7iIYbRmfHZc5WRljic94Kl00vvkXEBc+O75XdBlp7xEfMVVz
	L4LBQAC0FENpPD1gcBGKXTWoplLZKmTywDE5quU+Mkdrt66T3nu8OC6ZclcwpDsOUs8qy5Qw3nao6
	n0Oz1+4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucE-00CL5D-2p;
	Mon, 10 Jul 2023 17:24:02 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIuc9-00CL1b-1B
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:23:59 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 2D401349631
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009836;
	bh=xzM8Gn5qfNG51mtR8ZJSO0iSMXxCzJRJvMyKAmrGCrM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dIeVn+av4NtvPzmkfSMV0FFQjg2epTm5rnqM14T1XwOUBViFmpnooxS4/qtCR6dqU
	 BIFsV+47+mhXKrCw48UhIqzIdu+rcq62gVTjqHp9kmWOvxWx2f3KYUYn4TPkR8ihPr
	 ZGrWuE0A57ANzNtg7hT6NsAI/yOfY1VwLey23Jvg=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id E4FB1349605 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:55 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 26919349518 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:54 +0200 (CEST)
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
Secumail-id: <6cd4.64ac3eaa.25a42.1>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKjQ53RZlF8ADc0xMLOr/WC9CPChSC9KRqj9fhuZ5uQxuAFiEI/95SSd8mQ/cU8IYLHjdKsoERZi7BJ5OD1ypCK8AsnSqodAciiJ2K3qzcuPVV3yM+rffwM6CidMJXQg7mCebLFcmw96wk2vY8OomNrP/JQBSnXDSXFQ30rSaAOZcraOUa/GyAFJ2h9iST93M3bH/fnRcVdX8GO/fVjVLCKXLbgFPu2/QZIBvbuuaomCaf4UK5p9aJiN/TJixKLj2GcWWxK12ZGgRYX4qrYwNJoyRP8/2icWGCvKE3OMS/ClLT/lHxjZ0F8g7xVtL8Eo6bAcfJ4kiZFBHjGhWmQgNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=;
 b=VzvhG8nwUu/Jpmo8WTCWTpDVdO+MbMK164UWGRs4ZqS6+JH+aLsrKuFXT4ifkmaRO8QtFV5goMlsBtcviflNsL9ySs4PSSko23eitvp4JU0Heg15Br1WT0CgebCUGuFlmtZW5skU7XbyOdntYVMySCFm1TbdxRe3x8ka8Z54anc74jNI3Y/wFmOW4S+1Vg7/OF6G4Ka+AM3mPBFMUDd/bfT/xRNZw+On03xBZ2ebtFhjoA24yg1ccIQCiXlcLUdUXqWgfHzY7/u12RAFo0Lrs7HYD7UaGrbzHKiKdGd1nkcExPqhq1Q3GaL1/FJlcOJIJr9X4UgV1R5vAX+REXse4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=;
 b=IlHht4zQzeYYTnAEEvxFI7a0PMryAT+fsX77MnO5yxM3tgzRNY0aFTZVxu+vna29YkQyQHMqF9Axpc/o9X6rLEj9sixXwnSH/4fAtgXJSKPHBGTUIObefxq6ArHtsURxLtqktdAlTQGsCyz5tErZrnkSsCNY0Ja8vECL29vxwr/iv/a5vzWhmjyVRSWn+EYinlM2V8UcyZ7M4wdGSvxv8NQB90v5RR8a3hUvAaMSm+tYdh9/cVXrrB0lCvZce+deAE36uWDoB7nj6ZkxyOPrlDrJc2BE1hi0LLsUtrXzZu7tAH48EBRxo+x+tTavYTtjLM7ZmMMCX90qzAgVKEirMQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:29 +0200
Message-ID: <20230710172335.26701-2-jmaselbas@kalray.eu>
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
X-MS-Office365-Filtering-Correlation-Id: 845df152-31ec-454d-15bf-08db816a6ef0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EFLgI7BL9hFCFA47tdfT45jJHxS13XzHjhWDfQ38IwXNGfHPF2MaxHyz0VGGwZD45GeQKc4wmuew39RTh4GIvSKkyqiijcut9cuLw5APjOLrcAJCreqncG8Rpi+65IOyvO+8CPU61krSgAsQ5yk/racXaAbKWELy6TpcK/egMWi7LqmGcib29joOMkaAL27ZyxsRMlN8LKkycy9RCXCUFcCxqc3ZRM2tFmqgEHj1Ve2D/gxqnGFqk0t5GFALVh7mNU6LwztPuuNWKV41BmKprhw2U+cQgku4hrToMGlBExwn0X2TKWlU5NhIY13NEeOE1swJ9JymRF6Ye0tdp0HT5Js1GTdbSBxitdDpeD/Q6LL2yrGOJXxEP+EjBZlmMcMrLxe+KQH8qVsYfY6B/kdjIOaBhK1QA834ta+qDKE/H+lojCnmPFJxuTaJN8GsKFr/3WJxMAaIzWLjFazi9YbisxB0DBmVppFVLVAOYLqEb1A4gcZIKNYE0DuwtdRvtbBhV7FNJANLxCb/qappicx37j7Fv6wwrZbbZnwdFQnkBAwItGjqKYlCgDknVPLRxQ7SCBpqEpp+BYXBXGh9X5Y50UEMzrncWYQ6io7Q8XZOFaH0yigGMT0ZDKntpztTU49H
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(4744005)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: RD78x/2x2B/U5bDSSjKWiIpDLMgOB7Lonu7kw1IsrWnut5sRKyV97WbBwneWZcnbx9zngK9FxC20/CZ6/YIHdiS7Z1m7F+KbqOoGV+4r9Ie1qqYigthAKm0NqtmLCbdtTu78HDplXKylTp8qHaUe3lCW3Pj12ezVNmGfmavIuSoMW/6UfsyqboVW8StqEZNNazSEvlOe11wnJDBKV6DBb32Tf9WL5oScEDDFwG9Vna07JweIU9sTiddr4KNRi+o0HlYJXtQDq98Aq7K5p6aVEaOK+INipgXjy6EEXwnsKT7SQrCT92GkuY31e6m4ddyCwBlLItx5C2CNDtpzr4aur1zd2FyPy1DEzS/roj2S+QwblaRHsAtfJXP+A9JMsveCLK5TdNI1jr3+8FTmJdFhS8yb6V/KgxMr5/3HPOgDn3lbe6OrUb/97c1jw5MgfUiMcTTJcuu+vBTmJkDTdlIRx9zjSWe4hlwMfH1i5CKlW1K85WQc2f6eqthJYE6DBNNI0bi85y/pK/zaNdCDKfG31n0GBRnQSi7i5XDKc4JlOM2P0TzphmZXeUo8KASnLJgpdAFk/KQ3jCNI6i7WGLwGLnG/VrJhuqgqZpjJO1pDNwuvNOH8w0zrUg9ECVMTa+JQfVos4z6Xph56+y7MLXRc6uUJSpdPLC1xBknA8TXavHjUWhf7NAMUDQOMReG/bg3jhxk1pP5jRW5dIvmev//FnSwi4TAUUf+l1rRJI+djrYJSZVzAVGbMhfPFjW+7oVKcJzA3PuE0GIkVXN7ZiRDP/yKlznjONzOh3pNrbSdzuCTPM/fSzLZnc5Xf10c8pCFmEXU0n0uP5hIsu/tw19bF81/9LVOR+YAbJHnS9Fioe2IybSSQ6ulaDowQuoF9sEj3DThVK3/KHdEGC2zYmc3CKZTOMSgNqaqw7uLIRo9w21wyV2vbcwb5BMuyeRbihTM8
 Nv6qx05F0hx1oKFilHKIIHL/TaMME+JLQ57fn3VC6u0QMnH3HAM551MNkwHyjBXRhOOVEUoj0F04uq2jZhNWriHTYsEv4vYXYB+rKJ4jFWX1Yx+nWc+4PjeX4A6q0C8BVHChR9uYUqKCvPeTUDSzKyO0eN1zI6HboVFL4FnngAC95X3HZCNsyWISokxuW0xmzWyC3LOndi3spVfO7FjbWPrMZLJ1zJ29hy9ubj+13qO1Y4ApsVlFve0Yg+Svliut8KupqJO1jrA/wtYH6jJ/6HV6SyyVq1t8Pt7UnNSPJRoBIs1LTsgz6nrO+sIUZBeoqfp0MgZgNeGa2HYRLZQ7e9NJQZVc16mP7N8/WNMfbUCSVgo9T2sNZ3to16dLqZE+Z4DYOBy9Mel1lJpwBCZtByHMhBLTPl49pK4s1MOb21Me4tA89BKjkarkznGT69xMi3oRXYnFGrkS1VvyjU4pDA5Aibzl4cPaaGigQkRgp6G4vXNz7uwJpjWrmfLCMZ50SMGAssmSHB8atVpdJq8Eu2aN1V+a7EA/M5h9C/X2UNcvBpm/FMq3VIK7GQ03j2GbvDgVouzrPCSojsg8Jp9usKyYlGGUnDBc6zcLxaMBvvw=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 845df152-31ec-454d-15bf-08db816a6ef0
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:53.2328
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Z8mGJ1Y5fTPpJLaXo/kphzLluO4SIwQsydlGGaOYFokp9Y6KKceLi6NDrVQOWY3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102357_537104_3B80B8F5 
X-CRM114-Status: UNSURE (   6.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/8] mci: sdhci: Add registers defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index fe8c25cb9c..50179de0e6 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -117,6 +117,9 @@
 #define SDHCI_INT_ERROR_ENABLE					0x36
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
+#define SDHCI_HOST_CONTROL2					0x3E
+#define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
+#define  SDHCI_CTRL_V4_MODE			BIT(12)
 #define SDHCI_CAPABILITIES					0x40
 #define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
 #define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
@@ -173,6 +176,9 @@
 
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
+#define SDHCI_ADMA_ADDRESS					0x58
+#define SDHCI_ADMA_ADDRESS_HI					0x5c
+
 #define SDHCI_MMC_BOOT						0xC4
 
 #define SDHCI_MAX_DIV_SPEC_200	256
-- 
2.17.1







