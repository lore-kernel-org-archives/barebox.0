Delivery-date: Tue, 30 Mar 2021 08:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EJ-0002wd-5W
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EI-0001SX-IA
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y0U2IHJ19hjtp7o2J8S7fRij9sDtx5jC1FSRozyDXG4=; b=FmuI5S+6hMhL94
	4M3bL10P1yUXRwbb59yD6BY1mhiIIBdhGE1lt284HSA3I870+MY6O1txuiu88lgBjZ60SAcfuKYnj
	+/7uoDEIrO3kRpn8A4E3KhIVK1f3dziyWnFlA74qWewFG+z32nXLgpQvxx0vpHGi3ZRGBDcYOJe/c
	4hsIuGwqrkGGS6A1qkJBy9nZFFv9KuqU4buyPrIV2HFVM9GyWsA7FNLDD1vlz5+dJZTCBAxeYHvyL
	BgI9YrkcPJ94WdKpDDDiuMYRcpq6QGsGIRGY0LyCQ0/CX8ffjF5wXlT1aamuK1PaQGtOX/yYhnGE3
	qFL90m1ueCDAe1mSfHnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8DB-002rjT-P9; Tue, 30 Mar 2021 06:50:49 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8D4-002ria-61
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617087040; x=1619679040;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0LIoyyXPIo2KqgAU+K4YHtTaU0Kg/8cczk6+7d9jPeA=;
 b=O1b62zzNBdtA0Zort5BpePL1DQTpxjYoY2t/Ab6onJXytR7B5ljiw7F+67MEjA26
 0lnqNLns0qSTcPzWr14FO2Uxf5ITgGqVsp8m9hnEBVo/nBnErCoTUFUGlOVBZBL2
 dLW4JKnHIDJKzgpDEblLRF0m4R5Og7ToA8FrqjdLzcE=;
X-AuditID: c39127d2-85cb770000001c91-e5-6062ca40cc52
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 3F.23.07313.04AC2606;
 Tue, 30 Mar 2021 08:50:40 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021033008504050-261341 ;
 Tue, 30 Mar 2021 08:50:40 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 08:50:37 +0200
Message-Id: <20210330065040.5030-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 30.03.2021 08:50:40,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 08:50:40
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJMWRmVeSWpSXmKPExsWyRoCBS9fhVFKCweGb2hYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJWx9KpswQeWisdNX1kaGP8ydzFyckgImEhcX3SFsYuRi0NIYBuj
 xLXl56Gca4wSV3+fYgSpYhMwklgwrZEJxBYRkJeYu7+NFcQWFvCT6No0gR3EZhFQldjV+YKt
 i5GDg1fAWmLBRBaIBfISMy99ByvhFRCUODnzCQvIfAmBK4wS659cY4QoEpI4vfgs2EXMAtoS
 yxa+Zp7AyDsLSc8sJKkFjEyrGIVyM5OzU4sys/UKMipLUpP1UlI3MQJD4/BE9Us7GPvmeBxi
 ZOJgPMQowcGsJMIrfCAxQYg3JbGyKrUoP76oNCe1+BCjNAeLkjjvBt6SMCGB9MSS1OzU1ILU
 IpgsEwenVAPj9LD4X6EfneTr1635La+wMs3/7QPpnGVvO7s6lqWzPEyqLf15vfvS09qj+fVt
 H0qsbCbqrm7LSfEoOqXq+vMRx+71B3wePlufuzn0UN0R60slfJOWKB2JMlavPcn1Z3Lt7adN
 n4zkLlzp/uvtZvnJLbtAfcN1NsvZx98xGiycuX7u30fHWT8qKLEUZyQaajEXFScCAEBXaIr7
 AQAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075042_402097_37617979 
X-CRM114-Status: UNSURE (   9.07  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] commands: Kconfig: Remove HW ECC dependency from nandtest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

NAND_ECC_HW is no longer optional so remove the dependency from
nandtest. Otherwise nandtest won't be build for HW ECC boards.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 commands/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 6d84c956e576..8e8b5a926fbb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1884,7 +1884,6 @@ config CMD_NANDTEST
 	tristate
 	depends on NAND
 	depends on PARTITION
-	depends on NAND_ECC_HW || NAND_ECC_SOFT
 	prompt "nandtest"
 	help
 	  NAND flash memory test
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

