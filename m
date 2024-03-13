Delivery-date: Wed, 13 Mar 2024 19:01:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkSuw-004gWf-1e
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 19:01:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkSuv-00058p-TY
	for lore@pengutronix.de; Wed, 13 Mar 2024 19:01:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lwvfPsLKON6lK7KwR4ABAgfa8YZpbbk77NBW73dlmTo=; b=aFU+IS/HAqsxrCU8bHNKHH2ggI
	YRPw1xtMg673YsBgH91MtpOjRSz/GsbW12BDWUQof8XP09ozTF6MLBGsGjjUHydZ1JRREI1AN6xPe
	ZD3XTbxHEc6HZ1VyKxv+sLLXEapT9C+r+s2vOZbqJCXWxC2dpPPptf4srm5OXESnWbnKmY8xXVg46
	MBff/+hxFguBaR6fm0R9yv4GXFGnLGrMuziaAc9FXK+rKiG3UjY1B6hWNSvT4/exnUwlK4uFYAvKu
	pa1e/M8T3JZTq6LIbzblSHZfj096j/08IxhtBS0Ky92KwnApTZbygysjndPf34drgfzAYccnxdwFX
	ZnubEYSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkSuP-0000000BBcN-2tx4;
	Wed, 13 Mar 2024 18:00:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkSuG-0000000BBXM-2UFD
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 18:00:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSuB-0004D1-63; Wed, 13 Mar 2024 19:00:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSuA-0069tx-Pz; Wed, 13 Mar 2024 19:00:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSuA-00DR9E-0f;
	Wed, 13 Mar 2024 19:00:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 19:00:27 +0100
Message-Id: <20240313180026.3202602-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_110048_855119_0481214E 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX: define MUX_MODE_SION for use in board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we set SION for all I2C pinmux configurations, board code may
need to set SION for other pads as well. Provide a MUX_MODE_SION
definition that can be OR-d into the pinmux argument of
imx8mm_setup_pad().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/imx/iomux-v3.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mach/imx/iomux-v3.h b/include/mach/imx/iomux-v3.h
index e1d62ae4b8d6..fac736ed55f2 100644
--- a/include/mach/imx/iomux-v3.h
+++ b/include/mach/imx/iomux-v3.h
@@ -56,6 +56,7 @@ typedef u64 iomux_v3_cfg_t;
 #define MUX_SEL_INPUT_SHIFT	59
 #define MUX_SEL_INPUT_MASK	((iomux_v3_cfg_t)0xf << MUX_SEL_INPUT_SHIFT)
 
+#define MUX_MODE_SION		((iomux_v3_cfg_t)IOMUX_CONFIG_SION << MUX_MODE_SHIFT)
 #define MUX_PAD_CTRL(x)		((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)
 
 #define IOMUX_PAD(_pad_ctrl_ofs, _mux_ctrl_ofs, _mux_mode, _sel_input_ofs, \
-- 
2.39.2



