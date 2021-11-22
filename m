Delivery-date: Mon, 22 Nov 2021 09:49:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51J-0003PN-Fu
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51H-0000C3-CU
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2zF5PTJgDg1C61HYANG8005s7huNJMW/+/bMPqKfig=; b=qMNEu5Hjymj9En
	6Wp7CSCdt0/3RbmxgzeX1ALOmzLML/GMstFLgL/1lmY+38VbuDbchyijcDg6ihgVeVD4CLLX9gbvn
	QbHNA70A5TjlDS+fXoYiNJXCqich+x1tE303zHJVS0BifJ69ZmocHqMHRJmoTewaRtmy4Cq/UhO3I
	2OKrSmowUupZuElYdDyghhLTqVadj1FcORvfRLn0xDu9gG8Ec9tkA64RTdNErourIlvpIVgCY59U+
	Y5JXWpUvwr6W0A8fX7LQxYA4t7dGcoD5B+/01ZFh9Unezz3S5tyc9cBTEym7qmLBaYPE7jcUebRPz
	69PsSyb872Tr9gpktnyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zz-00FLNk-F7; Mon, 22 Nov 2021 08:48:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzG-G3
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wg-Ft; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atfc-SD; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:26 +0100
Message-Id: <20211122084732.2597109-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_551194_826C6B58 
X-CRM114-Status: UNSURE (   8.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 24/30] common: move CONFIG_ELF into General Settings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, when ELF prompt is visible, it's shown top level in the
menuconfig. Move it to the General Settings menu instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 42240ae8411b..77410c958b4c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -43,9 +43,6 @@ config USE_COMPRESSED_DTB
 	select UNCOMPRESS
 	select LZO_DECOMPRESS
 
-config ELF
-	bool "ELF Support" if COMPILE_TEST
-
 config FILETYPE
 	bool
 
@@ -608,6 +605,9 @@ config BOOTM_AIMAGE
 	help
 	  Support using Android Images.
 
+config ELF
+	bool "ELF Support" if COMPILE_TEST
+
 config BOOTM_ELF
 	bool
 	depends on BOOTM
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

