Delivery-date: Fri, 20 May 2022 16:25:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3Yw-0039tq-32
	for lore@lore.pengutronix.de; Fri, 20 May 2022 16:25:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3Yu-0000i2-OA
	for lore@pengutronix.de; Fri, 20 May 2022 16:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=722NKffjoqx1aKiRy4DjIU+bMKwnCDnIO9HjEk5Bm/I=; b=Xp0EwdAfNo5bs8
	aRR47vR1UrrSAWhAcYqq7GiJRl2RkR1w37QTT/oE7UpjkBrSXIlSc5V1/iFMF4B6D/b6gu5VEzbm8
	1JvJbkEiGR3m2C7pv8aYsPv8dURoyewu1pFDV+63aHq1UbJ4meHE3W/hgTuTmVRqJOFuvNbMUVHi3
	IuLx4lquoB1ZJd8RmDgiAlVmX2q1coWh2LURahXatMEToD4WwM55LwHTm+w9rIE2VLbQy5YeA/Nax
	da6YBtqA2/R7z/zksWZ8/RKGXTeg8Nm2zDFIaTvV9DDOQ5zRvbSOyO+TjT1jD7cXwcrqryjIMFK8+
	bKTtEzFWhE5Wvh/IS04A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns3Xe-00Ctsg-Hj; Fri, 20 May 2022 14:23:46 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns3XZ-00CtqL-F2
 for barebox@lists.infradead.org; Fri, 20 May 2022 14:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1653056617; x=1655648617;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eLx/6rD+6gU2QwQvflDjB/6r4+L62fjczvE7KP1347k=;
 b=Cx5rj/XNvkEjFZ4gPEUv+okxdlr/e9fM3b19TKAIsCM3RYtymmikhRCoTa46JKTo
 kkoEWELj7aTZ0RNfXXz6g9RpyvhdvvQbHDALAj4dGaT9kAhS1IyIM9uZEszqI0mz
 5bh0meCpW55vckNa+DdibhB6sQwQeii+73hWWd5oBmU=;
X-AuditID: c39127d2-7f37f70000000701-c1-6287a469b9b4
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 0A.05.01793.964A7826;
 Fri, 20 May 2022 16:23:37 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2022052016233713-15086 ;
 Fri, 20 May 2022 16:23:37 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: barebox@lists.infradead.org
Cc: upstream@phytec.de
Date: Fri, 20 May 2022 16:23:37 +0200
Message-Id: <20220520142337.993417-1-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 20.05.2022 16:23:37,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 20.05.2022 16:23:37
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGJMWRmVeSWpSXmKPExsWyRpJBRDdzSXuSwae98hYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJWxf/UB1oI2zop7kz4yNTAeZu9i5OSQEDCRWPxtEksXIxeHkMA2
 RolnjS+hnHOMEjd/HmYDqWIT0JB4uuI0E4gtIiAvMXd/GyuIzSwgJjFlx3ewScICDhLvt9wD
 q2cRUJVY9PEfM4jNK2AhcXDZTmaIbfISMy9B1PMKCEqcnPkEbJmEwBVGie1LP0IVCUmcXnyW
 GWKBtsSyha+ZJzDyzULSMwtJagEj0ypGodzM5OzUosxsvYKMypLUZL2U1E2MwLA5PFH90g7G
 vjkehxiZOBgPMUpwMCuJ8DLmtiQJ8aYkVlalFuXHF5XmpBYfYpTmYFES573fw5QoJJCeWJKa
 nZpakFoEk2Xi4JRqYOR5kacrr1nMknQ3+aOpwKP/1872LbobcqrZ66aI3X1bV6vKU1ff6e+7
 vZh1tdLkPclJPQab1Z5+9rq5c/m2hNlv7PcpupRuvG2acvzWkhL+5/MmHqlVNOz5ohD4VYin
 5MzazM5VsfebL07L9DB51PUr13V23xO+ai/dG/HLZs097rzm5ebdoY1KLMUZiYZazEXFiQBe
 XjIHCQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_072341_696646_8E32D5C8 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 are used
now for the row size calculation we need to increase row_max to 18.

For LPDDR4 this only works in combination with ram timings
created with recent configuration spreadsheet versions.
With older versions the register DDRC_ADDRMAP7 may not be set and
calculation will lead to wrong results even with this patch.

Fixes: dad2b5636bd8 ("ARM: imx: Add imx8 support for 18 bit SDRAM row size handle")
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 8dd0ddbbc965..b070ebc62a45 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -488,7 +488,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
-				   16, ARRAY_AND_SIZE(row_b),
+				   18, ARRAY_AND_SIZE(row_b),
 				   reduced_adress_space, true);
 }
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

