Delivery-date: Wed, 04 May 2022 11:45:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBZA-001WHr-Iz
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:45:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBZ6-0002kF-Qz
	for lore@pengutronix.de; Wed, 04 May 2022 11:45:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e2HUzzwJqkeKJsMq525WeIIhcM6vrwgH3/F89vsCQY=; b=kfT7L+gWaBqAHH
	zEw7+4UZTAoYxvqstCTYPUYppnEj8w9RoLT+uQuajKE22pLnRcBM/sYLRcbTJzkPHOyqtbNW5PTQ+
	Ox57yQ+klj1JoH6yvHzstBiR84uw3HVyYN7hCTTopU69b/hrXA3ClZIr3bAKjsSZdPd+BJar9zxeG
	v5YwRKYg846b8aMWbQGUIqrcSuSAkb7+sXyoLNfLBR0dD4qxBK6M23SnNt83Argpm49H28YKDj+j2
	tm1ZoJDsWP9XlJ3H7WRL7VxebHQApLnvD9EWI4pxjiRqYton7VBGDA0ktajDsTOuJF4ziVW4PE7Pc
	VkmwsttTDKbEZ5Z+OIsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBXW-009zgb-HO; Wed, 04 May 2022 09:43:22 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBIH-009qoV-Va
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:39 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 4so906209ljw.11
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GkuaT0EJmHvQtSW+WcdUG6QXi6HaQ95wxqz7t6bE5Eo=;
 b=MVg0vSxKrRoTCJ6HddEDtVfwV8OPTDJlE5fU0KbS5dZ7apPrfFAkg47cPrRlrPHZYi
 Dw6hTVxe8J0DyutNoT3e2LijQNrh34nPa+cjfWVDEU0xlpy8NsIuoK/3lXmjtAyvwu01
 3U3o3ftnM6muxvS8BLANd5YswoRpigRke046/5m6iDfxep8SpfdVae6k7YqM5N0bAFv1
 SegvaMZb2lkhK/njzSDSwiMsfVZX7wWhijuU9NpGc5NXNbPpIJ1VA1Zeue/C5vu4QvHM
 VAR/wHVCXp4UUBEe31khWjuiVgbXh3DXuI9CXdkArHu+PN4xTGn/zg5Mk89oQ0FwIbAu
 fGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GkuaT0EJmHvQtSW+WcdUG6QXi6HaQ95wxqz7t6bE5Eo=;
 b=mtYfpZlxIUWtHWM/HyoZOGmgrvPiz5pRvsi+cSORlzaqaSmnphmhnMVvLmBotN9Zpk
 2l8fW4mKFdTu/5bn1nvV9Fbecfls+9SpZFfLGjX7dbFxjsyx1CU8004D9OARXjhKjwhX
 uApj+FvZUZz5Hg0YwVtErPjSWR6HTU36Rh0/ZbH6s/wyxv2wBgjEQvspYNva0BVaPFhc
 FJ1777GtlfyJkm4lvgleESPW7WdXDim3PgYpZuSfjv2wG/JE5T8MLzdXEGYODT4HZNYV
 CGX/GkczS++RWDdSRkkp1LZ9B87yxhWPk78qHMedTnMCIjNJ+PKWVmFhZPPoFg0QTDh5
 Kdnw==
X-Gm-Message-State: AOAM5313e8bMWU2TiutMlyu/+Iirz1S9/dgbYzrEYu9mOXCTIPujDtJF
 O0wn6Bj+MLGdt40Jva3b+1t7kzdxo+gEkFxw
X-Google-Smtp-Source: ABdhPJx6QLpAdEtneBkPAsq8ZlV6KUY7TVpHmw/X3XCxZw+Slj1/Qd0O9XWD2Q9J3/YZBbQzHo/ObA==
X-Received: by 2002:a2e:bc14:0:b0:24f:5060:1dc3 with SMTP id
 b20-20020a2ebc14000000b0024f50601dc3mr9325632ljf.432.1651656456140; 
 Wed, 04 May 2022 02:27:36 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:35 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:51 +0300
Message-Id: <20220504092553.27961-14-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022738_155982_B2B92AEC 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH 14/16] ata: ahci: remove redundant cast in ahci_io()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 2d5adcfca9..f9056ff418 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -171,7 +171,7 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 
 	buf_dma = dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir);
 
-	memcpy((unsigned char *)ahci_port->cmd_tbl, fis, fis_len);
+	memcpy(ahci_port->cmd_tbl, fis, fis_len);
 
 	sg_count = ahci_fill_sg(ahci_port, buf_dma, buf_len);
 	opts = (fis_len >> 2) | (sg_count << 16);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

