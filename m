Delivery-date: Mon, 17 Jul 2023 18:56:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWm-000n9b-Cl
	for lore@lore.pengutronix.de; Mon, 17 Jul 2023 18:56:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWj-00077r-NM
	for lore@pengutronix.de; Mon, 17 Jul 2023 18:56:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+NMKoVHCuzYjnnjbKXoU9lrsrvb4LzxT3wYq+ANhfs=; b=DMh+j6rcasiBNjrbeZPtDLCKNI
	is21gm8fFDxIKsOKYPUdvIdex6GEdw6LaYHJOVxsMElkuZRMtMA9mQshWZKWjuywzph6XDORhQKBf
	zSCcw/mR3g7UNXV97/E0wtGUnXoMpH21G9AB7nPvPcMDrWNmBfsZ9MrIYrUhm/olY28qzc07nDqaU
	vQ45frgZMQfkZuypKYqf2DYL44TYohLnAFUHA6+iDZgvwATspE/NfvQHBi61pCMJWKDjoUHqiVOvJ
	f2KfhfJ8UvwKv0F7q1DK9KqsFviqQ4EEs7/PTw4+QQWbM7VA3xwo5bF2cHf2NycF1gPnIkhq77kfE
	A26Vx91w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRVH-004bJe-2s;
	Mon, 17 Jul 2023 16:55:19 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUo-004bE5-2P
	for barebox@lists.infradead.org;
	Mon, 17 Jul 2023 16:54:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 90DFC8A42A1
	for <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689612885;
	bh=YIQcis1gdN+9uz2E8cgkf0R1LA7UusHA13pCXJusFdY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TqnuFRX/ICm6hLuWFfJEXIkBF4jiXkj+n+fDjXFHiAAVGLptDvwSCU1bbeIGiERvR
	 uofNOrDzNnIvdAQphM4sOlL1Qo3WDzSqRsuNZ9D6JIaSHUyzY6EWwSph3HOLc5dZom
	 KGE44TH2XgLetekUyBk+1IXVCLsN95aVWHtadpFA=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 753C18A3C59 for <barebox@lists.infradead.org>; Mon,
 17 Jul 2023 18:54:45 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 0DF7F8A3EC9 for
 <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:45 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by MRZP264MB2332.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:30::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 16:54:43 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca%3]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:54:43 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <cdaa.64b57255.d4e0.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGl30r4bhLcVuXNYp2nTHGnkwYGruhw/y0SthdGzhq+Xu4Je+8Fhs9pnihZjDhSAbMgQUo5d31gFKFYFhKKvnkgmvQLrErAyKCPQ5cxx7b1qhY0BY9DwOdxb+77cQaU9leJynk+/FlhOTF3EJFvwVtDt3r7i9zOb8hjnO06JKQeC3uKIDGiY5uV5vSDwP+aL4CJwdHstvNw0xIVLDFDqLCsL7O0V2eNo4P9Gcxytnu3xuX1D9a42pkgH+17pv9KqMiZM/KNc2zsGT7JfDNPtATJzLvsE8z9hhVBkxSFhammAz8T/3Dy6bKZXxzdy4nB5saFYM90ErSETpAJcLUhnuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z+NMKoVHCuzYjnnjbKXoU9lrsrvb4LzxT3wYq+ANhfs=;
 b=oOTaWjDawtkBNiQdMMGW6w3k+4iPtusu4Njj1NDFsEZ7JeYY+G6x/P7KOk/BWe1NKvx6683lkv5BbxnLB0AtT8aIMgJljmTUzYXuEn0/CHdxxPxFCnDm/D8OH4T3kJVqn1/oUni8RD4wKQxFhzfaKRKlSx7eN74qk+ck793yshr/gmWgjRbKf1Oas2HOb302Z7WInL/LyHqki2XHEhTZgwnLdl+TQurrcA+YregTOyVHYGjhDTCz3I+tbyDqL89FgzBny1C86bVo8cfaLA/XAiCeMVO8vn6N3qJqWvxD+DZCTcpqY90rBhVf09XUOcvov4ieBOe+qLrAr4Oj6xHlXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+NMKoVHCuzYjnnjbKXoU9lrsrvb4LzxT3wYq+ANhfs=;
 b=xlCfuxANqibiYhq6TYY3Jmzat0tHXqdrq4bpWJhiDzUVANcK4xxk4/OvRSD0ntdhmwCx3CFo5yk+oT/RQGU4ofXNcMl8Q7jliYUD1Zru3rM9mW7XERdkvbOQXKsooCHZ0JK87PVtNpEjhTAtIBHKhylPk58/hAOA4i5Er/7rFxmdIzYMlgJUodvg/fdLBT8NlreisnqIq3/lNBhq8w1viHzyDgmJUk+u+0Nmx/KZ1+I0ATddgANOvJYOTCLa8Fbd8hLss1Mv2arQ5BifeJuB6+Eqwwo5R3pSD/+ZrDwdCHFPABh+eOEDDb1JjDNiQrk73L24wlIB7W7r3tUl/J3oFw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jul 2023 18:54:26 +0200
Message-ID: <20230717165428.27286-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230717165428.27286-1-jmaselbas@kalray.eu>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::14) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|MRZP264MB2332:EE_
X-MS-Office365-Filtering-Correlation-Id: 7eee8450-1476-4c54-867a-08db86e684e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XmTgQqE/kwoNVJF91qzxPc8FLwQoCZxwoFvocdwKaEmFAf1ZmC4olYK3x8asCl6cd8HbAvrioGnJg+2bJV7fu6uUJ59XFnu+FVvMihCnsKYbFZRu9W+4jLzdzlAHsIyzxxzf2MDyDm5xWnC6O2swZ3B1a+hkPI9fwoUyaSmzwTuXuTbhr/Dwno7Q5C2XtuTiHVrzZgSCDVhg1JuMDIoJYPA87m+Mg8qPqi7RVfT5fDc9nex3zp5Mf4MPr6pjo+EfBIBHSMPVT0GImFFvqDYatITMFlPldLELx4dnqYXD5Rza2B/CDNgXt0ugzS70k1NpGCGuh760+HIOMT9iOaOwSYO9YD4Z5FpwufFzaOTFsh1AsYWXeXW15nXryecZ2lSOxaWupIsh3ReiTnMbm7AHMDw7oyktksVOEkxqJ0/CVvKP7LS1sx3+Ra5c0BzwjwYPLSdauuqWbglkwqBd425OR83FxLQra4egfFXkhzAWkcTiE191ZtoavBKrRuNZ7PelF0b+Mu21Mglh4k56hX5HtTjgyE7268knSbDUD4z69SBfrtPqWCutnotVDBkOzMGqRQqvV/JFbKAltLArz5Jd2xe4hswgIPD6EVQ4kH6L6zuFWGCHUIjkT23aO5Dd3CQtFjE8ANeMS6Re7qDiPGbkyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(346002)(136003)(39850400004)(376002)(451199021)(83380400001)(478600001)(52116002)(4744005)(42882007)(186003)(2616005)(6486002)(1076003)(26005)(6512007)(6506007)(107886003)(6666004)(66476007)(66946007)(38350700002)(66556008)(36756003)(38100700002)(41300700001)(83170400001)(2906002)(4326008)(8676002)(6916009)(8936002)(5660300002)(316002)(138113003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: kPIENXrZlrPLLbWa7/3O1ienGN+chBAGe85Ckjev+kiuPiOdg+QAqLfSsGH17HrNnmLNI4lio5ISn1L4Xsh86h941WkgRzYPI4wB9v1FH8O/sWU5v1h4ScGznlVV/k8kjjqqkSvGHckD7iobPCRy3V21Zr4b04ZsZxbbjsUliSG6LFfim0tZ3z5dUj85cpWjFiSGtFCHUYykTUplS6iwuQXZ6W/mTVRCi1XZNhOv8hUQz0Klvvld2tpXJEihaODhOnQEOu2kFaje7kCRuyHM7/9tA4UlYfE0RDFAwJ2S+L8lK4szj8n2WpcLedLdG8A7iYYlUJIjYru3WwhxUJd0mHn+B8iIsgoA6+4WfK67FF0OjLaQZFFIIHAgbqfEVns2vnv+dzXYyRvIjgWvZG79LeNdQrRoa8CEVqmraLu8O/QRq5TlhE3U7s3R5o6D4mdb2fK1JwXetOIF5tQZV3JIlD8SkN+Nyj5oFikLMO/SDDvfYyH/Suz+alH+Tg+6+lUgdyUlaFC+qO6/8+2YOtDri+Hp17ueVOQS7MggF9Q2SmdSgjQGLlk4+IIluyL4zEZbk6D1aOR5R92YWe0ts4172oKIVwOcWltQd2kl7gHQzWRiRW3IIohmjgHFrfBkP9GqmJcwVMoRpfMMl38es6rzFeVqWwX3FadUDJ9imlmcd4EQQStdxIhZlUXDnWgb7KhNGRRWR7vK1PrLReqXSdD/fOW/ANWCggqBzYKpmj2TIEzpycySApVVjDtQT+2HxeWu+q/oJtoGS8Z3qYrsl0lxRzo4K14yVZhSxCM2KEZQch5X4qlEE7a2kPuwSspC/UI3Bp6Hjthubd7Xsq3J7MgjdNHjiR/gCsXU6tHj7Evktu+OdzstsQXsfz5JssVM+spircFnqqab7d3WqQMFAuEvDxWv2EGW49m9qtxUkXu/tHON7uWg010JQiF2M34LrnyW
 NcTgRiWvFoFGLqEwYPEdgiPX+8YSiKPg6sXteb3DR6YJZQF2DH3bnjarlpzWLgNYb2rUmF8QW9z525rLOkZlanVukpSYfToD8oxsc9Aq37SrsWDP7CFacpt7MPR7psDmr+vlnDHHwjTDmP7qHSAuQjeZ0MYzh6Vl1IGIR13APIvvvWHIZ2Y8uoT374WYlVk8KtmdzvaTWnDCzWK1Km+AarBEjfPlotR43mQuwP1vzSKu99MHCA9LWzb2lEy81HzI5Npqjo5AF/ag7nUXW1kyhazjv3+gExSIHnE7MYTqW/MP7+hsL7DOWR3tX/Sywdu9ZJIlmyITjDL4nmTAWDV3VKDI2HxqM0ObfXlNN9NcVKs0WLHy2CLbyYHZEg/Sv8X2/bpzuzYdzOmHua9Wsm1RQ8cjcNyntCG5VRABfZX02PhuaE83OBpA8cYXEOuLMkjGwvjczpxA3P/AK35WiuiskaiugisaHrIa36ruCgKbrxpYDhmAXhJ5krSBf1Mw+p21vMeU0igaleAx7bjmtcoMM1CJev0F60IYOgiR0jZMKsBeYE7dBVdTreIDyzsgCbRS8gQgZQrUsSpPza90E7P0ejzgBd9jtSCd42tO9EdKXCs=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eee8450-1476-4c54-867a-08db86e684e1
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:54:43.4341
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PTgCqDNKXktHd1dNO0MBGsROUMW7kMd73L5kPUJlyAvy+b5tuhdFawWM7oW13nfv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2332
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_095450_944538_BC161634 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] mtd: spi-nor: enable quad-write for is25lp01g
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 632bfb2496..968fd3ea7a 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -680,7 +680,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "is25lp016d", INFO(0x9d6015, 0,  64 * 1024,  32,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25lp01g", INFO(0x9d601b, 0,  64 * 1024,  2048,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_QUAD_WRITE) },
 	{ "is25lp080d", INFO(0x9d6014, 0,  64 * 1024,  16,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25lp032",  INFO(0x9d6016, 0,  64 * 1024,  64,
-- 
2.17.1







