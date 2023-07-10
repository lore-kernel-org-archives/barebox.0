Delivery-date: Mon, 10 Jul 2023 19:25:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudc-0060bp-EF
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudZ-0001JM-K4
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t7w69a827xpawcIvEqq4dCBuit6O4d3Stt00D1+4qfE=; b=UG/EHIYa8fEvrumcwkGvixpsdo
	3VzQbFOn90azw4tDsGzI0A+f1CuA+Sfd9jbZENJuHwslZqTsI8Zvf0JRb68fJrS6fJjNU9ZFgfXnh
	1jfdto2sid1kF5MQD8nNXTK1UQ/9qJBMwTRssuTu2xcgDDHaDyv2+BYnT7EOPm8epMcbmbuDDP2lA
	z4KbrkkB/G0b/460EVXShUHvdB5elMxQ5iVYreSuwVuuTQfBMODP+ZwIPVOBCTmn/2NxKZhnkd0s7
	aUl7nOHnuFeNuUbo7KHN+SPQo0ffRD8WATnSBEe241XB8DR9BSzUNj3/HJULvU6Rst8pmHOCo7rf3
	TzFKHkMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucH-00CL75-0q;
	Mon, 10 Jul 2023 17:24:05 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucC-00CL3U-2E
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:02 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 82378349605
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009839;
	bh=7Zx65lg5AFIJ2pcQ95TcoDWzzs+bqFfXpq8G2f4hjFc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=loOgvxPnWUEnWu/A5vW1AgpUAVpcG3No+fzVscTFsGdlFozhvB/EpFHDpRjXAtwYn
	 RoIrKdMSd5P7EAtOLo9Gk1SDKxxZdWitObG5PsmonY/L6zcoAY63/85FbCMWaiD4gn
	 XRvwA16/5Fnveq7FdPFyttVJFVb1TQgP4qfB/3cU=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 52836349607 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:59 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 8505D349518 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:57 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:55 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:55 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3ead.842e4.4>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4eNSOy3i5pJkEY8Bacxwb3b83VkV47yprhos2bHw1T3I9el+ZKWs/cVpuvlPIH4GaolhPylfF3fxwznlNjsGu/NjrhG9Tgo6rRnT4VdWRVlSChrFWO8Z/WEW8Bl8HxP9ZA0X0C++mQjN1/XTIk+9FfqXr84inLqpXDJOtkE7ry8jARLX9Rz0U5gvyxiXSSBulOCGpKo2sCr0gPYp+drwgz+yOKIvhO0T5jWPyOFiEbb2Xr116Iw6YgQlsBeraKtOGk1lywiGIWNWVSeuOP/wRy8/n7WV7Kwlj1vvdPheovT9vJZeSaPUqqGvsteNOGM5Re2yolyWI8/cFAoQlKyfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7w69a827xpawcIvEqq4dCBuit6O4d3Stt00D1+4qfE=;
 b=ISOOufJyd0ktyR1ufaob4BAqtGLFGi28qlTtk9UEze+1x7mfhfozoR/gWPUQvCvAGBRwjwuaxl8zoNdE5CgowCmRZQmCNaVVYphi9ONgFgkui0yCeUCq4IsSbma5771ZX4Zi9cuuYcEXfy4DChoev0WVE1SWhLxgZjKeYvc38HWlgUQAGSVCbeynrKt/agwqL2V3LHUggADNzI7MANGuiK8M5o4j11sGAaDnnQ39QGrdn3nev2j3rFeL0Ah7Y//5V+sZU/us8H348aO3K9676oIwuYY7CCUOPpwfgXLZGWD6acFlFEVdX6CJ+aql48HkPjZMR03RTfiLWdf/OvL8Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7w69a827xpawcIvEqq4dCBuit6O4d3Stt00D1+4qfE=;
 b=XKHQBlRiyQP8HioK+q9ln/WZCDoHNFecOOVSmCl9QK6FkhS3ddNkc1QiqSAs9T35/gki5LPkeAKiiT5gprIZBqD2LqlRlu3HceRE2QK6HQWmNy588BuWXbUDAfxZYRBsw9Z9bXgTtWoaSsPnIAN9MCixklPiJ+qnxZL8rpIVx0otwWy7IQdhDg3A1QkHa7C6un7gP3OwJlj/MRd/qy5XrSyk+mFgle1CMRk0iPfND1GqMOJwbLWPuB9I595ln7Y4oaKMKq3comErVMUaY7qB7dkYA2ves8bNAXeK/+p07VrbTcCe/O9aUsszSq8cskEB5SpToqhZ4kotfIW28Co+hw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:32 +0200
Message-ID: <20230710172335.26701-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230710172335.26701-1-jmaselbas@kalray.eu>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LNXP265CA0065.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::29) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|PAZP264MB2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ff8a7da-e69e-429b-552a-08db816a6f7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wNPFbCPHPSsiMbeOA/kWk8uDSceJLsmeFNh4bFcogAIu7YuKmRN46O1DUh/u8RbfGXcl22Do/W/Ox6TRnzH3lgaSuEq6jwPm1FQr+kk5BdzFEcLAfvwh851hym+byp6la8toNw+etC3b1AHFjORQdQUe4HpI6ZEuxXpakcicWlcuh1+Hm0HXK54B9Uc2Kw0v2o3IwTAf4rCh7s4aOtE4O+J48tW2KPpp9Iv/iO6qS6rq9eXFn2igQfDer7fGi+r9BicRfVhWVnZIVrO3cLFv6a8o8u9ZVLQpukYJAE8yhkY7jn2vk6JENPj7L2CjrEPtBGSgxlTDBlyHmFmGeIkVZTJQi+QEt1+jMiBO5zijQxGQPvhWCfScTHWt5qobStlgIO1Kro5lJ2/PVvzDOms9IYXxQfW9mVFuoYgGE5jMSPSpn4hn5FkiL09qiPRpyrzE/JEjNcL7kSmUbxOqILzDCtnHzdkSvmvzKutvZRBWhE5xKYJitRcESGiI7uYNKf8EKdhhNfIIVX+Zbj/gF/d6qGSJ0mxhCorVxEHseTGIty+y7OseAOqClmmxKx2NNdHuKCqboWaApRzv4lvnMoCd99Pqa0a4mxZVBpUIkkLWeWo0wTbRj1IRRDNZm43YN76n
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: hbGGKl7OM6aj24Hciwab1QDCp/4jqfVvF4QLZxnebzqRXmeh2sEibBPagMSgSTBVEZqTZeFxXMlIRb1ZzZ8iM7aLdo3eMGUBCf8JzCC6AEEoJLGbr6t5L5Hk4y9d1P4+eriNRi2dFmwFYT2UtTXpcyC6vBoI9BWeL+T282tGZqqjHx+AbKBhVVp+5E9vE6aNmmeWEBplSvAtLn2HlUOHAqobbkX1V0mD1uyIcA6a80mdWPmo1i86L+yUisxj0B77yzN2B0sqddXUWhWT/F/bOWncVXIlZi2GGupQW4ZMCtfDtlbKwKNMj2/KFZriqDxw3YLCceGX/dTdgM4ZOfGY69s+7mZHbQdAwiL8y7BJgoMxfKarEcq61eUYzzQtVEE3vrNJheBOObVXBBiYn+3apoXQB3KIAqL7LW/Wda5bEnuDdvXmf95KPu0lra3V91dKgBxp/NgMK8yF0UwWI423tMxBgZPiji1h6Ncop48Kae4plyAgqD2PCG6A0jaDjLhBR/nV9iJJb1fXlH4EgB3PIRDSWI2lTDD1zcxwiXv8yiCyXYHrzwsuM9jk1KlHLF71eRlZUYop3vQnjZnzZJbW32CH7ij3NTBFN/8dJ/sJre/kWaG4VBdVhb7/lUxE80kYVGdZm5OmbQYb5aARXoBEqPDxTaGAkAWgmEcH8etU/lUwhEjNVoE1btkNDdl3A1WNP6XR7L568nUQEZ9Dk3a0WNmFxC+vFhU7cx80SLX7b3UQATD1LayFhira7T83hbAc0L7HszrWLbMuOnMhoswGCe4qZ2SAuNQ4NS/744795t8wIQIHESG81J5zEv3ySnfTg64GYs7gYPa1z0DCjD0s8iaHlBUhKzkgsxz1FuD4jqVjQzFNImFzI8E8LHojyq0o+X/cwMCueuf/CjtSV/viVQApt1W5E0hhPz1FNlkW71aKEmiMvWcnbjotxb8HPwBV
 vXClL6V/XzK5+tOx3/NTv1HuMyrme4wYgWP1t3oUZWMu2f8IOPviy9hWfSCoidSEzTFXy66VVzJhJQVR/Ts5j5/jjjM6cIdkPFSSqodv2dYVPgieOLS6ZTYGJyAfP3mty9ncbpF9Jgzqd1k67JAJU3smLJdA6AaBC2eSWLbh9soSe0mqOwdvPm2zkZZySJQZxos3p7ivdfwDtQOTeb4NPzX+KL+Yq/f6VAunrQE5KMetSEiykOHvLzexFpqf7SXC0bj4MoOpTdaY+0HZk3zIkWWQ3i4iXStIqBH3zAvfv2M0HcKQQZyEdZJlu9XJkBm0qoKY/uhSShOuOlV0RQiLznCrFoc4lGNl/x2s/fRCPtSLpyTixIoUNURwJfKYS62PZQBDMKn339s7ZTCTK9VOqXLw96Q/Hh5NsWSKBa4mT0LqZIdw7dqhL53SkNVioTcLV1z8DOHNgHF40CtApk9Fae52raMT3tE7VyifnbEjxul8flHFdDIgtkeN5V/Om9KJfSy5IsVCtY4vFnbreXYoFyIhhzzHz2V641i0HpWeJ9EraGK1J4tgjFkIYnqMMq8VFPqvlbWz6S+j+rnDS6V+7rmTJhmQPWPguIYZ/8hgGCE=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff8a7da-e69e-429b-552a-08db816a6f7a
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:54.0612
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xUZCq/1IU3GBaENnINCguJS/kwk3s3JoYI6kT8HwX/Ok3/UpnFniWOYcy5VpsMdm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102400_863214_391A34AC 
X-CRM114-Status: UNSURE (   9.78  )
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
Subject: [PATCH 5/8] mci: sdhci: Add sd host v4 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adapted from Linux commit:
8<----------------------------------------------------------------------
commit b3f80b434f7261c7ef8922f78589942d02e104f9
Author: Chunyan Zhang <zhang.chunyan@linaro.org>
Date:   Thu Aug 30 16:21:38 2018 +0800

    mmc: sdhci: Add sd host v4 mode

    For SD host controller version 4.00 or later ones, there're two
    modes of implementation - Version 3.00 compatible mode or
    Version 4 mode.  This patch introduced an interface to enable
    v4 mode.

    Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
    Acked-by: Adrian Hunter <adrian.hunter@intel.com>
    Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
8<----------------------------------------------------------------------

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 21 +++++++++++++++++++++
 drivers/mci/sdhci.h |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index a980e34314..bce4ff2a14 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -480,6 +480,24 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 	sdhci_enable_clk(host, clk);
 }
 
+static void sdhci_do_enable_v4_mode(struct sdhci *host)
+{
+	u16 ctrl2;
+
+	ctrl2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	if (ctrl2 & SDHCI_CTRL_V4_MODE)
+		return;
+
+	ctrl2 |= SDHCI_CTRL_V4_MODE;
+	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl2);
+}
+
+void sdhci_enable_v4_mode(struct sdhci *host)
+{
+	host->v4_mode = true;
+	sdhci_do_enable_v4_mode(host);
+}
+
 void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 			const u32 *caps, const u32 *caps1)
 {
@@ -497,6 +515,9 @@ void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 
 	sdhci_reset(host, SDHCI_RESET_ALL);
 
+	if (host->v4_mode)
+		sdhci_do_enable_v4_mode(host);
+
 	of_property_read_u64(np, "sdhci-caps-mask", &dt_caps_mask);
 	of_property_read_u64(np, "sdhci-caps", &dt_caps);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 50179de0e6..1f5d0564fc 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -201,6 +201,7 @@ struct sdhci {
 
 	enum mci_timing timing;
 	bool preset_enabled; /* Preset is enabled */
+	bool v4_mode;		/* Host Version 4 Enable */
 
 	unsigned int quirks;
 #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
@@ -279,6 +280,7 @@ u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock);
 void sdhci_enable_clk(struct sdhci *host, u16 clk);
+void sdhci_enable_v4_mode(struct sdhci *host);
 int sdhci_setup_host(struct sdhci *host);
 void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 			const u32 *caps, const u32 *caps1);
-- 
2.17.1







