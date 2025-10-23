Delivery-date: Thu, 23 Oct 2025 11:48:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBrwB-00Auu4-2f
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 11:48:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBrwB-0002FC-AD
	for lore@pengutronix.de; Thu, 23 Oct 2025 11:48:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f104cPt1XyOzz+GE5jZ353LmZvDhYAuxN1l7d6neOZc=; b=XBDiUSgc0lBGe5thWc5sCjLFxS
	oLtFADqzz1AED/VSeV7OL0tupOiJCcmlFLY0+R9Dm3upZlLxdpJ6+pXemXq5mKb0Q8iQcqJK98pUv
	C9d7I7kbzdAINFcf+lQCuWTaBk5Qj/krrwRaFobzbjqXzlhoKYH9K0ktlgZgGnHeeFZ+T5IeMrShz
	vDRv5Yv+fnySaiOFGS6nvmkVgAq3UCNrhwvMWdy2h+1U+cDLJhw5U8Kd0gn039XAKQ6F8Ex20NLGV
	/sPsPBVS9bxilT5eOcV1Kj9psZgMu8s7wZyOq7dm/Ha40ZbbsK0ONNbf+TMBcIytPwDs/MbfIsSp9
	9Sjihb5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBrvd-00000005nGb-0UKq;
	Thu, 23 Oct 2025 09:48:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBrva-00000005nFg-3BlG
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 09:48:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBrvZ-00024f-7h; Thu, 23 Oct 2025 11:48:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBrvZ-0052GI-0A;
	Thu, 23 Oct 2025 11:48:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBrvY-0000000EQW7-3vjK;
	Thu, 23 Oct 2025 11:48:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 23 Oct 2025 11:48:12 +0200
Message-ID: <20251023094812.3438487-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_024814_795710_7A13C5A7 
X-CRM114-Status: UNSURE (   7.06  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] github/ci: build Container on pushes to ci branch only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's rebuild the container only on explicit pushes to the ci branch
only, rather than also randomly rebuild it once the Containerfile
changes propagate to the master branch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .github/workflows/container.yml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/.github/workflows/container.yml b/.github/workflows/container.yml
index 9bb23a5836..96ebf66508 100644
--- a/.github/workflows/container.yml
+++ b/.github/workflows/container.yml
@@ -3,10 +3,7 @@ name: build ci container
 on:
   push:
     branches:
-      - 'master'
       - 'ci'
-    paths:
-      - 'test/Containerfile'
   workflow_dispatch: {}
 
 jobs:
-- 
2.47.3



