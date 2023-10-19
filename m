Delivery-date: Thu, 19 Oct 2023 13:29:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD5-00E9Lp-QA
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 13:29:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD3-00054I-SP
	for lore@pengutronix.de; Thu, 19 Oct 2023 13:29:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JEw4wt776L7e5jGCrm5cVy8O/N3iE0jCQHEst2lS4mA=; b=Xtc8lXbImdzM9kuoSNepvBfdjh
	qIAd+DT9HIG0B6Szc+Ct9nCcFqb3KJsok//6cezzlF5hVgc3/sS2q+0hhylXbJF/nMWF0EyT3DVaN
	RqybtzwMXgBTX5WdV2e5SYQLjRbbQYKvPLgQjRpUS/CjVSNDLos1lhyid1Va1qU8uEI80Z0yVL9IJ
	yHrWc4ip6LX0aHxqM6V4tA0eaVQu5ucYFlqfcC3DEn8ll3fZ6dU1XZXg8p2Xqe5uM8VrAEo7HSPXV
	hUJQGAwXtcZyEvccMTkZcza9E0Dn/r4tcf1+6xDHBbm4JkVo361hQuMUNcA0z5Nw+xFNpJ26IsdkF
	Fl+MGs0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBk-00H9qX-1J;
	Thu, 19 Oct 2023 11:27:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBh-00H9py-2q
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 11:27:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-0004Ze-O9; Thu, 19 Oct 2023 13:27:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-002mHM-BI; Thu, 19 Oct 2023 13:27:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-00GGSm-0v;
	Thu, 19 Oct 2023 13:27:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Oct 2023 13:27:26 +0200
Message-Id: <20231019112727.3876442-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019112727.3876442-1-s.hauer@pengutronix.de>
References: <20231019112727.3876442-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_042737_923463_7098E1AC 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] arm: layerscape: ppa: reserve SDRAM region for PPA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The region the PPA is stored may not be speculated into by the CPU.
We have reserve_sdram_region() for this purpose. With this the region
is mapped uncached with excute never bit set. Use this rather than
request_sdram_region().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 3fa73d555f..6c3fdff381 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -117,7 +117,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	size_t ppa_fw_size;
 	int ret;
 
-	res = request_sdram_region("ppa", ppa_start, ppa_size);
+	res = reserve_sdram_region("ppa", ppa_start, ppa_size);
 	if (!res) {
 		pr_err("Cannot request SDRAM region %pa - %pa\n",
 		       &ppa_start, &ppa_end);
-- 
2.39.2



