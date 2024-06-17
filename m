Delivery-date: Mon, 17 Jun 2024 15:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeu-007bqz-0A
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCet-0001K3-94
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8OFm2a9uYqnFQPbk0jjJCYLKqyg/kwdJnB4bWpQtc6I=; b=MOrxHgt7t8QtTVJW3xh2j9gKCL
	wSsC8sOfMs471eNmz6WPKMFAXFPvKsi4hYmbJOgoTviwSF/5WLCY/URyzwJveKmNa7vkmcVbNKrFc
	LQ6l8S3PjyEwQ1yAMdTWwsjP++d3WoZ3obIW/+r/zujk1q93YBGAWV6/SfjHClV2t/0yDVFRpixmK
	d9geR/siFnONOOM/Dt8pB6y7bNJfxrCD5oassINhONECwLKGpZpgr9e9PbKZhfprDq77u8Sd+QjEA
	tFRvpBzyTiwSCoj1AU0sEqcHUzj2YJ/SZ7l4PLbMfNS6ixV3jdNyxe8LtwkNhyDrX6FiqZVBZdHd2
	CZBE/m1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeN-0000000Av8h-3F13;
	Mon, 17 Jun 2024 13:43:59 +0000
Received: from smtpout148.security-mail.net ([85.31.212.148])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeH-0000000Av3W-0Bsm
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:55 +0000
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 148E1322AC8
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631830;
	bh=hBfPQYPym9h92Tn0d+NeeOsxaDDNZcA1hAycaUwWOIw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=d7prUft0suVWU9gftaag5vqenWO/JuGQCb2JwKqGU7sqsV1z3tNwGoSmk0vz5gbPa
	 FK3Wp2ZtY4YPqDSPQjP1btXbWYK6bQN0EBIrm8zvB+/8gnfTkldMex8AmrwRdpI7bV
	 mk5hGp8+0VnCuOu1DV81YyMgUYWHFuRdaYCHaqpc=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id D9E84322A06; Mon, 17 Jun
 2024 15:43:49 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2046.outbound.protection.outlook.com [104.47.25.46]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 3D5773225D8; Mon, 17 Jun
 2024 15:43:49 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR1P264MB2212.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:10::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:48 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:47 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <44fe.66703d95.3b95e.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=efBrzauGMbLuWTVb7ZVFLSc6JPI3xFBWdjwBGJBk4SG04hhGNLigC/aAhWWU8EhPHur6+pFaFBr7xk/eM+I76CoRSg1pKMI+GdNZfKIbeeJS9gtWKG6RxeFKtE9EFabjlOPWJM+9oQH0jdhZh3f6lMuqN3St8MNrZ8Wnrr9nVV2ObCYrWKTM5ku2wDfJvjYYSZzaVBibFQO0kmJIBVYEAzGchlDjX2BkuwJJvj/nUkcGtpAT0WDWO8tBWeTyz/VBq/9hS+kk6HXL3n8XUUzF8K/pjxfy0YeZHW33Y5vSkmWReR8XgNYyKHpgZEMzMOzQwFHibl5+mzpGhPauAp4HJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8OFm2a9uYqnFQPbk0jjJCYLKqyg/kwdJnB4bWpQtc6I=;
 b=J1GfwibIsZ1bMEjpw6ySLyhiYENZMUNxDdHg1Ey5JebyuT+75c36XlgvWxvAHTSMCEY3XDWJQXGa/w5CNr58WCnF4k9LmyWHOfs6hLNzAZqdDLqug2r2X0c/R7yKHfzqedjqDlHTCQxToAccXJb9s+CB8/FVP0/r3A3l5WJ1DZH1Vp7yniWlPah8dqcAbbvokoyRHwU7e604iZLyEclPq/Qev2enI7NeNF+kF/dJeo8a/Cc28UplRj+18zeVZsKFgeVyqWFamp/xcnoSBcOkb5/1zToRhOY0koA7fjRmnbSov5KgYJ33MgWjaOcJ7FHs8TsSTU+H3vGA7AQhW5m59Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8OFm2a9uYqnFQPbk0jjJCYLKqyg/kwdJnB4bWpQtc6I=;
 b=KoWr1+vznch2CMwQeZ2piwN1TWla4uGpUWQZTeyL1+gcZA0M4rOWvSgcLECDP/Q3MgnXcy7X/J+VBGc7izYe9CbnV2f9sb8YpsGmFeFYhJZYvZWeva7eqjJd+O4+LCoCSSDeDWyb8OwxrUtfffaOjE1zEksuosVcJK86/UcAInOcDloYOK9/kukFIt0Pjndxgeka5Em/71/psycVfLGIN31TeIuNZB3eWc3zogz1687rlu0CAFL36t/xq6E04glUQuKlrR0++BgVEg4fbM25caT29C5FbwluUZDRiOJe4xL6CHyK0rlMqCh7jwbGmEh+fsn8/nm0FKUSmFUZYphC+w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr, Julian Vetter <jvetter@kalrayinc.com>
Date: Mon, 17 Jun 2024 15:43:27 +0200
Message-ID: <20240617134329.3671762-4-jvetter@kalrayinc.com>
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
X-MS-Office365-Filtering-Correlation-Id: be41a3d8-bcbb-485b-9608-08dc8ed38371
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|52116011|1800799021|366013|38350700011;
X-Microsoft-Antispam-Message-Info: BE4Cts4Y2ujwTve82vt9feJ/jM0peBjaieXLb5CEJ0ltIPP3Mmy4bGUnrk6gitLVBQWHZXTgv9MLhjGw02wY+WhsAWfNhTjF7dBpwz2/ODmGPOCHONss2z4R4BRQf9SC+DIWQ07cW+gCgERioqLobhKSYqoNFlLoSK1+2zHUHUv0aZWe4mD2rimZB/ZGYf/E1MJgwYN1Sz86qQ/vKTReyS6Eq5Jju6yO5Mr8ojyT0iyuSJc9i5BvpP45nv64RsQiad7+wMhiwChIDVm87RjVvDnUxvPaPSRaBZOdmOKUUE8CJZlBpUQK2RLBExu+5oQ8/bx1ZOU48UikzK35zgpMmQzewcHcLR1NTr7iJXS6F6Nl19HcK/gXiTf94vGDBmBgVh2oIGaWagmEWTva75bJwhFmU7Q8KS+YZITepx+NcuaDcUjjUsJVlG7h8YJCedTkT95ZX6pnZp9xGQF+tFMYyV+jl6PkfXdbxHvTNUbwJeNqyMHqU6E3BVL2Vt9v0qo0XiUcN5KM3TNx+RhghfULLJgq2WSW7Q02eVHhvAlcfWr8QRPnIYQbdEd6Phv0JjIwoNTYPloLRuYnHcOzBxbeciLut/GaW0DpsQU0xYkctHev5H/URjxlXrG2fN/HWczY3NdfdkqwuSCUkagl2cH1nbjTGje44yllofjDLFMUpnkluySdogOEUauP+fslBwWMVEngkJzZBhz7kMUVj5W6K664BYBwd3cKtUtcKufaFTZNDIQTXo4txrb4DP2A+DKUmLlQyqTj+Rgb4e04mNXiggMI69FbbTeQctJqOciKquHoGpRskyRX+W8FW84IZcORrY2Dw8CUTLMSIKsje4NbUjn0WT+fzIxG5jAQz8hInaG5FtVTfNOfFB5MrBFK8fD25MnLGsKFwWsruqmKDlOpk3vHo5lgosVU1e6bWiMPbMLqGl9MAKrm2lkqEVtBIpXFLf3
 Dut3quauaDd9SQZpsFisIoyJFUw9u7TnmJl3TolJDGh4YIv9iXftGcSiNbHe7dUD91jpmu1W0u4kdXHA8s6d43bEXTwGmBy1wW6CkdctOtm2VG0hN7zHxe88LU7jlYE+FEmcXTItKk00wo5EGYK3PrqNL0yN5dy3mtdNr4XcMBU+4+5g1eGNX+npgb+RlbVvH4Hv1WzU5ohxzABupDa5y4ISYjRNEzeAEb78aSd4Ji4Psxf1KHKWAKbycE43JpEOry8jol/hODzy9c9LeqZEr1IDsVX0M3zOE7grXkr9FADCofl9MEQGZtgirutUCcZVSFG3lRKG2hj9aOsr9L9ZVQZ6Q/m0DGjMOGGR+e4t/5+3BaUFa4ofriJhmhj8SNf+7xNlUJfQtRySxaY/QK2QP1JJYf+oK0jOjyicTorU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(376011)(52116011)(1800799021)(366013)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: adwX8Wwyv92KIsMcTyGhp3ByHWaQfogN6H1Zg/yK32RXXLTzgrmg1CrtBl8DMlZEF7FTeYKhZaQ3Ym+3gLh2qDdQ648245V0ztwNqERQlkxgwLwYFjqZ+6p3AP2sNeE9sdl5iLN/i6UoKDvvEeMg5MGQy0WoVKqZBf9Ct/bgX9GgED7SruwZE4pRiw8spUPDkkF3yONm3418GENWmGKmFUX7KG6EOCDMaYgB+VjK7sO38Lo6yhEzap3+5LTDKGPzaUKwg16vmRVGOigo/8b0RePu57z3grgqS0o+PV/yuMx1EFSF6B+sz2MmH81ETc9HHNqMtNgkazDRG9N3AspWNusiofY8zv0uEumfwoOML3gy4zqdTlanOJ0bh7yiIotdOX0RDIicgEaSKf/Wav+4SUlZTZuwpHdgJ3cPH2VkU+8DwyJr15aoGAYrVQr+eRHod9iqlZVBzaB0s1kaeqSuVUWQHVgGflUf/NYKoNMvSvwB0n2YAxDrkBxrjQ/jY/BTelTl+lNUZyZZAGEbdgLel0lUWR9nwxxiI016omHX7h19EoBjISc8M3oieZ6JeQF95p+6OkjtH4M8ZGFFiXChbOyfE6TzrnBYRzisYJ39qlMUDFsZEfz9JYTNt1L/qYfRU2h4cgK/iURI+39IJ73sy27aDiIv/QfThSwQcYtX7YHo7cosuMk4c7rKf+odvn2olfZkmCl1cES87qT7LJG5XMUlEno5fZ3b2OsKdcgA3+N2bE/tekblE/oo13tJA2sfRJnd1axF3rv1C9VX2nv7MHnlrjfbObHhg7LzvpM/Flu0WkAYLbOPU8aU+H5RHkf6Fg4U22BRkSd7MivNbjpZz0U3KNNtnFXTh3gXmH59BIF4N7tBI3gOQdxybLniA6Vh67Tf2pIfEhxEanQ+0uYTVvotfBHCzOJLOmUUiJDtj6ewHXbO7hH2YM771usgk/eN
 j+8WpI5xKUUZdPMY3DB4qDsoD7/6T7k5il914CwowGK0AM5F0ngJA/jAPDxZ8unFkLyhGRnJqf9sgFgQw66SUZzbMVHqWrv9nylpGjtFmDleLbwA8maxhCF4HAkFeM6twKbd7tP6Kdykr0XC1g+/mclQHhEfcVy5On3kOxHyBdH5OJwDkq5BNfxPhJA6G5hpsrjnFmfEs2HpWVh88R5TOkup43E0uxXBatWUjWQNxGB6eD/ioBa0rZsMqHExfN7iNN+PKdPnkL63DLb6kiiQ6TWPviihq5HgUyYEnEv0uCKjAYJ9lNUE7vTaoqFKBlMRTIeEX3IeO9nTZz1JTLkwA/CDs6NishqWwaseNkqWUQMPhzsmFWP3vmTyZD9zpeySnTlMA4qtvGU+yaRDXV4OVYkJ3vjb0Iu1YAxzOK+Hzhusz6Rr6aNeICe0ykf7T3OjEChUZsDsTvKldwOPA67LmWUNX4gy/42pmxuB8CdvOFbk4M1xK4MyP6s+h5y1UmKWaYeZX1AX7O+wWQyIlqZjNDOqsr5UHPxZ9k0QV29p93jD79cyd91sD4qSKrUkcvl7Ub7qRvm2eWM2Hk6M+k9WiEcKmnHN05A+fSqHsTY2HSFZy00bztkG9CgVnWD+2BetIbfnC5EzLExvOJuPRYo0qw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be41a3d8-bcbb-485b-9608-08dc8ed38371
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:47.8273
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iMMiqcKteCaLUIzYgmWUQmgPraX0z2BXzbWwO7d5fu94nrR9EFWQ3+zz3xj0M/zIhxmbMJ9JoPvP1c9LwbixkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2212
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064353_305054_8F0D6450 
X-CRM114-Status: UNSURE (   6.63  )
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
Subject: [PATCH 3/5] kvx: robustify i/d cache startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Julian Hascoet <jhascoet@kalrayinc.com>

Make sure the i/d caches start clean after enabling them. Also, make
sure there are no outstanding loads and/or stores before enabling them.
This might fix incoherency issues between caches and memory during the
boot of barebox.

Signed-off-by: Julien Hascoet <jhascoet@kalrayinc.com>
Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
Reviewed-by: Jonathan Borne <jborne@kalrayinc.com>
---
 arch/kvx/cpu/start.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
index 342c7d38a5..853676a836 100644
--- a/arch/kvx/cpu/start.S
+++ b/arch/kvx/cpu/start.S
@@ -50,10 +50,21 @@ ENTRY(kvx_start)
 	;;
 	/* Setup default processor status */
 	make $r25 = PS_WFXL_START_VALUE
+	/* Make sure there is no outstanding
+	 * load(s)/store(s) before dcache enable
+	 */
+	fence
 	;;
 	wfxl $ps, $r25
 	;;
+	/* Make sure icache starts clean */
+	i1inval
+	;;
+	barrier
+	;;
 	make $r25 = PCR_WFXM_START_VALUE
+	/* Make sure dcache starts clean */
+	d1inval
 	;;
 	wfxm $pcr, $r25
 	;;
-- 
2.34.1







