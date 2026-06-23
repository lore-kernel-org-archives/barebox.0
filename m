Delivery-date: Tue, 23 Jun 2026 16:24:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc23b-0091m0-2x
	for lore@lore.pengutronix.de;
	Tue, 23 Jun 2026 16:24:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc23b-0006fn-AB
	for lore@pengutronix.de; Tue, 23 Jun 2026 16:24:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Lg956DUNt+CHTem3sNyrUsKjsbfzVJhpscISwtoDrs=; b=rOD3Uy+mJgJSX09xTfPZ0dJMpY
	whqzDjCsI1NxCzsS5BLd0YgI5hEVVnRL9vcwcU8sQItdJbpHFrsjBOtj9QSGwhxGDiEM/Enhkse2L
	3A6RPECbsj8+adpwyF/AIopiZSnlOgpGp9tpmLs06MXBWd55pzGBcRRXsKm/3nbxaaDEIW/VuolMY
	IOcXvcHLYWNJR+t3mJJ1ehWm4N4vKmTheJE0deIqzFqeJBA6KPXFvg6mtlRAvd56iOcdgTCNaq/UR
	p0kVt2O8j+9FHBExMyEo3hdqNIiz4Tl6x1YTlBuyWWpP/fJOuNY2ZapwkbfztdNVtYG53O11wyFSJ
	ekj4kbsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc22N-00000006QhC-2L33;
	Tue, 23 Jun 2026 14:23:39 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc22L-00000006Qgq-0oJ4
	for barebox@lists.infradead.org;
	Tue, 23 Jun 2026 14:23:38 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-915b5ce94c7so673476585a.2
        for <barebox@lists.infradead.org>; Tue, 23 Jun 2026 07:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782224615; x=1782829415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Lg956DUNt+CHTem3sNyrUsKjsbfzVJhpscISwtoDrs=;
        b=qxGMvnRHRqWrK7Z32Ru1N3pYCZlVfb42RT2GfAlDUs/KzlEpMZHTxWv3otp6dF0i1O
         AqdoId0UE3AcKY3m2RQnakc3p+P5bOCDJ0TvlJDucwwuMr1DTRwMCACKXYtleWXXzsv/
         ErUl42LUcGs1z9z8P6MOjdjzLIgfuGzNoI3wjXi9qL79vM77hiq6WpG73dUTCWCPyG4Z
         umx1fFRfLL3brmtqsBmBRU350wwaydmtm18oqxMUGcQhlUyVEotdhN+dP5bwo4E3cNPe
         BaTNr84F4n4jFVn+ZzmE3g2Y9MI+LqrextOAcLkgfVqgdnxXmZYzdurm8MwfltqQoZjn
         hwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782224615; x=1782829415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Lg956DUNt+CHTem3sNyrUsKjsbfzVJhpscISwtoDrs=;
        b=NqTr3flbNjP+c1rKLRPeqGLCyUyB6CrcgyorahKqy+pcTCu2nhwAdlbSMtv+ZtcaHz
         QN6PVbBm8R/wX96AjMKPM61eeEXQDgO2AcYlYjXJ/IRe11z93cxL80liT+f2AzVrNtG7
         4nkNb9yGsBn2vDLZaTAKlaf6byv+2fo8NAzqe/6Fk2Au5cjNL28iqYM6l59SpawbGCxZ
         H+Z47o9sEjoKjSFz+dLKUCvGHRAOyMeIxywKqpDped0yz12+BoBu2XXa4VbwCHUUpgsW
         TkK4Sk9VfLGOsXQFuPfY5lu/yoAIRBPyxEipIHYl5ThyTdO2pTpnb3uvU97vDE15vJQE
         r2VA==
X-Gm-Message-State: AOJu0YzzlXYX4++XbBu7FW4NX2hMtcsBRqXDY5FOoFIN0DlisUMMAMdy
	WDNtGBagaDrUMsp26WCHiETchxgsV705u08CX6KoRaA4Elrr0hx31EBc
X-Gm-Gg: AfdE7ck+yT3HinfVt8okPmHPMFDFmKgbICsfX+gItIpffeC5vMipRBq6AU+V/hWpc1y
	JDV2TfEkDHDb7vB1Q3rlOXp+NyOetmjEpVIbXwiHhiMXhIo/iGOs8klxcV9KSVG89ootJBpgKAR
	bj/B0LZtuIce5n1amDfpetdsETqufiZA/1NKE0maLiMN2YcqXx54//tzjWPNPpGxYbx4+WgUhKo
	tToOKxVU9N/dCWPLcdp2Liy2ik97VbqPKg3EomCwogtAKkA3WvhdS0Mqw7CmmldaZeWb3W0L775
	lYFLDhpYX6Qo4cg/F70CSM6VDgN/GfQaQXW3sw98URkG7NYlVX/FC0K1Z2CHPvTOcaMroIIy8Dp
	8pSgMfjUsZfX5FTQ3jzZZthIFhG8GyW3onc94HPPLIkaDw5l4hUnMGrmnDn7cTaSpEiEuvlAN2H
	7+Id+s7Z8VPdzU0TZpCv7II/ZHsCcyi0FZwe/c39eafWtLOE+TtSCYENMSPPKytr3NNCIR4YqBU
	0boG0OE6PafkMqGkvxnPrj+H6EgONuDyzBhXrLBEFqV2CvPOWoY3RUr
X-Received: by 2002:a05:620a:43a9:b0:914:bf8a:ba81 with SMTP id af79cd13be357-92668c9d101mr414455085a.27.1782224615175;
        Tue, 23 Jun 2026 07:23:35 -0700 (PDT)
Received: from CNCMK0001D007E.ro-main.com ([142.169.217.114])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92600c7bd89sm287255085a.45.2026.06.23.07.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:23:34 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 23 Jun 2026 10:23:30 -0400
Message-ID: <20260623142330.79621-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_072337_259928_9CFAA77E 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: skip polling for the soft reset clear bit and add  after reset delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

The RPi4 SoC do not deassert GRSTCTL_CSFTRST within the expected
window but continue to operate correctly, causing probe to fail
with ETIMEDOUT.

Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at least
3 PHY clocks after reset before any PHY domain access. Add a 1us delay to
satisfy this requirement.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/usb/dwc2/core.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 60cc690fdbc0..6d4b7930da9e 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -809,11 +809,16 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 	greset |= GRSTCTL_CSFTRST;
 	dwc2_writel(dwc2, greset, GRSTCTL);
 
-	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
-	if (ret) {
-		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
+	/* Wait for at least 3 PHY Clocks */
+	udelay(1);
+
+	if (!of_machine_is_compatible("brcm,bcm2711")) {
+		ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
+		if (ret) {
+			dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
 				__func__);
-		return ret;
+			return ret;
+		}
 	}
 
 	if (wait_for_host_mode)


