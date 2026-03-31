Delivery-date: Tue, 31 Mar 2026 05:23:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Phm-0070UZ-1f
	for lore@lore.pengutronix.de;
	Tue, 31 Mar 2026 05:23:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Phm-0004de-0P
	for lore@pengutronix.de; Tue, 31 Mar 2026 05:23:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oR94fZFvMbpElbImxQ/RJg9+plIVsTI/d4gCAeCABx0=; b=JrpSMSS5psu6Vhe+6xlCtecz/A
	a56gSRiOhIAwitR2PaHnaQ9CieKNH44bX7Q+QdBEVtUZvjRuDgkaBvh+FHELeLBLUgIryvQNU6IlM
	cvw8DDale8mTjbP2YCVWEe5574JkJTNqKvM4xWNUnBLkcQM9sdNrxW7vvGCgX2eXcwxkQXqz1Vx6q
	xMkUn4Y/5D0gmG5FhuIxELjRTCb+Wety0hvrlDNkjhRGOO0u9/yyiTrGkdidfl5mbiNlNBfgerKj7
	75w8QBt5KVQqRmELcMPoHGMfK7Reu8hmjb/2H/Zd0pQhdQg122LrpcVN/SikA9hgXIdaHI0YVvXKO
	sqtIH52w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7PhJ-0000000CEJ1-0hhd;
	Tue, 31 Mar 2026 03:23:21 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7PhG-0000000CEIh-2j6T
	for barebox@lists.infradead.org;
	Tue, 31 Mar 2026 03:23:19 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-486fba7ce4cso51502395e9.3
        for <barebox@lists.infradead.org>; Mon, 30 Mar 2026 20:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774927397; x=1775532197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oR94fZFvMbpElbImxQ/RJg9+plIVsTI/d4gCAeCABx0=;
        b=V0X4BZQT3/von68js4U6w6b5eDzGQjtcOF4vyXtMepcI9pw+X9pWcY0lCk9jFLOkcC
         N06jZZWv2flOf8I9flEnLBO+kM8SUaLd/Lo8wA/BOm6KwkL1hmT1gm104ts2tAVMigU6
         Op6AWC4LR84J4FrypPUDZj4optBiTEgpirxGgTT4sIzZsOidB5GJk1TJOVpLmDCXNVJC
         meS5owmKomhUGM+xyHX/gJ9iN/aR7Tgx4x7tJ0y411DZzDrErZTJj39f9aKirDUZupwt
         uX55jf0EshexrTiL5Uxhk71PuUFEc4VCOPfi1nVfV5TVtInWIFdKJ0FvhbNErL1waNlg
         RakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774927397; x=1775532197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oR94fZFvMbpElbImxQ/RJg9+plIVsTI/d4gCAeCABx0=;
        b=JKrnuTTipkIJbyHaV4QsYyo5HwUrJ04EINkSsyT29uIjKzPBDv7gNGxtmnt3bB9XId
         Bf035jfxWKbXDo/2TWjZyQR9OGpLq0Xme5SS21o7LcbHTasBoPhjN+FrjQ6QlrQOOegB
         R2lZUfSenfySik8AnnWKC4VnT5I9iGdhARWBZlRdYqLj0nxbN7UDb0S51aiEJeFZyNJt
         EqidZZIQL6M+2xNnyZ5QuB2rVGodkum5f3Ope71NyOwxL1n6XaiXTGViRoBcn1nNm97t
         Z37T+Q6vPEg9bG69nt8hwnLZezLZozjW0xLNQRoADWxnkZMacwSoPg/teBI9kFRxt1tF
         vCnQ==
X-Gm-Message-State: AOJu0YyXyY2AkRpusC3yibt9IxZ70L40GdsK5QTXCWwJDbzUktw0RE6X
	DDDnUAm4lt4dsBlnX57wOpzrQM5T6vu2LXIaop9NR50UIGoMEVobekiq
X-Gm-Gg: ATEYQzy/EA9aRzCfhwDMpJxKKMPjbczhv/1rBvHi02gf0Q66Tyiq3q1MR4vPSIPJRDX
	QMXyQ18LwFuM7CXODLm+zup50RdsHVdQsJDl1wrcWxFZrNGxcTbublAEz6Ir2lQVHcKNAK0K6dX
	4zFO1hreCG658US3i/3y2wElJUntNbi6EW64ccFdAP3XnoZIUehxlqIVXg0dsswzoxr6r3ZFJV4
	OhqKgmqgPFGgeaF6mUVq+OxUQsyySC8zrUwVSyytK9K6aCoEALJJYL5+4mzcc3Su40qqvuJHiVi
	ikmkiSqZyF9RgIUQwO+Z1UX+R79J7pioSkN0Y+Kx0DqM9AJ+6rG8Ei71Z3Pv6O6blXgBEi+jLTF
	cWVrawG19ZepV24fEFJ+QCvQROzkpVOYEL/M1WXvwLTmNH238P+4vpz6mZxiBuVIc808pnGdo6l
	byiA0cyB8gOr0f2IzN6fbVeaDWlDUL
X-Received: by 2002:a05:600c:8b03:b0:485:3c66:e230 with SMTP id 5b1f17b1804b1-48727ef1756mr282034095e9.29.1774927396413;
        Mon, 30 Mar 2026 20:23:16 -0700 (PDT)
Received: from CNCMK0001D007E ([91.205.106.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf245f8a3sm25059087f8f.24.2026.03.30.20.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 20:23:15 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 30 Mar 2026 23:23:07 -0400
Message-ID: <20260331032307.203225-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_202318_696304_0C4D310C 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: host: initialize sub to fix maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/usb/dwc2/host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index a9b25aeeaa11..93994f0be3be 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -168,7 +168,7 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
 			  u8 *pid, int in, void *buffer, int num_packets,
 			  int xfer_len, int *actual_len, int odd_frame)
 {
-	uint32_t hctsiz, hcchar, sub;
+	uint32_t hctsiz, hcchar, sub = 0;
 	dma_addr_t dma_addr = 0;
 	int ret = 0;
 


