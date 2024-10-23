Delivery-date: Wed, 23 Oct 2024 11:08:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XME-007oue-2f
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 11:08:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XME-000454-2G
	for lore@pengutronix.de; Wed, 23 Oct 2024 11:08:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LLBJ395olzmhe5arQ8H8lweMUDzWze+BBftsKMooqRA=; b=KGiN7dEukwyRJT5Jd+61hQA9VA
	6vsj+L1BpNVR4oATePLGXJL3h7Bs++2CQCzhs1Nvrocqj4tz+u57Bz6Ifs1XI3B4j5qh+mFUw4fad
	7ugUi9HrA2x3m5N0pIWzCuTkW/DmbbVyC9jel1iyRw9i9376/0PVYfOaZDSzBcUNFWvl/DQHIo6/v
	7jmYzBho/5WndgG5B9DkrW0H0xj0UtWiyMu/jew9GpwA6eWpSDgF0k7gSB0GrEYHLDgrLq6My9HpY
	hm2OY8ZHYOfYAZs+kKbyhW4HAjlOPFj5pdNjGzL60QGmkQ+0YXqkXuGUZMzif7pH83zLEtM4VPQNS
	aVR7RxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3XLd-0000000DiQq-15qt;
	Wed, 23 Oct 2024 09:08:09 +0000
Received: from smtpout34.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3X8m-0000000Deld-3JEB
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 08:54:55 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 907CC607AC4
	for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729673689;
	bh=4P79KVKA3p73MKJbdsX7w+LCsUl6pi4vPscrpG+v7io=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Ri/KUiC3IryPoVI8NJnhoN1lmdxl/twVVQ6IhxN4aqtxS6R1W4CG3QHIrCQJjweJP
	 1V78581ExRA1M14nLpVlLL9YT/BglUbkjknxaEP9p+3geNjolfLedrDSIw7Ig+ayL3
	 Jsps9/NsWBoh6DvNOBB9TspiCBbtSrwrmp00wg00=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 6BA39607377 for <barebox@lists.infradead.org>; Wed,
 23 Oct 2024 10:54:49 +0200 (CEST)
Received: from PAUP264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17011026.outbound.protection.outlook.com
 [40.93.76.26]) by fx304.security-mail.net (Postfix) with ESMTPS id
 E1B63607846 for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:54:48
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MRZP264MB2684.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:19::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 08:54:47 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8069.027; Wed, 23 Oct
 2024 08:54:47 +0000
X-Secumail-id: <1ca6.6718b9d8.e085b.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=peYh7YSazB9UgXGISCKPKEmcZaQCZ1H1rX7cn4tdbQS+L64u43ZWWKCJnsPZSgi48MBDdt+3PmQ2v0eO2HkQtnJz8WbO/4FCmjXTr74ophb0mMeaUJ0hKt3k3+fhJ7t0RMvmah69Ys28voLMGLcjdfU6OatRVdk/cmPzfGgdY8oeNyUVRlumSHOqzn336eKUM4r2ZWwvGJ36O41fSM+QdtnHZvHGCsrACrURqZ+mIstHEcPsmLI1jKR4pnL3QdfiSrwniwVWY5buQBBpnpEiFT7xeLxIXXPyhb2E16u+3KApMEOXYMcFyDtFEHLYTv0FNwH5AYJ9yc8qxuzgkhpU3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLBJ395olzmhe5arQ8H8lweMUDzWze+BBftsKMooqRA=;
 b=IPG/2w3v0Lf0otZOt6ttF6B3RI5jJCnl16T7qAp+e1wsjFlaPjowl3QOliVkRpSMfQN6lihM64rUKEk5gKZ7/Cv0KENGFmoD21gt+MdLU1kNMrZ2LLbjzc9K94SpvO5kFpZyQSORJbipFWoqKhdH8utFxkHi2yR54/L6d/yw3ZM/AqFTpnIGddPHlWz7c8A+4iwy2+gfEoFMP5p35Au6IZ4FQMas4B7q49bieobSvjSioXPamoWW9os4X49nDFS9mRTj7LEcJNK6hEMPlzFyNeGB+fUW+2/Sr5Ki82RpGVSfe3FfC/RzsDYIuvGijyYvcqSNH8FDTJL9qBq4m2/iPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LLBJ395olzmhe5arQ8H8lweMUDzWze+BBftsKMooqRA=;
 b=p45adF5YjhBBw6K+R6fGFP0V6Khi/H68vXXeMnkVXUfCPxQZqahBz0qkCL8uplBdBrj59p+VHFjiAzMvPdxwkLWh9qVMi5iwyziaA4A12T7wssSgBXkn3c83G80snG32qCaB7XiGHM25rUBmVIWB/wEu30M5lSwcnyJsVjX84qL4NPtCtC/z0L7femsRG/TNQ7wmp+F9sE80BLHy02Ed5XgWdA7a/5EN1yJRpE2yhsLub0dvNkwVNF65ZCuLHKJReocXdrvG85Rw835f/L7ch2sRcPWUQatfgtEGtEOHMQbTKTOXm7N2rsIQILGz91C42hRxNF21UMQUOWZ/clYi/Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>
Date: Wed, 23 Oct 2024 10:54:32 +0200
Message-ID: <20241023085432.1593840-2-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241023085432.1593840-1-jvetter@kalrayinc.com>
References: <20241023085432.1593840-1-jvetter@kalrayinc.com>
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS4P189CA0025.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::15) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MRZP264MB2684:EE_
X-MS-Office365-Filtering-Correlation-Id: ee47779c-4784-42b1-6ab3-08dcf340583d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: kHtNTzUIn3OEcgzPSqO+02VBtuJ5mv8F1c7DIheNyKxgoz2hvSLunwV+ai5O8MgN7X3ayyFrDB0T+b9CiWwsNnDXdbd0BMmu+IpLdyet2KQDeJ+i0mulbSsWHFUTptDF8E2to0cpqRMTsA6EMsF1W/c9ujA0dK7aPdaYAUdJ20TZNDkfsXlQJIeXWo+TQBw4FSkuXNKgE6LLrYoB+SCU3DKbEnqg54PrjpM0s1R1XfQZCo15/3fpatSmu6gre95AKC+Xe2GPvhHUOn9hOib8xu7fvHS6XKtiSs5hJ4jn4DqkPF6wRXqWk7r6gc91EM4IewgI77Tq+3aa+FtgiR9t7aAIKF5PINbj/7v3tnGCZLmbjgQE8scBwai2joIkeopcxm3GSr8jYhIdeHztE2Tjm6cK9nJTOlidJcka7EImZiMhEpFDrCtRw7IrRX19+6djG80z1X+1G8l8z/RcDwGeAZ7yM7LEiuyvKTmxpNNIcY+0m2ZccepUdN8ZmxPRWn75ba7DEE1tgtHNCDTCdnmLHC3yt3uHZvi+9G1gwNszjFRrV4pPqTjxB/hbtRmFxIjArGzk/mpNmRIPO/rq/rRyiKxEDQdALpFFKLN3UP21AM3A2+yXenh3th2tlD6NgBllcW5T2ERxSoT3ab5lz+dbZIVgRpPjZGumfU92A5EUAMOPDOmLgrOXACGuzVDM8UJ9Z/XpCcKvmsFLeZunev7dFUsni4ltfJN3zY8HWBjQL5QHd63vp/tZ6LMxCUNCu2O173A8jL79S+9aeWeB0CruT9rk4VaY/Ut3KbPioBvi9GK9HdUJsEKUUXxclLZOMslsdUT/yfAQ7GhnSFd8vXlZcceiqVejimrtPk1F4V09lfYtl4GihDe3GvlWaM0+jLiDcrnsXv+SO2CAz/u8S8uc8ru4etv3VctucjggQIl57ypfDDkvZS61/BiGJ/jgDdBxsSW
 ubInDoXUzElC658pGZGsA6yFRSuNUojJf+TGW/m2NqbKXiP540a8Z7QEJoqfmILU71CWbcA8jwiQeq5smN1WUH4AH9mJCdVY9i4yOqDWEe/5vVLmT9pT7IJ2ZSvpQm0tcC1vqWaE7jHk9gayOHHP2URGcMSBpH1uJnpg/rryjwfXnd6nVhfsn0jtbncmWbW4FWu/DZ9QBD+b939QVJwyzjwarv73fmQG7kZLHF9rbP2RpCtzLyjEX6Hv2Kwf1d8g3Nq6toibvYspTrZoa/AoHeCbhV+uWz05MWwJJkxIf9b4EdvPdpXJv1RnxpyIxK36LoJGgTlqh16vxcvROnhoMGzqAFUoGZQeZ3TZQ8DIebzKImDU0RmHQQkUJ/L+7mJQx4oqgXwgIOC21DBWqI0IrH7wXmVxWcTkTTm9JeOM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: jATn/8yJ5MgrxItk0B4GkW8AU5mn6kE1zUNPL2lbNcjLjB7pBHEQgVL+MJF7DqYsyWSCUfsiPUxAylu4qF8OH9Q0XKqUUk/fTez7kAo0NujjVbNiWLpv4Izq5+6jl0oy0znvsSa5CJtjrLbY1shScuXCRH7/YMgdgxrBCchiGH4RXk93FvcM1i/n0EI0OXjGTpDSF7RaTEfPzSTpk07a5C4Dr1ePY4C9by4CumaSsAsyswWTNDzwQUAUkYBG0EgPHrQfiWjLvnvzlAZ+8Q17qPBHCqq5B8nlFquoHyKRQZTFT7ylorSkM3nxPsiyMsx+E0w8WXjobDGZ6S85hZJJt6YEyojSKpQQWcxYC+9dTd7NFXc0C0lTDrbUfDxanaWqpFnD+skKpVLNU48zwVMkJ1APHzUB0lS4Dzh1oIcKGcYUvYxOOxmxxLS4bJ5TV+aeqdNu8xgeJMFT0T4YZ/d3Eq37kMSx5FN/omMBPkFhp8gIoV4ldYQMObmhSXoV+AYzQ6ilvY2p25z/G8iZf7x3EkU9rY4oAs9vEUYQVA3poIR1UQE8w7wABB5yxVMKl84N5fzP7GPZR4a2Al3iGDAfjCdtzgOms1Sfn8SWjv1Qq42ehMrW9LSQA1eQs13oWffhIbt+oSgqOa6RBOI7wZqctFBu1EtkTixKFlA4bnr22rYpIpE6Nfy66Ky000Gy3ZVixk/odHEcUaactzwYnQ0kddnJXV3tFxomY5txJg2Je4taIzOUVAdcxx95HK5XSr1Rh15FN6YkZtULRPmezmddtYqYyyLMJOVJesGJr2d5UCG0yhfCgEWuGPoDEv0AEUBwm6HMq4kvgUAN/HK+5gPIRJs+DUKC3ZQjecbTB/xgqRPiZMXBgz7hGjgLzrTZmRzCSVprcfujvhnShnyuMBTnykdrKmJp9DWzAK1Uv2rr/+CVWSJKzOCPFTphvKCmEyAK
 U5eYLEM2yqC89kuAwS6A/dTGCGfj4G1eyjJiPFrpVDVTRH6Bqe79/+FlF09z9RIAn+MVOki442Nhj6NK8mLrqdlFq/yppgSDg9GrFcw9D2YAcNljWTczZejcmiC4aTShREwydhdl0JglMiNfnMpWxb6L2hNhhrd9Mcu5nQvHiAnlUJuhYMs4EjL/EgVIxgUP+QCrABLh9ojd7JDunZ1uOIwHYP3k/SZIumMvKvH0srOq80Cw0KJc5bMKl/RdVkUtAkRCz+iXyx/riyfz78R6jvljTXcogP/5tyw0bbp/cs209kjphC2rREbEgqmHMml+ql6KxDvMkAA54Ik+seMmyNvuPIl3vdFt6e4NHb0XrQlJY+MZptP1HTRRHueXFgCAvClXimh/XD4zaGfbAMw3pyynqULieD9Nslp+jd7Gwe2wSwP7nejqh5fGCBv/bAI5QBN9acrzJ0R0Tr6O+IkhRrIElLE5Iwtg3nqmXsvgxRQG9QgcLHexvu4ly7w2JxwBSX8TTSZSdJxWQYULkF85DMw1CrxN5bLNtwp+Mpz1xVs/moeGSTtwxiFfjLaaSyMi0fNEbPNOPiatAv15ZxdmZ3JD8m8AUj6X72Erf6YPflLgVcMNmHIIy2qBMJTm0n03w2mvSiRWrodMEucqWOs58g==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee47779c-4784-42b1-6ab3-08dcf340583d
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 08:54:46.5790
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tnB6zIuDkITf4KK+vmQO31I/dPeu6pQJSOdGqXXhaLvnImML87C0KCQ63N9tu9uSLtCZaa/KtYpC2lKkCCBmfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2684
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_015453_128459_F357BC45 
X-CRM114-Status: UNSURE (   7.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] kvx: Request additional owner bit-fields on CV2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are additional registers on CV2 whose access permissions need to
be delegated to the right PL (e.g. access to additional breakpoints and
watchpoints, etc.)

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 arch/kvx/include/asm/privilege.h | 50 +++++++++++++++++++++++++++-----
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/arch/kvx/include/asm/privilege.h b/arch/kvx/include/asm/privilege.h
index f183b24d42..4b03d9d3c5 100644
--- a/arch/kvx/include/asm/privilege.h
+++ b/arch/kvx/include/asm/privilege.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2019 Kalray Inc.
+ * Copyright (C) 2024 Kalray Inc.
  */
 
 #ifndef _ASM_KVX_PRIVILEGE_H
@@ -120,13 +120,35 @@
 #define DO_WFXL_OWN(__field, __pl) \
 	SFR_SET_VAL_WFXL(DO, __field, __pl)
 
-#define DO_WFXL_VALUE(__pl) (DO_WFXL_OWN(B0, __pl) | \
-			     DO_WFXL_OWN(B1, __pl) | \
-			     DO_WFXL_OWN(W0, __pl) | \
-			     DO_WFXL_OWN(W1, __pl))
+#if defined(CONFIG_ARCH_COOLIDGE_V1)
+#define DO_WFXL_VALUE(__pl)	(DO_WFXL_OWN(B0, __pl) | \
+				 DO_WFXL_OWN(B1, __pl) | \
+				 DO_WFXL_OWN(W0, __pl) | \
+				 DO_WFXL_OWN(W1, __pl))
 
-#define DO_WFXL_VALUE_PL_CUR_PLUS_1     DO_WFXL_VALUE(PL_CUR_PLUS_1)
-#define DO_WFXL_VALUE_PL_CUR            DO_WFXL_VALUE(PL_CUR)
+#define DO_WFXL_VALUE_PL_CUR_PLUS_1	DO_WFXL_VALUE(PL_CUR_PLUS_1)
+#elif defined(CONFIG_ARCH_COOLIDGE_V2)
+#define DO_WFXL_VALUE(__pl)	(DO_WFXL_OWN(B2, __pl) | \
+				 DO_WFXL_OWN(B3, __pl) | \
+				 DO_WFXL_OWN(W2, __pl) | \
+				 DO_WFXL_OWN(W3, __pl))
+
+#define DO_WFXL_VALUE_PL_CUR_PLUS_1	(DO_WFXL_VALUE(PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(B0, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(B1, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(W0, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(W1, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(BI0, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(BI1, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(BI2, PL_CUR_PLUS_1) | \
+					 DO_WFXL_OWN(BI3, PL_CUR_PLUS_1))
+
+
+#else
+#error Unsupported arch
+#endif
+
+#define DO_WFXL_VALUE_PL_CUR		DO_WFXL_VALUE(PL_CUR)
 
 /**
  * Misc owner configuration
@@ -157,7 +179,21 @@
 #define MO_WFXM_OWN(__field, __pl) \
 	SFR_SET_VAL_WFXM(MO, __field, __pl)
 
+#if defined(CONFIG_ARCH_COOLIDGE_V1)
 #define MO_WFXM_VALUE(__pl)	(MO_WFXM_OWN(PMIT, __pl))
+#elif defined(CONFIG_ARCH_COOLIDGE_V2)
+#define MO_WFXM_VALUE(__pl)	(MO_WFXM_OWN(PMIT, __pl) | \
+				 MO_WFXM_OWN(COMM, __pl) | \
+				 MO_WFXM_OWN(TPCM, __pl) | \
+				 MO_WFXM_OWN(DISW, __pl) | \
+				 MO_WFXM_OWN(PM4, __pl) | \
+				 MO_WFXM_OWN(PM5, __pl) | \
+				 MO_WFXM_OWN(PM6, __pl) | \
+				 MO_WFXM_OWN(PM7, __pl) | \
+				 MO_WFXM_OWN(SRHPC, __pl))
+#else
+#error Unsupported arch
+#endif
 
 #define MO_WFXM_VALUE_PL_CUR_PLUS_1	MO_WFXM_VALUE(PL_CUR_PLUS_1)
 #define MO_WFXM_VALUE_PL_CUR		MO_WFXM_VALUE(PL_CUR)
-- 
2.34.1







