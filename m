Delivery-date: Mon, 07 Apr 2025 09:56:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLl-009SqV-36
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLl-0003nd-Eh
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zl9mFluNHw837hZvEumSLCrXAKKd/9yRWFlVd5THxdI=; b=1XVPfrKZb19OGx6tgiER3H40sV
	Q1VNb+XQK1tpRDlAc6xqjeQ8tSa0y33IwJWcaw4r547dnMeOP2H+mEP5zhmDXBtnOH40BhQ5/W51G
	Z6QzQd/mBB4JzZDxjFG0PKWkFhc5bVSINOv48IMcjL2c6PVpVxn/GnB7nlkTsL8PKCAq5h+oTP8LY
	Nu0wTkhaSR15gVd4ISY8qPcipW+OkfBQgNo3Mp8UkNfEUYOqL/2lupJPmzGsboTxQKHqf1OuUIsy4
	U4NGpri5AfsB6jBfsT/PG+8129ULYuG1GaHKelNW0G0Y4YNw+lz+nzLCXQJhRyTeNd18cKT/gyn0V
	uAZOXL/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLB-0000000Gt78-1yTR;
	Mon, 07 Apr 2025 07:56:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gvd-0000000GmPV-2KWo
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:29:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-0008CL-S5; Mon, 07 Apr 2025 09:29:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-003ilI-28;
	Mon, 07 Apr 2025 09:29:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-004aOW-1t;
	Mon, 07 Apr 2025 09:29:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 07 Apr 2025 09:29:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-ratp-fixes-v1-2-4c2501a83bca@pengutronix.de>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
In-Reply-To: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744010993; l=661;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=whz/ULnTptNAIUCGf3OmZiOFe0vrSiO85G2g6awh8vM=;
 b=ObLAFHVXYPSMU0XNtfFjLgOC/szj4vG8VFjaeK1TeQTcL++/tWlejxvVOCT9Pzxkl5k7+W7QN
 aRKiPz+6U4rD0r+54wa50+3dW8BveSycsW8QGRMNTskqWGjAHkweSvU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_002957_609472_39D327FE 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ratp: do not export ratp command list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ratp_command_list is not even declared outside common/ratp/ratp.c, so
make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 5cbdb8bd5f..925e1d637f 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -28,8 +28,7 @@
 #include <fs.h>
 #include <console_countdown.h>
 
-LIST_HEAD(ratp_command_list);
-EXPORT_SYMBOL(ratp_command_list);
+static LIST_HEAD(ratp_command_list);
 
 #define for_each_ratp_command(cmd) list_for_each_entry(cmd, &ratp_command_list, list)
 

-- 
2.39.5



