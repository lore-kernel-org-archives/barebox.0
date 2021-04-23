Delivery-date: Fri, 23 Apr 2021 16:29:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwoZ-0005vz-Oi
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 16:29:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwoY-0000MI-TY
	for lore@pengutronix.de; Fri, 23 Apr 2021 16:29:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GVix8DLVYKkzZTKwNvK0kh9n1jcsQPadQ/aDc0FzUXE=; b=J2bWNNIm8MSjm5WIOxZL6LeAw
	Gx6dK0leqXzTJNF+oO06ZZoJR9mvorl03Pz1xutcCjX7ziBm7nxYle5JUAurlwqGQblbjz8F3LeXY
	3xQ/J0St609RkPEl1V9H1yXLuqFsCJzPS67sg4XJvtyTmxNhsnjL7yLt1KsGAErZPp+bD7PJsxEIt
	ryMMoyZ+jLmR7JjNNrhmPidoVIiUeOE5Vwn6Nkr2oMzALz8licDNsF6zwT+dhMSwDVOHgcJxJKTyT
	PuWxvYWGG0t21naFUbne+688dnQrdN+nqg0lR/1wnOpeZ6jlzYXn+oWw0mAOBKzB7p8rQRqfNHKJX
	56OrUfXow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZwna-001gqd-4c; Fri, 23 Apr 2021 14:28:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnV-001gps-Jq
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 14:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=OMFaKmEzXjZVFzgjSYz7n+DekjHSgRILfIy7T7oYQXw=; b=n078noiQ97FBdcVjn9kp3xQc1u
 J0USEDryH0hA2VQB8C/63Nqz+esrsCzeTuiw2HncXmhaCqdNmiKTBEbOmRR1FZRphbt/rgJcDv6vI
 3ZY79dbPyBT+N4QGh+JWp1FBAy4Pt3J0cu1tBU8p3yI9VaCtJTCOvCC6H2ftCQQXXQUR3BTsRO09X
 M5N1jnEXXM4x3KQ+/b2/G6vdAbHO0BZ4NBg84sYieiAIdDupZ4eZLoArvJZvMDtgKn3ETbJDHor0h
 xCzD+Ect16h5DkDpHzGb7VEUfAYddI3Rx+jUy+k8Ov20RD8TP4fShxP/jBaX3YDK0+SV5HyyTlT0z
 oBFE19VA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnO-00ETBa-U7
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 14:28:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0008WQ-FY; Fri, 23 Apr 2021 16:28:37 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0007gP-2g; Fri, 23 Apr 2021 16:28:37 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 23 Apr 2021 16:28:26 +0200
Message-Id: <20210423142829.29468-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210423142829.29468-1-o.rempel@pengutronix.de>
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_072839_031216_8712FD67 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] ARM: at91: ddramc: add sama5d3_barebox_entry() handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add sama5d3 specific barebox_entry helper.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/ddramc.c              | 8 ++++++++
 arch/arm/mach-at91/include/mach/ddramc.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index c3ef6b0090..0aece5345f 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -26,6 +26,14 @@ void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata)
 			  boarddata);
 }
 
+void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
+{
+	__sama5d3_stashed_bootrom_r4 = r4;
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(),
+			  boarddata);
+}
+
 static int sama5_ddr_probe(struct device_d *dev)
 {
 	struct resource *iores;
diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/arch/arm/mach-at91/include/mach/ddramc.h
index 5d6f3a70b7..7daef17636 100644
--- a/arch/arm/mach-at91/include/mach/ddramc.h
+++ b/arch/arm/mach-at91/include/mach/ddramc.h
@@ -33,5 +33,6 @@ void at91_lpddr1_sdram_initialize(void __iomem *base_address,
 				  const struct at91_ddramc_register *ddramc_config);
 
 void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata);
+void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata);
 
 #endif /* #ifndef __DDRAMC_H__ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

