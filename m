Delivery-date: Fri, 27 Sep 2024 15:54:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suBQv-003QMj-0W
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 15:54:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suBQv-0002bA-GO
	for lore@pengutronix.de; Fri, 27 Sep 2024 15:54:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iLBISHJV4Xum33Cyb/98E1L96FR+bLCmLCr+IqrYaOI=; b=0rSr5yP2rjqW94zd5xLPhrsuMH
	xnkUwPA83T4NoLWNOKvYKuKanpzHOpyu9eOsytxinR1moI7JSqvqhpWSan2RQs885hi7iUjh4pWqb
	Lls4tVVC6aHjnvvnCNncekyT5yjQT5X6Ly0hDSm8L4lrOR230DqrlA5ZWoTFvYrHw0Fi6Gy9bEpkX
	pZE5eCq2v1smLP0NuiUS9f9AJWPB0i4nwSvkztxU0dVcDzoLeWwfpMmr+nzT/77hM/AM9YzzkZSoo
	K3m1U8NrHf/9IIDKIjK3sYnAp7SOOZ04gad058jtFRap1TRqrghy/XfsdaqdmIdBkvJB4iP7WFtYO
	uVmeqYZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suBQL-0000000BNNL-1ET8;
	Fri, 27 Sep 2024 13:54:21 +0000
Received: from smtpout148.security-mail.net ([85.31.212.148])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suBQH-0000000BNMh-0PmF
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 13:54:19 +0000
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 61ADC3223F7
	for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1727445255;
	bh=vLhQGdEOYpFkLnfyY0/HvIOcUbiEcds2N65elL87LHw=;
	h=From:To:Cc:Subject:Date;
	b=PpU+H1eHNu0aPuMa2uKBQzxGpNEsleKS26A6E3/25iZulH1SG5BaVyg+MlrSrtDKz
	 ZbddESYhF8hRjv61Gdku/oBmeTyKYTSdx27dwY85KT/Wd/oFPi3JCLv9iBYPTL0WPJ
	 NPkLugwjDGfvf5dauNxwOaeYe1z9BiAdA0q8OwzY=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 3AFAD3223F4 for
 <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:54:15 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012051.outbound.protection.outlook.com
 [40.93.76.51]) by fx408.security-mail.net (Postfix) with ESMTPS id
 AF26D3223B5 for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:54:14
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by PR1P264MB2093.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 13:54:12 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%4]) with mapi id 15.20.8005.020; Fri, 27 Sep
 2024 13:54:12 +0000
X-Secumail-id: <ed9e.66f6b906.acd17.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KmYD9/XJ8s67KrLB4qHO/tPuqP/gKEeC+zO7O0u8D4eemXTbY5P4AK5RY5GtfOWaamlDCEHROOD9rIYGCqQsF8it3notFWm/n54xA7eNWVsiHMlEFjy6JJhhk0zRHcna73dz/tBW4lwSuIYrnAmFxtg1ii8qX315yUyxpcoCS5cd+Jj/Qz3bi3Jwn3HjQT6dsYLr0uhu0YzSCMMijJyAOjinEB+Ci6xvy4uCqbeZNoMyMxZuYR68DexPaR1svAQv+O7QSH6YlOKE52TfDDIR+Fw2wALRxmIxDnKJ+TtfemitFepL8ThOsaGwz8VlZXrSnqgFVoc/oZS0r9aLz0bvBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iLBISHJV4Xum33Cyb/98E1L96FR+bLCmLCr+IqrYaOI=;
 b=MtMTawFw0svioxMqgTwqVnzmLXiff5gRIQ4EFkisNkb+/U36zK2OhNIetvTdiixk27TgedrNHscKz7IAh/cZfesapl//pI67+cX1AfQQ/eAFa0LaKx8hHBEAxzwFgwHvLosrmBNqmx1/HKbsdrflFNpYrXgfFqjnz1/iM3H9omxdSf0toSGaXXhBeoH+DQkqHfTxRuTob9aGno2UN641fM3VFbNIrEqBupdNpYhgGKLcy72f9tCyv9haud67CT4AslX04U/rPkawlNemlTbyyXN1NAhbPK1wUVdrBE7wfiLsmTZPReP0t7KWFQtFX5aKq92tf40whoPpzhagSCFt4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLBISHJV4Xum33Cyb/98E1L96FR+bLCmLCr+IqrYaOI=;
 b=G4f2D4fTkJxwhKRqO5n44jdM9TYYAE5EaeW5BBmxD6BWUf7LkB7rHb7v+zE0oN5bsiwNw2ZIqxG5MrA3Uw8fdEbE4NZuVBd7Y1JrEYtaRYgbae0a9uk8S9qPvfpUGFZzlNke3QsKkvqa22Avn/L76Aai9pDqfTttMZxiOWQFZD1GwfqvXLa72JzoScEL5riBNT+j/4+bvinOwzqUqyqMFZ7zei+5MgG8b8jBsespu6lE0hKsJ47vNKAuu80mQ6lXt0oenaAUkY6zxaXcBXIuJml6qANAoXTKoY0zS6shrGp0zT9bGMgeQSiSQiuzfCAC9ZTTk6MaeMF9iXWjNlxoaA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>
Date: Fri, 27 Sep 2024 15:53:59 +0200
Message-ID: <20240927135359.1128779-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR02CA0147.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::14) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|PR1P264MB2093:EE_
X-MS-Office365-Filtering-Correlation-Id: 949c2865-932a-451e-428b-08dcdefbddc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: E2hIxX+IK69TW3L4qglK/ED4mTpHICD3/PT2UHp3BsBLyZsMcAc1vUqG7nGxpMZ/8UuK1d6J6iJP5IAOXf/I8Bfekq7BCYXkM5t1r7VVkxPnHLLYWggXRh/M+46mP5PYIzXf8/1pj9l5tYnq0PJdEN1acXqbYzuYooeThh6FwLEBt+vvStTRRSjEZFqw8CPxUSrxbRhrSaidd2VxP6q1ulcmtyfNtIn2i0tbd24u8mwxlt8s98zyMggnQJ74C3bezJXYe3OcqtEZmKbOpELucwxhMS9IzgIfS46WuWt3WyL/fzhOKXN+WU3rWf5NzUgUTtIYT0fosZRiabufP29sp8B+Bx9tAhIKSo/UPhEibh34dnHCsmyonyGAE83XFQ2FoH7lfmc2snCHGhQwu46m7uHF1Ymt4gG1Yo6WtYFqBmauA2g3qpBFIM/R5txpmNYiCsbpNI4Pghidm7scaEykOECV36D7cPBhO504et3eAOrg5vScHFEunwT5ckvOvYaa8zUIN1fHzibpT7mBxo0IRyUAyiF28Z9vcByVMWrn40pQX/W1Y2FKoUo3kmesb+oSStNWtG7gpiivbbd81yELogabPcVBC4PtTpczalGwsQnJ6/pO7nwLIR1UkGjxhnqw4qM7f4dIV43UtByVrq5trKfTIkteA1E+KNfwckr+iMTB7CtyuhzH+uAQrNW11Or98xscXe9VTYqxdu7CeM+CagyaJ07p4mZijyWa8I1I0PInrNEO3Z/KiETKdMAWbUS2UcsVI/HJRUlQ3sXpTCaaAaaVTaa7Mm/i7BEu+RPp3LLQzSZYtuXkqpOSUpftD5LGpfoSf58UyC4pOgtR+sZdh9CzdVojYhtF74aLz47KDZGXyCxMIzHYx9bcb0MGpt90YxzXb1l1c3z/1c7KARMEWpPCfP3r4TDlHznabfZ7M8THt1jbj1fmKye2IcNqFJeMaGO
 R7eD6ZOjQFT03iIX8uxu7XTCwCS7vVFklp6zH1u5fHFIYryt0Zj3aNGHOoWyfCX76s9dwAKjE/sVhZMRGq74vzTIkdvbG/CSjkKDMSuSj8IihNQoHv/OU1V/WY3HYXamUyYWfIIxxluDFl4dF8/pwaMFUGaniBdcXjC9KN+GfVrdhfwfd3nB5vR/zkERxtNfBulz6tsUbTCGhXM59+v+tOZJW5DTmmCl/jX649VZNUb2vm8Btt1+rSqILMKzvln6pefWXakbbJDeWyqeJtWezTEQxK79rgJiHtyWmaN0CvUaivT4hrR18ICWVL2ah2lwDnRMAg6CmjbHvQyxewaRoCGQqiJMq3K7ptkd2/alopeky8xE+cEz0mJFH09LJlJjL4HLEAjlZ2Dq47MehOFh/ukdeV4Vs+4BNSfAvyNzlCtmlLqwfynZgjcxOscY/jmjkp17ygNT5wisGS5mtFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: u6uZr5yc6Hzy8gFvVidekkCT1xR1Cebum2R0wmwsG3pgBjAVrWtIQRlNJ0mhFrvwOW5UmDyf3uJDU2eQQdxIL9FKjMZm0jO+PvOAPm+c7h4iBPeDwBxNKsKTakGoAmtIjRDZnpXD2N1wKcnpfi6Y/3xMZzL/AmMWimAkwWzFdwZc3nIzFmaV/jxbDwa46h7IDUowUnx9stX9eh9g3ytCTyUZNNgzyUE0GUKRfObN6XgW4F/hx7p4esVOPl05vrie3dwdFWOPf8CVHrWTQXy9kP8nQ/ZCMgP8euMMUkqOmAhDjkGKpJiPgVavvlgF4VQyVBHBf+zslrshYxnANnYxsysQWaKmoLRKd+fQG5uVQqF3CNjYRY5hF+TjNogP7NG/k7VqQUjvwhn+p4WIz8X2r9fr3YhD+SAw0fCXlgDRTnP/jX+ib+xvDfLkz3e/+5tPzftnifilQtFKWaLhYU5VH1zk+gR8jx9CAsi6dPq/BdFZooezSsP91KP/ey0uUXebWb6ckP+bzWTjCM9f4DUqeSd8NqYUwzx6ysvCz5pU838gL5+ueDf3u+HM6c/jXx+V8LofPGFitckrH0rDzinsvgWnNBFdAMSa+xe5fBJq21QW1HkgnBZd2ik9RQVRz0umQC1gFfW11v+UfGJaq8T9npZ8HTcPhIKxxvZTJwyX/BVfu1SSlB51AIzwktIDJPEV4pAtraJpE3h8+Xz1Q68+Tt0wkZruaoZgLMpe3Jy5MK97fao/HDOrihHWuh1LpkVRXtMze6FbZ8IoEE6b8Azc6SVrFpSBNMfM78SrIjawGGvJ87QaTrIICz0v8ZxVsuX1P7H+beAXg9beMTkf7OyUbp5soRqD7rkemBnA2/wRQD3Doy99WaW4Vyy67fH2LEUOAZleiPUjc1re+bcy38NCpZFB+1DyA5vS0Gy0/bxTehsMKDoDw1QAerHxbjhGUZUx
 KRjaiqaN9rR8gTCX4o23WGSjV/dD0Nt/wZCcRj1PQBo0prcEy3lRewaG8afrKH6iCo6XJtK4wmv3dKlkthGTH863X8lJHzZ1uuEVUAhYUEK2hloufXHtJqR9M+napDbfSfZkIafp83dfBtvj18SAmeUUR5o+usfzICT3NLtqaLTBTqW1SCLFUAitXLPiwcOuuuPW2hby8bXPvWcyj+XilDyf5eDz8nOWnDjXI7J/CKas2svgztyNNkf0brLfAyJE1QgBsYueW+o5fOVcSkiohdRWxgaFyfLbHPpNmCkcL5OcnPlQrX+OhagB4gqdMyMx0QgEaVfl2dmT8xcvkfEukemKnDByAYT7X+9YDRnyJQU/GWqERRgs/IoJMRi5PkZcWwgoTagesiD5EJXPuySL/gqsdqNimTEykUUf6VVyYpYTtUqySBY20CoNMkSRPdbvxvBfyL0BVxgzRC55d3Ggj+vUugnc71UdNvc2e/fMsRlB0WVAlx8kR+/7G2sxWMarjdKlixB2VazWnGKgrl/0SO2rS9UTp7Rsd6dPHbgBFCL7JWJhIZ1GDfhoM/sl5TeH5MGepb1g2aU8ILgkrljWo1RGLorogNPhQqbRmIEkzLhlxLtc2rnaTX6vdOfDidZi
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949c2865-932a-451e-428b-08dcdefbddc2
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 13:54:11.9333
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YXHIBEvMN87uVJSXO8uhhZkIJUvbAMAXoXOtLBlkf8iuPNK+Wi+6g2THMxoAyjslJoE/jBbEu9kH7FTUmd+R9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB2093
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_065417_458424_30AB3D8E 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1] kvx: Fix SoC version/revision string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the register $PCR the bitfield SV (SoC Version) determines on which
SoC iteration we are (e.g., KV2, KV3, etc.), whereas CAR (Core
ARchitecture Revision) determines the Revision within each iteration,
e.g., KV3-1, KV3-2, etc. Since this port is only for KV3, SV should not
change anyway. But CAR changes depending on the revision. So fix the SoC
info driver to give out the right SoC version/revision string.

Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
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







