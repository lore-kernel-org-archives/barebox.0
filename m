Delivery-date: Wed, 22 Sep 2021 08:57:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCW-0005Gw-Bw
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:57:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCV-0003DH-1Y
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:57:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhYOvdqpqh9vLFH+Ifn8IH1gn9XWPrkzaFExbsRKuRI=; b=WGF4Z9edsb7RJj
	EJO+pdFlwmoDOBtpIiJQFvkn3ENK/uum7e8x64zeCjTjnJf3jbt9/fkAmKto0ROeEPUheGu5EkGNe
	hTaNZ7QBCv01gwmhe9nLHhhvNCgxe99R53StQaRFgIzw1HhYqsH54VtGjZcLTcs/g+XfeS1XbCgVF
	VgWK3yQfBG1s37p6iYTe+eOcbTdYdkScsGzWAqaDWEqVIYVDqQGiWlXWr/Nj4pAVo+WOR6BrddXuV
	1xTxvkYnDF5kxczKcNwXanGaqoXoOr8uHkCRHSpr85VmyJzPyyiDDr/6pSfV1icML40hHT9VkNO/h
	ntCn+HX1eckBAzL87WFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwAX-007BHO-EA; Wed, 22 Sep 2021 06:55:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5Q-0079jP-Cp
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0002AQ-Oi; Wed, 22 Sep 2021 08:50:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yt-Ag; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 08:50:00 +0200
Message-Id: <20210922065000.20970-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235032_497841_EC475A57 
X-CRM114-Status: GOOD (  13.55  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: at91: sam9_smc: register driver earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver probe only depends on the device's resources, so there is no
need to delay registration to coredevice_platform_driver. The way the
AT91 code is structured is that:

  - board code adds SMC device (not probed from DT, so no deep probe)
  - SMC driver probe runs and stores regions
  - board code calls into SMC driver to apply config to regions
  - board code registers NAND

Failure to keep this order results either in non-functional NAND
or crash. Take the easy way out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/sam9_smc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 66261a95ee01..77d62012dfb6 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -195,4 +195,4 @@ static struct driver_d at91sam9_smc_driver = {
 	.probe = at91sam9_smc_probe,
 };
 
-coredevice_platform_driver(at91sam9_smc_driver);
+postcore_platform_driver(at91sam9_smc_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

