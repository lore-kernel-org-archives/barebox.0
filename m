Delivery-date: Mon, 16 Jun 2025 09:24:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-007qaI-2m
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 09:24:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-0004wb-5T
	for lore@pengutronix.de; Mon, 16 Jun 2025 09:24:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0HhbfDRDIR8g13IJx8Oj+lRMHDbwUhgRATmb+rsjuZE=; b=eBW3aCGYDcalFtlfws+guiqIl1
	KP6W4IhSAVoKth+vHc2ja/AV19tAYUu3u4othVL5d1V1aeYDKkhKqIZyYlkG+eUtl4fZOPj9tYRcf
	MJflsLl32Zjy9+gEGykcLhg1z7/5XDSAQrzobyeQ4eaqrbXk0uESoW7HnT6FslkwFX6udYKOe65j/
	BDKQ3IJSdjjqxZyyf87fp6UIDHM6gobsF099kKrhn/bOEcpTHo5ehX2ANfh0v7xNArMt7Wf7jqpBn
	Cizf9rMbZ+ILQSIyo54KPydS7RRbvPPbe5N6bVx7m7frX0pdszVSZ9grw0A6gVhvOWkN0189BtLCI
	zCGwnMdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4C7-00000003cwN-04vJ;
	Mon, 16 Jun 2025 07:23:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR474-00000003c83-28wm
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 07:18:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uR470-0006Gi-Bv; Mon, 16 Jun 2025 09:18:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 16 Jun 2025 09:16:29 +0200
Message-Id: <20250616071634.811000-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_001838_569143_67B8F8B0 
X-CRM114-Status: UNSURE (   9.33  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] resource: mark normal memory as supporting being uncacheable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The attributes report what the underlying memory is capable of,
so if we can configure it as WT/WC/WB, it's likely we can configure it
as uncached as well. This doesn't hold true for all architectures, but
it does for ARM, so add it to the MEMATTRS_NORMAL bitfield for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/ioport.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 425928df3bfe..ceff1bb7e5ac 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -133,11 +133,11 @@ enum resource_memtype {
 #define MEMATTR_RO	0x00020000	/* read-only */
 #define MEMATTR_SP	0x00040000	/* specific-purpose */
 
-#define MEMATTRS_CACHEABLE	(MEMATTR_WT | MEMATTR_WC | MEMATTR_WB)
-#define MEMATTRS_RW		(MEMATTRS_CACHEABLE | MEMATTR_XP)
-#define MEMATTRS_RO		(MEMATTRS_CACHEABLE | MEMATTR_XP | MEMATTR_RO)
-#define MEMATTRS_RX		(MEMATTRS_CACHEABLE | MEMATTR_RO)
-#define MEMATTRS_RWX		(MEMATTRS_CACHEABLE)	/* TODO: remove all */
+#define MEMATTRS_NORMAL		(MEMATTR_UC | MEMATTR_WT | MEMATTR_WC | MEMATTR_WB)
+#define MEMATTRS_RW		(MEMATTRS_NORMAL | MEMATTR_XP)
+#define MEMATTRS_RO		(MEMATTRS_NORMAL | MEMATTR_XP | MEMATTR_RO)
+#define MEMATTRS_RX		(MEMATTRS_NORMAL | MEMATTR_RO)
+#define MEMATTRS_RWX		(MEMATTRS_NORMAL)	/* TODO: remove all */
 #define MEMATTRS_RW_DEVICE	(MEMATTR_UC | MEMATTR_XP)
 #define MEMATTRS_FAULT		(MEMATTR_UC | MEMATTR_XP | MEMATTR_RP | MEMATTR_RO)
 
-- 
2.39.5



