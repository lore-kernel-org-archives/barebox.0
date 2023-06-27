Delivery-date: Tue, 27 Jun 2023 17:44:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArU-005sTG-65
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 17:44:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArR-0000aH-KJ
	for lore@pengutronix.de; Tue, 27 Jun 2023 17:44:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ozjeu9KG2sFkW665JpKZ05Myu7xhQCEA1WuCxuncTS4=; b=a3n4Y6EO5C36rDVUJT8w0t+64+
	3V/32t91mYgSrnKQ5+NtCzng6MZIjEr7cqIPNs7Ij6om03H1N0Ami1nNJsVOk61k993mzv4tmnJ2b
	95DTajFbYV3Pd0+dC0zDWGeK7XbhtzsgSz0f2/yxZj8N62Gzuiq6tEaF8c0ELuwZQyFrtCvzHCyvJ
	F303urcOxO1MfhiDmve/8/IppcZVvE6vOurWedi4vzYA3fcyFZEBa1OpxvPNOeX05sKDK9PnFoEWM
	1UQTWX95xXoSxN3OEuDnsk6Umklv7N9y4ybXu2QxJqkcmy4D/U3mKDfm7ogMOZ54X3WB7benar7ZT
	KCBBEYXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEAqI-00DYAp-17;
	Tue, 27 Jun 2023 15:42:58 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEAqE-00DY93-1M
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 15:42:56 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx301.security-mail.net (Postfix) with ESMTP id 4A4B931C518
	for <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1687880571;
	bh=PnTQcjxIf5MW3MIk+T7oh2gE7bh2XDjwDc3uDeuOprE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Q8LVMEM5klhLlg9jF2XMAVvw1xKMmjQTlNSx+PvTxdkS1PyHLqoE3XLQ/Iw1IGHXF
	 1mdOebBhuq8BwxL019Z+5WW1FOtoOfHiHzApaWkidxx55XwH8Bu7ZlZUu/9gmRbdjl
	 Q6om6RCSYFLZ2kMh2BiNuWUSVNDNWMXE+PbpHeII=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 2F7A331C516 for <barebox@lists.infradead.org>; Tue,
 27 Jun 2023 17:42:51 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0102.outbound.protection.outlook.com [104.47.25.102]) by
 fx301.security-mail.net (Postfix) with ESMTPS id BD2F831BD61 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:50 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by MRZP264MB3099.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:30::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Tue, 27 Jun
 2023 15:42:50 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef%6]) with mapi id 15.20.6521.026; Tue, 27 Jun
 2023 15:42:48 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1c99.649b037a.bc9e2.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ohARxHvqo1WPeoolkDIXhK2gjdV+KYluACBx5RHMMCSfXFDGk2hPSNv/0aGq6ea+5KhVpCU5t1eitj2Cyp+chqK1hGg1D8PSeK5na1UHMmux0O00mPtdVjsgnqBFMCvROYqO9yuc+HTOrW7lqZEYtW8qHZh1VGbB5AfYSidxMVwJM+9BceuRntlw2x+n7y9C/dxRvtCL9OjHCiB/iz7oapYVPfQMWmZV7iedwKnMCauy8YtiDQD99l81jp0WNJf+VCF/HhGC/WO18piMLS71yyQ2/TpbzdZSmWGcdRENYB8pr3umFsmKQqkYU/qwLtJ/f6YnSDCjwxkF2Jvo2+jvLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozjeu9KG2sFkW665JpKZ05Myu7xhQCEA1WuCxuncTS4=;
 b=bW5d9T/bnHBkNOPA6a6BxCXTEbkHly1Gw3cW73swuH6uMBkB0x9QtZVrSHzbuMHdywvvJysSCAVOtNVE9HLqoTpUueTzw8quSQTG+DL5I04cSqkY9TzvNfrnw+JatbuiRmlxXJ3Q00QdQzOpEfOYmYGMlNg47wQ+OqQhiKwzHNkQAhSIfnoGWbi6kNxcJ4DlEBLMEr7xD8Jjnvs7Nk/jI2odM9oiRxPK1JWU87VTK3GpRWp9O3NHbeGKI1O9ifoXVyT3JmWWLY5tQRzJSf6Ufsx3f2DG9bt5hIzEogkjoVVIN2b/Ez/+zxS9CTgqBu7lRZiePVO1d9K3WvYh+dm8Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalray.eu; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ozjeu9KG2sFkW665JpKZ05Myu7xhQCEA1WuCxuncTS4=;
 b=ZI4vwzc7RDmfNDTNxtEvrYtEsveh8/KPBOgQ6YH03QELE4jSjRO1EA+tunRS7pU1UBx3+vnWXYw7DLrnOc30zbZMaIWpx1zuqe6nRgyiqExVk+e4dLq+TnHTU20vWdtV1TfPxmHpSkqQ/UwsMhlhiY598K5pcFKc3oKs7rj6jgvTku3KRGdZT2+WGt7u4EqvxTYPOCgAU0JGa+mUyLTy3XsbBy5pUsBf2ZLx0IawJce84oXSOu6DKE+oZMjc0lvKDKCiDluzkpIyt09A6GIdZz4tNZJ7iSdi4H4BGOZSo6CyX4pcSYrxGg79cqkGhWrv8LmL2vNHQ06EYmHp8toReg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: oss@kalray.eu
To: barebox@lists.infradead.org
Cc: jmaselbas@kalray.eu, ysionneau@kalray.eu, Paul Iannetta
 <piannetta@kalray.eu>
Date: Tue, 27 Jun 2023 17:42:02 +0200
Message-ID: <20230627154202.8976-3-oss@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230627154202.8976-1-oss@kalray.eu>
References: <20230627154202.8976-1-oss@kalray.eu>
X-ClientProxiedBy: AM0PR02CA0096.eurprd02.prod.outlook.com
 (2603:10a6:208:154::37) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|MRZP264MB3099:EE_
X-MS-Office365-Filtering-Correlation-Id: 691ef0c7-bb92-4a36-f1ed-08db772528cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: arnJvCKcUmOc39OSZq09spLJtEt02vFzVEBdgdlTW3J19Kz/DvlqyCa2maKJPU7hiRZFXDOS6PqAKwsU0E+a8v/BMLu+V3REOQJMOGkCH26bl9KONoqfMrtH3N8g3VvxCloyzXHj0yuEavMCeAfZGssd494ChbEWTZwT0ZptT5LJF3S2aQRJO+ajLcjBNWW5wvzMjPo1MlRLslylXWVPKW1aUtzKtfMVAVJWQVuWJcIsyQG5Uf5Y1/C19ZPlQsO2ACon+baCzbtgIwlfjgAE7l43ZCbYfazoiRCtYRWBAamfOi7HWPQumuGge4oAkS4hvGDA/D5cfFWzJlN5ok0HLlv86LWe+J9SU/iYlY06EOyY9rB+Lak0KErFuz2OOtadbh9HWAGVzYO9c8Z5k5Y5XmcZ8+hSQhLTSDlIDyYl515eNHVKCsB9ny172a4GeBwVtsoNpShgm0/+yUqNqgTwWX8/dd7+YJJEZOod9RiC3LqXgMlE4cHrHHRwGAV/fomEqSdrf4fMtAqBHid0EcgViXBgXl3UJEYoDRWlBJUgGje5FNLhKV50qmcwXmgXClZm8aAxG3fu/K3UrrHop0uJptBD0UVyLa0PBpEr7ugfdKOySCGOCZtMtz4z1nTuJ29u
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(396003)(346002)(376002)(39850400004)(451199021)(6512007)(66556008)(66476007)(6916009)(5660300002)(316002)(8676002)(86362001)(8936002)(41300700001)(4326008)(38350700002)(66946007)(38100700002)(107886003)(36756003)(6506007)(1076003)(26005)(9686003)(186003)(6486002)(2906002)(6666004)(2616005)(52116002)(83380400001)(478600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Ju7SE9f4qu4/Wkva0ROt6uWvtka64M88njDXH2MB/sFweS4sIyFKf8VurZ7E3P+MkZUramhjb4CddGP1SJADyf8zF5cj8FvDO91I5wivTM1tCEPOk2oH+IOHN++PrLyqXM523OJIcTvFQ9hP8wD+AVheadXNk5NPLweSSosCLy6zl9nZn2Aw6XJaMpp/fBGfxnh63/0Kdtuv88WJETSJdJeaZAN+Wsgf97XfCYaYgf17zrsebvjv+Li3jw3MW7xmKEybiJ17Wh1ilQYdpVA8jJURcp7pG1ckYK9Ioq3JMgeTKSTubpi/nkzXSTEla/tHGh25KdFcKUOdsQVFBGvb1AMR76IYabWJ1f3ehHANbxse5Oq1Tu6nw0d4uDqhGdStB9EGJJlOoZUcKKfJ2Yk5IlTHH7DnjzUURzygHAloNt6X5Dv6+WJqXLHHfnIKb5/e/VodfSHOqQNCCxJdPqcWGFxDbP4MzZGyPqZ9tNBy2zDpWMtz3kZLErt5TMKwBYvtImxYfYvjYFeAJkQocik1o004RfoQWDPmC1DyNEECFxZHK9Kec72z+wBNiXRzNp3W/5PwNavw6F1Pc3wHeu+2O/S+HFRrZPaACvUxATZKlOxgiT3ANBoPvVBbBlRx0I+PDq3BJ5VMPNsRJjBZ75qjNJ3350A0geFjwYIDsZHZmfY9GwHyv3dT0P6TFpQbvPcw+77hD/g5AQiLoA8z8dXcENhLPce8X7CD+3VqXSWBSoemVQYHgK0pbuogwwxL7EyfM/tMefTxjkglnCR/8EuEpyF+2bs6EfN/slc/mJVkGpnZSj7fNG+WU74g3PWfZfsQ0pIRIiu6kMh5BmjyVNcv62ibWdYR81CUWYYqdRBzQH1hdUBXjgJfJJr2B9t9XfDMBV5uwHWTyJSdgUNa26K2QUr0lYQJl1hAUMl8BhWUzlPGqKI/BSRVpMXp82mwD0cb
 e0891KgEhdAIFNcwBnvzes5mPvH/Xo+SHhCe/JcCizU7/4+8IsEsp7bijfyvVyjIURlbimarzf2HglJdGIGJenJmf3LtShhFV7EYtzFit5IRRyuksVqsFz89v1vcyzWK5WJ6R+vi9QvTssHnN2ci9Df/S+loftIsSq+d6YvOcZ2J6BEl73WSGw6a+9EQH+KPYYRdQzg2vR/kFCHfovpuu5R/++YC6YBfWybw66pdlwcbJvnPjH2sUaBQZ+RunoRFUzoSCTXgb+5C16Ke3ClgMIbSWYuOUDflz/Z8AufbfabHhJ5DbKLz4RzLYR1Ruf8dGqyDgQHKPp7OhDQVwHBA1rq94WxciqbLkqXqeCuR384zj6IIOKVulk/ziZPQllt890zUMLg/OS8YJ6cvwPk6q1xvk50ZcxJzTXrfUWU7MOXCh84r/PVLjlxNZIrRTErWupgRozv8/Zg1dX7H5YHIUQ9hEslh4aAIG/BznZHvaQXR3hxNqzeuak2TJPoft77WtE5nhnruedYRJtELiZquPk1n65gaJ2Qrjlp6R7nBP8uyt4C2zQusZWIVnzws8PsU3YrpKH3bRV4oDA7sIgJTtdFN7CmPuk4AWJuWj08PVK0=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 691ef0c7-bb92-4a36-f1ed-08db772528cf
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 15:42:48.6349
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ka9QZerYKeh+Ac6E35Ipo1pbhS/MOVGlahqv2e9eX3iuby6+4ftMHCvlNdS60Vxx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB3099
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_084254_599333_E7EA1158 
X-CRM114-Status: UNSURE (   8.04  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] kvx: Fix asm syntax in start.S
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Paul Iannetta <piannetta@kalray.eu>

Previously our assembler considered all separators (",", "?", "=", "[]")
to be the same, this is not the case anymore hence we need to fix all
the misformed assembly.

Signed-off-by: Paul Iannetta <piannetta@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/cpu/start.S | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
index 83bda7b96f..342c7d38a5 100644
--- a/arch/kvx/cpu/start.S
+++ b/arch/kvx/cpu/start.S
@@ -51,11 +51,11 @@ ENTRY(kvx_start)
 	/* Setup default processor status */
 	make $r25 = PS_WFXL_START_VALUE
 	;;
-	wfxl $ps = $r25
+	wfxl $ps, $r25
 	;;
 	make $r25 = PCR_WFXM_START_VALUE
 	;;
-	wfxm $pcr = $r25
+	wfxm $pcr, $r25
 	;;
 	/* Clear BSS */
 	make $r22 = __bss_stop
@@ -65,7 +65,7 @@ ENTRY(kvx_start)
 	make $r24 = 0
 	;;
 	/* Divide by 16 for hardware loop */
-	srld $r22, $r22, 4
+	srld $r22 = $r22, 4
 	make $r25 = 0
 	;;
 	/* Clear bss with hardware loop */
@@ -76,7 +76,7 @@ ENTRY(kvx_start)
 		;;
 	clear_bss_done:
 	/* Setup stack */
-	make $sp, __stack_start
+	make $sp = __stack_start
 	;;
 	call kvx_lowlevel_setup
 	;;
@@ -89,36 +89,36 @@ ENDPROC(kvx_start)
 #define request_ownership(__pl) ;\
 	make $r21 = SYO_WFXL_VALUE_##__pl ;\
 	;; ;\
-	wfxl $syow = $r21 ;\
+	wfxl $syow, $r21 ;\
 	;; ;\
 	make $r21 = HTO_WFXL_VALUE_##__pl ;\
 	;; ;\
-	wfxl $htow = $r21 ;\
+	wfxl $htow, $r21 ;\
 	;; ;\
 	make $r21 = MO_WFXL_VALUE_##__pl ;\
 	make $r22 = MO_WFXM_VALUE_##__pl ;\
 	;; ;\
-	wfxl $mow = $r21 ;\
+	wfxl $mow, $r21 ;\
 	;; ;\
-	wfxm $mow = $r22 ;\
+	wfxm $mow, $r22 ;\
 	;; ;\
 	make $r21 = ITO_WFXL_VALUE_##__pl ;\
 	make $r22 = ITO_WFXM_VALUE_##__pl ;\
 	;; ;\
-	wfxl $itow = $r21 ;\
+	wfxl $itow, $r21 ;\
 	;; ;\
-	wfxm $itow = $r22 ;\
+	wfxm $itow, $r22 ;\
 	;; ;\
 	make $r21 = PSO_WFXL_VALUE_##__pl ;\
 	make $r22 = PSO_WFXM_VALUE_##__pl ;\
 	;; ;\
-	wfxl $psow = $r21 ;\
+	wfxl $psow, $r21 ;\
 	;; ;\
-	wfxm $psow = $r22 ;\
+	wfxm $psow, $r22 ;\
 	;; ;\
 	make $r21 = DO_WFXL_VALUE_##__pl ;\
 	;; ;\
-	wfxl $dow = $r21 ;\
+	wfxl $dow, $r21 ;\
 	;;
 
 /**
-- 
2.17.1







