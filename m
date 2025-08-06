Delivery-date: Wed, 06 Aug 2025 15:25:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje92-007eVk-1d
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:25:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje92-0007lS-0D
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGXaBGX0gx3DWgSsIGDnxgZ8JGRHrP5+AowIv0VNmrQ=; b=ubjjU0as9FqZDOIYtQiFr3rIml
	zRFdFYu3FGj9jL270YuoNh+PvS8LBj19UoohGH9n0UlDbgXvtpRrSgRQRbe5NF3r3MwquToHuyvg7
	HxQFl6SYxLnjh8q/PogZDOVv/i+BY3Ra55JMhkCZrEFb/VO4m8xWyYp64aq/HLgwaxHF3nB5P075Y
	LGhNJN56LQLSct4hICNShUPpcWdbVuCEZwTix6j+7UuYm5h9kcfnc+gxNadQrYT3hzxW81d7jLb3b
	EaV9eWWKth41Qxl+Io6lKiVahXIKA0ZPyYnPL7y37Cq21pAtE0rj8+rALpszAYwNES3BJlGuTb8zV
	UJcOe67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8a-0000000FIGN-1JH8;
	Wed, 06 Aug 2025 13:25:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8X-0000000FIEm-3mFj
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:24:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uje8W-0007ZX-G9; Wed, 06 Aug 2025 15:24:56 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:24:54 +0200
Message-Id: <20250806132455.2827813-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806132455.2827813-1-a.fatoum@barebox.org>
References: <20250806132455.2827813-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_062457_937471_24014AB9 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] MIPS: implement sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

flush_cache_all() is used for the same operation, we call
sync_caches_for_execution on ARM, so make the latter available as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/mips/include/asm/cache.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index f2f50986c7bf..1b62ea743a24 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -6,4 +6,6 @@
 void flush_cache_all(void);
 void r4k_cache_init(void);
 
+#define sync_caches_for_execution flush_cache_all
+
 #endif /* _ASM_MIPS_CACHE_H */
-- 
2.39.5



