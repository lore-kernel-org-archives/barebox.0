Delivery-date: Tue, 19 Dec 2023 14:08:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZpS-004ZFY-1d
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:08:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZpR-00044A-Vt
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:08:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KHa0arj3YLMFueqMBcwxSFBYa2Wm2P7bBeKXku7yIz0=; b=pP7obA1sAm62viWIjg+KwZzCru
	CA60+KEAhm7RbRWNcH9eetaDj5Az2LwuyQ1tVRRpglq1BxGR3MeXjOooHE/D3yEnPMXANkAPTgWcY
	0o2du2yIoPyQ2LWpXCQBkilbauDCZvkF6LZjqtGmSP2K6VJtsQqQsk1K3u6kkwnt7uWf9r6XWiCK4
	j8MQwVoBeUIibUsRq4UTIJCtGMnBwUuoOuxsDgEN8/UeSXLf62QQGm4tPSq0YuIZpMSQJLjMnzodr
	l+Bsr/pkToCvSKp57T2NVGMZtSAjAhg+PPIEcFJ9D5R5iVLgXXGeFhlTKzj6ycc+VM25q1S7xm0rY
	5EL4JKHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZoS-00E8hc-22;
	Tue, 19 Dec 2023 13:07:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZoP-00E8h8-2J
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:07:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZoO-0003bU-DV; Tue, 19 Dec 2023 14:07:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZoM-0001Nr-UB; Tue, 19 Dec 2023 14:07:04 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZoN-0001hO-37;
	Tue, 19 Dec 2023 14:07:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:07:03 +0100
Message-Id: <20231219130703.6522-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_050705_751911_ECC04CE0 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: fix dmb on ARMv8
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add "sy" argument to the dmb instruction. This is optional for ARMv7,
but mandatory for ARMv8. On ARMv7 "dsb" and "dsb sy" are equivalent,
so use "dsb sy" on both ARMv7 and ARMv8 and drop the unnecessary #ifdef

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/system.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 9e88001533..bf3b7b02e2 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -25,12 +25,8 @@
 
 #if __LINUX_ARM_ARCH__ >= 7
 #define isb() __asm__ __volatile__ ("isb" : : : "memory")
-#ifdef CONFIG_CPU_64v8
 #define dsb() __asm__ __volatile__ ("dsb sy" : : : "memory")
-#else
-#define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
-#endif
-#define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
+#define dmb() __asm__ __volatile__ ("dmb sy" : : : "memory")
 #elif defined(CONFIG_CPU_XSC3) || __LINUX_ARM_ARCH__ == 6
 #define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
                                     : : "r" (0) : "memory")
-- 
2.39.2



