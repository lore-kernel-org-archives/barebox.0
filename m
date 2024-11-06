Delivery-date: Wed, 06 Nov 2024 16:37:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6I-005Zzj-10
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:37:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6I-0004Cg-TM
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:37:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egw6lONte1HliT00S1DfndYOOm6+NlqRRop8YbBMFIU=; b=2UsaKg5LOC7h4W
	BUkn1V5U9MbiI55rXSBQ5AlbLkrPorapJL2ZvkftTV7xxu0avlrrEWeyiRldMnciF0lEFAb5khEen
	cqmuxLyvjFPv/4aOVq83GCgvlesaloGEumz79no3muyRlq5D3JaZ1D6lmxhjGufE7zfLZ+5hD81iN
	xuoMIDweiR4yGbKv4aKvMLsAc5N1Iuh5X1S95CWqudM5qI1pOJVsl2QE63K3qvqS4uzXZfv9k1d+e
	402uVR2jipjEsOgP145Oda6aZQtJb6k+bA80e7mLN6EOpma/ShZfKMkoCozYEaUNsQ27R9I4QJQzV
	vL6ld72e3hLbxYGwWUOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5q-00000003qaj-1oOi;
	Wed, 06 Nov 2024 15:37:14 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5m-00000003qXw-3XKr
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:37:12 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4316e9f4a40so55893195e9.2
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730907428; x=1731512228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egw6lONte1HliT00S1DfndYOOm6+NlqRRop8YbBMFIU=;
        b=kU2bd059csH86bXC9zpcqapFckzVmGdR16443QHlmbZTW1/5IWbDGRxXkaBwYl/ZMA
         meu8kwfu3WNy7DLS4IMnidJVufHvtDF/CXe24DjR6VtPVMcDoUd5BsaYwoLhsCFECNyZ
         KB696c9K7xJexItNRl37zJ97hc6ZHbqGFzTLvtw2RvG2vmmgm2qAHRWOYwNFv7t8GZG6
         s6RFsizR6YZMDiS4lu4oyVPFCxYym6I4TjYllQMwTi9iieqaJP65y8d0iG2woiz0SiPq
         TO9mAGT1RCetugr5Vhj7uDUiS3XhUY+eizPySYPNa3UpMYhBAnspbgy2gdhOvgIBTaEC
         zy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907428; x=1731512228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=egw6lONte1HliT00S1DfndYOOm6+NlqRRop8YbBMFIU=;
        b=AvDEjpnz3MU1/QBAWMqo9R8EbxciYQ9m5TcHKTa9VttfXpkbUuMaqrDjec4ZJugIWB
         quNYt8mcTTeVau/9SKdSO3oSYDbJ3Kzbf2dwNHjCWa/26t0T4zSKncLconZR3uhyGFpc
         p0yrPm8VJT6NRYMjevX70pe4DRLL73Gj0RsaiDXknjXerAOi+viq59vTU+7z4kFRBqA/
         qyn/w/3Wocq0jNxdaP0X1fOKCwkjBktCiCDuZdMCj3vHmjAanfTZX8/X6mDBXPMpkpqY
         MEDTfcktgd4paKHmWaWqnp0jqN2drP5w58v8JNCIueAS2w7r7OwlHzoN7mUgnhck3zva
         QL1A==
X-Gm-Message-State: AOJu0Yzkq+ybK/s/nCo9o7NkvL3csRJULAiiLEZgy1Y8CsFxfYGdlmD7
	eNo9tSU3yCTFatuMyhrNdQDXemO1gW8/rvVzER7PN3RzGsQnBVCVlnjpRVFAOSw=
X-Google-Smtp-Source: AGHT+IE7I6WMbaTs6SSvMY3i7myIK1G9CoBjXHOD/zz7b77wSwYlDJS9MqDAhCCx287t51NPc6LGBQ==
X-Received: by 2002:a05:6000:1e46:b0:37d:4f1b:35b with SMTP id ffacd0b85a97d-38061162ab4mr28732364f8f.34.1730907428346;
        Wed, 06 Nov 2024 07:37:08 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e5cbsm19608925f8f.80.2024.11.06.07.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:37:08 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:37:02 +0100
Message-ID: <20241106153702.858977-5-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
References: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073710_913168_B04EDDCC 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH v3 4/4] mci: bcm2835: set timeout value to 100ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As mentionned in the Raspberry Pi4 bootrom Changelog [1]:
"Increase timeout of early SD/EMMC commands to 100ms".
The BCM2711 SDHCI can take up to 100ms to complete a command.

Without this change, we had noticed that Barebox sometime stay stucked
on a timeout error while trying to boot Linux from the eMMC.

[1] https://github.com/raspberrypi/rpi-eeprom/blob/master/firmware-2711/release-notes.md#2022-03-10---promote-the-2022-03-10-beta-release-to-lateststable

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v2 -> v3:
  - Fix email author and signed-off

Changes v1 -> v2:
  - cmd can't be null, remove the check (suggested by Sascha Hauer)
---
 drivers/mci/mci-bcm2835.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index cbf99ee7ca..ff4c6d803c 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -128,6 +128,9 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		block_data |= data->blocksize;
 	}
 
+	/* BCM2xxx SDHCI might take up to 100ms to complete a command */
+	cmd->busy_timeout = 100;
+
 	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
-- 
2.47.0



