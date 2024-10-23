Delivery-date: Wed, 23 Oct 2024 11:08:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XMF-007ouz-27
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 11:08:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XME-00045J-P4
	for lore@pengutronix.de; Wed, 23 Oct 2024 11:08:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j4XB9mXtx00guIr1n5vQ1OgcCWGqMWcCgTpHwbrOYqc=; b=pPKXERcVBEkx7GA6Z4bZlhR2pw
	P81wuYa4k0lHR5zL1V59Sh7lLJf76g8j6p5TzpR+4ExXJpWxL6TxSXkcu/vhnuW+TNIouEwY7PMbE
	t38eMvX3/LHfZ/R0sZ5c0pu53L6mGtD4sSDRPAtpQ+giYPSYYv3wyGXavsg9UQzzAwI0aroVee93v
	njr1I3oHVycvvD/gUwEbUXa6Qq5YCdIgrI3lEqoSdrhJdA12RTsKspqIxbv252Khl3NayDl8jXlNC
	b6SKov28ZAdp57Y66AlyCZS8TRDYB78If1lQPZYZkCtwoecbgMmvovq6aquU3PES0mmH/EhQDnIL7
	IPbi0Q5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3XLd-0000000DiR4-3ttC;
	Wed, 23 Oct 2024 09:08:09 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3X9A-0000000Deqv-41vn
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 08:55:18 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id D49AB1E17EF
	for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729673714;
	bh=U7EqUh/uPCTu99gE2F+047hO5A0B7j9546p0jzUDu7M=;
	h=From:To:Cc:Subject:Date;
	b=fdAEpQFGLH8idFMOGLO9WanVUQGwvry3iDu+i0CNL6i66BpqVylvbVam7GM4tUqi7
	 1YSDSxemcC5OHw0lDeaW0kD07WgJjYSd6/nZKu0+WOvSzAJBihM5WknC5+rrrnIa3G
	 BsBEbunYDrz82xpaFIyQPdkvgDL1m58tnZTK6LQM=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id B346F1E1D89 for <barebox@lists.infradead.org>; Wed,
 23 Oct 2024 10:55:14 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012049.outbound.protection.outlook.com
 [40.93.76.49]) by fx302.security-mail.net (Postfix) with ESMTPS id
 38B371E1D86 for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 10:55:14
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR1P264MB2595.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:34::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 08:55:12 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8069.027; Wed, 23 Oct
 2024 08:55:12 +0000
X-Secumail-id: <4b2.6718b9f2.35e32.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hn72lSHDY5cfhViLzF4MlzIY3+uCaW9NiTyYawc1XLXdMYHKBSCiRLE6ZP303yDjm+RWw3vnwFyoxZZNy4UPlDJxLmXKxzzX5QiopeQsjArMp/ahhdwvGvFRuf66LLNMebM8h1fv6obOGKiOffrHAMY6CU4f4xy19LPBNvkWAItAazDBg28w7abaZ4Ypdi7Dn9PmiOkrzAJudj2RQvEzp6UpWRjSKDSGRyP3Wh7ZgaZ1z6hD6NGDvo+LxViRcC6453NDGwsu+npkYkVu/6ftOXE70G2X7Ab8WVJdutWTOeH4Vp7+LieeIVtcUWefi4W/ql0o6WVi7y2cqU38CECnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4XB9mXtx00guIr1n5vQ1OgcCWGqMWcCgTpHwbrOYqc=;
 b=yHEjrJa2YU8rWjof2G/YR+j+H4FlQkg5bRo0CtHuQaIihaXJeH+UuVnLLqrKq7fLq40ykxzUsitaz+m+N61FPCUgrrLniUUS8zzvPwQZK/2rCfcMxuktiZTQesMl0XT3VIZj9mWJEPviAj539T2KQgRDAmLLlJ7vVmyInpq/X/mjAJfgCoxan13/10WfyZC9UIle1G/tDbZtdcuG9qTOPtlx9iw7OY2i0GXJ/hAhphqiOwF0gzyMdWNAzV5NG/S0m5wB2iMrP0WBiRwXSZggKcHcUQLSS6N9tpl8zG78l7a4XZX7QcDX7HE18/kljLLS8ftZSGaM7QOeQ8+cTt4TRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j4XB9mXtx00guIr1n5vQ1OgcCWGqMWcCgTpHwbrOYqc=;
 b=DhssxliZEp5no+o1DXU+EKSAvrHOTBieSOK5OeSoQT70KehvIC1DFi039RNiOCVe7t/CPSZ8PRdKST376TugyYWNbTDNpiGQl62qhSmdACqK2qXxGEKKOLu/BMgr325k+k7yWhx6gUgDRxMEPUXq5A7mqPcO7zDCzsXjUdBpmLdw8voRty92X30Sc3URD+RXOaFzPibr7CM8r+3YQ5gWSf2PpTgylIotONZfSeMAdR65zD4sjHd5XV5ksyxpjhCykfTvhVi3l74TlNa8TugRsFJ4nxNopDhTMZZuVzsxzV9x7UQQfkzOc7gytxAfKiMqnmGsYd88aruoCAM7vinLoA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Louis Morhet
 <lmorhet@kalrayinc.com>, Julian Vetter <jvetter@kalrayinc.com>
Date: Wed, 23 Oct 2024 10:54:59 +0200
Message-ID: <20241023085459.1594065-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::13) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MR1P264MB2595:EE_
X-MS-Office365-Filtering-Correlation-Id: 36557201-2ea4-4451-65ef-08dcf34067a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: 5RAw/Qf1LeaDsBZJMqBnD49suFykk2Fez6Bke8UXswuNhiuECbrXLM0ZQLcPDmfIQnfeVpk+K2u4W2MLf6c1oChjz1G5UFWzp2MXNWpRM7h3qPJkxec7P7vvAl07vFZSj1Q4r8rYA83T2ccJ3Vsta0eyLI6FeqZB84Z/LFBDLDbUiujVn21t4Nj4JSxQD2lj6RLkvfPNwxlLHkhom3sfyMaT1KjWLxnLfclSG+gcvtdi2UfVrFj/KXnRSIHW5oVngIfqVAcOihi4mOw1xH1HJmsDUxZ6R5xUvKKoIbyIZHJV0h+tMob481vKavF+97zqhyESE6SzbP1k6eB1W8aSZdkmEjWU/tclSTM8Vem1e/UjYV6j1SYeWvNn1eLzK2/44FB5UYRgVnNgA32RrvG0FM4ChUz6Wwkp9bBKrkDH+8qAL8UInlDUWDJyl7LAcANXbvdkvHp9P2SgvxriBhZVkEQa0arzvt+XWT8+8WNZehhrVlp89zpLNXADmZcuDCpwQplC1HknTJ/C2rOtIFz4cujjYQ9pNvYFnnAmd41+P+rynjyXGZlz6kF0DvSSAfibsH3Bu8HgA9bSMsypUZx084hkvTgEfZGiByHp/WPm/UB1Ej+CjV3AukfNhBPEkqgBX0DW7Q6aCguP9ynIMnYZ6uujtaP13DM/imvt+1SmyNYHOCO5hioH7bVnBOlZ8GFe+Nq/67K6jHG2X0Fx3MAI/WoyrIQ4VcvReMDQE5HZ4+oOZNgksKtl+ScnSjxGBjKHFUa/+1c4a3hGcO1CINWF/F0MoD6d4Iprje4l38LL5qyMO0tMCwDYy60mRTSqiCOBMdRxp4ZLV13CbraCx84q2s+bZwJMBmEjVhEt0VMu2Fmcrii4TJ5jy+1BGxDnrpLRXKFpZocUQkeK3OPqQh7iU4bgK0Tr4IxAFlMvWO2ldd0DPyY5JWYSGIFg7rLf11i+qcS
 M7T1yeDof1buZlCscCcRC7Qc5Ojzc8huMoWk2fzssWDfdY4JmWIk0YN46R/nGoDGBe0+ezXet67uJUyyFFYJGU9Kq8BhKt8IQxAirQCTulW40HP8N+0G7eaMpGhiOFwJS3LQX6U3Sh2kab/YaxbRZ/nQPdUKIF7GFE18a7yAYFsHhQNCs2meCiTlCX23sgK+MEj2qUE45n45gFvufBf5CbQ8aeyJRb1Oq5i/muaNJtsoJo/MjSLN2qTOkzGV6ouPTMkMr1AjLe8SCVsRBw9pOHDl/gd16t9VTpv9U5TWKe3WYmkom5In2YKApJ+f86KzGUhJAaF1GaGQ8CDdCmu7xTgeXtqy0wjiGx2TesLabghhhRJbbQoZUbzafE+oFThRJRL4LBHyXZjggUxC+NY6qGLxlfwEfrMjyVPvolx0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: HvthZLboDxQbISjxZwMzgEckO63I5ktK4zzyzuaBIAIV4i3BkjWR4yPGQ2+tXTO7sm1mDS11a8jCUfYlv4DqXWPmVtUuvzocfWT5sKiqHgq5Ax9JI2UkV487C9RtfKmfYHgMXpwfsJy+Mp+c4Xr0pJg55huWs1g40/hRY404F3xVxle2p0+RCLtqbw0mrrQCYBQfBusai4xMWsyYZS32tl0VHvLwfHRMesQra2BZQhkiLL/gTgsPFIwri7dKv7ho5KUkVrCMnne7nvnG/5TyW0SIuBifeBA5CY0xXsgXpm+cGo7IqWrTuw/QdM2XAxBz7JRatieQseAgBQxmN6iVbTr7Mf3nbTyuucHSr/9hpM7gDQeSMupxoMSaK9GBRCx3oSDN3PH0BPfqJpgJuj+D6Iy1fFvEnzf96+3QE+nj0EZBNBKUB4SCa8UJ/VX5xsnjUZw+x9hCegmGJnBPHhUcDsrVoE7894C/xx/NnlvGVM/0L5+0p9tZT1S+p014DuJvln3+yhJFD/fKfxTZgQJgCHe/YM9R6SymXC4rEE83GCXBnIVRFPtwAAbEG/m4wewsrbTJjpP+0CvQjdzCjXyakyfNmTqjVKQT8QJEdMyAtD8FClN0vpJSu1ZM3yx+3K97jSFnESmu9QlsuvKTPeWRkL2SZw7ZiKBPhcBlD/Uo5TBnfHnG3Th6Onp1kqmBiPsEo/APY9LVKDKdqnAYFmvYR35uZApNDAxUoHxY2WFft2eYrtKJDvsrc2/WicXxLcwO4BRNoFMcePfRCFVOsKjtb/pz7rwvDGjasMQsCcnh3OrrQM0Yfsr81/Y4Kxm+DmSPISKw+AAviez6Hx/MODlFoZodVdOw+Rl9LSTqW2aeMN8kDdbnpHlZYRGSYRf+4uZFNGu0EUhg36CgW0fF24BeqpTSzk5KujRoDhx/I90D1Sa9ujOLlkCu1eutihlOM7RD
 /47GE/crSIjZMuVqe07CFjHJfB+WIEfzA9/o9TrvRq4fqDGxb4nrWca7syUKjN3CPZWsPmUrIIDNUMNESSEp3X0IxMwcA0kY9lwYhfuRS41GAmIsFebU56Hl5Y2gC6olg+aFybDqZ3DT/WJBH6CAAu5oIOKZLa36fUQoSyrTYBhn0AMQQGDcQDQA9V9TKAO97nrRgDGezfoAnykB/fvCq8tqWWtb/bKPLII+p3h9LXFiqx2BL2Mzd6egwvryOT3nYpZ+fbuLe1MbcKZdlxERyYi74wCmJYLxBE1RUW1lXHLi1bxXLyn5TCBm0q33LgB3adqZXGkahXe8NgTpvZGIdICrQl+F3l3/LtuFEw4RPqvvxsV9kAvvVP2/emFNJ09idgdZcoWkcLSXktdyNKSKWb5x+2jUMrA4rO2aBFn4LD8FQRig4lpGIHKz2ghucFhMU6YUkluC2txIZWsFKk7FMTPPJ9yxuI/cad3ZauxprXvq5vkttDUxOE96nO+JkKSzU/yTjr4GYi2JNwg6ZTrI4qHuUXZlf/ZrLLzOnLA1jhFXls8vxamDswSISjKLEezNMCJCpfcPu18WF3M6aX8gQyBpNimLxT6jImbqk74iDBq21pk7MKJ9KhMZ7OLjBkFodReL80TmwVpJ+Kx3RSxdhA==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36557201-2ea4-4451-65ef-08dcf34067a7
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 08:55:12.3336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: quy8P5v9bA013E/UQt0Gb6EDLq7iBmZ2ZuCJ99HuAQOOs5JV+vXJqIbxhsKYHRQ+4B6gq3dIM0xJycLDinodOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2595
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_015517_166193_29ACFB2D 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH] kvx: socinfo: Fix mppa ID read from fuses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Louis Morhet <lmorhet@kalrayinc.com>

Summary:
On kv3-2 the traceability registers order has been fixed. So, the
reversing of 64 Bit register reads can be skipped on kv3-2.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 drivers/soc/kvx/kvx_socinfo.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 5f28f08bfb..4b193ebac9 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -22,7 +22,7 @@
 
 #define LOT_ID_STR_LEN	8
 
-#define EWS_LOT_ID_MASK		0x1ffffffffffULL
+#define EWS_LOT_ID_MASK		0x3ffffffffffULL
 #define EWS_WAFER_ID_SHIFT	42
 #define EWS_WAFER_ID_MASK	0x1fULL
 
@@ -70,8 +70,8 @@ static void kvx_soc_info_read_revision(void)
 static int base38_decode(char *s, u64 val, int nb_char)
 {
 	int i;
-	const char *alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_?";
-	const int base = strlen(alphabet);
+	const char alphabet[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_";
+	const int base = sizeof(alphabet);
 
 	if (s == NULL)
 		return -1;
@@ -102,7 +102,10 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	}
 
 	ews_val = *cell_val64;
+#ifdef CONFIG_ARCH_COOLIDGE_V1
+	/* On kv3-1, 32b regs on traceability are written in reverse order */
 	ews_val = (ews_val >> 32) | (ews_val << 32);
+#endif
 	wafer_id = (ews_val >> EWS_WAFER_ID_SHIFT) & EWS_WAFER_ID_MASK;
 	base38_decode(lot_id, ews_val & EWS_LOT_ID_MASK, LOT_ID_STR_LEN);
 	free(cell_val64);
@@ -118,8 +121,7 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	base38_decode(&com_ap, (ft_val >> FT_COM_AP_SHIFT) & FT_COM_AP_MASK, 1);
 	free(cell_val32);
 
-	kvx_mppa_id = basprintf("%sA-%d%c-%03d", lot_id, wafer_id, com_ap,
-			       device_id);
+	kvx_mppa_id = basprintf("%sA-%dE-%03d", lot_id, wafer_id, device_id);
 
 	globalvar_add_simple_string("kvx.mppa_id", &kvx_mppa_id);
 
-- 
2.34.1







