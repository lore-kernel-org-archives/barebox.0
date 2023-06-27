Delivery-date: Tue, 27 Jun 2023 17:44:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArJ-005sSE-OA
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 17:44:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArG-0000YL-Ui
	for lore@pengutronix.de; Tue, 27 Jun 2023 17:43:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R6vqNMvMlGESPzBZY7GL2hEURO19Hg1AbRF9hUQPflk=; b=4lqHgVhUDXkPdsOY5yfj9Us6jt
	KaqcqoYXQjCrzSGLa9bRUGMfRSLxpIETjGnjuJShg8g5HmVRThnxl8N23Ue9Ezs7q60yqASbIgA7x
	nCIrBI+DQZhPw4pAgy7w+I9AssVX1ZzKa1iFeCotJNmP2X18vVyAZX/jcUT4majkBuzQwrN1PKSQc
	lUk97Vq/aS12R45Tx+k2xNpXPAwNlxU1tRf6hib2zy9ywMllUVJVxYJOe8htEisCjf3I77csumSoG
	kMuXicBKDa4yv8P7oHa2RB6syxxAu9aJRveKLExogMKn19Ut90V4HoOC9OiKfRD17Ept4TUeP2sA8
	urfAg0Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEApt-00DY6g-1N;
	Tue, 27 Jun 2023 15:42:33 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEApp-00DY5E-2J
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 15:42:31 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 5619E349ADB
	for <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1687880544;
	bh=tHV+vzmUS0Gptdw6WufQBPi/1bwQDpQe5KWV7u7ZHhs=;
	h=From:To:Cc:Subject:Date;
	b=OfzCzTVIHUdu35i5Z7ntU4Nd40oJ+qu0m9XJonytFXzxDuWnAmKPG/i+GU3ZZ3Skh
	 U23XJucMSpBglFksBvpNNJg7j3WUHyfpbm14OaJxXyma9K4CKvO21tXRxwdEecRQ0u
	 Ion89NmhRE8CQfkYqQ4WITdNwNyI2r1dYDEr1ns4=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 1D48F3493B0 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:24 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0105.outbound.protection.outlook.com [104.47.25.105]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 4F330349A49 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:23 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by MR1P264MB1649.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:13::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Tue, 27 Jun
 2023 15:42:22 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef%6]) with mapi id 15.20.6521.026; Tue, 27 Jun
 2023 15:42:22 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <8d69.649b035f.4d62d.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZlIFIFzaayJRxpWt5UL5636HTmrn6iKitipLIMrzOdrg71Gzd0YuaMy+zvBen2duZYKCK+zK92yfz8c/bfrQV4Xf93iqmSB7e37jtkchejQywH/xKykEGHLJ2dUERDXqAFWKwUcjeh53/ID3jivw80D3pscBmkxiUcVwb/rkD5xZAhHddn/5i+u12Zi/GHvbX94/uB0ATRFoS2PMVymnZKOl32mm8aHRtTVCynIxIxGK6f5srYpB2roWPb4HiZw97QIxq7r0JKryh6zWdMs6pM5ClnHfrjBHynITQPlSIrzr6u0gjbwp4TCCUuKkdA/Ktd50IgoBRCYvKdwEZuempw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R6vqNMvMlGESPzBZY7GL2hEURO19Hg1AbRF9hUQPflk=;
 b=LrMWlqEzR+SAceNfkrp5H4EhX81kjWNs4hrE7aDcEgnWyQq/EwzPurTjlwkheRq3ffZdbyDrQJDOnLe1FkF42LXKP7R2K4EDcEVVVViACTHzOa0/seTBjVMxGIsjCQ+b3voCbgHsLOFmvHTi90UGngxlUeypcgQ0Ok4hi3JcWQ0rFuUW8BYASAm1Rx2QtgvZtpco/OwteRHFSELXLm0DkrUSFTrGtXUEsYfTutkLm+ASc5KHFaCLpEqoc2iba6Zaex7myBywwjdFY1szHYlzp5G19YImHHNLXilSq24feZv6ULgbkN8NZ5FdIgU+tA/i9OvTiziYqEZ54kc4aRwXpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalray.eu; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6vqNMvMlGESPzBZY7GL2hEURO19Hg1AbRF9hUQPflk=;
 b=RorCRn3z+4hiWHlVzLpxqvNj2zG7/NrSvO6DVnq6o+iOv53n413ehasgvyEOi1O4y6zJWpX5/RETznSukL30sROi7+RZWscRK+KD1M+Icugi/hMWc3pQmGrzlPt1sF2ZwqXgTJLWPXHnJW3Dey+sXuotCfuk65dAyO96ybCyVf4nhDCYUYuBUtHu6gOP/oAeZ0DMyw4Wb8KGB0r1iBKHhyqxspAW4J4vnMVzjbjwT22rS3EUdkLD9FucaNVelwO777J5vwbzLffK7uUzQFnfczGvzeJu8U1twnXUfq6b4eAshlt80nn+Lsu2qLSns2+3UCH4B7P0AHF/b1QtoN8tVA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: oss@kalray.eu
To: barebox@lists.infradead.org
Cc: jmaselbas@kalray.eu, ysionneau@kalray.eu
Date: Tue, 27 Jun 2023 17:42:00 +0200
Message-ID: <20230627154202.8976-1-oss@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM0PR02CA0096.eurprd02.prod.outlook.com
 (2603:10a6:208:154::37) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|MR1P264MB1649:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ce38ff-cb19-4ae0-3ec8-08db772518ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sb8Ku6r5b0fbIT19h47IDChB9BblXe3+wycgq5Wdb+hT8c834oCM55M66FRLBqx6i2hWVmcnFJgRxN8OZQCPeF3SQggOlv80mg62MxhGrYf4kWJKXOFjHix1SrKlntVvaefCuFvAEQaVWxrsCgFh5XB90YmTeo4QOglKL+AiaYnmCuHpcLMN/EXYD6Um0Hpj90gKGrcw9yuwCj9rEen8XUUst5IbGos3Bn6YBYIGLUGa40/CR4H+6QnvqQOac3j7tDz32otnSOlJ0ltEKlgrkkIDddN2hdxMBLfTwOetjObBdr2084N6v/4pHGNi0vukoGNawNaJbVOvH4Yejia7rH5b0rcvHMlg0AUss7neuAaSmFdXI6zROjb3SulU5PcRY0tfVb9xTJ5wiWbglG5BnItBk5wB0Cjaa14j74zIeMERguX9Pt+R4pMeRER64p8CQZBeqoHlg+5BgTszaOEXoxoC2djp5zA2LLPJYLMnXBlloqkTk+efMZ+60M44TxgASayQfgcA/+vckXRxoWcxqDg5aZSxE7EOIJgkn8ARymNP5gf7iLTkW96ak4IuhVhsFJ4HZ71ezOPiTepJNERCnw1PLk9HtXAd9sn83ImpgPU16blKgWvPHUV5Iu5hJYIW
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(136003)(39850400004)(346002)(376002)(451199021)(52116002)(6486002)(83380400001)(6666004)(107886003)(38350700002)(9686003)(6512007)(1076003)(186003)(38100700002)(6506007)(2906002)(2616005)(41300700001)(86362001)(478600001)(66476007)(316002)(66556008)(66946007)(6916009)(4326008)(36756003)(5660300002)(26005)(8936002)(8676002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: V4swWnzTyMBq4SR9MOd4nk1MJ7b6/snxlaY4sDyLfo5jusxVOxkz476W+x8uGyPoFhKVcY+sgoTJJGAFWElyqiie+3fYr+KoNf8KV0OfUMdPmSnLSRX1iuot0wmG/adYgBOr6a6t5gwpSo1fAS7LLO4LVNmE8iPr1FoCZ+AAvakJsbVe+tBrTVRnjZXK7taPflLmC0P0KsOJYOXvg2LHsvO5h8b9F1AtkBEouF5Wnp05igRN7Cn6LTi+EVanqq8XnSFF2pTr2lJhRARS9VBLhYdwLGoyYO2RIjZKep9C45XIuaX8rcAVYzFpuK08Jye0n9t9vZKCU/X8Y21tHQ1xHgRn6qATG6ozMqvEEQ19GKnwIz6/4TcJr+OmfPaRt0UNEauqthSXnXpmP3F3Nfdh7Pqo32JFghrFgWJIIuVjaqlH4wZcLYND04IszCUmhwIoxVEnDKAKei1JGjcWRqWTZ6X29Gz2kCKOchBBPoJSgf/bG8qLExmqzVPWIO6cl683I6JjvKIavn6gKA4IVYM778ZbWJaDTeH8vzDUwMdFznAt8C2UtH3Fau4QJQ0pCC7owwdWDWyC07eSdYePfl8AeghynqLQmAG1vCbONBPm8cSf7Jh4JPZpX/f1GdsPOUFvKvgkCBbWHqhXf5BjGucmxoz+nce9cdMzLFQJaVnVLr7+xJC3/jrUPfXXjkKYz7CmklS6GQ1yPaQlI4vwmMxuZRdY1HYlLgR6eNYFb7rFr48o9qIku4XIUXyO+PO7hoy+IFYA5UDMkumPAunhfYLFlaUba9aJJ5qpWu840rW91/DC8IqC46uJ5Uanxb8mRWyLfDD1VkiTrdVWEhRg4iXQcM1L9dBf4SymkeJr2xTDiNiZsAxOiJFFckQBZ8PU01TZdReSmJ+NiXT3KG7IU5A9InmY6tMyXKu4AbbrFgQpmltcAAQ/SkPA9cuTrG9r7KZ5
 yKxEg5LWofxfs1ZC6Q2o9SK+xvl1wVFZiLgzKpOudf4jWHSgAWHWKBhVRy4USg1LJqs/SuI10hoF53+ckr9HNeCaxO4HRn7ApKFag35pwlITc6ffh6c/ywA6qHJ3IM2o+SBgrfj1kjhGAMn1v59dIN8wTeQVSIaVjAOwuQ00Zd6eoLgwM1zsDuOpAXP5atNPqaXbNtNTCjpORtdtQlK9AFtZKPYpVrLQbKnLSLPK2qM4cWFVaSZstlRroUDMh3k+Qp4K9lOvzJZ7FKUdtNIuGfFp7aXpCv9OCDh67A5YKfCYJxuP7anGsCXfnuydPkD3xWgcdORlDNqbQ/WwcybwpA4Ly+qoZ+cM3II7MPJpXKfhXVzqQ40Urh9KeGgNuoTkgxciy7F9r6sT6pXpqzB3y234XaabbEkCLvC9uhlk+Hd7nkyBLt5rWh0MiKJqPyVUSSU5P5p/Xf+vHfMLXrnCpDcgwuzYZNEba5q1jyBvzeBHQCPGTUYKl7bbFirM8ZEzZSf6aE5i1vegqvd/zE8r5FvKEj4LYQbg0gRueNwnANktiOhKe9S5CjjqThZYIRUESGnPiFU1QtkvkZrDoONAww3MysrZlUfj9KbK14KgOmk=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ce38ff-cb19-4ae0-3ec8-08db772518ed
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 15:42:22.1625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ojYftNy71lbhuwGCvyr5/w523/rL98LCQmbL8/RkEnTiOIFVWM0GF/oUp4s4Y8Ei
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB1649
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_084229_959637_17077807 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] kvx: Add missing include/asm/mmu.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Since the rework of remap_range each architecture is expected to have
the asm/mmu.h header, this wasn't the case for kvx, fix this.

By default the KV3-1 cpu (as found in Coolidge SoC) starts with all memory
uncached and MMU disabled. Data and instruction L1-caches are enabled very
early during barebox start code, see arch/kvx/cpu/start.S, using the wfxl
instruction to modify DCE and ICE (resp. Data and Instruction Cache Enable)
bits in PS (Processor Status) of the system register file.

The core MMU is not used by barebox, however there is a default mapping of
the memory when the MMU is disabled where only the SMEM and DDR memory are
cached and device-memory isn't.

Fixes b792124a7d ("rework remap_range")

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/include/asm/mmu.h | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/kvx/include/asm/mmu.h

diff --git a/arch/kvx/include/asm/mmu.h b/arch/kvx/include/asm/mmu.h
new file mode 100644
index 0000000000..d39889bd3f
--- /dev/null
+++ b/arch/kvx/include/asm/mmu.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+#define MAP_ARCH_DEFAULT MAP_CACHED
+
+#endif /* __ASM_MMU_H */
-- 
2.17.1







