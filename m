Delivery-date: Mon, 17 May 2021 09:34:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXlq-0000c6-Og
	for lore@lore.pengutronix.de; Mon, 17 May 2021 09:34:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXlq-0005Jq-0e
	for lore@pengutronix.de; Mon, 17 May 2021 09:34:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jrValsI7nTziqb1tV/Whk5eSwXjRK1aOX8kEFlqhSag=; b=TRSTHaJ5li92uk1daTDDKho3g
	s0u3JqkC5ZGZLXjNcYora8nLOnEEkhNdVMF8Az1Q3d1qRYhamP9aqL+94duC0aUMbOltH9fI/peZN
	o21od5UZtogq360IcZ1ykFIAe3VkrzYNEJJHPRXqYB2oUgHsnhwzSwV/a7HQGB9KCFixqCDoq+6NA
	QTBfJwzblM5Pu0+PNtxOsLY47aYp9u3EY30ZYbtw65OzsL7uZFdXj/TLKiwj43Bwp/Zm5ZxI9xnQT
	Ghy089Pr0Osxs1oEeIjZioH0I57R8FGHBuVbAXgPLt3fp7ePq/SwUq2CY2j5EgcKcm6FFbbzevhhh
	jtgkX/ZWw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liXkh-00E32S-16; Mon, 17 May 2021 07:33:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXkP-00E30C-G1
 for barebox@desiato.infradead.org; Mon, 17 May 2021 07:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=WebFfQa6VNncwfHickl0uClxsNHSdQvt2p6qoignVJI=; b=0MfT7LHYdJ57YyE7TYV/3xZgz8
 c3E3PKT4tFStvLqDvfhWD1kvYXyrxC7j13Mnq0t3iL25gUWtQugtAifEJQzmeDisVEINv9Vp2nPdg
 wEyNKCUQPxbdyPpXwIfEPQq5Hp3P2JVevgQ8XgxYBqcxtn/m8HDppHiX+t5IxEo0bBs1Ve9Fju707
 1X7cwzAXs3Y4AHQEO5of30V5Cqyi09O1RWTnVbSt8VVKKt4fyzjPCMmsGKu0UW8vkiOrZ0LnVCVFi
 1M0m/Tv7CVRL00LIdWcVepvoiyaYyCucqv/kDCRvpsEirq2Nx0GB/YvXBydvB6vmCqiJFhBcLKkgp
 T2iKZzig==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXkN-00DY3K-2H
 for barebox@lists.infradead.org; Mon, 17 May 2021 07:33:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXkL-00059h-C7; Mon, 17 May 2021 09:33:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXkL-0007iL-3a; Mon, 17 May 2021 09:33:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 09:32:55 +0200
Message-Id: <20210517073256.25684-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517073256.25684-1-s.hauer@pengutronix.de>
References: <20210517073256.25684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_003303_132167_6528D7A8 
X-CRM114-Status: GOOD (  10.91  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: i.MX: Skov-imx6: Remove custom env
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The environment is unused currently. It should either be included using
bbenv-y or not at all. For now remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/skov-imx6/env/init/automount  | 14 --------------
 arch/arm/boards/skov-imx6/env/nv/boot.default |  1 -
 2 files changed, 15 deletions(-)
 delete mode 100644 arch/arm/boards/skov-imx6/env/init/automount
 delete mode 100644 arch/arm/boards/skov-imx6/env/nv/boot.default

diff --git a/arch/arm/boards/skov-imx6/env/init/automount b/arch/arm/boards/skov-imx6/env/init/automount
deleted file mode 100644
index bc9ff48a0a..0000000000
--- a/arch/arm/boards/skov-imx6/env/init/automount
+++ /dev/null
@@ -1,14 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
-# development support
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
-
-# regular SD card based boot procedure
-mkdir -p /mnt/sd
-automount -d /mnt/sd 'mmc2.probe=1 && mount -t ext4 /dev/mmc2.0 /mnt/sd'
diff --git a/arch/arm/boards/skov-imx6/env/nv/boot.default b/arch/arm/boards/skov-imx6/env/nv/boot.default
deleted file mode 100644
index fe1a363da1..0000000000
--- a/arch/arm/boards/skov-imx6/env/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-bootchooser
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

