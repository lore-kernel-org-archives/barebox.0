Delivery-date: Sun, 19 Mar 2023 16:41:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdv9g-006eaT-3n
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:41:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdv9g-0001rQ-4p
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:41:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tosxWtAmPGJFMcIIozpNEvALXSZh223M7/ABtvGKrhA=; b=lLlWFxDw/Ws3DzhJPDcTjBPX4P
	bkPA/1EFpjpLrSPbCvQ6XqwAn8A4A0C8cG22nVSDVCWkqnrYsBzvt7z3fVsk2QVf2gglRJ6d0r0Vv
	tcYfmElSyxguOV1Y/OZVhfUCSMschKwf/7sEy5dZ5BdjDnN8HPhhx+bS9CvHPw7reF3FYxj/eFGFr
	Wv2g0UIgDI56hnmemN5GOqkrDwLYfQHT2PQNUHyrU6WLju6KwHSlB+LYXm+2A5F1KEiFDWuolAxU8
	pMlPAtQBvHcYrj5NJg1v0Ii78E+7YhLTg5WNVz0p9u6WTUOWmmmsl/27LMm/5z6/4yEgOKP79b6wB
	5OTJwiWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdv8L-006wtN-1F;
	Sun, 19 Mar 2023 15:39:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdv8I-006wso-29
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:39:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F029561085
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDAAFC433EF;
	Sun, 19 Mar 2023 15:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240381;
	bh=6USxxpSkPXxT3nwQ7h5Zl/stKXGzUzKa6aY5f0up5TY=;
	h=From:To:Cc:Subject:Date:From;
	b=mK0DQrCb+r6f05f7J6p4wx1zn0anth93ukfIR0HODpcUNJKFz1QAq5oCQ+dFvx1fi
	 3TX3Hnj4uobKSDLji/REGMl1rWT4nl21YfYT4AK6dqjQyIG1oqZTPFQTqp16Di43Op
	 9a4fvdTd0YdcEMIhqZmmuT71GUZYH8btUF+jZTGWqdowGGZYcdliPxdywYZWdpAP0m
	 MYOLyhiuVvSXrECUtEqYNgmlFD3f9MyencrN/oGuzwCFkAY857aTVH03xAH2nzlNNK
	 vw8MlIVF0cPH9jI9tbwpZ4VFsNNG3t6wy+/pwmZ2dduT+kDxG4hKwqw9V1zAn6DXRm
	 jXVgDY67cLLjg==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:39:31 +0100
Message-Id: <20230319153931.23867-1-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_083942_740511_042F6FB8 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: nand: add missing parameters to help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 commands/Kconfig | 4 +++-
 commands/nand.c  | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 27769950d9..76dfca2dfd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1950,12 +1950,14 @@ config CMD_NAND
 	help
 	  NAND flash handling
 
-	  Usage: nand [-adb] NANDDEV
+	  Usage: nand [-adbgi] NANDDEV
 
 	  Options:
 		  -a		register a bad block aware device ontop of a normal NAND device
 		  -d		deregister a bad block aware device
 		  -b OFFS	mark block at OFFSet as bad
+		  -g OFFS	mark block at OFFSet as good
+		  -i		info. Show information about bad blocks
 
 config CMD_NANDTEST
 	tristate
diff --git a/commands/nand.c b/commands/nand.c
index 67e43eba30..d07444aee0 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -165,7 +165,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
 	BAREBOX_CMD_DESC("NAND flash handling")
-	BAREBOX_CMD_OPTS("[-adb] NANDDEV")
+	BAREBOX_CMD_OPTS("[-adbgi] NANDDEV")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nand_help)
 BAREBOX_CMD_END
-- 
2.35.1



