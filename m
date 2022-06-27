Delivery-date: Mon, 27 Jun 2022 12:27:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxJ-00GGP9-Q3
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:27:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxL-0001Kg-6x
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:27:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=smD9QxsSm9DGW8Gz6hZdvr6MTHOqSHTwNNPqj1wuQcw=; b=3DEqrKPjq8YKdwFR+WLJR81bo9
	GtzaL8598z7deOjgbsONdOxiZsaKRNEWenp+DW9UG7mJrKmfLRUK8K1hDuFfl0fpgjIe8nEFd7ym9
	8kAeEMWWpkodIBZ24QIuPcwn7mNNGleg/oAXsD5zmxT4qL+cEaA3PNZ/3lLh1n3AkvaXGAoW5IsHs
	tHuY/KeWjhlPf1PXdteATqlYuBfUOC9LFeEVzQ4NfAWTrkbkhxCQ3bmtZnPlsPJqp2qRoOjxUCuOr
	/DLswE/RL0eMJRLfgvgrG/yKlBwGTqAEEQ09CNxNfho1aqhYHMgXH34HmJ3cLX+QPgnR9oQ7cnSpk
	ol8+NJtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvr-0005if-Mt; Mon, 27 Jun 2022 10:25:27 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvf-0005cS-9V
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:16 +0000
Received: by mail-lj1-x22e.google.com with SMTP id s10so10401739ljh.12
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=smD9QxsSm9DGW8Gz6hZdvr6MTHOqSHTwNNPqj1wuQcw=;
        b=PPR6CrWx878cptr21NYP1shHf9EC36MzBT6AeGAOAzdtog0uES5q7/j2HUcEkLMZjq
         N4gUD8ZBYBDdGywBXlLH7PipZl+UyoTWBnfTW5fnON4SYKrzWystSO7AeJESz0lGHRbP
         KrMYTEY/TTAQF6WZpPOBf7L1bDOu0hYG6BOxnq70iJ2JJM17tebnkWzX9NAnktUQc6V/
         ne0Fj+ESi37+ZKE0Tf76NIzBMLN2QoVhnck5SfMCAPFbM0aT9l4qhwZEWk4jCr6X3xBU
         blDHzzRxE9R0WLqAuOFZHln86Iot6KatbiSPvADBn/jP9d0g63N3L2QTByrnUC0fLWxb
         PQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=smD9QxsSm9DGW8Gz6hZdvr6MTHOqSHTwNNPqj1wuQcw=;
        b=jSveVicz7adsVkhPz/Edut33Lz6rws5xLE/HXovAcJJQfW+zzwjJNbrwuQSC0Nk3Yj
         3WXQr4U+av1B+Pphn4UUQ2n9BvEm4feC6pQHbphzgQtiwo5C/a1ejrTjxdq8BoFVoMKv
         MfxFOnudQu65cNm2TCCJYeFQYDsHzVyA6rs+HRC8JZL0Ki6JkliaFuygbAKr4LJiR6a4
         YdCniOMcnnpK69C9H3T7MyHkOGbbjOhGEpNH//wQw87kJOj0QqIsjXBkA8Oq3iXSzedt
         81A1ch0eqYfFysHDiiZFhwhgsFGHilgxvT4xE9aP6mvCURNnMBpComQ5hoeVlf0Doyi0
         p/PQ==
X-Gm-Message-State: AJIora9heV8su2z05L7kwGO9yYQY7eGFmG13hHrw9JZV/5o2n/mdrulf
	JdMHQIqAwLervSC2Zn66pm6u7dO+B7o=
X-Google-Smtp-Source: AGRyM1sat9ZRwlz21eDzPE39PoA35M0RCaReZBrvC+pYqnkmui6l7vZAXXmRAkSMmGWsVQxubmWzIg==
X-Received: by 2002:a2e:b0d1:0:b0:25b:c5c5:7378 with SMTP id g17-20020a2eb0d1000000b0025bc5c57378mr1554423ljl.198.1656325512373;
        Mon, 27 Jun 2022 03:25:12 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:11 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:56 +0300
Message-Id: <20220627102500.18427-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032515_410587_A6949BFE 
X-CRM114-Status: UNSURE (   9.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] usb: gadget: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

WARNING: unmet direct dependencies detected for SYSTEM_PARTITIONS
Depends on [n]: GLOBALVAR [=n]
Selected by [y]:
- USB_GADGET_AUTOSTART [=y] && USB_GADGET [=y] && USB_GADGET_MASS_STORAGE [=y]

WARNING: unmet direct dependencies detected for USB_GADGET_DRIVER_ARC_PBL
Depends on [n]: USB_GADGET [=n]
Selected by [y]:
- MACH_PROTONIC_IMX8M [=y] && ARCH_IMX [=y] && IMX_MULTI_BOARDS [=y]

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/usb/gadget/Kconfig | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 10c713e833..f2ca3695a2 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -4,6 +4,10 @@ menuconfig USB_GADGET
 	select POLLER
 	bool "USB gadget support"
 
+config USB_GADGET_DRIVER_ARC_PBL
+	select USB_GADGET
+	bool
+
 if USB_GADGET
 
 config USB_GADGET_DUALSPEED
@@ -16,9 +20,6 @@ config USB_GADGET_DRIVER_ARC
 	default y
 	select USB_GADGET_DUALSPEED
 
-config USB_GADGET_DRIVER_ARC_PBL
-	bool
-
 config USB_GADGET_DRIVER_AT91
 	bool
 	prompt "at91 gadget driver"
@@ -37,6 +38,7 @@ config USB_GADGET_AUTOSTART
 	bool
 	default y
 	prompt "Automatically start usbgadget on boot"
+	depends on GLOBALVAR
 	select SYSTEM_PARTITIONS if USB_GADGET_MASS_STORAGE
 	help
 	  Enabling this option allows to automatically start a dfu or
-- 
2.32.0



