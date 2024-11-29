Delivery-date: Fri, 29 Nov 2024 14:07:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tH0iP-001rkz-1P
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 14:07:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tH0iP-0002c0-BP
	for lore@pengutronix.de; Fri, 29 Nov 2024 14:07:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R0fBx5d4qcjmhZECntvLdhMrq+GdiV43D9xcw76VZQ8=; b=K+ufIgGiV82/1CoZYwAB5YeDlz
	smQ0P18a29ZEpLinEXAHJ5Xr1I8ETlQWqe5ceaFg452vpOHj6bxm6DVkTA7/PyR0fkFf41HX+GnOP
	hVb9GI2yGhSVdWTt8ptbBeC4UgKgrI2OpDXjl5y2pUxkXPhyhTlZsfy8/5rEjG5OKDzgncV+HbSrl
	kpR55ZJ6UkEXDfsNuJfQPWx8NwvbUHjTSJViyP80eCjmgCc9NwKnmyIs1yLwsWWoPN0YtcrPwRrnK
	R6EQKnw7n/CZlLqbl7bmOjDTa3dsnOEzu4FPtwZ6kJcUdL6SgSWVxcQ1udWQH6Ae6CB5VOImRfAlu
	CgL4CeCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH0iF-000000009Jo-2aPE;
	Fri, 29 Nov 2024 13:07:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhN-000000001Qj-1Jfy
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 12:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=R0fBx5d4qcjmhZECntvLdhMrq+GdiV43D9xcw76VZQ8=; b=E5KaXs3BYscvThjgLeMKXqTV4T
	cxNznR3kZ3Q3F4QJjKLMNDw521XzSwPnPwdNpn5BHobYgqV3CKZVcK6CcUXOL9YsBty13P+G+ui6M
	QS3dTn1mfM67DqOpB2km+kh+AioAwEcfYVs0ESySFdWdtQoiPNJlJ3OpSl7SXod7bCS6Bnl06AydX
	P76n4oWP89JmpHr3GMBdsqLYsQXngU3EiTbNKNYHCfaXPcn6xatwUE2kkdj+Ih3YGlzfT06mlcPl9
	Cm5/iEP5XD6SWVdQJRBHYl/fcpP9pOOTJpH4l1+lQAfkAVY89ghMR1rfib1N1jk7cCV3/bEIeG785
	VeHmvxfg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhK-00000001jXr-1v5K
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhJ-0001Mx-Mu; Fri, 29 Nov 2024 13:02:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhI-000mM1-1O;
	Fri, 29 Nov 2024 13:02:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2J;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-12-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=2352;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RRjgrpTVUvhsVoEGq0kL+js2+EE+s+f6ZdlhspHrEII=;
 b=Kek2jnD0XjYbOfdSSSl0eB6zp1mDxmGGi3TycC68xqw3OBbc8cf3iFnhA2T4Xg/XSvD0kBAXp
 t8gpUsDbjPfBxhAC0K9CJUv/EgU2cGmQIU8DV1iT/X+P2aCkqYqmTGd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_120210_622397_410BC140 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH 12/20] ARM: K3: use debug_ll code for regular PBL console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move parts of the K3 debug_ll code outside the #ifdef
CONFIG_DEBUG_AM62X_UART.  This allows us to use the debug_ll provided
functions as a regular console with pbl_set_putc().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/k3/debug_ll.h | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index a37b50c726..13321c6134 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -2,20 +2,6 @@
 #define __MACH_K3_DEBUG_LL_H__
 #include <io.h>
 
-#define AM62X_UART_UART0_BASE	0x02800000
-#define AM62X_UART_UART1_BASE	0x02810000
-#define AM62X_UART_UART2_BASE	0x02820000
-#define AM62X_UART_UART3_BASE	0x02830000
-#define AM62X_UART_UART4_BASE	0x02840000
-#define AM62X_UART_UART5_BASE	0x02850000
-#define AM62X_UART_UART6_BASE	0x02860000
-
-#if defined CONFIG_DEBUG_AM62X_UART
-#define K3_DEBUG_SOC AM62X_UART
-
-#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
-#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
-
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
 	return readb(base + (reg << 2));
@@ -28,11 +14,6 @@ static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 
 #include <debug_ll/ns16550.h>
 
-static inline void debug_ll_init(void)
-{
-	/* already configured */
-}
-
 static inline void k3_debug_ll_init(void __iomem *base)
 {
 	debug_ll_ns16550_init(base, 26);
@@ -41,6 +22,25 @@ static inline void k3_debug_ll_init(void __iomem *base)
 	debug_ll_write_reg(base, 8, 0x00);
 }
 
+#define AM62X_UART_UART0_BASE	0x02800000
+#define AM62X_UART_UART1_BASE	0x02810000
+#define AM62X_UART_UART2_BASE	0x02820000
+#define AM62X_UART_UART3_BASE	0x02830000
+#define AM62X_UART_UART4_BASE	0x02840000
+#define AM62X_UART_UART5_BASE	0x02850000
+#define AM62X_UART_UART6_BASE	0x02860000
+
+#if defined CONFIG_DEBUG_AM62X_UART
+#define K3_DEBUG_SOC AM62X_UART
+
+#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
+#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
+
+static inline void debug_ll_init(void)
+{
+	/* already configured */
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,

-- 
2.39.5



