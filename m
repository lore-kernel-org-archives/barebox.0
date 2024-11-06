Delivery-date: Wed, 06 Nov 2024 16:26:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvE-005Zif-1p
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:26:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvF-0002Mm-4m
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:26:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CPwqs5Z2daPn1faEHnUXFTDfaqHq6bitywFsJmJ2Co=; b=aNOcp9vhThqpxY
	3P5o7DqmrY4BHnZuZngubRuGrN/cme3x6IhHTwZSygTHYZU5WIVQWxSG42zvKNkOVgMRMNw0IuamZ
	psQn9IKJLGuDfCLmVH2TjR6v9SIQp4sjmJOYMF9cNWo6lPzpGXXSSBvsVX/YUPn3uIP7tAu4vj5+Q
	2rUJd1fanS/2YgUpJYkW7v9CTOtFCbuT5mg2uyHwl5PLjb60RcJwVxPui0QyittqUm/otdUaWE64G
	s1YScvcoBijzp8vgtnMJlrjouGLLKUSFpslvvdfpnTD/48/fjVNLN1eyH8JgCsxFP+czN3e6/nSAi
	rfJOpATsqUIxSFiLcPKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hup-00000003nup-11Fj;
	Wed, 06 Nov 2024 15:25:51 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8huj-00000003nrE-3bWF
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:25:47 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-37d538fe5f2so4635116f8f.2
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730906744; x=1731511544; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CPwqs5Z2daPn1faEHnUXFTDfaqHq6bitywFsJmJ2Co=;
        b=ItNSCeNV4WGwemZyOSZgxd4ArMw5jxXrSQNhHYLjLHdIyNw7UpZfdftOQ4BrDHoPVA
         6mMQymyGdaaxL/HjqfR2prXVeAHelP/2zva50HowuCJEwZ3LJdlxEFIYevypYUFAEKQa
         0Z7r5c8PcUXJ8iOWtVYTWwC4KTeiJj2RxfI/7djLWY7/hHaoJ36nfrT5DsAaq3vDb3Nf
         6HtT2GZZkGflQJaWoWPLl3ZUpeQxFrxDDgQ9A/zXfbzBUCihWmidVtD0krpGQa6uWhND
         EDg87KmhnWIedHx8w8/q2ODvPnwNjsXTXeev6xGnVaPE07/fEHMVTdmZjTyjmiSQf59Q
         6+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730906744; x=1731511544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4CPwqs5Z2daPn1faEHnUXFTDfaqHq6bitywFsJmJ2Co=;
        b=jz4jTkqmPsQVFVpJH4DIY/Fc9CWvc8mmuogNX+0CMfwBSwbDEeP+Rl2fXlPFw03z48
         DFIe/0d4MR8J1GNZExnKOXPqgyj9BmXH3uF701endLGHIwQI9XE/mxpRvUBeAHRd4YlF
         gdUBI7rPxA1p5LJ7RdYBwnCluJSLJzNC8Ma6UtV9CoFhyNSoqiDQmofxanKJP15CIElZ
         LEhO00Pgega4JxeN9QpveoIuM+V9avi3letZaZgnTJ03+AGh0sTDij/wl+GKQubbsqTI
         XwqV9ig5aDnKAYpPAOwg4xXPTC3HFTrkQbc7PhzT3sHP1n5+yfDRpTHvJ4fkYWMsL/jh
         mXUg==
X-Gm-Message-State: AOJu0YxuoqdLE/fVkxxIwr0ppQSA67qAL3wktaBa99d2NMULnJtSp5Mc
	l0xsngH5D/fNnr+f9s1IemVOZFF3MkEc55MQmbRZrxkHnRPgHtLHC5IjkHKIKpE=
X-Google-Smtp-Source: AGHT+IEmZQFY3eIP3YFCYssMUgcnkeq4HtMupNFtmFpvCa8vSGh2i2MJz1QUr/HbBxRrwkLCRTa8+A==
X-Received: by 2002:a05:6000:2188:b0:37d:5231:f539 with SMTP id ffacd0b85a97d-381bea270b7mr15987105f8f.54.1730906743564;
        Wed, 06 Nov 2024 07:25:43 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6b58d1sm26781685e9.11.2024.11.06.07.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:25:43 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:25:25 +0100
Message-ID: <20241106152525.856201-5-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
References: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_072545_923393_2C8552B1 
X-CRM114-Status: GOOD (  11.11  )
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
Subject: [PATCH v2 4/4] mci: bcm2835: set timeout value to 100ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

As mentionned in the Raspberry Pi4 bootrom Changelog [1]:
"Increase timeout of early SD/EMMC commands to 100ms".
The BCM2711 SDHCI can take up to 100ms to complete a command.

Without this change, we had noticed that Barebox sometime stay stucked
on a timeout error while trying to boot Linux from the eMMC.

[1] https://github.com/raspberrypi/rpi-eeprom/blob/master/firmware-2711/release-notes.md#2022-03-10---promote-the-2022-03-10-beta-release-to-lateststable

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v1 -> v2:
  - cmd can't be null, remove the check (suggested by Sascha Hauer)

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
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



