Delivery-date: Thu, 07 Oct 2021 13:55:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYRzW-0001QZ-FD
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 13:55:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYRzV-00051Q-F5
	for lore@pengutronix.de; Thu, 07 Oct 2021 13:55:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W3ugpg/ggQ8TGGJ3QZcKBN8qGxNoKjADe4Nz4KJbDyI=; b=zAu5BBLCtbZpaJLX+BAXD+2yCb
	PmLKynzxcJf3yxEWre+F7/FV9efzjFWhajlv2MfE5TbTEfovGh8PCFM4VuKiQtW16xXhIHWJadLgl
	rU5h5xM1oy6//XXz4lfwU0MbneRvZMZkpyahlvMKZQUxYO1iFjFFOl57CXsMcQYj4tB+Qg5b8ihE4
	drYzoGK7cJvfZ0i/ZwrlWskHmLBMWk29RXKdgI/25DKC1DQnAbT3lY5r+nxEEojqTr2W7pAy5LhAj
	PoDbsXWIzWzrDy6P7Csnf4OR08wiaDSj4k5jItKonZiPvqckYkYoFcUwETP3qiHP0EykuSY4yk65O
	hu1ZYX8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYRxv-00HAjC-1y; Thu, 07 Oct 2021 11:53:35 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYRxp-00HAif-Dv
 for barebox@lists.infradead.org; Thu, 07 Oct 2021 11:53:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 008001B7BAE4
 for <barebox@lists.infradead.org>; Thu,  7 Oct 2021 13:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1633607604;
 bh=skwLcOGo/BCNrD6GM/S9VwzJGbO9dZsDgIpDdwH0Zpw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=oxWIOWiw6ogbMeHy+7Y7G+v2U9u7iHUaN4E6M54gLLC3W/4k1woqnM83NXbtk8zMb
 axR2QYdIDIF6ULMjhXq2GEDAr3bPfT3YUZqCSCRIwvJjFYipNsx5iQ9QXEpKzFp0lr
 T8WkVGyflv2r6dRkSkng5S3905VlhSfNsE4vefRs=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 3E82B1B7BAAC;
 Thu,  7 Oct 2021 13:53:23 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <291c.615edfb3.c6ab.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 0CF3A1B7BADE;
 Thu,  7 Oct 2021 13:53:23 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id E760627E02D4;
 Thu,  7 Oct 2021 13:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CFA6D27E0333;
 Thu,  7 Oct 2021 13:53:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu CFA6D27E0333
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1633607602;
 bh=REMMsNBuyX9ARF4CLlsLYdbC87xoChkDDClYfJ0vVj4=;
 h=From:To:Date:Message-Id;
 b=ONo1WMEwLSvZPN0wXOXBBDvMrjkbVNfNGGrQ4gZlX2uhdyd+0ldHhj7+oRZ0yR+Nk
 mPAM8lUHqGrlWns/aAgNf/uRRPUz+NUsi4hQNBJ3J8Szwfjg0ENNRnGg0Wj1+2Pi8n
 7/jnxR3I481b7NH+Mq+gDH3ObdYTvb8tzYSFKa4Q=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KJLfBJed8ML7; Thu,  7 Oct 2021 13:53:22 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B2CE427E02D4;
 Thu,  7 Oct 2021 13:53:22 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Thu,  7 Oct 2021 13:52:54 +0200
Message-Id: <20211007115254.32270-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_045329_991876_560853CD 
X-CRM114-Status: UNSURE (   6.90  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ian Abbott <abbotti@mev.co.uk>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC PATCH] logo: Makefile: Replace inkscape with convert
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The uses of inkscape to convert svg to png hasn't been very stable from
one version to another, and required quirks from one version to another.

I hope that convert from imagemagick will be a more stable solution.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 lib/logo/Makefile | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 4149d4ff6c..f08beef76b 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,17 +1,17 @@
 
-OPTS_barebox-logo-w64.bblogo = --export-width=64
+OPTS_barebox-logo-w64.bblogo = -resize 64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
 
-OPTS_barebox-logo-w240.bblogo = --export-width=240
+OPTS_barebox-logo-w240.bblogo = -resize 240
 bblogo-$(CONFIG_BAREBOX_LOGO_240) += barebox-logo-w240
 
-OPTS_barebox-logo-w320.bblogo = --export-width=320
+OPTS_barebox-logo-w320.bblogo = -resize 320
 bblogo-$(CONFIG_BAREBOX_LOGO_320) += barebox-logo-w320
 
-OPTS_barebox-logo-w400.bblogo = --export-width=400
+OPTS_barebox-logo-w400.bblogo = -resize 400
 bblogo-$(CONFIG_BAREBOX_LOGO_400) += barebox-logo-w400
 
-OPTS_barebox-logo-w640.bblogo = --export-width=640
+OPTS_barebox-logo-w640.bblogo = -resize 640
 bblogo-$(CONFIG_BAREBOX_LOGO_640) += barebox-logo-w640
 
 obj-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
@@ -38,15 +38,12 @@ cmd_logo_S =							\
 %.bblogo.S: %.bblogo FORCE
 	$(call if_changed,logo_S)
 
-# Inkscape 0.92.4 supports -z -e but Inkscape 1.0 uses --export-type=png
-INKSCAPEOPTS += $(call try-run, inkscape -z -e -,-z -e -,--export-type=png)
-# Inkscape 1.0 supports -o -
-INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
+CONVERTOPTS += -background none
 
-quiet_cmd_logo = LOGO.S  $@
+quiet_cmd_logo = PNG     $@
 cmd_logo =							\
 (								\
-	inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
+	convert $(OPTS_$(@F)) $(CONVERTOPTS) $< png:$@; \
 )
 
 %.bblogo: $(srctree)/Documentation/barebox.svg FORCE
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

