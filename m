Delivery-date: Fri, 14 Jan 2022 17:54:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqL-002DIO-Bi
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqJ-0004Ry-9V
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3u9gqPJwnRSi93rUWGyg/jQAdymct34oqFV/kUilJA=; b=IqL1BJ9TyO8oD8
	Vw0/C1hoptgWCSPy5VY8+WoFUm+U/oSGZbXnNDWurc8cWEaRac36uPeJaEgcoNUt0ol6Ix/qnpD+K
	ROpOLBws2I0eGa7NqnMejBlcDg1uHk+aI21ebRLJepRBhvGZlDedVohBjMo7sAKrqhueplSU25KfR
	dPkUC3X292W8pp4KiIcmOA5V7L/rXFfh1B+mmVYV/Bi9XJ5SIKTX2Tty57YoYKXyiOhLNHl8THJKJ
	/w8r/TDot6sNlp7fO+uETXrQKgdIwMBt7PhcuxZulno5sIHTMkGhxfTTLstwa/JgDZMGqM16k3iDP
	POUxeK674u0aaQ/ar/pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pou-009qUJ-7h; Fri, 14 Jan 2022 16:52:56 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGs-0b
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 0BE191C74B8
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179145;
 bh=QbK3C2TCQOM2JPvcm174W1em0/euoX54funpDzNETN8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jk9SHV1ZMj1YTlNpqd4imQjGaWNDszsWqlsGOSC4zh1qdLZNSA+rc9KKRytmf+O8L
 s9c/fLvmMAcNy1S0DpKl3f5F7OMDZ2HCtwmrCCNY25WJB3XqAHoQ3hSDWuTdhz1P6o
 0N80VTMxdhDAZKatPYH1bcTLD71iqB6HfGX/LgIw=
Received: from fx403 (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 75E411C74AA;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <26ec.61e1aa47.e97a7.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx403.security-mail.net (Postfix) with ESMTPS id EAFCC1C749A;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id C358E27E034A;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A843427E03F5;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A843427E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179143;
 bh=vo2nWTeNpbmRFPzzAxPZp9cf26GiBjcjYtyN9VAbmHI=;
 h=From:To:Date:Message-Id;
 b=Cwaao9mcZReXPazOkOuOwru/Mfh7xishN0nG65KTcmFlLLWk9i68mtRWV+ydquqTu
 J7QdKIRCjU1IoQlA12kIkJ6Asc9f9AR9Zi3GikCpB226JYXf6iIavA3uJ/BpXqWVIS
 NRsaYJB4WMxyF/qSdYJ7B+/9dSlWAckgg1ruVR3s=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id NJgOhtrO6CqI; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8919E27E034A;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:00 +0100
Message-Id: <20220114165208.9980-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_444281_4CAF5917 
X-CRM114-Status: UNSURE (   8.05  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] kvx: dma: Remove arch dma_map/unmap_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since dma_map/unmap_single functions have been moved to common, barebox
doesn't compile for kvx anymore. The original functions were doing some
magic to support 32bits dma buffer addresses. The original behavior can
be replaced by a device-tree dma-range property.

Fixes: 3f975f810 ("dma: move dma_map/unmap_single from ARM to common code")
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/lib/dma-default.c | 38 --------------------------------------
 1 file changed, 38 deletions(-)

diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
index 2a4144696c..c84a32954e 100644
--- a/arch/kvx/lib/dma-default.c
+++ b/arch/kvx/lib/dma-default.c
@@ -54,41 +54,3 @@ void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
 		BUG();
 	}
 }
-
-#define KVX_DDR_ALIAS_OFFSET \
-	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
-#define KVX_DDR_ALIAS_WINDOW \
-	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
-
-/* Local smem is aliased between 0 and 16MB */
-#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
-
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	uintptr_t addr = (uintptr_t) ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	/* Local smem alias should never be used for dma */
-	if (addr < KVX_SMEM_LOCAL_ALIAS)
-		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
-
-	if (dev->dma_mask && addr <= dev->dma_mask)
-		return addr;
-
-	if (addr >= KVX_DDR_ALIAS_WINDOW)
-		return DMA_ERROR_CODE;
-
-	addr -= KVX_DDR_ALIAS_OFFSET;
-	if (dev->dma_mask && addr > dev->dma_mask)
-		return DMA_ERROR_CODE;
-
-	return addr;
-}
-
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	dma_sync_single_for_cpu(addr, size, dir);
-}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

