Delivery-date: Tue, 27 Jun 2023 17:44:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArQ-005sSc-5U
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 17:44:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEArN-0000Z2-Eq
	for lore@pengutronix.de; Tue, 27 Jun 2023 17:44:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQ2SeZkT6/NnhxqFXR2LL+PE1u7hNJPbdyu92VIkIW0=; b=EhyTPaUrrNVkLUHhsqjSf4fFFC
	bx0j/Vt/P50yAkgd/lm1Z7ew5cV73ZyfDkikb22W3D4zZAbbeLP639RYDqkvVxTEzFbZOgGs8OUmO
	wDW4bNL1iXVUwx2636dDh6qLlVdhVLG6wQxNGuAshlfms4U1gRTRdRPGgA162LZ/WruvM6y+R3BL0
	lMD3GIiktXIxwevOwJPkcv1rG1/OY7HCNoEgE7xavv61ta5MBet8cA5Rr5J6Orl0PcWJw/Zhw/2m/
	6Okc/Y9DZTjvYXohxWzxcjUKt7zZ2PBB/9vONA+K5WvxKFugt8unGaoktvIJQaUPYMI4WsPQLiy7a
	M1OPuY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEAqH-00DYAY-2C;
	Tue, 27 Jun 2023 15:42:57 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEAqE-00DY8j-1M
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 15:42:56 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx301.security-mail.net (Postfix) with ESMTP id AA0CF31BA64
	for <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1687880568;
	bh=CF06GOZeu51qd6uF4UIob8LYwG5A96xmOQvsYl3nB7M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eneE8Bw1VidvC0of//RtzUHZYk0qFh2Q+cInF5oKUSK0NRl8BV4Oj+ACvrD9aYYkj
	 hPG2eIaWw/hheFchbNwD1VDn8g8NouGpdCZXiNL1ol8irIcXIQLUHRO1tp65qHVZyM
	 Zzo8Sj5w1I76712IkYobqIpuIZJ8sAAYqdX/cxBU=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 8F8FA31C7D2 for <barebox@lists.infradead.org>; Tue,
 27 Jun 2023 17:42:48 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx301.security-mail.net (Postfix) with ESMTPS id 1D11931BAE2 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 17:42:48 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by MRZP264MB3099.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:30::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Tue, 27 Jun
 2023 15:42:46 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a612:6d68:e174:1cef%6]) with mapi id 15.20.6521.026; Tue, 27 Jun
 2023 15:42:46 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1e85.649b0378.1c7ea.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MX41Er1w8kx+xON4UfTAa6oz0tAV/qnmaru3yTOUz6h6KZzqjayZtzZVhRZ87lnNCILuBnUzGJqTcCApEmIetoAv33bzVVt5upJfykeUKkmiuIsfin7fMal0ZnBAPQvCLHEN6T4IQ1RsX5bCSpWkJ+SsUW7uG9JcKtkAUOZNSvoWtkt1Lq9+Sans3/9QOVCPikG9TDL3VXehMfM8YZYeUzRrG2lcfc5Jf3lEAwT0kU44cSInugNYHgX3GGUb5y6jMfYjwPx0ml0feMtECRD/T0AH1xQOTAmMSMmkso4OZ0gEJlzHbnHC7WAFmzUhPXYz3CDNUmanlhRpiOvClSoq+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQ2SeZkT6/NnhxqFXR2LL+PE1u7hNJPbdyu92VIkIW0=;
 b=SsnUcv2stddMzopT0rXbLAc0gTnwtaOG8x56QIYBdkdaCFuJRkpH+9/Oj8noeKmlwcisEG/m1Ob4Zdyh3d0Qy230rK0QpGfYZJVw/9NQDYxBdZ+5kh34BJXkS87ZujR2zUECtmcxdAxnVU/30jT5iiZerCwP5ilh75TBDsb+odcybwHUxumZnHGp+I91sW/aKsF5xRZ1aSKI9DI9EEFAi8BMbtCohFsavco3JiuB63n4RnKMlD4DCzaFPa0mOBqc4Xz8lJwFcjHqfW8F9EGSAFRtyUiufw9hewcVi4ChIZk2IGjKehQK/eX450cHepTobd9fG/YhbDKroQviIz8Kdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalray.eu; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQ2SeZkT6/NnhxqFXR2LL+PE1u7hNJPbdyu92VIkIW0=;
 b=RDIsHHeK+SXTxmYjoNrZsKnIfKsDUDUAHhmQHiN5IvCHDQ/09cyk/PXDq4FOBCdIVU/SYEgMsxTENhtWTy1o+U8ihJSrp4Hjtl8ph4jCLJ7RBHSmsJI9bX2KoQIJQZt6JaeOecSx9yPOhkyvI8hlVGNWoVs7KRZtuJHvjkS+TMdCJzJ6UDuME/C98ZppO6pVHtE6uP467KLR2dOd178S6YyKn6IwZSLha2kEELt6CMBYQguF2MR6yrRcjpXXwrrKAMxtA93pFlzIcQ3bHhjiBlcWKvqVzd7wN9EkW4lJMXw+/O/Rlvg/xcJCpOzA9LgUNN/69Rc9nVp13u1bRY53RQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: oss@kalray.eu
To: barebox@lists.infradead.org
Cc: jmaselbas@kalray.eu, ysionneau@kalray.eu, Julien Villette
 <jvillette@kalray.eu>
Date: Tue, 27 Jun 2023 17:42:01 +0200
Message-ID: <20230627154202.8976-2-oss@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230627154202.8976-1-oss@kalray.eu>
References: <20230627154202.8976-1-oss@kalray.eu>
X-ClientProxiedBy: AM0PR02CA0096.eurprd02.prod.outlook.com
 (2603:10a6:208:154::37) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|MRZP264MB3099:EE_
X-MS-Office365-Filtering-Correlation-Id: 2975d51b-b7aa-4650-3503-08db772527a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NkwCKqsuW4XbsMDa0GvQ5A3EO8OX5/9vG7ohLTtDlbSbXmiQFdKW1aaELJd/HYV9IdqZeJ+Z2ctolmurhlL+Baj2J+aTndbut56E/EX95pae1ze4T4r8qb+chgkMDzCPADZJLUbKnN3xVHp7dTHnp5q3o+9RJpZ6pC1YZFKf5lChXpHrnFnnM034slwbQgQrr4L6PI2eKhZNJ+SlfLhvJeTiBsVbyzt73CQvMl0cbe6nTSvMzBrjv91ES9bqgV4kk+Z8l3Fzcb6LKnXtQZN6o1eFSgcJymnCbJX/gL0ParvgwwMYeq++IeTxmH6r3BxEDQZESO+hIaR8IMrFKK5nGLRGFDbBdmwyIy7q+Hs4msAH/OttuDg3b5i47KgcEC4o9RXC4mueauefCkP97A9whuwZNIRAn2FAshZS2Xvry5KaXBVQXA8KOFochD8GhDLJ7trR4Oafu1+rWwzbeDNsJElYQRVt41R/Yxkr+e8fYRYoCvdvRDgdJT5OfLOHl4JTdv6rFQZZ6cg7BFuIzfH6gHpADX6zQ/fmlf7L0m+Uy0TVsIjPA7iRuiu+JyFsi7XMGR3y0qOdQ0iXiHYj78QaJoRKveFEtnOQwC0dA75F9Kx2JZtkte2ZAG4JNS3ODB5uIZMxL82DB/LaeonoJRUjWXo5AwcFhp3f8iG8dTAsI3p36pnkusIIk+GUe3Aw0u4Y
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(396003)(346002)(376002)(39850400004)(451199021)(6512007)(66556008)(66476007)(6916009)(5660300002)(316002)(8676002)(86362001)(8936002)(41300700001)(4326008)(38350700002)(66946007)(38100700002)(107886003)(36756003)(6506007)(1076003)(26005)(9686003)(186003)(6486002)(4744005)(2906002)(6666004)(2616005)(52116002)(83380400001)(478600001)(32563001)(473944003)(414714003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: +AJspf2B5pDhFCMelvRFfKxrXafEAPVKgzIwh4+m37WEfM/m4oOnHZmP/JN4ZyYbnyjc6hpV3UGwFtR9crcPF8lZNKwMa2Tlky+SANmVWUxEBnJObrqzYZLScCFyA4tFUEKMVyBQ7kFrmkredD0dTXMd6s5Dw3KEaAEON6yYtouMNI+zLWrtNKqcOr3Lkk+H4jDL6v30ia/8Us6ih53NQ0n7tid906gGnmGUGWJpLflbjIq4ORm10G8yVptsVq1f6HjUIqOtsc6UcnOaSSaBy50t6G+9pvPGqVETRkwfhpsTyTGupbQ6eLy5Z3LbAx4+4hXMV66m6UvXF/0rM23KbyjgiUUYNXEpqnren0ylLrthCrYgs3sQ+97MtvGnWqjT79IpArXu+n6WAua0Zqa05oxmFNCFqi7qNaKPpjtJ4RmN3BbOyyWQ2dJbBhBCTuSjavsY5fKdTUITRDbZeXZDelVKbsh4spGllYXHAG8gg5VVS9m8eFWzrP1oJyG0SbEUngSGcvxrHzttSHBFtnn0mFZLyjzdet+O/3Fnh+/R/FjJpW/1DKTU67xml/UwcIrkSkAuBAB+RBvswh5BESZlWb5MHpLnS8zH7aSMMQYU/Cc0yOx/KM9ZKUGS7Q0DBMwsRfrvMqYyz7sK8RdVoOCeqDEfLaOPBKx1Yav0D+inxyyGIsdWdM+20mlpIs4PvjW35qfub5umM3FLMNMAbaQHEYrOjLprSfAQR7KLp1dqj91PQNS1n7QPreon4gK24vJlm/QO864F7vrddZ3l+ZYdIzYUw9Fu0q5pA2+u1I08e5hW2us4E1j+J1oTZPACYnGDma5xR0/Yu/2v73TAK6wk5kJVLgVD67zgRVz4o+BV8dphAl3tj0A5K6K8TAtPyp4UqBe3V3iRezSmr2853jE5gUG0SkvpimWWsk5W52uQGOii7I8C86PjTq4F7vNIj8Hm
 9Cx0tqM9tY9DSCmAR+4O7hkDVdSJnEwtU2PLjoEy7/XHgZhEL3GSSSuCZd/GonWChyg5gy/0xYIn/5GnwUyoGKQvmxJqLumX8I9jzdUGSOC4xPOQDU1VBfeMUBpq7qd2k4XRJDKBzfuGgJkWeJQziMpxRrk9Kdex867TX18CbF2a0v4QrwFrsGpbAXl7PtxU4IQ9/iZS/pEDl6VNg/EiXinDOZ1b0ko6VkdrLkgGtT3txATganyM25DBsWb5w7BFzIoWJtMXaFKE8Mz38gcMterNIgCTi6z9nSaX47puzV44BEdryoHBppNuQhfstFL/7qb4m71pMEtJHF/edMgwvpeS8OZQRapFzT0TD5VJ6LXZafR/XwGlD4Xsn18rJ/NOQ6QPJhRtudoW5ivAfuLuQH+LgOGPYbpbxbfkYLt2Mdx0WUt9pyJe1qigYe/DdqR8qA9NjqvzMi/mjzcTjOfGdnKICPlS6v/tSvnpAeT3IPMyUREb4sAf4CR0AcizpmSYMk7oeY7qgeFUVVLAHfVzFzQwtIJmPRzpX4dQYLTCxgYWel5QtcYbE+LA8ymflH2UFlSjTfj8rIQGfVD3kEyKagkeu+nUks6285hn42sfyDc=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2975d51b-b7aa-4650-3503-08db772527a1
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 15:42:46.6944
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/O5JhillJOHvtqMaCWgxEDA7b+dNqcRE4HeSXAcfsMWQHF0ElV48D4IDysVytZe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB3099
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_084254_598822_2E3C6976 
X-CRM114-Status: UNSURE (   9.53  )
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
Subject: [PATCH 2/3] kvx: Replace dinval alias with d1inval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Julien Villette <jvillette@kalray.eu>

The coolidge ISA has been updated for better compatibility for kv3-1
and kv3-2, the dinval instruction is now an alias of d1inval for
backward compatibility and should be replaced by the new name d1inval.

Replace dinval/iinval instructions with d1inval/i1inval respectively.

Signed-off-by: Julien Villette <jvillette@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/cpu/start.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
index a647e8a513..83bda7b96f 100644
--- a/arch/kvx/cpu/start.S
+++ b/arch/kvx/cpu/start.S
@@ -174,7 +174,7 @@ delegate_pl:
 ENDPROC(asm_init_pl)
 
 ENTRY(kvx_proc_power_off):
-	dinval
+	d1inval
 	make $r1 = WS_WFXL_VALUE
 	;;
         /* Enable STOP */
-- 
2.17.1







