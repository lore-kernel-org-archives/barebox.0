Delivery-date: Mon, 17 Jun 2024 15:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeu-007brf-2e
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCet-0001Kl-Rz
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RL2GCF5qLPFHYn/jH/AEvEXNl4MpRdh5Wenqd5fa3UE=; b=R5qPgzO9hRC+W2rYxgG0wRScoE
	UuJDfOYpmezR3I5i6wuRlJQguhpL2NQLTCuTEPLxlD8YPUa0lw799tnwyGiZ1WCmRKrPEPt1RoVM3
	BEKk5xJsTMwXn0SdmLXm1mKF0zeQODtpdW91JzB+wuNG9vuy0QC9h0NJYPW5Gxpsx/adKZF0ZXbWk
	/x+OcCKhxZxab5+lOu5TKiZd4xPHmhZ/wjwmu/OxwMCLUtztFiefuwqsciREjmsXXRtFFTuFw+/1t
	mYLHyNZ8O3F9AjuMVKXB0I6hQ+KUi8EkB7kD3S33ChSKDs47v+TKv+TD0k6o+7t3eppL645qzuT2R
	vXQcrJ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeI-0000000Av51-3uAI;
	Mon, 17 Jun 2024 13:43:55 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeE-0000000Av1b-1KaZ
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:52 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 2CE3230F38E
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631828;
	bh=g4QYDz8ZsGPxJgGtThz4Op9w+rqYXDsbDIiZtYHnsaw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=MZffPStDD6IIY8WeeBoMh2EZfZaymuJvlv6wMy/QgRaSd3DT7+R9Wv3kzINkROMpS
	 4OUkrfjOI3BH9aZybPNpkqwJgX8gIJm7xW4558RxXvM2et2fyjmX6UV2c05MWSbOCG
	 fFaWmgEs7JQz5jVEhs6k8xQ6nVHNVq96TdB44vUo=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id EF10F30F3BE; Mon, 17 Jun
 2024 15:43:47 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2043.outbound.protection.outlook.com [104.47.25.43]) by
 fx305.security-mail.net (Postfix) with ESMTPS id 4A79430F39F; Mon, 17 Jun
 2024 15:43:47 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MRZP264MB1797.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:46 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:46 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <f6de.66703d93.47998.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfgujpLHCWVYYXzJBCq5dvdu829TkGyFEDPE6piEudqlgubwx9EG8J9mRbKn66xlW64a/p0hicyVgv+ZxgaQrzzkPomh3tMAE7+zxQ+vHSJ/qByfxu8eswYLAiBVTP7MIs6HsBABBDYU8R2Bu+jFcsHbVHltJYzpEma0NjS4lBBK9iIFsGFxZTyfwxn/s0kTZkMqP7SayE1mRhddfbHlfyvSn2XFPIggDbv6zAHh/xJCeYfuSQY+eL5eu6WI6AUPUQl/CydF99swwAxemxwA4dBGis7ApLF1NtwtrFUSPFheFpRMa5xaFZAol+XRma9Sg3MuCGwPUVtwf/vqdAJmsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RL2GCF5qLPFHYn/jH/AEvEXNl4MpRdh5Wenqd5fa3UE=;
 b=IBOHJS8InWollEiE28LXWF0NKSj5hMKUkDq2/jiJtulF7VZSQApLlELWl/qGPf5b28PJYjhZKLxVPRDNM3vMvSam2EbH0X5YiNLqS8LIkPw6qCd9Tj6l9EWj7ltyxt2Hh2LFr4Yk/08UNiW8ZknQln0cp7EgnbtESZ6zdzIQfMgAFw2tHAcxz8AWQk/v45H7uJs9CeKQaK61aZiqP+a4eIDE/0nIGOYfPfU4mXISwNe3UqXcUXCAAquDP5OByldwPbTRc3szs/i+m9kb1lzo07yAQIGc9+V4O9f05ayfbdx0DHW1b722zNnJqdFPzHDvv5VXqBg/jZsEBKBOHa4jHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RL2GCF5qLPFHYn/jH/AEvEXNl4MpRdh5Wenqd5fa3UE=;
 b=bHcf6d7R1uMve5YIYIRYKpmnTbjI1GZ6G05gDqQYIQ/ANNhzHi1Y1nbMAZ8YWViUQ1Q64HP/7NNL6cmJ42xP/THtS0WZFtaHYVXoCCWTsOFE393kukjZY+qdx16igM3RJd6jBtCaQnQhjI3rZf0LGF9B8KGiTlUC6d6Vqww+g43n3LTbJAdbx53Gs5hPVLFX1pfwITLwnA/i6QfSQ/d1ryz+gXEuWvrAy8soB/PpLlqza84V8dBeEZn1gPPnxi/HglhuhMD0c0P7LcgM1WusN+8gekGVJn+i8f/q7m9heX4S6xHamJiS0UGk6ddYiYUg9NnjuAerbO8wSdHVbw7CYQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr, Julian Vetter <jvetter@kalrayinc.com>
Date: Mon, 17 Jun 2024 15:43:26 +0200
Message-ID: <20240617134329.3671762-3-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617134329.3671762-1-jvetter@kalrayinc.com>
References: <20240617134329.3671762-1-jvetter@kalrayinc.com>
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::21) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MRZP264MB1797:EE_
X-MS-Office365-Filtering-Correlation-Id: 94976257-2f84-4ee3-1e72-08dc8ed382de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|366013|376011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info: Jnr4G4MvYsIU6mW2gx0UnTPfyWjShUve/rqCjoGIXGLPi/5Ltlx9qjFIXyMjuvhPlCz8StTmX/9ivNkFPbhuaGs43XXrCP7NLQQCl3yoNcrvAasinh/7LLTJil/+HwvvLpSBm/nKou7fSOFJFMS30o5CwSInb7s3ADCgiX4nk9QcDQ+7CZGJDj2d4Vy5l38U+G9Ayoc0sOy5m1V0fjEwjbmQXeH1EUf99DhB/Ho7uXnCYY7msXnocVPmxdYuNFGpnUIoADB3WYnZL0sUPN4CoWEWRXyKknsEW704AXkzxuknITMaSgqRRuQP8ADSJjmaWVRzf076r+L09Sd1YVTJyt29GfzL5vdd0Mxw0l8noAnLjWE0oArhctjqYcTzpS3bj1G+kBYrFsqmt7Bldakcy2tIxuuuTl/2ARjC6xgnPmoHbJY6a3GZjMLnqYbPzU9Ch3yli9NvqwzpyxKlfd8tk4K+Su1VJzSXVJ2XntyuKdf5Tpp6pmwaXLoe74kvo2tF5IhOv5MUU6mVBVSMFbgK2yR6bAXyr8K97qiULHGGiXhObzRhg7E3RIwOkS6OkDQewi/CrUiSw1GYzlv/mPXtECXS1mr5pTsd/cm0+J/vzGUxn+MpvrBeT482smgYlUOhMnAMNGeCo3542nfVLOkAJjTS0eKnS0LgyZNGtn9s3mcwwt3VV5aVglSB2CWrklCd17D2W7n71ECUMCLklUTk+/cDdv6CGHmrU7OssUNS7YYAKnZtHG52NLzaW0LtJLdRFtCX3B2POyvjBQr/9aqbCT5dwUKQBd0szxSoJ8RDFhVWVcHhTmcwwQdpGyX6DWGd5imlKPMr6V7eb8nrt+/1drShba79tMZlBccupswg8YiKkWGpnqtKB1rJdyUiVxXyqGkN7viNWE/ZLmXzlWKKmfGtV48635ewKKJP6Sqs2l6Y2shz+c21qRcTIGk5eZ+yfyY
 1JXjCvUqiCH3LdRv4U8sn6/ipAH/GL4H86QaTbg6psTfVaBawakk9ezSRv8wElEYwBpYT54gpF8remEfEfQnDcf6oIdIPkSw5D3bzDGmu+KzRGdC5e5I0KttAdtvt/alInN58ifnza9V0EZHOhPSvG5d/8GY3V+JVXZn5o10L001svo6vnX8ggvFMwujVZUts78PRI9BB/p/2w+gT9g/7S3JniEa36+CPcvzFhYbyXAygR3Zdf7YB9KLvS9/3UrpWruVZ2x4jsu5ItsuYzzU4vk6ojxQc5sTiZCntvB7TDCs//dMNjgYTii58EkQt+fb/ZrTjZqUQIYm1fjZtJovtUMpa3OtUPtMuAqeyv0uzZbjJw7iQwWTuIkJcIllEUb7RnWZRZxtDol8AxZ731m1+Kq+ovTLbuyMmasbIAHc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(52116011)(366013)(376011)(1800799021)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: EGV/I0YjBBvcsSL5LDg4GJXguKOqSLh/tSY0kt8xFwWE1wNhWjVt1k6juOPgl7skK/O5nCWxmvoV+zDi8o919ik9PhNnXALFdvhm/buodoJfTxOz9BrfnS0ThIMMJYzGi/5S3RxLINsQEKxPa9jhsQUEitTjDaLeTD2J5+JvcxjujIttTtuKPa1MV1UV1mW8LFzj7msXkrKtPWSCh7uVwMrQx6dYFXf0NLLfcNmpUvbqikAdjEwDlVLVUa5UrSWXqXWqFRMlKa5mjgkZVx+mLoBHWXTKPgf3mac8EEh02wd4HZbQ8Y0Pe6hcEUvdme2Ky+7alAcnHK3GZi4w+Id0+ja2uywJrstPLcdYxHK4AirkeNpRS3Rro/UtupI8fEwhiLrW9tyF5KwMcJnAbZLncU8LaR87ZsaJBX+cyCPq9VdFBPsRyw5BAZ9+JxB1ymIjCLSB9bbG++QIVVBQAtqa1a/3U7QwUHvbu5zi/tZu+QXwQq1PlZh1Oh0JO7//TYXMtnIUx17aqKByPCGF4Q27z9cWo0IjgC9NVvfc2zjgt+FAMicCz7oYXhqErweWm4m+PJ6m5sc/o17wpArFRxn7JKNB3dybDg/7PJ3TYeFgaZrssRXzeuyI/yMHkjBacsQi2aJykAu8er2s5qVY0aoeJSqMOFrqesJ8C/GINpDcIQnjKc3tvxOcvmB8N0JNEZG/dw7EBgZA7u1Pqd4ejRjsAbyJpxpv0ixTim9yYvv1bb64Io+XFIYpXket21ZEoCbJ6767G/X0DpupbTgKWuan/6N2EDiqLIMMsrHp2LeiYNYz+13HRzdnwsTW6PX/pjW643zlemtLzsv/+SWmLEjaPCvmDlxJ8IXAwe46nS16v5GphpcCXFvZAYwEmGOEaCmllpIcA9Gb3VSWlffhwQQRpeBTPmlQu1Tn5PNvyY0LNP1lwKVjnGXZG4rm2XARTLZy
 w//pIoG1oEmCacdlR/3Z1+hyXT9leo2ZYPOzVNaNSaA1od8G7OQwPHVKdBEfgo/PxHd1C5hHWvrOI6afphq7UVp1n3vkuiER5eOwqTG9/A964hl6Tp+WvZJkqUW7HJrPpKgLVsfJ2Obaf7XGlHksWRQo/k9hk977wT2xDcs9qXKTz0h0mK+/y+vuMOv8nAKu/lWuO3O0Ih51fI+IJbOsfG3yF1lZ2FrI6jzLNZ1rZbp7HzxY0ecPjMIoaU2lNFH/LoDSyU/T4wWbZX1s4geHk3luUhQgrRbOZg+oXAHRUkDCid8ctXDGmF/XjP6Q3YKBJUb7bfmHYENE21wkpwlMe12Q/KamIM8YypMYFk/w/OAB9VRkbHT/n9E4bYDFb+ivM2YzP/GMwP/LilOoVFHBWdFXGWXn0KhXcPmVHcV43P2NwMK4qaRw/DNzCFXmDyyHTN4ukiMTyqurwpTsjgiv4rUG4a0qyhiMrKFmAkm6navoG2NQxMSrXnSZLCPRrkO7/p0bsmzGx3S8yRc1oP6oopaHVV0OuLDkW/xn3io/6aO66KJ26BcPI/n0hZBazcvTfJ3/Nh3k0pKwuX5xW+ZBo9BcNjPvq7w0bJtzvu7aW40Ck0qTCcktOhj1JeWV6z/9uQYjzeOLaFj0oJruUxZC6A==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94976257-2f84-4ee3-1e72-08dc8ed382de
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:46.5536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bAZ1n9xLVnIXXBLB7h5SMO7lAFNodQJJCN202hPY6MyiP3XzGAGMPfaoiFshWKpRSZmuSZjzTsXRSebLBVtOug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB1797
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064350_827217_2AF5A133 
X-CRM114-Status: UNSURE (   7.93  )
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
Subject: [PATCH 2/5] kvx: Add 'stop' instruction to power down sequence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Julian Vetter <jvetter@kalrayinc.com>

If the magic syscall of 0xfff returns, power down the core with the proper
'stop' instruction.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
Reviewed-by: Jonathan Borne <jborne@kalrayinc.com>
---
 arch/kvx/lib/poweroff.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
index 3ffda026b3..d776cb0877 100644
--- a/arch/kvx/lib/poweroff.c
+++ b/arch/kvx/lib/poweroff.c
@@ -7,6 +7,8 @@
 #include <common.h>
 #include <poweroff.h>
 
+#include <asm/sfr.h>
+
 static void __noreturn kvx_poweroff(struct poweroff_handler *handler)
 {
 	register int status asm("r0") = 0;
@@ -14,9 +16,18 @@ static void __noreturn kvx_poweroff(struct poweroff_handler *handler)
 	shutdown_barebox();
 
 	asm volatile ("scall 0xfff\n\t;;"
-			: : "r"(status)
-			: "r1", "r2", "r3", "r4", "r5", "r6", "r7",
-							"r8", "memory");
+		      :: "r"(status)
+		       : "r1", "r2", "r3", "r4", "r5", "r6", "r7",
+		         "r8", "r9", "r10", "r11", "memory");
+
+	/* If the scall returns, power down the mppa with stop */
+	kvx_sfr_set_field(WS, WU2, 0);
+
+	asm volatile ("1: stop\n"
+		      ";;\n"
+		      "goto 1b\n"
+		      ";;\n");
+
 	hang();
 }
 
-- 
2.34.1







