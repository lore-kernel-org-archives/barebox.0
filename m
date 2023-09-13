Delivery-date: Wed, 13 Sep 2023 12:37:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgNFW-00DfzT-Ma
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 12:37:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgNFU-0006Te-LU
	for lore@pengutronix.de; Wed, 13 Sep 2023 12:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J3CtYOapbx81DwiJf0wL3b54OjOhrGSAtIP2RYNa7PM=; b=4uL1I5XO9PPEFuUmkbzKPv4Fw5
	xusPFm8u4moYxhR+cMDNfyoVCWkK3TmIP9JIqwP/vFdYNHUd2gbmw0wNT/IktQWgxLKGkGkcvSVW0
	l2IfWGdcmNxyHRCtota62gCK3cOO15kmaTicudxG2XTucSw+KOKYGmCQb9bcqjfGmkieBoTf+UPlj
	EeK6ff//Mb36RtU1G4+Sx0BEPPcCy7JRF3M5M7TY+rvGEOkOFsqNp+O4bFIoT8FEGU5nHIkLZDjZU
	OFtTfd+2TugAwJGp6bRJ07pqEkd3NgFtAWRHtnoNaXqlW/QrtIkcbLUZO+xyY2hHwNdaZD4mz/lsJ
	5iaDQzow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgNE4-005Xtb-2Y;
	Wed, 13 Sep 2023 10:36:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgNE0-005Xnj-2L
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 10:36:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgNDu-0006M1-HQ; Wed, 13 Sep 2023 12:35:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgNDt-0062pV-Uc; Wed, 13 Sep 2023 12:35:53 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgNDt-006ttz-2t;
	Wed, 13 Sep 2023 12:35:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 12:35:52 +0200
Message-Id: <20230913103552.1644839-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_033600_763083_FC7B7563 
X-CRM114-Status: UNSURE (   9.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: fat: enable VFAT long file names by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apparently, this option defaulted to 'n' since the very beginning, so
users newly enabling FAT may unwittingly run into a cryptic:

  barebox@board:/ cp something /mnt/mmc0.0/freertos-main.elf
  could not open /mnt/mmc0.0/freertos-main.elf: Invalid argument

As FAT file systems nowadays are VFAT by default and allow up to 255
characters in file names, there's no reason to restrict barebox to
classic 8.3 file names by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
index 8cd3b604baeb..53f784ee54d5 100644
--- a/fs/fat/Kconfig
+++ b/fs/fat/Kconfig
@@ -16,7 +16,7 @@ config FS_FAT_WRITE
 
 
 config FS_FAT_LFN
-	bool
+	def_bool y
 	prompt "Support long filenames"
 	help
 	  Enable support for file names other than 8.3.
-- 
2.39.2



