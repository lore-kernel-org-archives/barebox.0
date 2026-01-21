Delivery-date: Wed, 21 Jan 2026 08:57:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viT5P-003gbK-2b
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 08:57:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viT5O-0006US-QX
	for lore@pengutronix.de; Wed, 21 Jan 2026 08:57:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BJs2DBcxy9v4gcsuUHW0kKMWlIRkF/u4g3F1LuTOZZ8=; b=XEIOqIz6XZ3RPJAdMRY7QjJwRx
	Dyr4Hu5BtrneEr94RCQ+V4eRUPvfRxplvDeMPket2hX7kfI9w6iJUAt1gXLju8gasVF1NTrfi10g7
	t1PWnQM/c2YmqJYPFyw58spCgzaCMRlDYfYpWMGicQu1G0vYmIH4BNKdb5jSBQ9UyBQutscM9+XWI
	lB1jPmyikls2vklL0y7xOsZco6mGHEqMngPsYuAEtJrgnt9oO047scAF49f1yq4EP3nuGosRfllS8
	sHc5+ZBNND65xoXiQEQNq+UoPPw5f0885E6EVCkwkZ2tJN2Sqh+92wA5bIkBjF1A86/YELQBvxUQd
	dcZvIw4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT51-000000052yt-3DBi;
	Wed, 21 Jan 2026 07:56:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT50-000000052yd-0ddD
	for barebox@bombadil.infradead.org;
	Wed, 21 Jan 2026 07:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=BJs2DBcxy9v4gcsuUHW0kKMWlIRkF/u4g3F1LuTOZZ8=; b=NH/pnCleYV4c4F9E0grBFrmeQz
	CacVhWThSLGiM13MHptsmsiyzrSYclAvQ1VOKZ6eW20u6hRkxZKN9jpQ2Q0mS6V7EyMd1a67vbOSh
	CwJQGQzKNz+wF9DpXI2HIef6sHya7DKqjqNDlEyUr3T2QnlF3racfK7KN6VhUgnsF6LoYkgQpwIAV
	bNKG8gQmOp51VQtO81St49jxTg7Q6dEKQw0ch8AS4+lUK0Yvxz5XZLZJ2R5tGgaRwFF/vgbnPKcPi
	8Wxj77wlfjTsFR87VKDcAejP6jUjb5xPUZ9nNqo0lOXQEJGrf8uoA2L14mGdkfVwUWcQSoHVghVUB
	l0Ndrphw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT4x-0000000FYjC-1VY1
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 07:56:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viT4w-0006Lx-UW; Wed, 21 Jan 2026 08:56:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viT4x-001iLl-1N;
	Wed, 21 Jan 2026 08:56:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viT4x-0000000GONA-1SZl;
	Wed, 21 Jan 2026 08:56:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 08:56:37 +0100
Message-ID: <20260121075638.3906926-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_075639_529151_ABE9E407 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] partitions: efi: allow refresh without command support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_PARTITION_MANIPULATION is currently selected by the createnv and
parted commands, but neither is really needed to make use of the
global.system.gpt_refresh magic variable.

Adapt the dependencies in Kconfig to reflect this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 1007dbbe19d2..9d037b02e257 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -25,7 +25,8 @@ config PARTITION_DISK_EFI
 	  Add support to handle partitions in GUID Partition Table style.
 
 config PARTITION_DISK_EFI_REFRESH
-	depends on PARTITION_DISK_EFI && PARTITION_MANIPULATION
+	depends on PARTITION_DISK_EFI
+	select PARTITION_MANIPULATION
 	bool "refresh GPT partition on demand"
 	help
 	  The GPT alternative header must be at the end of the device. When disk
-- 
2.47.3



