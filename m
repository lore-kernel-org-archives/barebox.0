Delivery-date: Wed, 06 Oct 2021 10:45:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YO-0003Ds-Uv
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 10:45:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YN-0000p4-Gv
	for lore@pengutronix.de; Wed, 06 Oct 2021 10:45:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMoxKP+bkyeMtHvCoSq7LFUpvBb1at9iNfS49zuGd5w=; b=wNA08E4vdYQt+u
	MwcWFMWDkR/3oRiIWZVlX+YLDrRXWTK60+PZDkGmJzAtbblOwhNf4ZucQ8GNQlQB/QeAt8onCvXfb
	dBpju6oYRP/dKveozOipMjPphd6x3rObvNln28RIKaZsVwO0iBBL4hMsDiSZOc0L12E8/T9pupjxD
	NJcie6MjkfxFgjau8JIDIFWUYkHaFXGveBCjrWcNl80i2D4DoTvMv7AipsS/D9qFYQZvx+7CHDSz2
	aJ2CK7/R+RkrApesax+09pqjkSkxg7C/n8vDx8zvrwn+1mk1EIxpG9bVavWeKum+edIE/HELXh2vI
	fFSRgcbzJgxzkG2gdZ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY2WT-00DVsQ-FP; Wed, 06 Oct 2021 08:43:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY2WO-00DVpb-Ns
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 08:43:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WL-0000BQ-3U; Wed, 06 Oct 2021 10:43:25 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0003fq-JO; Wed, 06 Oct 2021 10:43:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Oct 2021 10:43:22 +0200
Message-Id: <20211006084323.14051-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006084323.14051-1-o.rempel@pengutronix.de>
References: <20211006084323.14051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_014328_796261_1F77388E 
X-CRM114-Status: GOOD (  17.05  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 7/8] ARM: boards: skov-imx6: add defaultenv with
 eth1-discover script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add eth1-discover script to run USB detection if eth0 is disabled. The
eth0 will be automatically disabled if the no on-board switch is
detected.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/Makefile                        | 1 +
 arch/arm/boards/skov-imx6/board.c                         | 3 +++
 .../skov-imx6/defaultenv-skov-imx6/network/eth1-discover  | 8 ++++++++
 3 files changed, 12 insertions(+)
 create mode 100644 arch/arm/boards/skov-imx6/defaultenv-skov-imx6/network/eth1-discover

diff --git a/arch/arm/boards/skov-imx6/Makefile b/arch/arm/boards/skov-imx6/Makefile
index a5e85bc1e1..07b87ff11d 100644
--- a/arch/arm/boards/skov-imx6/Makefile
+++ b/arch/arm/boards/skov-imx6/Makefile
@@ -1,3 +1,4 @@
 obj-y += board.o
 lwl-y += lowlevel.o
 obj-pbl-y += version.o
+bbenv-y += defaultenv-skov-imx6
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index b91033afc1..cd7b8e208d 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -5,6 +5,7 @@
 #include <bootsource.h>
 #include <common.h>
 #include <deep-probe.h>
+#include <envfs.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <gpio.h>
@@ -651,6 +652,8 @@ static int skov_imx6_probe(struct device_d *dev)
 
 	skov_init_board(variant);
 
+	defaultenv_append_directory(defaultenv_skov_imx6);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/skov-imx6/defaultenv-skov-imx6/network/eth1-discover b/arch/arm/boards/skov-imx6/defaultenv-skov-imx6/network/eth1-discover
new file mode 100644
index 0000000000..e11a3f9006
--- /dev/null
+++ b/arch/arm/boards/skov-imx6/defaultenv-skov-imx6/network/eth1-discover
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# Some boards doesn't have a ETH port, but may have USB network attached
+if [ "$eth0.mode" != "disabled" ]; then
+	exit 0;
+fi
+
+usb
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

