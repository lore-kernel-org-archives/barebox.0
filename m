Delivery-date: Tue, 18 Jan 2022 00:04:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2w-0051Hu-8C
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:04:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2u-00010z-6i
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CvcHewNon89/XzQf95OtYoFJHu9dEb2k4CXw+K/mbk=; b=WBBpZzIlFXSVVl
	TYJhMDf6/zgZKdaa/rqGJ+oF4SjU8UGXYCbkfCWGn8L5Fbagl6MWks9Ukkxsohj2fzrhIC76g8CPf
	vg4+QUltReSITXBRKFYBbs9FCd7JnBGPzvhasEyCZNIZW3l14EA1g05DOdAr25wAPElFeJ22vVyfL
	WImAbYJdf7lJMbQ1V2HuwKY2QprbyzKuRX4b/M3bXoCGkcWlcjnTEnu30l6BkP5UZ49E9+TvCaj0j
	vgHW20IbbWRpJ96ojw4dCyZNQyPX2634+0OQEVNIQqauxIYdljll3QR2jpqkf8PFch7rIOdTVbGLi
	x+gAu23Wyxy466HZfFfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9b1c-00GXTj-DP; Mon, 17 Jan 2022 23:02:56 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9b1W-00GXRk-81
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:02:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id DA9D51B7B282
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642460561;
 bh=3L5em/ncP/c8gzuJQZKcICLx8D3cMUEOPAHWit531Tg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ygbMePtVgK1p+AMnHyB0YgHWQHc1Co7ZWNRn8puWBbJKveu3ivYbWezlRuL/KlhXA
 MbLjAA8IK32L1JFxM9jMgurUQB0nC+zBhwvRQTYF9Q1fjMRG5fjuYzXha3P06pepjx
 D6TXAvrgIfoOYVr9Aa+gHz7hoIF/ad04H6pUco04=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 937D61B7B26D
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <407f.61e5f590.3fd9e.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 40BDC1B7B282
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 26AB527E03F8;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 114CF27E0341;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 114CF27E0341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642460560;
 bh=dKB9lK0jVPKuWUf2memR4/LHf+ED0xZodf4L0N45/xU=;
 h=From:To:Date:Message-Id;
 b=TGa/LqsGUkzqGNWRzqFPUP+FIAnzZZQYMwiZjcgkC5EtgXsaQKwhAHx9M7XZkOPDZ
 B5hTxVQIQmpZ+cTsAkny1MO/w4aQ7yko0bB4zRv8yvQfj53J8KJ+19wXNYip7npPNy
 epKm5VmTlTV6jHFZQJYTSeVSEHR0LrvL/2k7WHOE=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ex1DaAkd--dq; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0141427E03E1;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 18 Jan 2022 00:02:34 +0100
Message-Id: <20220117230235.13549-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117230235.13549-1-jmaselbas@kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_150250_447424_7520D31B 
X-CRM114-Status: GOOD (  12.62  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] logo: Enable image format selection for the logo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enables the selection of an image format to be used for the built-in
barebox logo. The default image format is set to png, has it was the
only choice before. This also adds bmp as the other option.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 lib/logo/Kconfig  | 20 +++++++++++++++++++-
 lib/logo/Makefile | 43 ++++++++++++++++++++++++++++++-------------
 lib/logo/logo.c   |  8 +++++++-
 3 files changed, 56 insertions(+), 15 deletions(-)

diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index 7d55f7fa27..8edfaaeb51 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -3,10 +3,28 @@ menuconfig BAREBOX_LOGO
 	help
 	  Say yes here to build the barebox logos. This adds ImageMagick's
 	  convert tool to the build dependencies. The logo can be found under
-	  /logo/barebox-logo-<width>.png in the running barebox.
+	  /logo/barebox-logo-<width>.<ext> in the running barebox.
 
 if BAREBOX_LOGO
 
+choice
+	prompt "Logo image encoding format to be used"
+	default BAREBOX_LOGO_PNG
+
+config BAREBOX_LOGO_PNG
+	bool "png"
+	select PNG
+	help
+	  Encode logo with the PNG image format
+
+config BAREBOX_LOGO_BMP
+	bool "bmp"
+	select BMP
+	help
+	  Encode logo with the BMP image format
+
+endchoice
+
 config BAREBOX_LOGO_64
 	bool "include 64x32 pixel logo"
 
diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index f08beef76b..04c4906838 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,17 +1,17 @@
 
-OPTS_barebox-logo-w64.bblogo = -resize 64
+OPTS_barebox-logo-w64 = -resize 64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
 
-OPTS_barebox-logo-w240.bblogo = -resize 240
+OPTS_barebox-logo-w240 = -resize 240
 bblogo-$(CONFIG_BAREBOX_LOGO_240) += barebox-logo-w240
 
-OPTS_barebox-logo-w320.bblogo = -resize 320
+OPTS_barebox-logo-w320 = -resize 320
 bblogo-$(CONFIG_BAREBOX_LOGO_320) += barebox-logo-w320
 
-OPTS_barebox-logo-w400.bblogo = -resize 400
+OPTS_barebox-logo-w400 = -resize 400
 bblogo-$(CONFIG_BAREBOX_LOGO_400) += barebox-logo-w400
 
-OPTS_barebox-logo-w640.bblogo = -resize 640
+OPTS_barebox-logo-w640 = -resize 640
 bblogo-$(CONFIG_BAREBOX_LOGO_640) += barebox-logo-w640
 
 obj-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
@@ -38,15 +38,32 @@ cmd_logo_S =							\
 %.bblogo.S: %.bblogo FORCE
 	$(call if_changed,logo_S)
 
+quiet_cmd_logo = LOGO     $@
+      cmd_logo = cp $< $@
+
+ifdef CONFIG_BAREBOX_LOGO_PNG
+extra-y += $(patsubst %,%.png,$(bblogo-y))
+%.bblogo: %.png FORCE
+	$(call if_changed,logo)
+endif
+ifdef CONFIG_BAREBOX_LOGO_BMP
+extra-y += $(patsubst %,%.bmp,$(bblogo-y))
+%.bblogo: %.bmp FORCE
+	$(call if_changed,logo)
+endif
+
 CONVERTOPTS += -background none
 
-quiet_cmd_logo = PNG     $@
-cmd_logo =							\
-(								\
-	convert $(OPTS_$(@F)) $(CONVERTOPTS) $< png:$@; \
-)
+quiet_cmd_bmp = BMP     $@
+      cmd_bmp = convert $(OPTS_$(@F:.bmp=)) $(CONVERTOPTS) $< bmp:$@
 
-%.bblogo: $(srctree)/Documentation/barebox.svg FORCE
-	$(call if_changed,logo)
+%.bmp: $(srctree)/Documentation/barebox.svg FORCE
+	$(call if_changed,bmp)
+
+quiet_cmd_png = PNG     $@
+      cmd_png =	convert $(OPTS_$(@F:.png=)) $(CONVERTOPTS) $< png:$@
+
+%.png: $(srctree)/Documentation/barebox.svg FORCE
+	$(call if_changed,png)
 
-clean-files += *.bblogo *.bblogo.S
+clean-files += *.png *.bmp *.bblogo *.bblogo.S
diff --git a/lib/logo/logo.c b/lib/logo/logo.c
index 8349b060ac..200eb992b3 100644
--- a/lib/logo/logo.c
+++ b/lib/logo/logo.c
@@ -32,8 +32,14 @@ static void load_logo(int width, void *start, void *end)
 {
 	char *filename;
 	size_t size = end - start;
+	char *ext = "";
 
-	filename = basprintf("/logo/barebox-logo-%d.png", width);
+	if (IS_ENABLED(CONFIG_BAREBOX_LOGO_PNG))
+		ext = "png";
+	else if (IS_ENABLED(CONFIG_BAREBOX_LOGO_BMP))
+		ext = "bmp";
+
+	filename = basprintf("/logo/barebox-logo-%d.%s", width, ext);
 	write_file(filename, start, size);
 	free(filename);
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

