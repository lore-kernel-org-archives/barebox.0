Delivery-date: Mon, 10 Jan 2022 23:15:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wR-00GPzk-0S
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 23:15:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wP-0005Mr-1O
	for lore@pengutronix.de; Mon, 10 Jan 2022 23:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CvcHewNon89/XzQf95OtYoFJHu9dEb2k4CXw+K/mbk=; b=jS7qwY+FKnsoVf
	W682e1y8Adl5H6S5nZcKoBlgYfmTcs/6q3VYvmfEPY7qV52Gdpe9JYNcdBw5a8DAiRQmHBro9BZTA
	7zP1GkxXkddSiZgEUdGQeBbwYDB5NZWPezxiS7JN3aB0/hBg6R/W2kjzfwt0Z59v6R8h4XDmXBTML
	ow4R4r19fUAAoAg/hPiwBOc7z6bAaIwbmDMikmMqo1tytqU5wcX+XCv6UksvxNneNDlgu/qKNeOBk
	3vduA0qEdfIAk5QKxNqwJkbvZb3HkJ7FVgHutMLvsON+XHT0MhEZSKbxVe1c/2otQzcCD9QZZ85JL
	+VB+K1hxaBNAHqMYGMzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n72uw-00Daym-Ek; Mon, 10 Jan 2022 22:13:30 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n72ul-00DasP-Vc
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 22:13:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 4E34224BD020
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1641852795;
 bh=3L5em/ncP/c8gzuJQZKcICLx8D3cMUEOPAHWit531Tg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=yb9QUGfo6hwz1SMmTNuZl11LYsIrTkouvPG5l1HuvjlbeXjEzdYFSgW8w5SPQpFiw
 nNhcHma0pe5h/PbKjP/SC2ZFJPgt/kYJfYyTfN7F3u2L7xUt3ZGIHdTWz5+NaQntxH
 bCRAXM8dqErNG/UF0tD5z7wa049vh/U9jsfQd8mk=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 01C1C24BD027
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <45eb.61dcaf7a.7fd58.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id 8046E24BD020
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 66E7F27E03ED;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4FBB427E03DD;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 4FBB427E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1641852794;
 bh=dKB9lK0jVPKuWUf2memR4/LHf+ED0xZodf4L0N45/xU=;
 h=From:To:Date:Message-Id;
 b=A9To1giCC6b1EJUAwAr5yBhKjdhf1p/0/Jh7YVYvxANxUq+V8R4UqWPs2bms1YqvE
 CholLeW5Kcys+1l5jSkvPnlIz5SoZPJv8h81RuzBXARUS/RFXArIRjN53Jit4z7kdv
 HxIfOR58MB3ey3dymYx1VjM6zekXKGNo+zI2sS7M=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id i7tRliFWWRBm; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 412E427E03ED;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jan 2022 23:12:54 +0100
Message-Id: <20220110221255.5003-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220110221255.5003-1-jmaselbas@kalray.eu>
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_141320_225277_CCEBA750 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] logo: Enable image format selection for the logo
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

