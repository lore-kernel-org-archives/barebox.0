Delivery-date: Thu, 31 Oct 2024 10:28:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RU1-0032qC-0l
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 10:28:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RU1-0007nO-RJ
	for lore@pengutronix.de; Thu, 31 Oct 2024 10:28:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H1M42t5ir8io8w7KTqN5e6Jy166LMpDzfr5O1nRlVjg=; b=0gvWaXw55sLeqErXkNRs5gEPdL
	s3PSj1HJQJWNNmZvUZ4mtfWGKCUEREwDmgH0gb9tZ5i/LDrTXZ1buebGfLkPjsOUPh4pKpz1xP4jG
	758BnlDAAis66bxfe6ZSoyAa6n2sQl/MIpeaiFUIlXon1jbNQN8endgzPSRTT7GuFokmmcYu/ohfB
	cBki1Sa5vbup/dC0akctNDpbjXcR/xWRESPOAJyWeKDWo56nlpSnyJj0G/9P1bjWPOjzCigWOY4CR
	LhPG5jC1ojHV/ea6n0UOz0cfZtumYN+6JKhfSqzTMiRK+KlxSFGtmdYSxUcMJ0XrieXvY96cvhU0l
	/1q8DUYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RTT-000000034s9-2bSw;
	Thu, 31 Oct 2024 09:28:15 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RSr-000000034ps-0iKO
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 09:27:38 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so519013f8f.3
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 02:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730366855; x=1730971655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H1M42t5ir8io8w7KTqN5e6Jy166LMpDzfr5O1nRlVjg=;
        b=YM+gC3k7DM89hyOEt1eSanlkr2Fi6JxKXs64W03BRTw0lWlWnIWw6qmYIl5blC2XPh
         7t/b/zKERmBLRP9oV3OQldeLlFAvzNE+/VcZrTmo0S4gu7wVbNGJf7sc403VgWpDMTHF
         doB3+VH31oilNi1XpwsDAEReMhiQeGosIcUICGvy6Fx5i0lqhpsKTD2Vajw4LHJ4lgXo
         10yumeaidE3D0YuxZnFFwI0vYia7xfdAf0Rea/6SESSv/dB14T5PHEWu31srRgJVIsU+
         CQO1ytPfspp5pk4FZsqNCylT6DdDeC6n+/kaLzGNp1YeDvXKIDfLnEC6ND58HkmhvpD+
         Zurw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366855; x=1730971655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H1M42t5ir8io8w7KTqN5e6Jy166LMpDzfr5O1nRlVjg=;
        b=J3WNgNt/DEV1WUNvkfAmeM97JWzmUjH+EvShNfKa9WGodBRyRhPeDCOBFKLq3khQmQ
         DVFBKTzpnOWjel3bmy4qYlKRte4zcDs4f9xPeU9B34gwtnI/q3hDrG3ND9F/6PTbnkH/
         vVkBp3CR426T0BY6HSMJVKPS8tgSs3zs24CxeH7CUD4p7jkIon+YPagMqohkfzcddyKG
         Jw3yirAXta6T9aJElpLaKYI6m26UB41DL5Ee0iCoWE3uweI219t4Ee3sqBgXJSC0oxu/
         GGa3b2riF+PzzA4lV198zb8sh8cpYuM+ZrPy8Zjg/rhpn7Skc+BemuorIq2jtmAdTUMS
         u6tw==
X-Gm-Message-State: AOJu0Yz+8cP3CAoaR7lGbXq6giFDFiYNXWwxLnWwH4t09nd4R3vZNZfB
	YG/xks/4oHUjsqW9zwODGFWAQsXJ3iIuwuinExsaUKWHUKtJxEH3fgdj1F9G
X-Google-Smtp-Source: AGHT+IGSBNiBQwqOghiAiC+LINoTez4mU3QLcA97dZSlwIHVkoombhcmnl6MQYQcDz/5rCwZ9maP1A==
X-Received: by 2002:a05:6000:1f02:b0:37d:3e5b:feac with SMTP id ffacd0b85a97d-381b713b392mr3817483f8f.59.1730366854958;
        Thu, 31 Oct 2024 02:27:34 -0700 (PDT)
Received: from kaliss.. (82-65-217-21.subs.proxad.net. [82.65.217.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4d82sm1538825f8f.45.2024.10.31.02.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:27:34 -0700 (PDT)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr,
	sebastien.bourdelin@gmail.com,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 31 Oct 2024 10:27:21 +0100
Message-ID: <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_022737_240220_40995D51 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] mci: bcm2835: set timeout value to 100ms
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
 drivers/mci/mci-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index cbf99ee7ca..3b086ed22c 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -128,6 +128,10 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		block_data |= data->blocksize;
 	}
 
+	/* BCM2xxx SDHCI might take up to 100ms to complete a command */
+	if (cmd != NULL)
+		cmd->busy_timeout = 100;
+
 	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
-- 
2.46.2



