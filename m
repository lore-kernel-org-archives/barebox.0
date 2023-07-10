Delivery-date: Mon, 10 Jul 2023 19:25:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudb-0060bV-JD
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudY-0001Ie-O6
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LyLWgiQKuVHDGzt63XnNE5jICkQ9qJFNVeF/DDwoxDk=; b=ZY5DB6RCrC/F97LEgYQJGOjstI
	7utg6MAE4JRT9Treeu0su/UQcqLrjjlGhdivf2s6qrMyVXFK7Wyn6alc6Iq9t+88MLNskA37wqGKq
	M4i5iRsUgNGaAWHxUoxHWXri33WbDcY5wJod6+ZGXomxwnqmHS3Zeqgoif1q0tyGcpKerlvMME5i6
	aVWxPYuGAOntmUj7oQ7Ctr0SH1NzRhRAUAmTVZjo3L24Y+jBfrVJUGJeCAoWT3h4qd4yUD4qXh42h
	aS6VBZIrk5NM+X2nHJ5KOWuovnHetlEWWWVevXMIoLoFCj6/44bjpA8tQv+/41d9qhQBHdzcDMQaw
	NP6czsZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucK-00CL9a-2e;
	Mon, 10 Jul 2023 17:24:08 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucG-00CL5t-0Z
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:06 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 005D834966E
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009843;
	bh=AIWs0epMqUG2lse8c8rZLQukVvqCEtmrJbDhtsebpX8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QK2fT3rEa3Cvb1iP4fqajEoANDPGes+D+IVm1541Y/2nVaOj+FRR56w/qPP4nND8r
	 Yn2l3/eY7whqT2vemdBY5yC8CBS1fSuuN5m/UvBCEYsEzBd7H8EQ5aFsHmOvO9o4Pd
	 awnLnR+d9MKCXYn+ofTshvSeWvQpYMgGYMcmfIeA=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id BB8AD349518 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:02 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id DB08C349564 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:00 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:56 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:56 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3eb0.da246.7>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kmQoQKHWxYg6hzQJRzPli5bFISicyEU206rJ8bhQM9xmcNSc1rfKkRXQxFvENHg8hdqxxMBtfypmhyIBytbR77iwq0VHmQzK++hsspypsVbYUPu4+7o9ZDxI4Z+6VMidm2uWwjqMqovqKztpbmJ1fUWXlfaQ3/v+dfzHhYaJ5Zc1WyfstSlDXDGDS47xvWpzHrpC4iLmUVZU/iuae/mzfLAOPS2f4VTGBhzQ9bFzcpiwuQHFGRaXSVtkhrGamuIo8wb8c8VcBuQvcNlkmmUG+HpgrX5XqWYdtzFf+ZtVKBfYOH7hlcNk3upbxY+5pcdoooZYeIqV5iRI5EqaIqCgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LyLWgiQKuVHDGzt63XnNE5jICkQ9qJFNVeF/DDwoxDk=;
 b=lBlvSpbiuDHRtiD8QFslb1bC64uiyb1u2u+Vw0rHkk+c180qV5hFTpikMlbqa9f9q9mZigXDvb6aG75aRALT1vO8kIR9OvQXbx/2an4uDpkBdwwMGICZLBR7G0Du2RFmChmVFjezTLCMdOURREZQGFGVfYOPNHDb917unLy3ajYc9UOJqTgFibh23r+Z6PCyRI5DgQQRA3GK/KDx4oYur+P0wmBiCiTLNGPmbWU75Ick7UK33AotulWMD6jXpf1Ad+BTD2wz3JXrfRmA14OuGyx2pRkXoejGTFCuiLWKO3Qz8GIO8dG7AlC2lEhZtNlO5c4xl9wbJAhhNAJg4RTzrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LyLWgiQKuVHDGzt63XnNE5jICkQ9qJFNVeF/DDwoxDk=;
 b=RWZYP7adtdzId/qFDMKcyKyA3y7+0J8Rve1SLQFQbESUAKMc79lgMfly3oPuvekm8cmEraxS4dvoyUENIXjQGZWUpd+rAMGiW/tNvAtdbzjDy1NHOln0W95HJwjOsZe3EUnHQaoFxEiQjmrVCtGbC+FU/zS7qULL90L7ftNvoyC2c9+U7g7ujifqyDniqt6/dPEwtnzV+oI3Lmy9ON39QoCWOe1PTpHd7S9Y+kVEIp0/Wed2Cp8vJBchL+vZgiRmIgZYN5RpDOgE9Dzbq6hFtUSn3SCEw+DBusw8TsB9Ijuaz3hKb+de1l3Wnj445yFMY8zdlWj4xDoDG9IRWwJPaA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:35 +0200
Message-ID: <20230710172335.26701-8-jmaselbas@kalray.eu>
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
X-MS-Office365-Filtering-Correlation-Id: 808962a0-37de-4bd7-24fb-08db816a6fef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0FJcJ5Et3H4JH2BpsaDzBAZFax8ntebbAhMNGcbtwmgzZ2+pjUR/DL6SnqWnihugpayqz6TQnkAjOgdCKzBBJh+Eq19b6VNS7PH72njOfN5cZLxeh7QR5+4/v02twqOIj6nFZFXvSwtOHc/hhFmfOpxUf1Mqtt8qeT2J19FwKE/HPdnBB0Uugw9FmY7qK1qV6Sv/nBdyJunlYQitaLz8B23wtgJhfvJMmfshrv10XENHIOEqeVde0ahijXhyiAU33b0NZy/bb5Wj2OPWxpPrjpPwmFMaFyGbo3abiRcKzH0oT6QOs19b3dhj610Q0kEvMT9/jGh58WSUR8HAgEuMnQbLERSlW/3fhiadvxgxQjl0zOSYvI5sAFZ6OrBv28MiWRyDgnR14XPPt++1NuhhXokOEQgZoDuVBNIfaYb1w83Nd+eLlZMw1QkMuyHl+6msFj3nqvvoXBBwyI+hhg7lsbVK0RGv1mA7EUA/RSWA1jcSZS2ako9OEF8K6ZEVH9hMkMPejE9dbWKYyHpNZovbSzaf082Xuw3z0qiGs/vwCYRLjv3RczcIUTCC2OnG1SrSZHC6QJLnMFLv2IQSV6zXYDgAyNzJ07ggBnDUKvOAptfEDPB4ePj+HunCxdQ6ootqV4mogBG+trc/kXUbtSNDcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002)(133343001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: nvxL+L6rPezguD1TBx+ORjTQT8XGrz/2BoHNYuEEKQaFjKzJiUklkA5Cvn0rVpT97GP5VPBkePcFfTc9IJekOyOCyjVGVWHTDh3Lq7gHe3z1lsFAkuB9aZ5c1K4rB8w3PbSepSThqLUetpBy5+xbL7ZitI55du09yCiuYfaYpWDUcM4QC2Og9mh/ETEiya9iN39lflabCNkp5yiti1bAz2pHUMws7HWGIcjxvIobwhVr8cUY5aUs+s2tG3UE7icIJuwgEafcwN1xB9iH6D2H+4ng20y7BuV3lgxVBWI8KSee0d0JwdqKMlC7s/jd04vwoxx6eCdUkKB2qe8FCT3Ah2FcLSFT1a5OHzkYdfXzFy8h/9t4x1QXZTMqR0ejtEkQ3jE+imjdty3kG/7lzEF7Hpg2lGpGv3TMJHCnh+kWFnjeCKzy6hEuGBztv4bZYPVdWex6ZeHX1l3Ps1S9s1/iVoRvsFM5zyJLOM2nuLtle9CvnmoHyliPqlOZ+bPpnHrbv/Neq4yh9sHUo7BbGlPwNJLreqZ/kFcrgPA0ZWnYXqla/3sL/8jEMIp1c88/hrxCWCrOQ41Ny6IcEcQNlTC+xeZPDKFDXstPR6A2bARL/x7oFk7el4Tbg5h2IQjFBp5dsqCmEl6hhvVy8WYxn2BGd9Kc6IGurRi46Hg2KMGYDLJuKKc2ffD78q+NpakhikTqW4QS81p5z2W1A7gy5Io3XoVOq51hMXrp2aNETjLYNvlDC1rg4KkbE+L7T/YZF9jNAZ8aHKxskD8zaPPvQIVo40/vVJ7ZT1LD7yXEb1dy4+kWEORvumCQZpwLE99t5TKzPyiN+xzYYMAqoh72TkzHhCA/INWY+kKB8WxqqMg0OY+7BIJqp5ehGj5/ongyDy9I00JoHOBPNIyx3wbJ7Tw0e/UF4t/cY+MzdkOKsi72O8ZXd6Yv6keBLuAQeQN15sBD
 ghJP1h/AZ3+1A5UsFoojciHH882c5wfNdateulP9ck8ItPjtzHPojfHnBEERMkQwGOHsdgBHN2EHf64KU5s5Pc4S7CJdfv3mwBHt5FIF7MEsPzlBLtvBhOIYEH1Ctdroz2IUY43r73YSMGXUbsawwd4Q74U0lvWO5eJh5f18LS9qs9OBIPdiwEgmNTfZjKH/Gjf2076j3CVqtIukG+VLFr/tU8ck/zDZWZSEQHqKhbnnpCSShIS5G8CpS9owW5n5RAh0cZdxyp7iv5my2eXpF/20PwaNSCMEtR5Uk8ZvYsbrvyxAfY68gi8FtI1OcMmjzqmuwk4k4d5uDzEFYBs8v3RC5968JMGrK42cEp/zTgyKlk3+YF+M/t9+5q7er4v5uZWh6ATuOrIbSt+YOiQ8+usvB/2XYwulyRCp+Ohpma5Jz/RTO4W5Tw+dIyaVz8zQaVto3EWztNyrL6xwHekut86Lm3JWRiagjicEE3mwU6xABrL3kUTbUWInUDytvyv17RIezfMWjSYxRW21Qc22gyHdysSObszujJDhB0UX5Pj7gVFLmxSbgqSggyL0HCcB1Dw5l2lkK7ivOTVBmHb9R8N93dePEbZAMKi326MlRi4=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 808962a0-37de-4bd7-24fb-08db816a6fef
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:54.8552
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBLqVEbXIXbBHZgxk8R3pRl4GZpd4YQsAaJ0Y91vrvXbnaMEs7uBuvxyyToc9o+N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102404_488291_19F1C299 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH 8/8] mci: dwcmshc: Use sdhci_enable_v4_mode()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable the use of the common sdhci code path by using sdhci_enable_v4_mode().
This removes a bunch of functions that configured v4_mode and 64-bit dma in
the dwcmshc driver, which is now handled by common sdhci code.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/dwcmshc-sdhci.c | 174 ++----------------------------------
 1 file changed, 7 insertions(+), 167 deletions(-)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 1e0af06f50..a95e3bd1e9 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -27,129 +27,6 @@ struct dwcmshc_host {
 
 #define priv_from_mci_host(h) container_of(h, struct dwcmshc_host, mci)
 
-static inline int dwcmshc_sdma_supported(struct dwcmshc_host *host)
-{
-	return host->sdhci.caps & SDHCI_CAN_DO_SDMA;
-}
-
-static inline void dwcmshc_write_dma_addr(struct dwcmshc_host *host, u64 addr)
-{
-	sdhci_write32(&host->sdhci, SDHCI_ADMA_ADDRESS, addr & 0xffffffff);
-	sdhci_write32(&host->sdhci, SDHCI_ADMA_ADDRESS_HI, addr >> 32);
-}
-
-static inline u64 dwcmshc_read_dma_addr(struct dwcmshc_host *host)
-{
-	u64 addrh, addrl;
-
-	addrl = sdhci_read32(&host->sdhci, SDHCI_ADMA_ADDRESS);
-	addrh = sdhci_read32(&host->sdhci, SDHCI_ADMA_ADDRESS_HI);
-
-	return (addrh << 32) | addrl;
-}
-
-static int dwcmshc_wait_for_done(struct dwcmshc_host *host, u16 mask)
-{
-	u16 status;
-	u64 start;
-	u64 addr;
-
-	start = get_time_ns();
-	while (1) {
-		status = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
-		if (status & SDHCI_INT_ERROR) {
-			dev_err(host->mci.hw_dev,
-				"SDHCI_INT_ERROR, normal int status: %04x\n",
-				status);
-			return -EPERM;
-		}
-		/* this special quirk is necessary, as the dma
-		 * engine stops on dma boundary and will only
-		 * restart after acknowledging it this way.
-		 */
-		if (status & SDHCI_INT_DMA) {
-			sdhci_write16(&host->sdhci, SDHCI_INT_NORMAL_STATUS, SDHCI_INT_DMA);
-			addr = dwcmshc_read_dma_addr(host);
-			dwcmshc_write_dma_addr(host, addr);
-		}
-		if (status & mask)
-			break;
-		if (is_timeout(start, 10000 * MSECOND)) {
-			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for done\n");
-			return -ETIMEDOUT;
-		}
-	}
-	return 0;
-}
-
-static int dwcmshc_wait_for_status_mask(struct dwcmshc_host *host,
-					struct mci_cmd *cmd, u16 mask)
-{
-	int ret;
-
-	ret = dwcmshc_wait_for_done(host, mask);
-	if (ret) {
-		dev_err(host->mci.hw_dev, "error on command %d\n", cmd->cmdidx);
-		dev_err(host->mci.hw_dev, "state = %04x %04x interrupt = %04x %04x\n",
-			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE),
-			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE1),
-			sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS),
-			sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
-	}
-	sdhci_write16(&host->sdhci, SDHCI_INT_NORMAL_STATUS, mask);
-	return ret;
-}
-
-static void sdhci_rx_pio(struct sdhci *sdhci, struct mci_data *data,
-			 unsigned int block)
-{
-	u32 *buf = (u32 *)data->dest;
-	int i;
-
-	buf += block * data->blocksize / sizeof(u32);
-
-	for (i = 0; i < data->blocksize / sizeof(u32); i++)
-		buf[i] = sdhci_read32(sdhci, SDHCI_BUFFER);
-}
-
-static void sdhci_tx_pio(struct sdhci *sdhci, struct mci_data *data,
-			 unsigned int block)
-{
-	const u32 *buf = (const u32 *)data->src;
-	int i;
-
-	buf += block * data->blocksize / sizeof(u32);
-
-	for (i = 0; i < data->blocksize / sizeof(u32); i++)
-		sdhci_write32(sdhci, SDHCI_BUFFER, buf[i]);
-}
-
-static int dwcmshc_pio_xfer(struct dwcmshc_host *host, struct mci_cmd *cmd,
-			    struct mci_data *data)
-{
-	unsigned int i;
-	u16 sts;
-	int ret;
-
-	if (data->flags & MMC_DATA_READ)
-		sts = SDHCI_INT_DATA_AVAIL;
-	else
-		sts = SDHCI_INT_SPACE_AVAIL;
-
-	for (i = 0; i < data->blocks; i++) {
-		ret = dwcmshc_wait_for_status_mask(host, cmd, sts);
-		if (ret)
-			return ret;
-
-		if (data->flags & MMC_DATA_READ)
-			sdhci_rx_pio(&host->sdhci, data, i);
-		else
-			sdhci_tx_pio(&host->sdhci, data, i);
-	}
-
-	return 0;
-}
-
 static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
 			  unsigned int response)
 {
@@ -257,18 +134,7 @@ static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
-	/* setup transfer data */
-	if (data) {
-		unsigned char hostctrl1;
-		hostctrl1 = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
-		hostctrl1 &= ~SDHCI_CTRL_DMA_MASK; /* SDMA */
-		sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, hostctrl1);
-
-		sdhci_setup_data_dma(&host->sdhci, data, &dma);
-
-		if (dwcmshc_sdma_supported(host))
-			dwcmshc_write_dma_addr(host, dma);
-	}
+	sdhci_setup_data_dma(&host->sdhci, data, &dma);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
@@ -281,35 +147,14 @@ static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = dwcmshc_wait_for_status_mask(host, cmd, SDHCI_INT_CMD_COMPLETE);
+	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
 	if (ret)
 		goto error;
 
 	sdhci_read_response(&host->sdhci, cmd);
 
-	if (data) {
-		if (dma_mapping_error(mci->hw_dev, dma)) {
-			ret = dwcmshc_pio_xfer(host, cmd, data);
-			if (ret) {
-				dev_err(host->mci.hw_dev, "error during PIO xfer\n");
-				goto error;
-			}
-		}
-		ret = dwcmshc_wait_for_status_mask(host, cmd,
-						SDHCI_INT_XFER_COMPLETE);
-		if (ret)
-			goto error;
-	}
-
+	ret = sdhci_transfer_data(&host->sdhci, data, dma);
 error:
-	if (data && !dma_mapping_error(mci->hw_dev, dma)) {
-		u32 len = data->blocks * data->blocksize;
-		if (data->flags & MMC_DATA_READ)
-			dma_unmap_single(mci->hw_dev, dma, len, DMA_FROM_DEVICE);
-		else
-			dma_unmap_single(mci->hw_dev, dma, len, DMA_TO_DEVICE);
-	}
-
 	if (ret) {
 		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
 		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
@@ -399,15 +244,7 @@ static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
 
-	/* Enable host version4 */
-	ctrl2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
-	ctrl2 |= SDHCI_CTRL_V4_MODE;
-	sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl2);
-
-	/* Enable 64-bit addressing */
-	ctrl2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
-	ctrl2 |= SDHCI_CTRL_64BIT_ADDR;
-	sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl2);
+	sdhci_enable_v4_mode(&host->sdhci);
 
 	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
 		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
@@ -476,6 +313,9 @@ static int dwcmshc_probe(struct device *dev)
 	mci->card_present = dwcmshc_mci_card_present;
 
 	mci_of_parse(&host->mci);
+
+	/* Enable host_version4 */
+	sdhci_enable_v4_mode(&host->sdhci);
 	sdhci_setup_host(&host->sdhci);
 
 	mci->max_req_size = 0x8000;
-- 
2.17.1







