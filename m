Delivery-date: Fri, 19 Nov 2021 10:56:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dB-00013E-2g
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d9-0006Sw-Sh
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNTaPQUeSV2CQObbCLhkt/8F90nkpdsTWB9pFhj7ssA=; b=k0ueFfZP+Gf+Cy
	/M5TWMBaP1O2tY2JfGKOOjP7S8P8u2JO91BEuufI3U0OPcAk3jrVzakf6djXFL1qptmVgbPzWAeuG
	dVtkglQe7SbiOWxWor8gBvBcekhOadklohKD824TpDftiCIy12PQ4UqAZwDV0ZZn5XVANqvNadJFq
	0vuWyedmZrcQUwzuOCdiiw6oBtzQ1qAMlPcOrnp6L70lct9AvV+nqFpv7UbRlaWDGXNAMt653jgjt
	wceCx00NJ6ZcpqbxiCVuxIQkVjGxE7db9xkI1hVWTAT5sS7gAcyHzRcCW8Vy2K80dSWeWhIRHihIV
	7VWAg5Rmd4SagZBgRSPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bt-00A2ei-H1; Fri, 19 Nov 2021 09:55:09 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZJ-1N
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KyzQUA5DipdpPE0fZFBwtuCWFTERU0OuPa8VhR8iIQk=; b=E6AAUX3+yz7UbXPqTJqyd9CGbk
 lzmECpktjtBffGoNB1/J8Uw0KBChr3sLEH3bHOzwEpn73ye5GzlQ7KBGuK8KpckWBVvPjY8FKY9TO
 vgjgqqIE6Sern5mXswD8kuyiTTljp77mgCe1IOePuZ5hV6/2Tnu5yfl1l+jrkntay7E1mAd5Kzc5l
 Zedwjrxbc6qOnJ00A+WFQFCSzYy9tsGcOcDr2TVgqIpGIbPhy3xHkP485kCf2GuVe9wXsEDMYgjDP
 ddqejcvdRLwgBE0fqB+yodfHooJ4bBh62ZS+Xi8WHUb6HsAqezZF25UAGuLvDwap7ILyGybTp4rUX
 pK+QEhqg==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-8h
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:26 +0100
Message-Id: <20211119095429.1905473-4-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_474896_41AF5F2F 
X-CRM114-Status: UNSURE (   3.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] ARM: configs: imx_v7_defconfig: add OCOTP write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - drop "PHYTEC specific" patch and add changes directly to
   imx_v7_defconfig
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 29c2d3190..8e707b960 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -198,6 +198,7 @@ CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_PWM=y
 CONFIG_PWM_IMX=y
+CONFIG_IMX_OCOTP_WRITE=y
 CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_STMPE=y
 CONFIG_REGULATOR=y
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

