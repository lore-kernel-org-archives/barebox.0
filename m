Delivery-date: Thu, 07 May 2026 15:50:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKz78-001ywc-1w
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 15:50:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKz73-0000tY-NG
	for lore@pengutronix.de; Thu, 07 May 2026 15:50:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TS3DHPBQsUBZhIreHABZslWN/fUep5I/Xngl9v1kIIU=; b=wli32GsoLK8RLunGAdWX5sHXhi
	EZPj+B+ta1xSTYeBxh63nikOMs0lcXOH9R2jMfE+dRwj2z7mvMwo/aWwLXHQrbrJSrbLMNS/lu/yO
	tgXbjleGUTAT6G0pMoBCrusmGEAF/1poDFGc3zKMAxzPGMDkMcEVUyKEcfuks0CY/ZrB2J17daSIR
	TV9IvDSttd0F7lU9oUwZjnS24UVRvN54JvnmEpz2dfuevp63RZ7YpEtOqRXtCexF7m/J+yTM5fNce
	NR13oVMdT37wMR30mfEY1fXPkpLKzZUeTG8jEnQk1Y4TMF4Aa7Hqx3ffi6okQn9DTSQvomHAjrVto
	kH2LcQjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKz5d-00000003xlK-17rV;
	Thu, 07 May 2026 13:48:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKz5b-00000003xkI-1QXF
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 13:48:32 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wKz5Z-0008KD-N8; Thu, 07 May 2026 15:48:29 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 07 May 2026 15:48:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-input_is_key_pressed-v2-1-3c43453a199d@pengutronix.de>
References: <20260507-input_is_key_pressed-v2-0-3c43453a199d@pengutronix.de>
In-Reply-To: <20260507-input_is_key_pressed-v2-0-3c43453a199d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1734; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=TrADSaCYnwLgU2rrM+wYDjTso+9QUfP6qkoxOjbDZb0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj8M0OnLDlkX+AK3jCLdx0TF4gd/CWhvGtH9OMlu89L9
 55z50tP6ihlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEwkiovhf6FvUE3T/shLIrHe
 yUn3N/3YWLZGUrr0k22t0ruQ8vezfBkZZiz8F3B9820vQwVG/6u5Dm4bF2VkbohZfvFgYYbxirl
 3mAE=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_064831_385036_FCC95906 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] input: add input_is_key_pressed() to read single
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

input_key_get_status() while being powerful and able to read all key
states at once, is difficult to use correctly, as the single incorrect
usage in upstream code shows.

Reading multiple key states at once, for any meaningful number of keys
combined (typically up to three) provides no advantage over checking the
keys sequentially.

Provide a simple input_is_key_pressed() function that checks a single
keycode.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/input/input.c | 14 ++++++++++++++
 include/input/input.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index e5509bf90d..5ee63d94d6 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -84,6 +84,20 @@ void input_key_get_status(unsigned long *keys, int bits)
 		bitmap_or(keys, keys, idev->keys, bits);
 }
 
+bool input_is_key_pressed(int key)
+{
+	struct input_device *idev;
+
+	if (key > KEY_MAX)
+		return false;
+
+	list_for_each_entry(idev, &input_devices, list)
+		if (test_bit(key, idev->keys))
+			return true;
+
+	return false;
+}
+
 struct input_console {
 	struct console_device console;
 	struct input_notifier notifier;
diff --git a/include/input/input.h b/include/input/input.h
index 9445d20e56..3e03eb9a65 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -24,6 +24,7 @@ int input_device_register(struct input_device *);
 void input_device_unregister(struct input_device *);
 
 void input_key_get_status(unsigned long *keys, int bits);
+bool input_is_key_pressed(int key);
 
 struct input_notifier {
 	void (*notify)(struct input_notifier *in, struct input_event *event);

-- 
2.53.0.610.g30c4861dc6



