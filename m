Delivery-date: Tue, 18 Jan 2022 00:04:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2w-0051I5-Qe
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:04:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2u-00011E-TD
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OKjpt2fDIjVMDLQDpjDRjNwudtGIqHXNB+pFXDVaxI=; b=Q9ULoNtXzdCa1y
	X3myuAwQ0D+dP3hWCKqBtk5xFGIbvSx/TZZXc1R6N+ugPD61+lLazdXC98/rTUQMDV4dh1EMazfuI
	x+R8xuq8GBKm+cgiafSg5hUYkYLD3N3Oi++VBKvd2ov1RlDBah6SsaRpsjcp8eiYoVIVxezly4GUW
	3hMtzhwGFVuNKez5GEHVC3jNkIM/qyuvnnsSx9Ytg/4jG7XNUPnj0FFBtmFfFTfa+aZQYVjL+R9kn
	Vqx7ASY+yO8nkKsJ9kF+JLX9ShrSeQBYpbKKwwWkJO1PIrmr6gK/oZeNDLpQt82Mhf5nprCktIvlT
	5kO4djNxE4G2Mp9k6NXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9b1Z-00GXS7-J2; Mon, 17 Jan 2022 23:02:53 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9b1R-00GXQp-Qv
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:02:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id EE87A628B7
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642460561;
 bh=wqMIZcNLT5hvqRDKy7tqmiJpd3+LcL6HjWbz7xjNq5A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RtBfWy42fvz5jS9AJOv7yf7fCulhNcatVBkygAxAnsGRrVnzONT6/MNcb7WTNixn5
 NwidFc0rxyMDTZYiU67z6CKCOhHlr5XPtc5Dix1IUlfpMEKaFOf4GRRc2G86TiXqvb
 zzTx4OO5VAgSOAZKw+eiBi0fi79lP7qWGtueIIrs=
Received: from fx304 (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id A52D9628D9
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <ea57.61e5f590.4c722.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx304.security-mail.net (Postfix) with ESMTPS id 4F552628CE
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 338E827E0341;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1E17927E03AE;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1E17927E03AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642460560;
 bh=6Itcb5BSHSctg1f16opygWnsUQtOgVNYQGWY3CXHIL4=;
 h=From:To:Date:Message-Id;
 b=FGk0VAD4zhaSghDWei+mO5LtLFz4B5nuCVscTDiEr1NKj6jmclkQqUqaxYqYaj9au
 luq/0y4N5HHmkEJVs/W91WeWJh+0iNN1J6SnxNj3ztejPgKKFDEcZ2gKYRoBIpAwcZ
 tqoiWO86fYVhseMoDJhjUoFnEmF8zqUYnUx1gc14=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rY1ccQOK3ugk; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0538127E03CB;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 18 Jan 2022 00:02:35 +0100
Message-Id: <20220117230235.13549-6-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117230235.13549-1-jmaselbas@kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_150246_199718_A65279B7 
X-CRM114-Status: UNSURE (   9.19  )
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
Subject: [PATCH v2 5/5] logo: Add choice for the QOI image format option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 lib/logo/Kconfig  |  7 +++++++
 lib/logo/Makefile | 14 +++++++++++++-
 lib/logo/logo.c   |  2 ++
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index 8edfaaeb51..a79806f54c 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -23,6 +23,13 @@ config BAREBOX_LOGO_BMP
 	help
 	  Encode logo with the BMP image format
 
+config BAREBOX_LOGO_QOI
+	bool "qoi"
+	select QOI
+	select QOICONV
+	help
+	  Encode logo with the QOI image format
+
 endchoice
 
 config BAREBOX_LOGO_64
diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 04c4906838..e04deb5536 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -51,6 +51,12 @@ extra-y += $(patsubst %,%.bmp,$(bblogo-y))
 %.bblogo: %.bmp FORCE
 	$(call if_changed,logo)
 endif
+ifdef CONFIG_BAREBOX_LOGO_QOI
+extra-y += $(patsubst %,%.png,$(bblogo-y))
+extra-y += $(patsubst %,%.qoi,$(bblogo-y))
+%.bblogo: %.qoi FORCE
+	$(call if_changed,logo)
+endif
 
 CONVERTOPTS += -background none
 
@@ -66,4 +72,10 @@ quiet_cmd_png = PNG     $@
 %.png: $(srctree)/Documentation/barebox.svg FORCE
 	$(call if_changed,png)
 
-clean-files += *.png *.bmp *.bblogo *.bblogo.S
+quiet_cmd_qoi = QOI     $@
+      cmd_qoi =	$(objtree)/scripts/qoiconv $< $@
+
+%.qoi: %.png FORCE
+	$(call if_changed,qoi)
+
+clean-files += *.png *.qoi *.bmp *.bblogo *.bblogo.S
diff --git a/lib/logo/logo.c b/lib/logo/logo.c
index 200eb992b3..a64f489939 100644
--- a/lib/logo/logo.c
+++ b/lib/logo/logo.c
@@ -38,6 +38,8 @@ static void load_logo(int width, void *start, void *end)
 		ext = "png";
 	else if (IS_ENABLED(CONFIG_BAREBOX_LOGO_BMP))
 		ext = "bmp";
+	else if (IS_ENABLED(CONFIG_BAREBOX_LOGO_QOI))
+		ext = "qoi";
 
 	filename = basprintf("/logo/barebox-logo-%d.%s", width, ext);
 	write_file(filename, start, size);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

