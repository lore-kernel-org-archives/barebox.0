Delivery-date: Mon, 11 Aug 2025 14:29:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRet-009Kdt-2s
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRed-0005aj-2t
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v0fSlKY4vy78roI/rRL8o6yt6mefA6SOzCbRaFhiecY=; b=vpUsPTSHgCmVtb2rCemfIDk/vV
	MffBbIfg5baxaEhhEOsvFgMgLNMp1mBOPU6pfY0/eKC74G6vX6PfiDZEmxN1uNUo9KQ/HAyroom7B
	CkTHO+4pi50u9SsAFihsIE7d4zZf6Yuen9+2xADtCYrYDsG++rsvFtmljj5lLEeaStWO20hgQWYjT
	znlYNv7ByMKy/RhLPNFaLHj5utKzDrfDg42uZ7yAb1RR82rx9TfS34In2GejFmGl730UvFkDMP0IR
	/94IzroATCzPo7tWqmHcf3OuRHOi8gRVxNUcx0evc4yxxrgEX98yl5oK3JJcgyRFHW7/XIyWq8pMP
	7LvDkHoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRds-00000007dlT-19Rx;
	Mon, 11 Aug 2025 12:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dVy-0hf5
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdc-0004WP-Is; Mon, 11 Aug 2025 14:28:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:48 +0200
Message-Id: <20250811122824.1667791-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_203729_79568635 
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/44] commands: version: print value of CONFIG_NAME
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A project may contain multiple barebox configurations, e.g. for first
stage and second stage or for development and release.

Make it possible to encode that information directly into the config via
a name CONFIG_NAME option.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/version.c | 5 ++++-
 common/Kconfig     | 8 ++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/commands/version.c b/commands/version.c
index 0ad8e587de87..d6da1bba6e31 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -7,7 +7,10 @@
 
 static int do_version(int argc, char *argv[])
 {
-	printf ("\n%s\n\n", version_string);
+	printf ("\n%s", version_string);
+	if (*CONFIG_NAME)
+		printf (" (%s)", CONFIG_NAME);
+	printf ("\n\n");
 	return 0;
 }
 
diff --git a/common/Kconfig b/common/Kconfig
index a8e62600c4ee..159cd271d748 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -112,6 +112,14 @@ config FASTBOOT_BASE
 
 menu "General Settings"
 
+config NAME
+	string "Informational config name to include in binary"
+	help
+	  Unless left empty, this compiles into barebox an informational
+	  string describing the config used. This is reproduced by the
+	  version command, but does not influence any runtime or
+	  compile-time behavior.
+
 config LOCALVERSION
 	string "Local version - append to the version string"
 	help
-- 
2.39.5



