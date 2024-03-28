Delivery-date: Thu, 28 Mar 2024 19:39:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufG-00A24f-1o
	for lore@lore.pengutronix.de;
	Thu, 28 Mar 2024 19:39:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufF-0006zB-W5
	for lore@pengutronix.de; Thu, 28 Mar 2024 19:39:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNITa5Cj2WoLCaib3BPYtKiju5jz4nZe9WK7mozzOrw=; b=iruMMZhzdrdgSc
	+iUJi6aPEqEYH4TfIOAr7UreMBwv7YLlkxcLCyh7Uybdgvun/0Ub4vJFSvq/Pi70UyLLlbjj/8HIh
	PVbug3Oyv8qI1d348Jrj4/G1YDao5+AVJ9flKq/98kGDfq5OOymAEK1UPh9y/OsuloTSrhNElzW5A
	jnlio3mHqv8IqICUhvSOZAh2hyS6kQJJkOzICwGYH8sbKbKgYJ26JDe/pn6BhQ8cDXrXMUUZeByHJ
	2ZCKwSKW3m8Ta/YA8OS4XJDZP1eyCbMXqptwEy2mRGQhuZQHaN0mW452XVp5r0KuMGLgK5KgX7FNq
	ZDLL3UzRkYSVx6nCyLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpueb-0000000FD7Q-2sff;
	Thu, 28 Mar 2024 18:39:09 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpueY-0000000FD6g-1kQT
	for barebox@lists.infradead.org;
	Thu, 28 Mar 2024 18:39:07 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-515a81928faso1499967e87.1
        for <barebox@lists.infradead.org>; Thu, 28 Mar 2024 11:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651143; x=1712255943; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aNITa5Cj2WoLCaib3BPYtKiju5jz4nZe9WK7mozzOrw=;
        b=Zn2O3fKf3Nbf31mJzMt/XE/+1k7gzO1LbfRxRXmcCJHCnQXTCS/ynXJXmIDFmnzUBI
         V9laVQru7IfbxZS+BYi5755OugiKPPxq79mmLwkAxVzOp9F4TdSfArcHhGfl9IDz6gui
         8xGMQ9WgniYrY9svPZeX0IGe0wUWHqlVq1p2pJOmEm/wqEIt+72Ybui4Ep/Osf+plole
         InTXW4G14gwCye7xU5GpshOd7VKFKO954KyQml+4B5+TjYEk/Ibhy+ZSeDrYvoBd1NfP
         2/q3pLTaaH88a6sZ+C0fFWQSjjEhnhHdKw0oXJDeqgGVeTt5FbmX7FirS4vrxR0q047m
         03AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651143; x=1712255943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aNITa5Cj2WoLCaib3BPYtKiju5jz4nZe9WK7mozzOrw=;
        b=c61oUCCH4pAvOpefatkfxNhzFGzA8t3HMVok8VNvCymEy14qRdkhjuuZ6hhxNBuDyw
         nPQ5W+MPWkd6NECE6mnph1ci09KGcGh46p3UE5CTDizb3u0RqO8SpoT/0OdflX9U7xd0
         SKSpgFiYc/0z+ikr/mmpAujMvOPjTToGROggOm6kPIxjGsh8Ofrx0jiKU0esOd831hFz
         lA4UftrqjvBIQxyO1/P1G86/0zfi70eJ77fyBt6RXMn/d6itVOz0yA+wY0E96ZPHO4or
         wNyMBSn4s6GR0VhcgFcK3rtsjoTeB+ij5WxN1vhynWLb11z034dRZFjKjcEwDrwx0zjA
         GiNQ==
X-Gm-Message-State: AOJu0YzBFT5e7HCRBgzKCFNUk6U9gwjQAWROeK4a4MSUxJ2ZYPnzmuU6
	tSFjX5B/M8Hp63nkzwfcKFSz2T4DmajMmwNmeq4W5WAInZSAuMbYg38FrJw5Oj/Wtg==
X-Google-Smtp-Source: AGHT+IHVv8Bgmu/QHyk6eZlZUe4ToDh1eLarWLqURIDcN/S/4xxesuTr/rV8Lzu6D4ZrBKLkagxRMA==
X-Received: by 2002:a19:ee03:0:b0:513:e466:cb05 with SMTP id g3-20020a19ee03000000b00513e466cb05mr153792lfb.45.1711651142950;
        Thu, 28 Mar 2024 11:39:02 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id z28-20020a195e5c000000b00513bd67f45asm308176lfi.66.2024.03.28.11.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:39:02 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Mar 2024 21:36:59 +0300
Message-ID: <20240328183851.3842-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_113906_482270_26EAF2E8 
X-CRM114-Status: UNSURE (   5.27  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 0/3] mips: small improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Denis Orlov (3):
  mips: cpuinfo: fix cpu name output for unknown processors
  mips: cpu-probe: identify more MIPS CPUs
  mips: mipsregs: remove duplicate definitions for Config 1 bits

 arch/mips/include/asm/cpu.h      | 30 +++++++++++++---
 arch/mips/include/asm/mipsregs.h | 12 +++----
 arch/mips/lib/cpu-probe.c        | 61 ++++++++++++++++++++++++++++++--
 3 files changed, 88 insertions(+), 15 deletions(-)

-- 
2.44.0



