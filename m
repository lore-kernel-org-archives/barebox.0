Delivery-date: Tue, 13 Apr 2021 12:09:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFz3-0007Ki-Qo
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 12:09:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFz2-0005BL-Vc
	for lore@pengutronix.de; Tue, 13 Apr 2021 12:09:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0MXeOxAmN0qIsbSOW8Fa46insPhP8GxUVEtdRnzNR4M=; b=DhsEUzU7i+3cPD
	7rWEGr+vDY6wKOsgbGGRHeFswgWcw1mEONaCMf8vFnLRIKGOgNcIF46jP/88nzzeLOFG1Uh9LptWM
	SRx68tL1Cz6haLZhoXxBD4FUgS9Q8o+8yf6qSBJftCY9IEshStPsaKTmnL/h4zuCnANs3snXVZqkR
	YzDsDfbTqp4iOOo/j4jWACmXS1l0GbiwZDMiCLNmZn+BZ2JDlDqZKr/wxTUmHsrlApDH7aRHl83by
	2tPJD7IkgJX1D3rNAAIbwJNoimVxSuR3z5gD6mJbamZA8Vr3a6SsNEu7X8G3c2P9s1MtMCb9Jub7t
	BW+xUf93Zb2Lp9zGZrkQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWFxs-008pvJ-MB; Tue, 13 Apr 2021 10:08:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFxg-008puj-Vg
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 10:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XwVjm8udymODdWlqO2NT2rzN9lYYq7nl0IZvE8OdDBc=; b=C5s0ScwIqTPuLIbfredWv3auFh
 VSetRLsOfY3tlJ1FdIBGLUo+EPeS2NxbDWN08BoOhMCahVuJ4Xa2sTVrytuRJSQE7pL5d2/s/u1OW
 GraRnB6lvvGz7+pY8Bvq8rvuJHwhIR68/S0wg0i2JzvGOlRSFoWFeaflW52kguunSa0cKm+BIRSdD
 J6eZhCDw9O97WNFKNa759NEn4xnFzzHKT//P83zaOTWBvb0U2CIUusdy0eqHvob6Qj8PhG5e1HZ8h
 ahW98KbXvMwD/zKyhioaKXsLN23aDmhRNiz7bfVru7obHhriU6hbgZ46A+vBECE7HAyjqi1AfXqAN
 herY03hQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFxc-006unT-3I
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 10:07:59 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWFxa-00054x-ND; Tue, 13 Apr 2021 12:07:54 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWFxa-00041y-Ex; Tue, 13 Apr 2021 12:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Apr 2021 12:07:53 +0200
Message-Id: <20210413100753.15094-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_030756_153195_BFC1A38B 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: convert early gpio value accessors to static
 inline functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx1_gpio_val() and imx31_gpio_val() lack various braces. Instead of
adding all these convert them to static inline functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-gpio.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
index 0cfd16f4fa..c7b8ccffcb 100644
--- a/arch/arm/mach-imx/include/mach/imx-gpio.h
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -72,11 +72,18 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
 #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
 #define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
 
-#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
+static inline int imx1_gpio_val(void *base, int gpio)
+{
+	return readl(base + 0x1c) & (1 << gpio) ? 1 : 0;
+}
+
+static inline int imx31_gpio_val(void *base, int gpio)
+{
+	return readl(base) & (1 << gpio) ? 1 : 0;
+}
+
 #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
 #define imx27_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
-
-#define imx31_gpio_val(base, gpio) readl(base) & (1 << gpio) ? 1 : 0
 #define imx25_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx35_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

