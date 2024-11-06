Delivery-date: Wed, 06 Nov 2024 16:26:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvF-005Zj2-38
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:26:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvG-0002Nb-GN
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlENrYdDqzIsMue/WvLn358AGZlqdWtlcc/fUEJG54w=; b=kJWaCmDKN1UTfh
	B0kuUwG1aDA4Rozm/P8YQzKausR4Y9vHcD6E4tj98XpcqsJje4lZgkqqQ9DKOPOp2m79mXzOPLsfa
	k0MjP5brrXKpKBuco4NOiL5tZeCgphjwwX817oyCvrMj88yQqW9YYLdYlLdro3vyHfaBp57jx8KFa
	Kv6vbkrq+aJz8gLr+H4vZ1TElnyOv9fymiOGssYI9qa5QwKgRiWOYvIrOP46bXPZQzlel4ptReuts
	6DPLJpbWEPQNbeolQkl5zL8dMG2NFCLFyWlJqIdm6YUj12AKjlSau7LMLKM9CP6qknoYa0jKCQTM1
	pPdyskkA26c0Dd+PciOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hum-00000003ntC-2EdE;
	Wed, 06 Nov 2024 15:25:48 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8huj-00000003nqu-0ce5
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:25:46 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-37d4ba20075so4707374f8f.0
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730906743; x=1731511543; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UlENrYdDqzIsMue/WvLn358AGZlqdWtlcc/fUEJG54w=;
        b=JeZS9v+PyK3K3ZLFfS6M7Q1ERqfPi+AfS3lFJjwLc9BsybbKZegL7e+whOZsMYOltu
         wkCwq7DA+6DNf+298j6wugt43VMR7zloyaLNVxwj20yPLxYNIVVNvkAvNUKWCXXFx6tu
         w7yUYwtwa9LnrvACDi08y7t1vPvv4GvbxdEY+15NyKzsflcAwhVrshHi0Ofq/HimfxE3
         f//zyohK5a4Fp+pqopmtlDRl1aqBQJ+lLPyjQt+OuZ0TDsla+/4Njfv2/THQw1ZvSPZS
         JATenf1BP5E2KrDSVd6k4Bh1M4sTZfLD4h8aMMkH7mLDIF0wExY+Rpd5ZJ8pNW7ewt3a
         2ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730906743; x=1731511543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UlENrYdDqzIsMue/WvLn358AGZlqdWtlcc/fUEJG54w=;
        b=g/NtvYVigkhD3oBz4pxZ7I/NRcxAXMQoD9kArjOIWKYNX6e+SRoFzsNRtndfPkIvJk
         MuWaI6aZLRwMmzSMyW6TsDdH7N/ivQwGFjHcYWxIa/YUSvq6QYZlsyZZRwI5o08/Bctv
         Vc3pFWarGV4olRX4/SvJfTjqVh0JfsuKY7D5aQhFdCgTPNAs/MWUuVzkNLNVnvIbgdjd
         3ELhyhdQDdfw+fUheGypy3Zo8CgPPcDAaV4EvD9Ix6VwnpKcacFKglZY4RhVTkS1vWa0
         zvVrtOKLdh+tHh2v9cRWaG7bV0tCg/5KE6udAOVmcGF14TKy+Ug6MY3dr8a6co/WV1yZ
         34yw==
X-Gm-Message-State: AOJu0YwgToIpIwzJ4YOxlX66hj+4FbhNsVgnpg5v4x5EDiAxnpwVgX0D
	VIwYYDw2onoqTWbULNDij86tbBOQMdzg8X6jw2CRpQP80hKlycy0BNC0kTvIm7A=
X-Google-Smtp-Source: AGHT+IFv5LIExwgMdxVd2yIRUAp6cvdbpuV+TQg8gsiS+sUd9H3A+bVfUje6ptd41XSENli5GlIecg==
X-Received: by 2002:a05:6000:270b:b0:381:cffc:d419 with SMTP id ffacd0b85a97d-381cffcd7d6mr11793334f8f.36.1730906742671;
        Wed, 06 Nov 2024 07:25:42 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6b58d1sm26781685e9.11.2024.11.06.07.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:25:42 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:25:24 +0100
Message-ID: <20241106152525.856201-4-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
References: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_072545_267713_913501B9 
X-CRM114-Status: GOOD (  13.98  )
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
Cc: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>, a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

The busy_timeout value is used by the sdhci_wait_idle and
sdhci_wait_idle_data functions to define the timeout to wait on when
send a command to the controller.

The default value remains unchanged and is set to 10ms.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v1 -> v2:
  - rename SDHCI_CMD_DEFAULT_BUSY_TIMEOUT to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS (suggested by Ahmad Fatoum)

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
---
 drivers/mci/sdhci.c | 14 ++++++++++++--
 drivers/mci/sdhci.h |  2 ++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index fe033583ad..9b04101c0f 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -796,9 +796,11 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 mask;
+	unsigned timeout_ms;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD;
+	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS;
 
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
+	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS;
 
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
index 5de85239b1..2a8456545d 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -200,6 +200,8 @@
 #define SDHCI_MAX_DIV_SPEC_200	256
 #define SDHCI_MAX_DIV_SPEC_300	2046
 
+#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS 10
+
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
 	u16 (*read16)(struct sdhci *host, int reg);
-- 
2.47.0



