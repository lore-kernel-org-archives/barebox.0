Delivery-date: Thu, 13 Jun 2024 01:28:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXOO-00546s-14
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 01:28:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXON-0006Aa-Qb
	for lore@pengutronix.de; Thu, 13 Jun 2024 01:28:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+bWgoHgTfozdtkj12x80jZtRFaJbmLgg8gbAWtvlQl8=; b=FBrjhBhlU8vRl1
	2R8CcKuxOSjh2PbNgyYrlmia5Uv2koj1WQTLENHelOWQPuPFV3tjcJ5y0r+H8RYGTU/th+rpDm2LP
	09ePL0+CXIPmhhKjN49PluOisk46/xhlapfMpplxHQXP2TIW4iHwtmn3/8x6wrl1Aa966XfV6bdGh
	ebJNuCB+fwvSeKJxizswbReQFmx8DB8JKlAK4Zopt3WlGrB1JCGseU4WYxkZB/oHGDdJkQMzLDBT1
	1l8O8//Hotxlw+bY++l1XuUBZBxQ1n0YuAhpY+cGPoaoi9EZGYP+64S0Fn0cvFuB0FjSIwanHKoCo
	0XfJe1n9+SnA8KWbMpIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNj-0000000ETou-1HZs;
	Wed, 12 Jun 2024 23:27:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNg-0000000ETn7-1MtI
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 23:27:53 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52c84a21c62so517890e87.1
        for <barebox@lists.infradead.org>; Wed, 12 Jun 2024 16:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718234868; x=1718839668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+bWgoHgTfozdtkj12x80jZtRFaJbmLgg8gbAWtvlQl8=;
        b=d9C01n7e6TLlb+yLAwSbflv//qTZVDIk53T6xyMGyp5AigvvCA781Mpk1a8xx/iZd0
         2yR1bFHNNsgJppbHRKTsQv7E2Mj346CMiPCMK4U3TvFDYU4hj6k0zGHOBQ+J4R44C2I5
         BaFJKFs2XYS3LZE6A9Xd321PsYDZk832mE2zBhXjfqrCplb0UnvEM+SevrEDCtkf9WYX
         ugvYSio+7ZNFMjUOkrovuOb9nGjBcaWKRa3v0Syocl4x6o5Lr47XevQr5+RNJHQ4y6z3
         15eF64T1/r8m0wtGUn/XDaFFxxFBnsfzo2A0Jhpksp8WMspUKZJCjOOrPUpsijnftNFv
         HNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718234868; x=1718839668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bWgoHgTfozdtkj12x80jZtRFaJbmLgg8gbAWtvlQl8=;
        b=eLGqA9L13H1Ve8UFlCRP1o9KlOkvST24wPcdxonIIbH4aCVvK88PoafN1Vp4ethDW2
         RLHqTPWcei/HNGijUGKRWDq3qeOJrxcEa1B+HrZFNyoQxIdqLd/YZc6TiTZ5xwKjDhO0
         yBKOTm14VjhS/kNOBmOpY+s3WjlI0dAIU7Ywx22h2r0i/PTE5vJL6p/l5ilgSWyVmf4L
         pXowx8MPHt3B1pW0cExPKhRNvtpHYX7djhESwg+vKPWIEh9RuN7w3/FpVbjy/lwJtubz
         VxJWz/KyUTNzCLpExwuZRXIegFIhKyLhzjWoTr56oGgRFwzK7q+osKnrrD8TLEDxulqf
         FjIQ==
X-Gm-Message-State: AOJu0Yy3Gx3iaX8mbpvWpUlGQmuRyGmQ9DmIDmDVJ8h8JZ6FVOKDLFai
	pSF//AVrla1QCEssoIkuAmz4o6XqeGuncdMsMjE6mg1khCuHKIEjBse4WA==
X-Google-Smtp-Source: AGHT+IFdQf/huHlY0paU6YAYIxCY+/9ocJSwXtxiczU6KHnpRM+zsuqjYDjHYoDdtXxkoohnrEcu6Q==
X-Received: by 2002:a05:6512:39d4:b0:52c:a016:5405 with SMTP id 2adb3069b0e04-52ca01654c6mr660533e87.8.1718234867423;
        Wed, 12 Jun 2024 16:27:47 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282593esm19024e87.44.2024.06.12.16.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 16:27:46 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 02:28:04 +0300
Message-Id: <20240612232807.142127-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_162752_391211_D998A577 
X-CRM114-Status: UNSURE (   6.28  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] MIPS: pbl fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Antony Pavlov (3):
  MIPS: don't pass fdt_size into main_entry()
  MIPS: pbl_main_entry(): inline barebox_uncompress()
  MIPS: rename pbl_main_entry() -> barebox_pbl_start()

 arch/mips/boards/board-dt-2nd.S               |  4 +--
 arch/mips/boards/netgear-wg102/lowlevel.S     |  2 +-
 arch/mips/boot/Makefile                       |  2 +-
 arch/mips/boot/dtb.c                          |  1 -
 arch/mips/boot/main_entry.c                   |  6 ++---
 arch/mips/boot/start.c                        |  9 +++----
 .../boot/{main_entry-pbl.c => uncompress.c}   | 26 ++++++++-----------
 arch/mips/include/asm/asm.h                   |  2 +-
 arch/mips/lib/reloc.c                         | 12 ++++-----
 9 files changed, 27 insertions(+), 37 deletions(-)
 rename arch/mips/boot/{main_entry-pbl.c => uncompress.c} (71%)

-- 
2.39.0



