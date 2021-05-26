Delivery-date: Wed, 26 May 2021 09:03:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnZr-0004eQ-3H
	for lore@lore.pengutronix.de; Wed, 26 May 2021 09:03:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnZq-0000qO-0H
	for lore@pengutronix.de; Wed, 26 May 2021 09:03:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RebAm2X44kf/uPZxaj6J2cpDOUlNJni9Fw+FcDs7zPQ=; b=MRhVGyHTQ1/vSD
	vbjhhU4JfmKaSH9wK8UeBTz/VdeF2i2unguguIuaDF8srO4t06KOK8FcuJDoN5SvPGBVy2Uyrz5ZV
	GhSnsTmOtWdpGoC/H1ZAaj6UsmrtAhP0X2Vop9YvSoUU0PEIgyTCuoXaqJJkCvIl4RIbZ7d/abIMs
	kSlbvWsZM56lLlM2FYblTnXEZeg4ul496+WPHxRuBQXjA2HM/z1STqDOOyHb8kk7u6TclcrD4iY69
	jwnPkhCwLbdT4A4pG3SA2cIOLXRQb25Qw6/YdsY7S4KIlhIwwqGUjJgs1w9r/JTp33cjD/5YNURkB
	Cx1ITNEvbuRSnX6wKgGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llnYK-00Bqun-H0; Wed, 26 May 2021 07:02:06 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llnVM-00BpOD-MP
 for barebox@lists.infradead.org; Wed, 26 May 2021 06:59:02 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 g6-20020a17090adac6b029015d1a9a6f1aso3118545pjx.1
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 23:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8EBCZGAak7fe11e5M9Njw5r4n0UjDSbQzYFnuqccE8o=;
 b=ubS9tum7aoo2wdEmDQFSlkOvO+hMuEecOzH6+QHopMZY4GrM7lgC65dPvDiXHDz/m1
 QAyIzay0GZn2wDe7bDjk4eFZfqo0UpUI4nC83a0WNp+vEhtKeXJQDBGRnyUwVA2fNAKa
 nVd5dBztDLvaeRCzH0npZfPw/E7rVc1r5gvTGMn/xTv/NmOj78BUIIojaoNfthLAf1OH
 r9GQLYs0Cmi+Q2oMfeuuOmdT8Bo2fw3g6lRUxoo3WH0Qa52kUBcTTiIH3c+akdcnUxma
 PeZ8wflBr6yuuHMnpSCJp3PFLlSPcitER9olbaLIyiWtBhSctiOkhHGtQqZWUB3gnJL0
 DjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8EBCZGAak7fe11e5M9Njw5r4n0UjDSbQzYFnuqccE8o=;
 b=TnLGm9PYwi5m9pC9D2hmpnof/IUjRObxHkhNLfZjI9QdOpPtKbOwSFlU0wqbw4MQ3/
 GxZMTHfSxveMEgareBtJhaTLdwUvdm83zKZEbz8+4lJqeRw/FRaxr4CXWLT+opaD5fJV
 c35IiZH4W+9lSjj9aWqSpFtDeNWQUL38aBYzs+cyw4iZ/SkI8GuWR8L/0ynExwchfTKU
 xMtft/tjMKhXb09OSK/30uDs7IHrT0t/fZwkDrFQnHmqi+LEtnmA9LfTpRIEJs9i2y2g
 Pwicc0IBiS5kzTHhNuXiaJZvEDnihbn5Cy0PsKux0VkPzZ5otnojOzgXCh/JAPRgQfHa
 JuAw==
X-Gm-Message-State: AOAM531viu0uLuG4W3513ePR3M/OEKxA6ZbPenYNYYvEbHddAZzqCezJ
 K+vxC6ZWKL5ELLv3aZVkavgKekD2dUrPig==
X-Google-Smtp-Source: ABdhPJyNEKFBsd6rqmOFYDqviuf+4RMgDNVUQuvSxk1vmJJy0tDDKa5XVyzJASn+gDx1d67clUIKUQ==
X-Received: by 2002:a17:902:f545:b029:f5:4b82:9cc9 with SMTP id
 h5-20020a170902f545b02900f54b829cc9mr34357983plf.68.1622012339258; 
 Tue, 25 May 2021 23:58:59 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id n23sm12809242pgv.76.2021.05.25.23.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 23:58:58 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
X-Google-Original-From: Trent Piepho <trent.piepho@igorinstitute.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Tue, 25 May 2021 23:58:56 -0700
Message-Id: <20210526065856.368345-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_235900_796455_3F5024FB 
X-CRM114-Status: GOOD (  16.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] imx-image: Fix uninitialized add_barebox_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Trent Piepho <tpiepho@gmail.com>

It's set to 1 if the -b option is used, but is neither initialized nor
set to 0 if not.  Since the barebox image building recipies only uses -b
with this tool, it wasn't noticed.

Note that ommiting -b, so as to not add a barebox header, still adds a
1024 byte header, it's just blank.  I think it would be better if it was
not added at all.  If flashing to an SD card or eMMC main block, this
header overlaps the partition table, and so needs to not be flashed.
It's not part of the imx image.  It's just padding to place the imx
image at the correct location w.r.t. the start of flash.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 scripts/imx/imx-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3e277e82f..b97f56189 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -770,7 +770,7 @@ int main(int argc, char *argv[])
 	int outfd;
 	int dcd_only = 0;
 	int now = 0;
-	int add_barebox_header;
+	int add_barebox_header = 0;
 	uint32_t barebox_image_size = 0;
 	struct config_data data = {
 		.image_ivt_offset = 0xffffffff,
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

