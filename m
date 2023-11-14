Delivery-date: Tue, 14 Nov 2023 14:31:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW2-00BJuG-2q
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW2-0006yM-Te
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CPNPiEwFRaNXY8o5pGpjjQzFoQXRv5YUpCTCDVDhtwk=; b=nCd6YqoJ3EHt4UAXu098e+Qj49
	6HVE7vYiNYfhwFmeMokHREWXfAgyopLdJv9kU1bGA+Sfo4jYrd1slNEdxMrvDRrzImnTJHalALp8t
	sskbqVBIV31L5xgUoPByvAqqfJPzdWZEDjKmPS16ODBIpZTywmXQa7p3dTPJgZ9h/edZfWbbvDTAW
	+TuUjnolXxiUV6sX6DLZi746LB5fhhZz2QYOAqiSjSaunISIaGW0hvhyJShLf7lyMWNq4axiVxmUr
	exGTj6GRLLvb2pTgyfUtMvS92ZNHWgk8qGgD0Na6ozpfbsMjVgfErYB74Phus6O1VR6XVHI/A5fog
	ETsRYNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUk-00G2lD-1z;
	Tue, 14 Nov 2023 13:30:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hw-1a
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:19 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-96
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:04 +0100
Message-Id: <20231114133007.3662931-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_596890_B72ECFA6 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/8] commands: mmc: deprecate -c option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Deprecate the -c options since it's now more error prone in case both
the "enhanced area" and the "write reliability" feature should be
enabled. Instead users should use the separate "partition_complete"
command to make it more clear.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index 4e7d03231023..4259dbb763d1 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -95,6 +95,7 @@ static int do_mmc_enh_area(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, "c")) > 0) {
 		switch (opt) {
 		case 'c':
+			printf("Use -c to complete the partitioning is deprecated, use separate partition_complete command instead\n");
 			set_completed = 1;
 			break;
 		}
@@ -283,7 +284,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("The subcommand enh_area creates an enhanced area of")
 BAREBOX_CMD_HELP_TEXT("maximal size.")
 BAREBOX_CMD_HELP_TEXT("Note, with -c this is an irreversible action.")
-BAREBOX_CMD_HELP_OPT("-c", "complete partitioning")
+BAREBOX_CMD_HELP_OPT("-c", "complete partitioning (deprecated)")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("The subcommand write_reliability enable write reliability")
 BAREBOX_CMD_HELP_TEXT("")
-- 
2.39.2



