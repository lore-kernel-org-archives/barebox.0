Delivery-date: Wed, 04 May 2022 11:42:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWY-001WCF-TN
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:42:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWW-0001ye-4m
	for lore@pengutronix.de; Wed, 04 May 2022 11:42:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2F0thLMR4Sibor1krb39A8M+d6D1c5oNutvolvWUfM=; b=42BfEVJl+PRHb/
	UCkj9kHVteEUNifRyvRl7MJsgf2fZZa+/0PxZYpWen/aW0zysL9opAuYlKdVz0UU+Mvz4IIgb43S7
	tgv7Rpy/64Sutfsd5DJNn5bf203q2vfCS6h9NFwzuQ2/uXrWtn6J+moEoT2We00uk7fQKm9tyDLsO
	jfz/XvDd0kQI7Y5gkzDrFTxdFxSIwCRm5RBFgVmVzjiS0ZLt1msqgSWN3gvFIFL9zZsMaucw71aTu
	WwT5abRZq6Ii8KE7vEWVJ6n+53byEdiTWCYjWV4ns7JpHtV1orl3t5NhiGJ3rin/jWi2cqTDj+Tyy
	IRF+MXy2pYJh4ocBhy1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBUv-009yN9-5j; Wed, 04 May 2022 09:40:41 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHn-009qX1-1v
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:08 +0000
Received: by mail-lf1-x12e.google.com with SMTP id h29so1331629lfj.2
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zFs/a6GFnbGwh66J9/sNav/LxVSgNCiFfst8hAXdPR8=;
 b=VKdwhMyA9s0QjpAG9dxuREUVMby7a6vMCMW79Tq5vMpB3a/KlboilMjUwP0ZyX/MfK
 +sw4aXx1f5uAnEPdpo9BDd3mhhRzm6eOKsw0EvtpNsrOPEargnAztUbmYYv/AqfO2YuR
 dzyUCQu5S7WvsPB1yyJDvoxgRp3a6kF0imKtqXEN3oKPo6XBu4/wRZCs4PrKQFsrOQZ8
 SjTX55xYfdrNMLfby06dWhNWTAJFN6D4JQYJfYjWq1eiluP2SLmWiD1aovjxCHcCbH3K
 uBJA2lQ5YsyvEn1S9I20dKg9XWGMho0X5Wd2lXhCt1vew7w+jxj+9Ai6k9/mOV00GzgH
 K+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zFs/a6GFnbGwh66J9/sNav/LxVSgNCiFfst8hAXdPR8=;
 b=t3iZkUC0kBhXFJqeTrd8TpfopwVboEel4shpxqd79nclOhFfrV//+KVeusBR0vtmMJ
 kbLczSKn4cO2GRU7jKZomJ7/7f6EU6GfAzb7ABPRj5+y45LF/4OP5fuaX9n/ZHWpU7RH
 rUvQt/S0s8gCgEOYn23dZLr6xLIch9d9Q8mAahwCkcpO/DU2P4zLzcqgQ99tD93TgiWi
 kIVrvbRIlVFoYQLUUf/SwX5mgRF+F7HSa42hZcRHniltZlt4Ul2h99oJyX1cggjqhZzH
 bS05mNqzGZ/0pgfCHHUu4E4s5IIXqSRSfa7smBe+jRXYRBGmqjg5/uEcLWS3yEeyhoff
 t7+w==
X-Gm-Message-State: AOAM531uhPDS93kQSDpGblYNQ5F7URjx7W+3QO6oUbJPwwWxUGdsYZ/1
 e6GcKvjSOcSR2q5vMOLAg+7JHbgQfXHXHsH6
X-Google-Smtp-Source: ABdhPJyQWFycKndoT99upcMYMKSahNCXwlWR0n8dLGs0FDKcB03J3s88OZuLjXHGm+D6exL/X72Wbw==
X-Received: by 2002:a19:6712:0:b0:472:2512:fd25 with SMTP id
 b18-20020a196712000000b004722512fd25mr13575497lfc.172.1651656425075; 
 Wed, 04 May 2022 02:27:05 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:04 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:43 +0300
Message-Id: <20220504092553.27961-6-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022707_150519_DD5280AD 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/16] ata: ahci: adjust debug messages in ahci_init_port()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The output was a bit misleading, not displaying physical addresses while
for some reason using "dma" to specify a variable in one case. Make it
print both types of addresses.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 095eb93a08..c02f499ac1 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -298,7 +298,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 		goto err_alloc;
 	}
 
-	ahci_port_debug(ahci_port, "cmd_slot = 0x%x\n", (unsigned)ahci_port->cmd_slot);
+	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pa)\n",
+			ahci_port->cmd_slot, ahci_port->cmd_slot_dma);
 
 	/*
 	 * Second item: Received-FIS area
@@ -321,7 +322,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 		goto err_alloc2;
 	}
 
-	ahci_port_debug(ahci_port, "cmd_tbl_dma = 0x%p\n", ahci_port->cmd_tbl);
+	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pa)\n",
+			ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma);
 
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

