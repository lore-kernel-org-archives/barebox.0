Delivery-date: Tue, 26 Sep 2023 20:40:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyf-00CK2H-EE
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyd-0001vK-ND
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GFqCI3gwSa2xV69GncXLIhivSzRDyerUgamT2yQJsHQ=; b=o/e1jslukfbYqmn233vTjyEUea
	CwrcjCwhtk6I3hY3/63cKjwBjSMCeaBReWrHf1vK4UnpE6r5dGPnnIJslu1bkqLB1xa/7PasJDMz+
	TglMOfHOxScMQnFQMd0R1IkEM7FdMfZKV+U0cgrBjXzMU3U7K1ZgJU2V9HafQwO3gn7OJjjPJn9JC
	58wu0eW/XeP7klnV4JaV8cTloEv5t8J+dVd96tuCYn8gf5snJocZAylm03hV9/UEDZXZNL3LTk8II
	cRfkoFnsujpVF9sBW+h9OKd6AT9LF3VkpjtcdG3iDuwEtNiOZ3oKGBa8genFqKO6IUSBQP3eB06O3
	/jYEud5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxJ-00GrLx-2g;
	Tue, 26 Sep 2023 18:38:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxF-00GrJp-2t
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000oj-3U; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQH-Kg; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az35-1r;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Sep 2023 20:38:34 +0200
Message-Id: <20230926183835.2617909-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113841_933778_CF9E486E 
X-CRM114-Status: GOOD (  10.01  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: at91: sam9260: don't build non-DT device support when unneeded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The _device.c files create helper functions for creating devices for
legacy boards that do not support CONFIG_AT91_MULTI_BOARDS.

We are adding DT support for 9260, so guard the file behind a
!CONFIG_AT91_MULTI_BOARDS check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 777dc6d1aa3c..c4532959556e 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -25,10 +25,10 @@ obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
 
 # CPU-specific support
 obj-$(CONFIG_SOC_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
-obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 ifeq ($(CONFIG_AT91_MULTI_BOARDS),)
+obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
-- 
2.39.2



