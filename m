Delivery-date: Tue, 13 Apr 2021 11:06:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWEzt-0007Bm-Py
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:06:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWEzs-0004Je-N6
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:06:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fc4f8FtjRkBWEEBkLDhVz46+ZofaGpK7/See21neXI0=; b=goRqY5TMpnsXOE
	VXDk820UntvZ2kD91yqjf1IxtKbaZbBLiyvpq7pTPrngqFfeES8ypBgX2HttDJ1nnsW5W3GyZq1+F
	bJ8uWpSCGH9ARHlsC2dCVkCOqEEWmP6T3g87yM7xVb0YgLo4zMHlNktAzgnpCIuJWJnf2DG3BWzkZ
	edi7+ST4k7QgvmTAx8xMJeV01QjE21hj7WM9FYXgKPdihjHOO8cFR/pskBORVsN4rSYJBvsr2Cnbo
	/EpUC95W5fVqPnN7E0s1YNGMSfWCZPTaWTK2wkDMet8eKmgAsBsKLqxUI+joKP5Ig/QZKmiAe72C+
	9bhLJgo11CPIQ+kC2LRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWEyd-008eD4-IO; Tue, 13 Apr 2021 09:04:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEx8-008dkZ-IS
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fqmn288O0wX3+fYKaR9ix4Hjt+y5ZIKiBw8oanksh9M=; b=UYacymDhed0XKpuY/DfovY3oHD
 sLoLbYD6sO6LcKstG1fdZqT6Z9XxxV+QYvAyGeZjMtbOH1/IFRO8R+VcbXLi6gsByH3gmoTRrV9RY
 zL0ARToU5q/yKYeH2dUtY5LPLwhbZ2GW3v9bR98TIh3CisP20Jh2zKiAlTd95awgEdk9Zp9HKKzCo
 lyjZthhG4iDHahNAqGhDK5/C7Hh0+1SeUHrqyMM6YTt5lMBEjC4Dk0Ax5R6ricRj7gEeqP4UscQL3
 HUeOcw0FdLOPY2uejz3ZmqKLGnhH+rFe3pLqBq7t+CecDE1m4gcw4BakcPgrwqJdzZvrPb1lPHo9U
 RqTya2eA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEx6-006rAY-6t
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:03:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEx5-0003eY-0g; Tue, 13 Apr 2021 11:03:19 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEx4-0003l0-Mw; Tue, 13 Apr 2021 11:03:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Apr 2021 11:03:18 +0200
Message-Id: <20210413090318.14105-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_020320_264064_211A6D55 
X-CRM114-Status: GOOD (  10.10  )
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
Subject: [PATCH] ARM: i.MX: Add missing braces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add braces around the definition of imx1_gpio_val and imx31_gpio_val
to make sure it's evaluated correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-gpio.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
index 0cfd16f4fa..b9a6acc013 100644
--- a/arch/arm/mach-imx/include/mach/imx-gpio.h
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -72,11 +72,11 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
 #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
 #define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
 
-#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
+#define imx1_gpio_val(base, gpio) (readl(base + 0x1c) & (1 << gpio) ? 1 : 0)
 #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
 #define imx27_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
 
-#define imx31_gpio_val(base, gpio) readl(base) & (1 << gpio) ? 1 : 0
+#define imx31_gpio_val(base, gpio) (readl(base) & (1 << gpio) ? 1 : 0)
 #define imx25_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx35_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

