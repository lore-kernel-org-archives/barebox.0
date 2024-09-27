Delivery-date: Fri, 27 Sep 2024 15:21:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suAu3-003PrZ-2J
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 15:21:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suAu4-0001Rb-1b
	for lore@pengutronix.de; Fri, 27 Sep 2024 15:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cmB3eDR2Mzw+tMHtw1z/fKxzDWmdW4S77jwDnzG4B9E=; b=nRJH1i2BOf1K4IQC/Pwd11x4R2
	0IsLLaNJ6UsXaLS87vttA5WditAYZVRMFvMtFwMIacHMa9gSPG6oqAf+3sBP4ZCDQAjyywRXwZC7t
	isKmiOEkXDPfLu9R5721LNVclxPfx8rI00LMRjt409IlbYNmvKGcQJe2I13SFvi0mOnHIe90Byg+K
	8scjFBnoRfMobVNr0HJR72Ftdj/x/l5qiAVRzEhYFiH/2mhTkRq4rX2MG5LpWeDu4Prb1w0CAqgSA
	lOouFkhEPTy/lVDLAC1tSWVO4lId/4cMOk8zoVVfK77URexEqOGx2wmcX3eAhz41TgZHNOXo6PLRc
	TkC6RsZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAtR-0000000BGHN-32zD;
	Fri, 27 Sep 2024 13:20:21 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAgq-0000000BDer-1uV8
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 13:07:23 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id AE9B930EB34
	for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1727442437;
	bh=yXISLbVnQf0wkowS+FJNG64dugNuMzcqEAeqyTcCEdg=;
	h=From:To:Cc:Subject:Date;
	b=UfKrihlm81d7ldETRdJ9MLj5Yt/ovYM3jXH1t15+6X8UVfPLMwS8amvdszcRJ/Gt3
	 WWjgWrRbD6zM0nr2FhwRlCsxcg+pd2+mTZjy0iF5aHJATZdVBvWnmh3K/XAFex868l
	 Ty6YmACuATj7uOK+l+th0FJ8rmCQISjD66FjJ5Uc=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id 691D630EBB1 for
 <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:07:17 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010006.outbound.protection.outlook.com
 [40.93.76.6]) by fx305.security-mail.net (Postfix) with ESMTPS id
 837CA30EA6D for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:07:16
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MRZP264MB2458.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 13:07:14 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%4]) with mapi id 15.20.8005.020; Fri, 27 Sep
 2024 13:07:14 +0000
X-Secumail-id: <12840.66f6ae04.80667.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HiEHxaCZCCXHuwqkHQiYf17frZT2UzN1meBo5apBsbOa2z0uDLw4+PuILVOLE2HneSBAuOU7PKesqSAn2YuaNa8AE45aA7dDrel1h33Wlhkkp4X5Y/5Y9nFhPzbkldU0qFQx2+f+0oacjgnZMuKz2IvOqLPdJk082dRaAMwbGh1MkaFuQMNvFDJKakSaDEkYfkvVRqjDPzSXVcxa736Uek7Z3jS6zgpxGSymbuF0envBpTclBVJBVFYGuC9gun6e0fnKz2tnpS3tyQ7CKLiNGjGOU5YuotDOvJVEc6QojCMwMKmNjIxwNUHmu2kXh6WzZtP6ebUEk7tJvXPBZYSIsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmB3eDR2Mzw+tMHtw1z/fKxzDWmdW4S77jwDnzG4B9E=;
 b=mOBeo3qY3GvzbipCCp+YXekSZi5kWUx1A98Xsnm+tbRnOLsKx3ZeP2zAjQzFEKq47Pwz7ciSIeKNF2AUXTk1ol50/EgpC3mwU/2aZeJlQcNzAs8mH2e8O6FTLIlQRTPLu0ifNln+vWGf4LAnDOOrEbqJqmFO9RnjanZusVbzydSLoFDRvYcAiBC/sSEktEVF59B/hCEVvmMsFGd0k1GuQiVO+kqCXNEk7qAPcI8Kt3QNUPM+lyWAk7kXKIfoXxqEUCscdBHxBUxnFcMDkyBTY5g8J7Y4RIhwLkGx+hB5Voe1Do5qaoEU98/5xX9E54qMvq3VXPaa/7u3kyryntdwmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cmB3eDR2Mzw+tMHtw1z/fKxzDWmdW4S77jwDnzG4B9E=;
 b=qux3rrabdoLoGUalHkyIP1Wc/J0QXuRvhEVDn6dacwgZYBzv7cUwzLyHxCoIJNr4lJoE/ZOirhumm81YveRQ8GOeNTJyVmGb7rHDiwDWH+Cal6Ra3SHPO+BsCIDjLOElMKqGYrvdN42QSPoTPOgf93pYi9+8WCyW7CagFdkuFZLBxXOk88JAgl2/K9RtLlsqwrwPkbmbaTn4/yt3L0op1xZq5qalTDrtsXZvX9L2ve9ZtIcU3+wNxGfNZnq7yCLDnZ3QoDWdDnrDdBAD4hdDDiy/nYkUJhmmP0W4gxTfEpk3lzJrITEclHU6qaGzikhtBLVDVdaI5kCCbb3hxFYkQA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>
Date: Fri, 27 Sep 2024 15:07:01 +0200
Message-ID: <20240927130701.1109201-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM4PR07CA0035.eurprd07.prod.outlook.com
 (2603:10a6:205:1::48) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MRZP264MB2458:EE_
X-MS-Office365-Filtering-Correlation-Id: fb1acea2-18a7-4d60-3a16-08dcdef54e6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|376014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: zN3rArheYTtNlq/X5LksIzp44ZQ3sExQrpk8zzO5LYeLFQk5tr2UMhKj3fTjnJ6xVbZkYVYmwbo59APCA0XgZw8V2+F1Q3u1/XB/3J4QZ9l8apIbF5rwUusuf/24OtN1T49mCLoG5H+B2zWw6yAZo33gUSB5cctyj4F6fR0NZw9aeLCCfOL9ptBWsUuQ+VjKwWAIx5ONmi0HrO2KVhjBgMl0lUBOJA/BR7VMZsP/kRKUzEaij/ODIaN9YKIxXQms8Y6QX4ELulQbxKsHeADat/JR924DcAD5n6WdCmyLIHjWvFLjnSbcGEUjZX4nXdSI0IZvmvt61YfbuNvBUudT8ABTPqlUcwpXmVCNL2P46ShgF/EHKRWOfXclvAKcP93X/9H02oD9KfiN2WyAkjt/wpf/3fVaZ8M/eGnHCYqdq3uNj2oEcT3CbkuB5msoOWztPMGl7dLxuhBd5ZosE7Kf16iVUM7WQMLvb5VGvCCIAuopaDo0usyKv0/pf1HS8PHucusZ9ZCNr+fTtO14y6NUcCypLZHhDjLFH2++hLvzeC8kB9knqY8Syzolq3KBWWX3aoDA9nwoo/fMSk20nesfQwm8i86JQqwbW67HYDpfcvcGd38iTTERkXWClYo1qHm5BvY/R0ysAcp4MKn1vT9VZ3EObUtjnBfb1qLNhAn38SCA558uj9rPl4Ob3BZEiHtLl3cD3CNeMmi7UIDLbgMDgoMA4iUE/ereXz5O68Ur0ywXDoWI7CknqH7otSeirgqOVzSq+22XtVG1gVwMw04ZGkUpBU2Qv8KSpMB/CKcmd8hsLJF7SmKQBdsXob9yxMQSd0RJ2ZJ2tvVZ8hXQpfhpLMR8pkga+WXbyZZTaq1kTB3dCa08T7TX7oblT7peR+Sp0m3OMFBi1vKyT+nGkfqz/PGlWALkGhCD/oH3F0dsN4IDcgF2zpPV3mcqCbRBGi10DSo
 HlwCuknN3xJIb3kpeqAaR1jRKqIvkjwaEN4vDZld3YAvRApabD0EvuA4c+dA8pWOz2xL4UauI7RFEt58pmomI/xzz4xEoWiYsToRZILBsjKW8gpjiaBmYeM8ujRVoEy/CrXCxD1DSg6laIed23QZnU8JhkT4JoXh+gced/Bf4Z2lVJe1ilEuEmzgeWVu8VAA222GCjzUWX3XGDgo/oszHdouFNARsHVTNbl8n/Z980wM0Oy/I2de+JM64YwbpXfEV3rSXTerikppzMdDzUYuZYkLMc5KxGaoU2r35Igi6J/pCd7EqgczdmpY/r2Td+WoQNAm+BhcXnfQsiDqQjQRAKOq20bQegQWigS7qObuN9/9yWOoapF0dcuK8T4fmv9jHqB/m532L+OUB/8fb9w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ZtymOnjKCsR5+wukPnvQUENhPm/7H5FZuP57A10ZTwNZfzTqVoTgnLH0nQxhMd/4MKgm/sUag3uqwYOJp2I/0ikTe0HdzZ/AooFu2SSu17U+hYYVWRu8+B7Xynt3XGpnOYFnxyPwHLNQsm9KrBkupN5BXRlJkT17RDMld+OZQ2vIWzN4v5q2D2V/L2H4IhoFKM1klnumwuIvaYppESiwtXyDOl5XodFsfKZmbTpuU6EWnSRlq/7I3V4q8bIr5hX/G/8hFTQX09gPgdmjvnbG3qyRJgbIP43yPAh4OBWk7eNCWJ0JnouGhdvLbGjZLdqRyrO3m9i6N8mhjU33H6nm/JrNm4M306cuENtVYAbHKJZV+M1XTvTSSyAmqeGfX5o2nmk07cyJ2r/BBvC8LQZ1eluv9T8XwXRHw4MEAE9IlCpCDFfhCSliFajkW/5Vtsft45mjdSkq2DAbROcjLZkFYOuYroUd0kC9RcCBPFCUpVmP1IDUTyiOHW/vskOzzhL8LwsL9qI1dVfhlriQjNPgdrksLuFfehcgRrXRLjzL149tEXsKB0ncYA5UOHm3YA6K3ugWhoYuDYHPej1/PuxCvb29StCaRSJkr0RXo5jwSxQn21MuZu/aayso6zs5T2Au471HlL3/QYQMo33wUyurZWOdHvjuI1tUP9UYnbpUd/rAbqRN3I8rU0OvK8Z5bcMj035wtbKz+BframahvEYkw7Gqqhj8WCy0D4YnphpfztlOrk3BesVj1ecIhMYfUIbLnTHguctaxEAv09K1Kz0zbWv/R7d8sqOkDpKMvVIUQW2MxcgUQXVEFUy4JxDCcr7wGYiMrN+6SWW8XfjqjlqDQTqshuWk2okPjo2YhYyyVreFp2jNdgCjOWkU3BO9LenqQ3gMxt0ce31cP7KjTOdK/r7pXU5Yl1rvGJnkVYUkcOro3dGU1UBsiM+2YKPI58Dr
 Vz2pPL8chFiWLkHymKd+rabJ3aNwR/8snN1kniaQzCFZLdnZq6oetOiuDVSxuyLnw0fV/UWW6tiDsehdztw/DQE4Pv3EUEYD3wKdG4E/emCNBzTOx5YXEkO48U8Cj2rkWip8gKa4HJhmKG3xjf64/gSM4Y4+j3+qgjM/Dhlnv2l6QboEl+fnOxEdaoriCKAnVDK0Hrai1At+pvzyOKBlHZVuw8P4j5XG5nobS2crkJpS5uOLE/EbZYlzH3IlquCfbZmuGVPKy9J+0wq8c1sJto2Ql7l9JmFvIyLBhSRD8ZZYgIH/gO1CCxya8mtoonjisBFmaEeN7QZL12jKpyIrEH5ZGlHP+uoAh5syQDZULhD3yuX8rybaxcqJAevhr3nwpPpQrtATMVrzlviymL3etKiHqsexvCsNSidOCmDm5GkITOABhwQELPxLVPyiMbgT/fFqDlPuqh/fohUOU1D37xlUAWDOfR5nGDOFlK6JyVc7uMN0axJ+dcv3gEcVK7IeKiGD8txBWqzFuP1kwWOBdzM4v12Pm+VFJ5faqZzd9SsmchEhnZuQZUViSTK9lydskz0toe+FuaQCpC+iYoI3GpJ62cJN8lJjqzpQHlPfcRBNEJQLzmOYrn4q9T7AiEgY
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1acea2-18a7-4d60-3a16-08dcdef54e6e
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 13:07:14.5889
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Igysju2hZTlVTgPu3ywx7dbxwM6EeaGoXHiJwV84YxDGoh4TJt6KaEDk5a5qR4nyIvbpb6N5QZtY6fhE0DGeIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2458
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_060721_556063_925B3F78 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] kvx: Fix SoC version/revision string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the register $PCR the bitfield SV (SoC Version) determines on which
SoC interation we are (e.g., KV2, KV3, etc.), whereas CAR (Core
ARchitecture Revision) determines the Revision within each interation,
e.g., KV3-1, KV3-2, etc. Since this port is only for KV3, SV should not
change anway. But CAR changes depending on the revision. So fix the SoC
info driver to give out the right SoC version/revision string.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 drivers/soc/kvx/kvx_socinfo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 87c20c327b..5f28f08bfb 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -46,13 +46,14 @@ static void kvx_soc_info_read_revision(void)
 	u8 car = kvx_sfr_field_val(pcr, PCR, CAR);
 	const char *car_str = "", *ver_str = "";
 
-	switch (car) {
+	switch (sv) {
 	case 0:
+	case 1:
 		car_str = "kv3";
 		break;
 	}
 
-	switch (sv) {
+	switch (car) {
 	case 0:
 		ver_str = "1";
 		break;
-- 
2.34.1







