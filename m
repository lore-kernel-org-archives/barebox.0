Delivery-date: Tue, 14 Apr 2026 10:07:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCYny-00C0hw-1z
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:07:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCYny-0003Qe-1p
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:07:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jmLFJJJPg/a7Ln4DQeWwHnEaWka4uHOU/QY1WWLWozY=; b=KFr1yJ1a5htI/dE3MhndYR9JTW
	l+r6+lDZMxdqH1g8mFHjcabi6qP+l9ET1fspBDEuzmxQJlvcNavrUlGyTjEg1CGgrVB4YiVikJGNa
	HskCxMcAZaI1W01CnYJkiFzN3WaG4rsvLb1dE2KJlkn+ndpd0XoBOBhteP/mC5MhzGmzx2cjS6+su
	c69rjQArYggl9XDhCMVMh7lj4b2JihC7mH1G2OwzrjcDV4z9tdkaVyRtQZ8DtngrRTnkY3/TTffVo
	KDXXRogiUc4oZylKkuPXOM8+c/MULpYObpKl/LPMiRGKDl+H/PN9uoC2Cn28GKg8pXRZRa20sSca8
	8P7oqCHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCYnU-0000000Gway-00Y8;
	Tue, 14 Apr 2026 08:07:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCYnP-0000000GwXp-15lo
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:06:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-0003FT-FL; Tue, 14 Apr 2026 10:06:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-005J1Q-0o;
	Tue, 14 Apr 2026 10:06:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-00000001fRr-0cJZ;
	Tue, 14 Apr 2026 10:06:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 14 Apr 2026 10:06:28 +0200
Message-ID: <20260414080652.397582-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_010655_341943_A2D735A5 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] ppc: define sync_caches_for_execution only for MPC85xx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

In preparation for adding a call to sync_caches_for_execution() into
common code, make sure PowerPC configurations without an out-of-line
definition fallback to the inline no-op definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - new commit to fix CI breakage (Sascha)
---
 arch/powerpc/include/asm/cache.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 2edf11de2ef8..29746fd1945f 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -35,8 +35,10 @@ extern void clean_dcache_range(unsigned long start, unsigned long stop);
 extern void invalidate_dcache_range(unsigned long start, unsigned long stop);
 extern void flush_dcache(void);
 extern void invalidate_icache(void);
+#ifdef CONFIG_ARCH_MPC85XX
 #define sync_caches_for_execution sync_caches_for_execution
 extern void sync_caches_for_execution(void);
+#endif
 #ifdef CFG_INIT_RAM_LOCK
 extern void unlock_ram_in_cache(void);
 #endif /* CFG_INIT_RAM_LOCK */
@@ -88,4 +90,6 @@ extern void unlock_ram_in_cache(void);
 #define DC_LES		0x20000000	/* Caches are little endian mode */
 #endif /* CONFIG_8xx */
 
+#include <asm-generic/cache.h>
+
 #endif
-- 
2.47.3



