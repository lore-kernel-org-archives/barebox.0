Delivery-date: Wed, 23 Oct 2024 11:08:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XMG-007ovL-1v
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 11:08:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XMF-00046F-Qg
	for lore@pengutronix.de; Wed, 23 Oct 2024 11:08:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nhE4s5JuOS3df91ERB6O3EcEDJUjWohjri+IOI8DJGw=; b=sXXOlifWVjrr/be9KA/0fqhjdI
	Fr2slSPDiQS4oDUMdgfGWOjGgcZ3EemK0aBZ493bWa796fbzfVM/uQV/R/pvd2f6gVf6MBweuCLsn
	3aX1g3VNt+WBLrjsV/iubK5DQ37wmDogUS2bUCxXNSUW0Dy1/PZpOTghT5x3Q56J9T58+l09z0/Do
	K3ERjbfgD20YF3LHz4sNBfb2uWrofCwZyBOoD5o8IBEy/JYKJePb0BzlgpRTOTw4dpH6hzh6zXQvf
	IsZa2qpJkcy990VIdO69WVsm+x8keg7cGJ2TrhCSYvk0exxgKUli/iYdq40WCLZrARYLuX1j2Ynem
	YwdxTJuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3XLe-0000000DiRM-2tfR;
	Wed, 23 Oct 2024 09:08:10 +0000
Received: from smtpout145.security-mail.net ([85.31.212.145])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3X9R-0000000Deuj-1KEe
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 08:55:34 +0000
Received: from localhost (fx405.security-mail.net [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id BCD28336186
	for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729673731;
	bh=YWc4NMGBfkyyGsF8bSO83tirtlSNv6zE4AucLy8is6A=;
	h=From:To:Cc:Subject:Date;
	b=S1JfUh+pzyUuiq3vlq2t73ia1Bkj+fybqMXhsh81cuVNkE3GOFaUUDREZbf+VFZ5P
	 YGwFKQytd96CSaJ3KLxohW2+KIYeTKjmxPAuamfRuK7WzwOs3wD7GaBjVlvoRwrTIe
	 t42DeK/dsbcHDTGRLW3ZGBI1EEQ9r7rmjPC3aqLM=
Received: from fx405 (fx405.security-mail.net [127.0.0.1]) by
 fx405.security-mail.net (Postfix) with ESMTP id 6A6E133617B for
 <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:55:31 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010001.outbound.protection.outlook.com
 [40.93.76.1]) by fx405.security-mail.net (Postfix) with ESMTPS id
 6D784336114 for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:55:30
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by PAZP264MB2912.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 08:55:28 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8069.027; Wed, 23 Oct
 2024 08:55:28 +0000
X-Secumail-id: <12916.6718ba02.6af95.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qNPyyXOsUvHiwzxbpDEn0mOUVp4JFKIK9Dpcbo65HtX6KDgOzDEMKgVmbxp39+wtFevyIgvNh/66LeCe8cDYyj2oxOgP/X5VnQA5OZL+kv34v7ENaNSAcntolE/EhqvO34DNZzuvC7uCH/7yiIlmS5DP5T+cE/xKNv9h85GvCZvctvE5RgHQzu+y0p5I8tzYQNlHYPnJdwmgP2u1LIUh2HXUus+UrWKQr6fwk8SZiv6IrYIIob2/v8mErXB4ngpXR370ip/cuR1nV8evQQzrtTPhW7Xji3xvSfOUmKJR1wo0z3gELR5MTyR7eDEg0cY27VHO+8BmKdJyhtMCXrHZxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nhE4s5JuOS3df91ERB6O3EcEDJUjWohjri+IOI8DJGw=;
 b=LDqXMnALt66NUL0PJs1wU/o6UlgqHc+uNmnpZj5vnY7+FVDX41RAZImXoGOOEHlwwY9dBkMbAUBydQDn7019Bk/1PfmwN2RP4xWe5qwmp2NOzSQf9rIWE2ckeAPpynqSOHs/6XtnovoIqZoC/2fgWum3wut+Vk9Eo6SZpG3AjarDZVBOCwgK77PLu5qhs5YubwbIgItEJMCZxQc8pze7xsID0u8RHilsfUq0lrepoZiR9JzFQtN45eirMX9O8oR8BXTSk+qnOsfoSrypwXCBKSZuCG9/XwyizV/zE3aGKFg8Ig24gFwzhKQ3ZXwDRzfk8Q6TKzn+cEMXqh6ieOeCtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhE4s5JuOS3df91ERB6O3EcEDJUjWohjri+IOI8DJGw=;
 b=dBgtoH8fuiu0q0A4hl8pCMQTKdbdlKHdqUwwRwTFnI79Nfg5+4MyYZIamTMF84HQGUk2Rp1s7gqbgjMPZk4tMHQSUKDGDZSi6rgIwM2KBns02okOMN0/Ob9VWmanVZJYXLDtb8AXGCG0HZMp1pIIEhvIf8GJO3Im6GuJQDXM4ZbOB6T1wSbEz7/LeFVTZRiFf0ntzf9GKjFl9A+QsHLzs4Am/2RwNucY0Bm0hRpxp8mR5/PVe2KvrNeqNY8Y/4HjZEWMSyxWCZXfZZ0QpMcuQoFg47Lq+/HBCrtWzw5L4jeqCY2J0CH6lYbgwXUGN+EI3qNGrNmwBH3UbFf3x8UA/g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Jules Maselbas
 <jmaselbas@kalray.eu>, Julian Vetter <jvetter@kalrayinc.com>
Date: Wed, 23 Oct 2024 10:55:17 +0200
Message-ID: <20241023085517.1594242-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR03CA0107.eurprd03.prod.outlook.com
 (2603:10a6:208:69::48) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|PAZP264MB2912:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aea92e3-409b-4c91-db5a-08dcf3407110
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: LioA+7UXjBHsISKnmBeDmUVh3Yh+RWoB7xZfdE8hQbGzD85xDlEyi6DsOdkk9WMAY7kB7FRiPmILOgmuPbDRY6ANuQ1Q+xIavVBxLvT9EbWyj2tPe02FXO5bb1JCcHcL4CCGj9/cV8poyAET56KcU7Dd4JHepFFnAM9NvVgSHGlMg7XEwLgisUbkdUZ6Wl/lsyZwJsg3Q6ETF2RTr1Eh6vaHkhMOzphbh4djjgrmUOolJgyq+GNcLvR3AA48TUaCykRX+mZfhqBOZ9jVcNXetRBgTbFkQRtpLTEfzgdQMBp848Dq/D57cFgiAT5PSl1u1V7Gn/0GY17HCk18Oe1K1d3aztq3qOS1WWaZM1rqPpGJ2X1PcBpidODf3UEGaEE4ThnrSoglupQMwhRVuFn0cIfmSYly5FvB/UqOrFjeFdv8wJP1I1ICxkpX1XcZdBFpMTQKeHXhoi/T46jF/mv/eaGUK97x/Q0yM1xdD9zAQvqorPcmM8U81Ze99irI80s1siR/BeFncUXqdYWMr1aUMp3Z2690vZYHuiigUouLtD+LT/vRS+M9es3yxY5bQ8YwKeg0QTormeO5raScwhrhC5VBBKmjDPUEgNK6M3fLh6CntiblUZBYu7t1tLMAPqvU00qjRe1rReUuj56ESfVGr2eR8iQWdo/zraydl1YnSyoI/kOOfVnPWM4M1Vvc8L5stfgCDeYSW9Hu4MTsA3UDh9m7mWCOMixVfYv23iO55RsYX8m4w8NmVtrxMjJTnctZ1bWOMPWJkSInPAD4od/keTHEiz95HnVIbN+FRGWnN/sD0cvMwBA/TuJRM0La0BIHebxUJhR4mNrBKCL01KE80M9annzWDrJvi1q9bDJtoHSC60K02vYi/ZG+SuI+NxLZYVDwBZ/bBXNFbqeWbXivpJawlDIkhURlYE8gFxl9WfzppgjVML8fkimw569mCnNKOMs
 jTGnrhkTt4DX/Sy/nBv8+8CcVVRcJn0rypr3qEjM07ZDdW+JTO+OwbStbU6tF4TETYNZFAZq9PrQHhFWDEevBFtN/kv4AhH8G8bi8TTmD35o/Y7Gl2EzjOWcrjZtieez5cTRwYxE+mlhejuBmLpColUkuXMYr6pUKz66KpFWuAi8Y8ADCu8S8b543oMI1uoy4Niprlr7H1la7/Ls3CjcQT48l18uUw8UczjGxx/LzbAQz7udEjfOUR1Q1vDOaw8TJKQrztddXsgjhqyRl7mG4oprQ3niHW/2Y4nhT8zVxFJOJcW3H32wYSYNHRMUlxZ/DxHZYKIvas46GC5Q6QHpf9k5DIyPE/fqrJdZwfBt58BCtBa4uuechG40mDnAJ+CA6ifFLhfQje9JoJdujqB7pdOC4xo45PP8/AJleA74=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: d2W5dlZAGRKxUvum3mBWnJXBp7v4qTxvuTO0U3fxPAUkSH/oSTM7X7Xyc+wBP5jyO3LyVRkZCQP/16qGnwJuRTC1Y1jWJn0YETJ/NdC0LdjgLp2hmmsfrM2bZ38t95/cytNopMp418GoPZoin5AkExbk3+n5ta12U6NZ7IKpKD27qBSDaFeq9tpnvm9RoPwXMew8AsX5HLKtu4un+KbuRvi/eo28TzVY24WAXuOs+XZpm3XYRK+fBCkXGDbZEI9cc9acohNk9vOfmWFZ6MSrr0Y6RMB1gSzSzDEt6lT1SG4PAmroxppUH1d2RW+jFEoNuhU0M7fYB83bZKuubkoSw01vuK7Hrqd4ZwvAaQAjeB6fX0a+WllvGjl8RB06uvFoWM8Bfy4+lSQbf4Z146/dkJlPck011FuXnBauVt1dPynt2tTjkf/lLYw+f/KuxTEUm2XCTlQiM8C2o/5acZkfU3E3clFdHFjoaSQTkE6UubPKVQfqmuZ+CZj2/Ako/0ELizqSAMx/2DC6HjR0lw/gBNtNQ7ptZQUWnCfvN5gGLs2tZf3Aax8pNUZ7HefUx3YMBcvMS+ohfYF/kgeC2032kvs9BF57qrbPHApryihj2NQuFxwiGJDPyMFQ+bXarq0deG2Zbv2BbFoyTmdLdUebN/iGoEpDlhf1J7BFUY1VMuUL3az8e2a0rs/suL2bpjNCa2oM/6V5Gds5u1F1thahw4F5/HHUMhiHronh+8CwPCtsX2txqaetQFPc6Dm2ujpDFdF1virIv6UXVrJqmQcMyOp6R+d3USSAzKwXBc6LBDsCrMYe/KtV0Ixx4ZmNUrZGE6Y9pN5cb96AuZ+9oYhOE2KtwGG3gSru+IDeimNSAEppg6mWYaEguwPRi3TOwwX8d4DAsx5VC/mYXDIqAiWswMTYogINJmKRfcmTuvxS71BXYxCxDnQb0SaIZ+NFmEVL
 I6PLw0EXOS6Gp3P4gTjQ49OWEeZu6C2K2URvme4PStsdrDEnjMQMukjUMcC7yiqjNuBommqec0n559KoCWaaYKshMoOlDEajeGtC20oyp0BI5RNIJrDVNh7F8Mq2/uV5/74Omp3vyBfIccMd0dXjm75lcaaONG5omkvnv8MD3mDTBkJQnUcMDCS+03QMcmph5xIjeg7rGNGjIGXIpbPe1O5QQyWRRG/VsS4ag1Aji1rlelMcxNnN1zvnpzxMLFiFfeSl8DfeKFYQRSoUft36RoQdrIyMFu/dMHXl+BglntzZ/q9y+MMRdvXezoAGkcMwtQiEnvmltdBbP484EVd/vhddqhLBIPcbQWz7Rw40IjI8QuDWcGDQj88TH5aFqqxgY6+vAfmDAmUEsavgi8J1bHEKnm+g2YoUE879ZcdsAYnEt4gSRdE6oSfCRL3cz8qliSdZ7oaXsw+uOsrcAMmXzO7+7qdDXpWB22JjNvTCWKDKzcrsvzNdorE0h9KOCbthYfHxZrxAIQNvVRFumwHFLOCCTsWBe5JfW6nxre98cwoEWd3wpQ1YdWhZDJOkZndEAn5V6iHx1aiPgo1VorP6ommWubfbeU0fjvwPREcC+ZURvRsS34hIOBVqeWuo/l0AQSl7KjnmyybMgiME4ORBwA==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aea92e3-409b-4c91-db5a-08dcf3407110
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 08:55:28.4066
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: acAjpV2/THbYRsfOLX7eaJODcf23bRouHoT9++9ltoC0uIGreOrmFJiwyUkhaRXQtBEb3O6by2cXLqrn6S1IhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2912
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_015533_547997_EC7F2AE8 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Add support for a watchdog that starts as early as possible in barebox.
So, if there is an issue the board is reset properly.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 drivers/watchdog/Kconfig   | 13 +++++++++++++
 drivers/watchdog/kvx_wdt.c | 16 ++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 762e37c9c2..b1924b5b05 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -89,6 +89,19 @@ config WATCHDOG_KVX
 	help
 	  Add support for the KVX core watchdog.
 
+if WATCHDOG_KVX
+config WATCHDOG_KVX_EARLY_INIT
+	bool "KVX Core watchdog early init"
+	depends on WATCHDOG_KVX
+	help
+	  Activate the watchdog with early initcall
+
+config WATCHDOG_KVX_EARLY_TIMEOUT
+	int "KVX Core watchdog early timeout in cycles"
+	depends on WATCHDOG_KVX_EARLY_INIT
+	default 100000000
+endif
+
 config WATCHDOG_BCM2835
 	bool "Watchdog for BCM283x SoCs"
 	depends on ARCH_BCM283X || COMPILE_TEST
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index be6b08b71c..3e66aa38ba 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -91,3 +91,19 @@ static struct driver kvx_wdt_driver = {
 	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
 };
 device_platform_driver(kvx_wdt_driver);
+
+#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
+static int kvx_wdt_early_init(void)
+{
+	/* Set Start watchdog counting */
+	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
+	kvx_sfr_set(WDR, 0);
+
+	/* Start watchdog counting */
+	kvx_sfr_set_field(TCR, WUI, 1);
+	kvx_sfr_set_field(TCR, WCE, 1);
+
+	return 0;
+}
+core_initcall(kvx_wdt_early_init);
+#endif
-- 
2.34.1







