Delivery-date: Mon, 04 Mar 2024 20:01:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZB-008cqs-17
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZA-0005CT-I5
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nn2PfiXk2HSc6Ue+d7hFKkoJoxM8xAyU+ebnU9w6wH0=; b=GlQzAB2mctcF2zVboF2Ylad5qB
	GiIuGtaUVtLWQGdXM2AnURi8ab/iEHxE1wDNmtt0Yr384lp7I5fn4P1TCuEeqTT4NoZhY9gPRL3oF
	iOKqzEXxhGLlS0RYQP+uuyoejLsoPqqHpaUZiDWSrjRM9TInLcO92K5h1FN5korS0G2HGkf3wUT+r
	jDg2n3jLzVr3MDG2rBqk5/6uS9SMazohXoW+oidG8XB/1Slxpa4A414QvMAJTH05QwD+Brq6QRU64
	NBA5M7BHeUvXtxhuCUGLmeely8L93kZ+WpL/G/ZZfGMt6njk5s7kQGPFBjZ0xC8qF+7Ty/0tkMyuR
	IJQKmUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYY-0000000AHVo-3sdl;
	Mon, 04 Mar 2024 19:00:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPi-2mO9
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004VA-5W; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-004PFW-OU; Mon, 04 Mar 2024 20:00:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-0X;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:47 +0100
Message-Id: <20240304190038.3486881-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110045_862908_D275A92F 
X-CRM114-Status: GOOD (  10.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 002/113] commands: efiexit: flush console and shutdown barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox as EFI payload may have direct device access over PCI. These
devices may be doing DMA and need to be quiesced before barebox returns
control to the EFI loader. Therefore start calling shutdown_barebox()
in the efiexit path.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/init.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index e2f763853fed..bb4c156d686d 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -429,16 +429,23 @@ late_initcall(efi_late_init);
 
 static int do_efiexit(int argc, char *argv[])
 {
+	console_flush();
+
+	if (!streq_ptr(argv[1], "-f"))
+		shutdown_barebox();
+
 	return BS->exit(efi_parent_image, EFI_SUCCESS, 0, NULL);
 }
 
 BAREBOX_CMD_HELP_START(efiexit)
-BAREBOX_CMD_HELP_TEXT("Leave barebox and return to the calling EFI process\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-f",  "force exit, don't call barebox shutdown")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(efiexit)
 	.cmd = do_efiexit,
-	BAREBOX_CMD_DESC("Usage: efiexit")
+	BAREBOX_CMD_DESC("Leave barebox and return to the calling EFI process")
+	BAREBOX_CMD_OPTS("[-flrw]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_efiexit_help)
 BAREBOX_CMD_END
-- 
2.39.2



