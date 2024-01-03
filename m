Delivery-date: Wed, 03 Jan 2024 19:14:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lR-002Lvn-0C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:14:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lQ-0005LK-25
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:14:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=riJO5CTy1yylJySvLQggxqYP6WmyCIlKDf6HSL1oVUM=; b=WjsJYNaY7pqrU1T1uXTdqxBUQb
	CW25zrGtCfV4KbNkXrtFt1gjAEOTWyvUiNS95Yc7/FAzT9MDIQmdRdKg++kcmv58FkQt5efcUnVKR
	IMuYVfES4DK5PjcFABXEKxaNoRBtq/hcMEQGfT3B0VCWSpOxxLug9cAFVzcOIjoywb4s+E+b1tsVA
	zaTKNnLxPNAqv/ide5Qj7xO9ch7YTIYf0eAP0dFmTYarGjHAF4LWYnamwL1VO3NQN/O/mj+wiDG/S
	SzjXOzfRaPOEbZ3V0P3Z/pJfEnkWTV/jN5Xd7GqKKi7fecmTrnpNPuuyfhcsw3/l31eLUiA2zrL8A
	hXYXFUNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kN-00Be47-1a;
	Wed, 03 Jan 2024 18:13:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kK-00Be1a-00
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:13:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=riJO5CTy1yylJySvLQggxqYP6WmyCIlKDf6HSL1oVUM=; b=CjkI/g6ByXuqKIc91WgAy05GXN
	z8v1igxQUm53flRKXOSbdL8sNPVPZmJti+i0r9Hk7Je1bov9XPnjxfKDGTmMtJBGzj1Qmn8I4e1lL
	hMKyoVztPHUD6DvEqWKyPr7zwp3wIkwTTsGpEOS0+wIVfLgWmbNxDDRgS/r8Ja1Cil3pedW0Zzafw
	p0bxCZHm2VO7e9Iltvfxm23eD+IZfE4vj4TMkMlNy4T4wV+uMPxdkhaU8cCJY2aPlh12Z8+r6KTQv
	aHLOdufMm+XPilCUfrsoaUxQyib3v83bsc81+96PozthVxKmjN1aaxe7OlVKp9kD6VW7gSaSKF9f9
	+ItvgCXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k3-005dTA-0s
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-0004eV-HK; Wed, 03 Jan 2024 19:13:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-000Apj-4c; Wed, 03 Jan 2024 19:13:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-0B;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:22 +0100
Message-Id: <20240103181312.409668-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_181336_816824_B17E009F 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 002/112] commands: efiexit: flush console and shutdown barebox
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
index cfacdffa6761..ffa466e3ad44 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -428,16 +428,23 @@ late_initcall(efi_late_init);
 
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



