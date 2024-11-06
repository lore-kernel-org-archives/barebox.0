Delivery-date: Wed, 06 Nov 2024 16:37:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6G-005Zyy-1F
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:37:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6F-0004BC-33
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:37:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Loy7NjJk5i+I4lvd+TJNR3iqS8IGJWi8tpRrXx8Khbk=; b=5DBMm0l59rhUee
	klG0Y3uAGWgQPCHB7xrYJRsKWLdk0hd/b9jjJoVWBy5mpQnv9RxVgVwmZ/vSiX6EHSbxkeEXyL5oU
	akL4FDZFrI6YL3DYWx/xFc0FHbCBCPHAtXW4BcYTWSMklf79pJu9X6LOeae9WpVbI9em1lQl7rARa
	AcS0WKjx2zG+bgpdqvC2kXGPZMWZwjHADYqkcJimMCfOJ9jwt/dxkaU1dOIt9Xm/Z+XxdReZS41u3
	WHoqPquJa2hMlXM2t4TYa4MWTxrDmBjx0s9rqtQTum9frtwNpZZLW30sIPbJ0LkUA31srLKj9mNNn
	iYRDyLKYISKN0KYIPmEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5p-00000003qa1-3Wh4;
	Wed, 06 Nov 2024 15:37:13 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5m-00000003qXp-2yXc
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:37:11 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43169902057so53717615e9.0
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730907428; x=1731512228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Loy7NjJk5i+I4lvd+TJNR3iqS8IGJWi8tpRrXx8Khbk=;
        b=HaJa6ijnXX7pCyudU35DImBbkHRdFj4T/eZZc5hAJ91ub/65WSAY8SqpQ6RqrN5fAu
         9ASHtwJNh590I3sdyJ3dQ9FMMWj4LtPgDduqwUzlWX+2WLfB/Kg+DXVhZRnCV7KC00g8
         IEZO7Q5nJzKDMCyc/gWNP8KVTD0L8HhHfkhpTumHIVhzeMz/59G7ybTYsOfTIz3YZvvD
         ZWK+m4+BOFw3OUh5uziKQtweR7eLE43Cz/1o3ZaNLIRtjsjNQtVxdiOqB1kffl3LlGly
         av0OXYcatES7TKoe8WNCzykkqd7hKr6gGxaatefbHw8FxPl2PhTUmsHWI7bJtUqPeUTw
         G49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907428; x=1731512228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Loy7NjJk5i+I4lvd+TJNR3iqS8IGJWi8tpRrXx8Khbk=;
        b=fabTDCQlx8Odm3JkFqr/EMdteLCNSZY0vKpZDXiYABqLHMM92ZlPI/WuzB+P4VZUXC
         n+sK2uyMnM2BBCIh60AmDQMaBjy9tLzKdOBtwTCftO8DuvZvdUhI/69FnWoU8NOStF8n
         NHe1h+6WAnKaVZERYIPqgUc6c/880xf/Uvpgbk/YGZCZYFFtzpr0s+O6KNyyZQh4Bp9Q
         ec33gbqKDVsKzyi6lJO/ndKFwnLphFK8Qlw7CtjdVYqjE82DlRGXZh0X4bllMd6KvZHd
         FJ0ela5CGEMLsiB/eTVE19deD35ggfwW/lifwrhGaPix/6OXzJKMBH+COR2t5+61+RPy
         Zm9g==
X-Gm-Message-State: AOJu0YxJjhdIvj5dFvdTy/ROQB3/DgcJ+E2DKdWVdq3Cwjo2Xx1dz9E3
	WoJXPLBiWnXAyGMFIpkuslRtnvwyr5Za9yV913Y2UoRzufavNp3UcVrEpuiMhxw=
X-Google-Smtp-Source: AGHT+IHgtDBb2KlTrRgp5dSzqjnvHqZvlpbfj8S8n0lqJEduOeYgwfuUalB2vXzRpotyeCRUg+lZvg==
X-Received: by 2002:adf:f6d1:0:b0:37d:4332:e91d with SMTP id ffacd0b85a97d-381b710f7f1mr20672843f8f.52.1730907427718;
        Wed, 06 Nov 2024 07:37:07 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e5cbsm19608925f8f.80.2024.11.06.07.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:37:07 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:37:01 +0100
Message-ID: <20241106153702.858977-4-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
References: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073710_785956_0A9722E1 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The busy_timeout value is used by the sdhci_wait_idle and
sdhci_wait_idle_data functions to define the timeout to wait on when
send a command to the controller.

The default value remains unchanged and is set to 10ms.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v2 -> v3:
  - Fix email author and signed-off

Changes v1 -> v2:
  - rename SDHCI_CMD_DEFAULT_BUSY_TIMEOUT to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS (suggested by Ahmad Fatoum)
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



