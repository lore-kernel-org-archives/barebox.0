Delivery-date: Tue, 01 Nov 2022 07:39:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkvm-00AQ8H-Sv
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:39:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkvl-0003FR-Lw
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6DHk58eOUiueK4n0gXPjg2fgfzhYiPekBBEBbgKgSRA=; b=3oZyOOzTSe3IKbMTg2+rSeB5PL
	jhSKLUwZbHy9aHa2X1ufjc9qQDlXkuEo6X05kJPrbOBUkDcLH0w9Ff/ZrgAneQDGUmjCEJqQ1N4h9
	deS+4G4w4SZ1CSvqfpsRQ2Ufrj/0FRQnlt2jDQgtcoHOx3e5sBOPTLp3R2KWm1J0n42k91vPp/upL
	eMp9B4LgrXW/Mf22RLWx6DcUEc2bfZJukrxR2gPSpUKtwmNkasE4jM79rRUzNca5RXYIq+9qotzyX
	9Onp7BnHJyWi4u7CQJVfx2SRpf8i/ERabe1BAEem2KZbmY2w8H8PrmHL80R+GL0uLE3JbsVqKGLiY
	5UKNzqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkuV-002RBF-2Q; Tue, 01 Nov 2022 06:38:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkuQ-002RAU-B9
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:38:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkuP-00037o-3K; Tue, 01 Nov 2022 07:38:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkuO-001ckF-KG; Tue, 01 Nov 2022 07:37:59 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkuM-00DX3d-Pt; Tue, 01 Nov 2022 07:37:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:37:57 +0100
Message-Id: <20221101063757.3225283-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101063757.3225283-1-a.fatoum@pengutronix.de>
References: <20221101063757.3225283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_233802_422331_81BC228A 
X-CRM114-Status: GOOD (  10.45  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] sandbox: configs: enable new uptime command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Foe testing the new uptime command, enable it in the sandbox defconfig.
The config regeneration drops the CONFIG_PNG symbol, because it's now
selected by CONFIG_LODEPNG.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/sandbox/configs/sandbox_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 881762444b21..16138d9274c4 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -86,6 +86,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_UPTIME=y
 CONFIG_CMD_STATE=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_CMD_SPD_DECODE=y
@@ -146,7 +147,6 @@ CONFIG_XZ_DECOMPRESS=y
 CONFIG_BASE64=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_BMP=y
-CONFIG_PNG=y
 CONFIG_FONT_8x16=y
 CONFIG_FONT_7x14=y
 CONFIG_FONT_MINI_4x6=y
-- 
2.30.2



