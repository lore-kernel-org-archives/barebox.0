Delivery-date: Thu, 03 Apr 2025 10:39:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G6X-007kY0-1E
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 10:39:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G6W-0004rp-Od
	for lore@pengutronix.de; Thu, 03 Apr 2025 10:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LuWfXOQ83mWkydsmd9Iq3dQpT9pxJmuoShueTbUKkJs=; b=M6y8I70RTJ2IqbiK4DQZZPnXMS
	7MPEBAYByuY1EkaiEoUoJ4jD2zirF5KCQgNpIh29pTin141mnph21es5UD3s/PjY8U0eak9RuX86O
	PjIdvt10zEuBkfV38kae4d0IG1s/hOCV/J6yyW22kAzT0A0xj/GNQbwr1I5Ucew7T+7mKyCs+aqdF
	oVRge0AY3WbdpNfpWHAI7eVsTUHu7ptsqgqtySs8lKEgEkkFz6owHtG2ADEjtYEg9c++lj4gbkhqE
	wRbP1EM++zO5/WemU3yeVal6EnrCXUEFn6qqNOjGck56I322AisTJrp+Hn87+RxPChRw3bt8xNbUB
	vnh34S0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G63-00000008HyK-3i6S;
	Thu, 03 Apr 2025 08:38:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G2k-00000008HWm-0lax
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 08:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0G2g-000444-0Y; Thu, 03 Apr 2025 10:35:18 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0G2f-0034ay-2f;
	Thu, 03 Apr 2025 10:35:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0G2f-007iMu-2M;
	Thu, 03 Apr 2025 10:35:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Apr 2025 10:35:16 +0200
Message-Id: <20250403083516.1838668-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_013522_219961_8870CE2C 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] tee: optee: of_fixup: allow static shared memory size of 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't necessarily need a static shared memory region for
communication with OP-TEE. Both Linux and barebox support
dynamic shared memory communication and barebox doesn't even
support static shared memory.

Make this clearer in the documentation and adapt the fixup code,
so a shared memory size of zero is handled as one would expect.

While at it, we also fix a typo: reserving too much memory is ok,
but too little can lead to instruction prefetcher crashes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig               | 13 +++++++++----
 drivers/tee/optee/of_fixup.c |  3 +++
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 8fb050a20354..188e3bbc0545 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1297,8 +1297,8 @@ config OPTEE_SIZE
 	depends on HAVE_OPTEE
 	help
 	  Size to reserve in main memory for OP-TEE.
-	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
-	  barebox from allocating memory in this area.
+	  Can be larger than the actual size used by OP-TEE, this is used to prevent
+	  barebox from using or speculating into this area.
 
 config OPTEE_SHM_SIZE
 	hex
@@ -1306,8 +1306,13 @@ config OPTEE_SHM_SIZE
 	prompt "OP-TEE Shared Memory Size"
 	depends on HAVE_OPTEE
 	help
-	  Size to reserve in main memory for OP-TEE shared memory communication.
-	  Can be used for fixing up the OP-TEE OF node.
+	  Size to reserve in main memory for static OP-TEE shared memory
+	  communication. Can be used for fixing up the OP-TEE OF node.
+
+	  A shared memory size of 0 means that only dynamic shared memory
+	  will be supported for communication with OP-TEE. This is the only
+	  mode supported by barebox anyway, but support needs to be enabled
+	  in OP-TEE at compile-time.
 
 config BOOTM_OPTEE
 	bool
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index e4d3c5f9b0b0..045b5a0bb754 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -44,6 +44,9 @@ int of_optee_fixup(struct device_node *root, void *_data)
 	if (ret)
 		return ret;
 
+	if (!fixup_data->shm_size)
+		return 0;
+
 	if (!optee_get_membase(&optee_membase)) {
 		res.start = optee_membase + OPTEE_SIZE - fixup_data->shm_size;
 		res.end = optee_membase + OPTEE_SIZE - 1;
-- 
2.39.5



