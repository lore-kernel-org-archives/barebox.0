Delivery-date: Tue, 06 Feb 2024 16:23:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI9-005r6B-00
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 16:23:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI9-0002AG-KZ
	for lore@pengutronix.de; Tue, 06 Feb 2024 16:23:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0xz8ujwszaNdWpeyHS/i5Cz2ny7rW2AfG3cum1qDjZY=; b=Owz9JZsj4nGcbM3bpU467ECdPx
	bY4OlrbFCUaPGU3m4dZQQcfXuomWmOzlG8nr1chopr+mYydOS3CIWK4nunAxVwyCiU3i8BHJWPWKR
	lb+q1O8HpSuRglUYBzDVbPBCYEGE3juKkkOUXtaL0fLndBKSzIr2uqd0P7YDuviOtDpDymsts1lEc
	JkbQ+xHoDNq14X0HQP5qWNKhdv4dOS1L7bOpsQE3VV36TusZDxHZcTYxoAQtq4q/hlxQdAIySO3Lf
	YuEUbYI6a3c5lVpdAIm+MQz6OhYpapFnSW9P0esfNXdSlHpHFzRPPrtpNFXeTsX16qjEGDyB3FCi9
	bfxfYtjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHh-000000084Xe-3RlV;
	Tue, 06 Feb 2024 15:22:53 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHe-000000084Vg-03zy
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 15:22:52 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40fd72f7125so22798785e9.1
        for <barebox@lists.infradead.org>; Tue, 06 Feb 2024 07:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1707232967; x=1707837767; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0xz8ujwszaNdWpeyHS/i5Cz2ny7rW2AfG3cum1qDjZY=;
        b=Fb4kKCnvPA82oprHtEnuiC6KO+HJSUaLv3PhliqohoM9aG3hf5mS0lbM2MNEPp1xKd
         vWeL0juHwr2K32ouDWQoY4PjcNdlmKKbv6A1/LNzSwAzNSHXcAldoOg9cr+c/WpHA+mi
         f5FaYLKPjvH/UvBEraF0BafEOFXXujq3beXR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707232967; x=1707837767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0xz8ujwszaNdWpeyHS/i5Cz2ny7rW2AfG3cum1qDjZY=;
        b=D7a+nMBtf6dxmkBClngykMw45ZhpTb4awi5+YHHWrzG5UQGOYKnNA2nHgYR54iAFf+
         6Yo0XQ6F6F7NSXCCmZ0ZUzXs8+/Z/ovwp3Yz5B2jYR639EGkmF71rTD93BRsohqL+k4z
         XI1OSxHvJ246F7GRXALS7FYqmhyMQOHrn1QNx7XgYOW/t9JDeuLtHlmAB5cpkg+OyQe7
         9UkcLwBYM3WFPikZRpigMwRgyfEf/Q0QoohoUL3T0mCZgNvbkC57VZfrawmjsYHy8Gn6
         9zbqkR7+y8Um78yYEBj87IbDahjvLFVnWYIub3nqzt41X780iKX1Z2nancO5ywbRRnDd
         jHcw==
X-Gm-Message-State: AOJu0Yxn5HA+TJrsw+++zgc3grBKKfyv0QPqoJEiLhJRGWMq6r8VLBq/
	8GxzIS7zCJ4Ptm/vvsVvjmVDa0hgfQjuVUysm4S1MiMSdMY0wmQyDxTP7hfG8wg1ny20DxHdpEA
	NokFdmg==
X-Google-Smtp-Source: AGHT+IGqfxSo7fwX0u544hESducePKOmi9EYUDmdxWrS3JA4q7MCzV3KT1U5yFUjHbn3PfYXViigvg==
X-Received: by 2002:a05:600c:a05:b0:40e:b17d:2f56 with SMTP id z5-20020a05600c0a0500b0040eb17d2f56mr1809045wmp.23.1707232962375;
        Tue, 06 Feb 2024 07:22:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUsM9LI6rWvRW+6/0s0yBCdOC3BijQ2yCxIe2XS4veLe//2mc6O2wrxeC+3ldPYLFq5y+8cNKiFKRmaTG09L3ZSqgK7YetohfEtY41si8loKeVMsLhgaSopV3k/n8OfzAtGOWyaN3pDCSq9Yb5B1xJoz9QE9y/MIgX5VDDB
Received: from chipmunk-104.. ([2a02:842a:f0a2:1e01:4349:31e9:d736:85c6])
        by smtp.gmail.com with ESMTPSA id p10-20020a05600c1d8a00b0040ffbcfb5e4sm45241wms.21.2024.02.06.07.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 07:22:42 -0800 (PST)
From: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
To: barebox@lists.infradead.org
Cc: sebastien.bourdelin@rtone.fr,
	a.fatoum@pengutronix.de,
	oss-contrib@rtone.fr,
	Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Date: Tue,  6 Feb 2024 16:22:37 +0100
Message-ID: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_072250_134901_E6DECDE9 
X-CRM114-Status: UNSURE (   7.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] serial: ns16550: support half duplex rs485
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default ns16550 driver does not support rs485. This patchset adds
support for half duplex rs485 to the ns16550 driver. Basic handling of the RTS
signal is done to enable the rs485 transceivers.

Some properties are now parsed from the device tree:
- 'linux,rs485-enabled-at-boot-time', enabling RTS toggling when sending data
- 'rs485-rts-active-low', inverting the RTS signal
- 'rs485-rx-during-tx', enabling RX during TX, disabled by default

Pierre-Olivier Huard (2):
  serial: ns16550: add basic support for rs485
  serial: ns16550: add support for half duplex rs485

 drivers/serial/serial_ns16550.c | 42 +++++++++++++++++++++++++++++++--
 drivers/serial/serial_ns16550.h |  7 ++++++
 2 files changed, 47 insertions(+), 2 deletions(-)

-- 
2.43.0



