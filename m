Delivery-date: Mon, 17 Jun 2024 15:44:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCev-007bs8-1A
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeu-0001Le-K1
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZgEnHL2DihZMcGz1thby3RhMl7nQ3STm+XzPglu3Kts=; b=Ly95Ypn0LMg3s3mzXPMLhdhGuQ
	tK/6aerpR0H6JHqXffsEWZ3RZCzd9nSwjbxwIBU6CPI4RtXhl93KtcyJRbGGZDGW+93ETLS6YuwK1
	yQmWRHp0YYCb+9SgwSucYHbXwe9wKTG1IAJvj/Fpe9rxHtr5hrTdgkIL++fiy+XGUrzCrURY/ngzr
	O5jf9dTz4zyHORluKlCt8YqrrMvyv8tAm+CXJokNl/g/0RhRAmn81KoxMJVzECjUUx3I8vV9vZtPR
	lI5lULV4e3G+VC1QIwENTA8Jw1MONAAfcguVLQ25Lxn8sldJCFH9CRChaLeqaqkBZ8EnYLmCyInqz
	kdkEm3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeP-0000000Av9T-44Nb;
	Mon, 17 Jun 2024 13:44:01 +0000
Received: from smtpout36.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeH-0000000Av3t-3baV
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:55 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 20BC335CD2F
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631832;
	bh=Fn9B11fIlEIggXB6edY9VWY5IwuOS+voCQeOwYysO50=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dxFANKthZ03IG0Elt0b3+VGV3x6ExPQw7bqnk2W3UUhweeTKtA2MIk+6c6vQrwNs3
	 vkpFp1IAtS5vtyUYeehiHIAfFusVck1kzWGVOHFHT7WYz/jiJt1XUhrHWzTBHkXBOy
	 Qw3PdKMMZGhP1OIyqEqxWCb3RqZUMHvL4KqHicjY=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id F2C1435CD1C; Mon, 17 Jun
 2024 15:43:51 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2048.outbound.protection.outlook.com [104.47.25.48]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 806B235CD5A; Mon, 17 Jun
 2024 15:43:51 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR1P264MB2212.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:10::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:50 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:50 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <882f.66703d97.7eb90.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOLZbvfGFOVcs6++1G07dMDqRgVgnTvP6fMhUblSxQmVJr+kKDVrLXl5SwCiUL6dUm/2hgmnAHSdjH3sISMVM88lA2YMKwsl/LLkMX3blIC24L8g6FoK5KQLRX4m2VFcEIG9FoeCJlfEx2TwTdShTrrHLKwQf2+S/MnvCmGIBO+hH8l66wK2/Lxg9zlkUGWmXT6N8HiQViMvZcEsWrMV8XM/5xZMBmQThwBJnjrxWynJq24qOgw/ptl4GCN8pkV9SBL8QbsyiKHyD5CTVlvQ2x+85ZwyapY5+H78HAzSU0oxhCsqhx1SMSx7tglHcdwUoUfe1MG/DQw0gBGtm3tayg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgEnHL2DihZMcGz1thby3RhMl7nQ3STm+XzPglu3Kts=;
 b=ClvdKx5efUNcjvC4RvqWfIYyIpEQMS++808QlFoWMTuMr683AS38RHFXNUsr6oid8tOMbeKNXzvNMXhHDZhhNl5M66FnKC5MwOsMmF5m32kWg08pWt2+lX5vTUj9DicUsAIJOKWaoHyNJtEjacqplvZdB4HeA5ezMtbwHCKvdDnaubzuXLOlrvftJCDfgayhik9Ne/nGDdYjBCD8GDcWKvcmglVLYb5e4J+VPR38OjiAbEXrdhJ5eWNWHvhhhGCTiK6oPR/l6unKH3NuXq1Hw03urEIjOPPUIYsNGeTdDcZ28IIMxUou/TwiCibDwJi4aR5GDFRVE+/DuePf54AdrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgEnHL2DihZMcGz1thby3RhMl7nQ3STm+XzPglu3Kts=;
 b=DmhZoW3+IU5r2XNWPYXZrQgY5Ijbk4DsYJMpg2Pwis9ALyP158QEJXXI7Ha8YkTIffV/STEzdrkl68tXJN3cGGNvNiGVjkK1QV9huOT5XMY9CEv0Q4X9iYh8azQd1uhWQHluADtzzJi3xwZJKlqQcGN3rIVRsNg70UDH/ShIdEXCekTpUYOL46CZGWVfBI9RE9r5pYasyJ0cOkaQwBw0jEX718ddc4++y58Yl1liuR1tsta2fZPWQlcyMHHWWzorp+tUftDZ6yFcaaWIEbWyl9ARt6uXYIvpUU5UfhY24eTEJratzkXgYtaDw69EEI0bvM7HiAuhwoIOLh4b0TYtNw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr, Julian Vetter <jvetter@kalrayinc.com>
Date: Mon, 17 Jun 2024 15:43:29 +0200
Message-ID: <20240617134329.3671762-6-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617134329.3671762-1-jvetter@kalrayinc.com>
References: <20240617134329.3671762-1-jvetter@kalrayinc.com>
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::21) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MR1P264MB2212:EE_
X-MS-Office365-Filtering-Correlation-Id: 240f7679-35a2-45fa-abc5-08dc8ed38529
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|52116011|1800799021|366013|38350700011;
X-Microsoft-Antispam-Message-Info: 1/54MvggV9X6pZid73S4i/YHJUPIcmgEdr37Nqy3AptWR845hzlQR+RuX7zybqccDbPn/YHQdS3T9vthB9dQJI4KMFmfCQsc7INpuG3fqYMqvXkUDuN6P5N8hz4M0NB6+07RptrzduFC+re8u8GFglXnloymDg4EJ0RHIolJv2YJIuSc21l45DXJ70/vu58HaNJ1WrQwtK74MMUalAkrPzAwkSLEsR8nZOc2lVvCfYGwo7NKWu/JzJuS9aJX0BTlI3vaVMbOsvDe4fBbYLuQxGn97CFkCHFd312TBR7zc6rV21KdIdG55I1ccB8ZmBvMn8iYdLzQJVf07LMdz5be8JsnmrQ9iM6aoebZ7ziGvue7HQ5y/7s5XU/AChOcgu0Gf3W1gqolh3csOQnjiSK4Ne+Lzu2QgOel+1uN6DcTNdaTkJnUlhWlUcgeHaFYbdrk+PUNhqWLexJrq5HwmwQP8LqQvWf1pStT/IWVIeBGZ0NhYhYd9d/ex1x71HDA24Z4RIMopuCh+nd/cMvyYptzOtG1h1CR4YD62d6o5h+Yeeyk2DuUGbnqIR1Q7AQOzEkf5WDpGWX+c8LFltrWxk17XDPk8KDfs4DQSwo2iZslRiqL3XZm+IT1f5Gxm39//vSwdNs6bIKXNumqKwpYzRagfYHNydI7PBAJIWE4vhEjSAASC/B0z0QxeGE2iIqYM+5QFFIf/tfx+w6CoWrArosawtpLNQU/LNMGymgX/DA4RZmgXCGvoIzP2fPX1+AjBYhscBboS/mS0CCJ0gbvI/Y3LYnLNPGq+tIiGfoBGLMeYjTFCHOpv9oThEPfSBrtCj5gIhIzqXRR3gcUuvEJpSy24Bl4ywyeklbi55pJydMhEjJeQxKmfi43qzFJhaQe94JD5IFPmb7+ZdB/7ArurQ6MlQsEiZO5NNlllFkW1rmaEUZ/s4e2S35TXI3DI/bSfzr0jdT
 X7qmQ0JU0z2IaYsZRsq8dgWe+HPnYFmgg9f0hCl7sZpJlZGI0ZApcqiXA+1eaVlS5Hg6Tjnmsp0nUXm5M7n/iaYdH0WIr2jm+ZgBGYFOyoXP1XesU8cwUrJvBSajocUMlc9OEm+wVuzECjKFoat6OPvstL1C4BYS9bvnvMDVHDCkDgCbAAlbP/DPu1GBET55ghJMEXWtad4qGDRJz35ZndQ9KTA/7rWa7vioooPmc1DafhCh4fDcrqftcPCYZ/tzWXdPv/ATZNN+g9ptqv6KxI2FnE0/ZxVlwphw3pUiv99EgHCu6u6QTM8bmwXBptLfynoPoyW+cuiRCkAzKJahZj81xG7bgPNRe4ASjcq0S0K4lUXXBihuqDDDK9IUGPonAdDuJb0REjqF5LoWpBtOE9h5lgPFtuEMHxhFtHJs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(376011)(52116011)(1800799021)(366013)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: AcJ4ZX7/knkFMUU0DGrujR4SGJ9Ao51cP6Zv7rjwdBNYNcVDkjOc3jdeQUBvZgblT8PLkyOuCjXzDRzuexwYqISSViJCyJjOfj6y/xxQy6VRDXZ/KxRdkMC8t/E7+ga8ZsJTOs7SvkGXXcqti4ClNPgFwS5Cr9ALlE47Ri2ExumCWA7061gJKTqoelYITwNJAtIH0wVNK22GszrVroo4g0xrXPlMW3KnHtFY2G6Lr1zK3drimCo56BUhEp5wkG3XbBWoRt+aZ9UWD832zUS/NFAQ65JU/Lpff902gOEo+aj152s+4BcyguDxrCXNRHNrhGpCRVUlmX7patmZZ2U1iTlI1IvUKyPKScsDQ8pSeShwyXsrK7X/WZyaG9MgbuFZnWWVS4vodnjkgz5OyRQo3Ei22gLWtPFsVpLnZ7h6AfzDRxa7JUPUGXUa6X9eOoClZbRR6uXWMTA70J7AXGYYMacs/D7pNmAMcPjMtr6rkdqf+eqbxuFCaDcQ3/GewFmM9wABVLmGZbGNVHNXCU7zZx09S1ZvzmNhA17aoW5kROoXJuI8ippRsVtTVo7IC6al2VW14nlBVW30SI5NQVlCquePPkCR/1TwjucNFipgnIl9wdkau8ktbflnFI+1pMBLsrIBHLkVAmlQ2Rff0yB9h6P4vb5042s9+4EnbaaO6cUK1mkTDCpDeoT9DkLbgil/h3IR3GUY6+WSix0QDQiIt/4Bbv5xGJu9BsDKFhC1KAVaK3Lzc4ggcR6vgyOvswhYWB+ooIxyJXlJqe5WJ4ZfxkRXgQBAwmGAKjZITa789UE5sMGGovdUsKHD6FTsRKpVDtd+gmj3lC4tK/ll7mJBsrFWmid94Y8kjxERdZy28Zx7tj3l4Q3mvaGaTAoEQJI5wWm88oSOGScWekoHHcz5HzW0yNEA0yBd+gfv+QcDeemyr+InrwiGg1C/dTX6kqcM
 wFodBqt/nZEHxC0pvdhQvUNx5j48rXKiHg0CJVVw0Xh+mOHwNMYY66fqSgNS7jF4jiXATRdxp/Vqp+jCkEG/X4eHyivEQ8zueszK7lugko1Ta0htnSU/5qeOQIkUwA5Qby/imzvspaDdQymR9cFNCQ1Ofx6CU1k6OaottMO+WTQyOLLfRKXfj+7JV2MtgvwTOE3vKS1ppK10PoU3N3Ecdzav6Ul6pG4NwFRpa274RGtuwu6TgbeO+UlATRiJfhWxLL8miB/KFVVBDpUwE0KQRIX4NfQ10X9M5B/dcbNWN7uxvfMZ/P3PRcdvN5srD3nMYyYgJq+6ipiDC5ZJ3+X92c4ArQ3CwxtsrwJai5/EQplMu2SmHo2uHAlM7vmMVqNliBvxKy4tjlnN3E/TkDVLzlAbYgmyNaZAZKRjiumbQmwbtSpBln9+89g3PTM+7JBPfIfK/T8cLoetNZnSf/iJ6nJlB33McOveRwBHmLYLDzxEkHwxyhPOG1SX1ER50ebh+z7wpqa+ezkZD8wbJkrg6VQMvXb7eStDSXOsEeuszil8+gykDaFjcHWlxcEfSm1pdC2fWr5GWxo78wPK48L4bPU20FzpARnl+f6Eh7YM46kzCwIa2k5l+N+sV4BnqcJAdvsG4zCo9oSZ1PZ1pBgzbQ==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 240f7679-35a2-45fa-abc5-08dc8ed38529
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:50.7279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EESrbWHrne/ajUhTXibDKCVJW3PquWSLzcwA7Xw2OrI281itT66r87YcvgTQ5CB5S54avG+RhABfOPsuyHxkhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2212
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064354_224369_278A783F 
X-CRM114-Status: UNSURE (   8.23  )
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
Subject: [PATCH 5/5] kvx: add support for Coolidge V1/V2 march selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Yann Sionneau <ysionneau@kalrayinc.com>

There is a new version of the MPPA Coolidge chip. Version 2 has some
slight changes in terms of functionality, instructions, etc. So, allow
the system to be built for Coolidge V1 or Coolidge V2.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
Reviewed-by: Jonathan Borne <jborne@kalrayinc.com>
---
 arch/kvx/Kconfig           | 11 +++++++++++
 arch/kvx/Makefile          |  7 +++++--
 arch/kvx/cpu/barebox.lds.S |  1 -
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 2dea8cff82..2e6432f897 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -37,6 +37,17 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x110000000
 
+choice
+	prompt "KVX CPU variant"
+
+config ARCH_COOLIDGE_V1
+	bool "Coolidge V1 (KV3-1)"
+
+config ARCH_COOLIDGE_V2
+	bool "Coolidge V2 (KV3-2)"
+
+endchoice
+
 menu "Board configuration"
 
 config BUILTIN_DTB
diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index 9431c9fe18..f47f6d6eca 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -15,8 +15,11 @@ DEFAULT_CFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
 LIBGCC_PATH = $(dir $(shell $(CC) $(KBUILD_CFLAGS) --print-libgcc-file-name))
 
-KBUILD_CFLAGS += $(DEFAULT_CFLAGS)
-KBUILD_AFLAGS += $(DEFAULT_CFLAGS)
+KVX_BUILD_FLAGS-y = $(DEFAULT_CFLAGS)
+KVX_BUILD_FLAGS-$(CONFIG_ARCH_COOLIDGE_V1) += -march=kv3-1
+KVX_BUILD_FLAGS-$(CONFIG_ARCH_COOLIDGE_V2) += -march=kv3-2
+KBUILD_CFLAGS += $(KVX_BUILD_FLAGS-y)
+KBUILD_AFLAGS += $(KVX_BUILD_FLAGS-y)
 
 KBUILD_LDFLAGS += -m elf64kvx
 
diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
index a22998190f..1edaeae188 100644
--- a/arch/kvx/cpu/barebox.lds.S
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -8,7 +8,6 @@
 #include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf64-kvx")
-OUTPUT_ARCH("kvx:kv3-1:64")
 
 SECTIONS
 {
-- 
2.34.1







