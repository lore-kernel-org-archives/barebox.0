Delivery-date: Thu, 31 Oct 2024 10:28:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RTz-0032pl-20
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 10:28:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RU0-0007m6-58
	for lore@pengutronix.de; Thu, 31 Oct 2024 10:28:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xkhi18AKmf528WqGTnx7ifTcjvssCxZAXng41S2pEd8=; b=WYIFuRNuoHVu/Xf339ooe7P8Fi
	1BYv7pWYoJYUb9l3McWxx8bPByw/gFUPHcngKanq2v09S/ObG3VeFEwhe6dEFVQyi8yy0PQUMjIyU
	q/qbq4/en6iqh9bAaXOOPNHOXusFMrPfA64QsldAGtW2ck4dWp0qhPeBR5fXVVj+R/a2H/nb2yy+e
	ty3cyb7N9QUPAbYY+vGZFOmw5M1MrjnDGzU0OkGTudsYVVSz5oImmqg+MfS8uYPGzBT+knBu1jyBh
	jQcOeYyfocVNpvfYiiSmpIfBnQgw+i4BKcof1PhBwSB1xiTo4kyg1h9Ee2sgPFhUvHjmhYQuYXZMy
	CPy218RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RTT-000000034s1-02qS;
	Thu, 31 Oct 2024 09:28:15 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RSp-000000034pk-3h1M
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 09:27:37 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-539ebb5a20aso686377e87.2
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 02:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730366853; x=1730971653; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xkhi18AKmf528WqGTnx7ifTcjvssCxZAXng41S2pEd8=;
        b=kvUgbSFoUi+S1Ekb2VGUumn21/cdS4Pgm0Dr/BUPTBz88S+HKRQWNlGHRlNVjTiKOB
         7NwhHpAOoXvepfuMs63hH4Cf0NEfOZvYHXIO6Qp0YYF/osfWBYiKZa0QtXQc8VTD45k3
         fE6V9mUTHW5CHeEGcSCzYF0D95oqU7Ozi79R73ACARWxlsq9uRtstIHlFIXYVRoJ3wJW
         wsW5aRX4YhOZVnTDDmU97ozubqT+CzVzGZQTHlnz5JBer50FUjFRDpAnJb+PElV1+IXW
         vL//Oqa3/xdYoULrs+d9/rO9wiDqIHUwIos7CioncsubZPPGw8fdplrqwdJcsXYLp8mp
         8Efw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366853; x=1730971653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xkhi18AKmf528WqGTnx7ifTcjvssCxZAXng41S2pEd8=;
        b=a60qFXVFlfustWiClN3H5Xskj/BmtgvSCMRpCyzLtmco8nxJke9EoDTOMMgVVyRNzw
         DaS/4rCvsxXAt7B8qu1YRxaITawbyklTz/72bnJCbian1j/cSSy/jpA3EpvNKJDMux5Z
         EiY4xHJ6NhSLevs80LZiw5Yb2hJ0ty5sruWi2DmexLqTboD9UJj0qWkQFISPZLXcwCND
         iLZq/INj2XdPhqdaRZxqQbLuW5xBXiSS1p/xyghBbOm4qyhwahSD28RhNQEcgW0lKodS
         MYQgiPyS6h5GoFzH3QuwzuVHzyxbb9W9pKLQFnOig7uL5X5ClamDP2AwE8p4fJx2JzXr
         cpcA==
X-Gm-Message-State: AOJu0YyrmDkz+hITpdDg0p3zL4og3rML4vin7AAxaoGaIl6MWsjynWHe
	bVRiaXUBhPekE+mH9YiHWCbVKUIxyPrigKIUKGwTX4VdC70pY8bI480k93JY
X-Google-Smtp-Source: AGHT+IGHGa9J8qbRbR8nJq3RG5oAVjQnlrlumXhQ37JykDW8snYoWxFWRozvQ4UNLMkD8f2c9yDRFQ==
X-Received: by 2002:a05:6512:1384:b0:536:a4e1:5fa2 with SMTP id 2adb3069b0e04-53b348de8c1mr9740408e87.26.1730366853058;
        Thu, 31 Oct 2024 02:27:33 -0700 (PDT)
Received: from kaliss.. (82-65-217-21.subs.proxad.net. [82.65.217.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4d82sm1538825f8f.45.2024.10.31.02.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:27:32 -0700 (PDT)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr,
	sebastien.bourdelin@gmail.com,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 31 Oct 2024 10:27:20 +0100
Message-ID: <20241031092721.763280-4-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_022735_943009_DA100FCD 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

The busy_timeout value is used by the sdhci_wait_idle and
sdhci_wait_idle_data functions to define the timeout to wait on when
send a command to the controller.

The default value remains unchanged and is set to 10ms.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
---
 drivers/mci/sdhci.c | 14 ++++++++++++--
 drivers/mci/sdhci.h |  2 ++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index fe033583ad..1425c72ef5 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -796,9 +796,11 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 mask;
+	unsigned timeout_ms;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD;
+	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT;
 
 	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
 		mask |= SDHCI_CMD_INHIBIT_DATA;
@@ -806,7 +808,10 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	ret = wait_on_timeout(10 * MSECOND,
+	if (cmd && cmd->busy_timeout != 0)
+		timeout_ms = cmd->busy_timeout;
+
+	ret = wait_on_timeout(timeout_ms * MSECOND,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
@@ -821,14 +826,19 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask;
+	unsigned timeout_ms;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
+	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT;
 
 	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	ret = wait_on_timeout(10 * MSECOND,
+	if (cmd && cmd->busy_timeout != 0)
+		timeout_ms = cmd->busy_timeout;
+
+	ret = wait_on_timeout(timeout_ms * MSECOND,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 5de85239b1..757840acc7 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -200,6 +200,8 @@
 #define SDHCI_MAX_DIV_SPEC_200	256
 #define SDHCI_MAX_DIV_SPEC_300	2046
 
+#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT 10
+
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
 	u16 (*read16)(struct sdhci *host, int reg);
-- 
2.46.2



