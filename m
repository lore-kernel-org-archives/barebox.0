Delivery-date: Tue, 22 Oct 2024 18:49:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3I4H-007XHB-36
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 18:49:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3I4H-0002Qr-Dw
	for lore@pengutronix.de; Tue, 22 Oct 2024 18:49:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8anwsysY39t3L6KtO4GOdQN6NtUJf8rS5Q7kw5o8eF4=; b=Lwko3ZNagtficCw9XcJufyXyrf
	90OCD/hCfeqRfM2enTRbT4Et1gpZPhbu971XFTlzXHYASUviy/J7/l0Npy8G7dVTgmpVdWXDXiFbp
	WLQxp5HSPlTmiwEGiR2PueN29KZ6Aybj0idFYnYg5o/FILwwople3HYqAipODrV7DX09mBAc9GPWl
	yYFv66VkACVp1Z7OcbTcOVpJWbJftJ6A+tK5rtAPOdZtgy2HBGA8C7R/hz7fJEaRiI7d+kye8ZvG9
	rMuqlmYebcCR/9j0sR+QoDk9Kj2nAA3xOtD8HX4OXHUkgaQa/T8CsIwi0zpdlJb1r4oqdqOMB4iRZ
	fT1A8PtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3I3c-0000000BX5Q-3ImB;
	Tue, 22 Oct 2024 16:48:32 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3HkI-0000000BSiO-45IG
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 16:28:36 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-37d49ffaba6so4079792f8f.0
        for <barebox@lists.infradead.org>; Tue, 22 Oct 2024 09:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729614511; x=1730219311; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8anwsysY39t3L6KtO4GOdQN6NtUJf8rS5Q7kw5o8eF4=;
        b=cDmSMYtXClw+TYnKXFUjzRaJ1EGvqUgrQ+yYlx3Nczjrxwm53H3qadgA+Jb3z/lDze
         JF2bhEDTbTJpU6ruwaKUwZHJ4ScFqZ3KEuESmL40f80WCTHpGCVk+LL4/vNEiFHQlCmM
         NV6NtgeeTB2HOv3+yFVGyWx/cBLLCZ9ci4Vx6Nch6QTJsuEdn+ytFummdaQchRNxkVMk
         7p+5W4snp6EktsUlRhlDg8IGh3RvMQd2ga3fNql29dDF00fLqinUwiMLbDr7B4MbzFH7
         dw+MrlzbHg7QJFkUNxYrz5+96vO3HC/neRb2WSqayzvI9BiwpNSxVQuap67lXJff0+Zv
         6u/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729614511; x=1730219311;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8anwsysY39t3L6KtO4GOdQN6NtUJf8rS5Q7kw5o8eF4=;
        b=lvoHCM47YSAz9DWZqkKI2zoH864mBHg+B4i/SjI0SH4vJNaEo0w7BX5vx//iCV4zqE
         o/Hrs7HSjb8HttFUR19UI+jMOPZjkDyqog/EDHWGvJGRUY/CtK/v6gM8j40dMGieLHue
         0H/BPtItNYyI968ESE/5kYdTICnf9bg6abIT3g8VkknO7jAdm+uA9rq8bIPSeU1ZUyGY
         JAYwNpAYjBvLdaQpaphuSSJMnHJTB/quXpwl0KzR5Qgc0RJuKPNCdgD/Y80bS8/zkne0
         9xqRm3vL4h1+GAa+8OMoPwoDEMePb/iJBo8MjfxmXvv1+fs2VxM0CbGZI5H/HioBIFbR
         s/Bg==
X-Gm-Message-State: AOJu0Yxku8n8/PufC7MSSe4JDqsLIShSavBN4mGrmHC9XMW6vuskMOWo
	4BJQBHFUIDGNhs+kYE4zptdnUJYoff109nKaWXmPYRlI05PPMyRd
X-Google-Smtp-Source: AGHT+IHxfibdnWk94+Db6o1+PBBePYznH5q8xu6cd+w2wgwoskHVNG33NNHl3n9c8Je1xh8oZu/6Pw==
X-Received: by 2002:adf:9796:0:b0:37c:f933:48a9 with SMTP id ffacd0b85a97d-37ef0b61cedmr2539559f8f.1.1729614511357;
        Tue, 22 Oct 2024 09:28:31 -0700 (PDT)
Received: from localhost.localdomain ([156.197.181.122])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a48564sm6961222f8f.29.2024.10.22.09.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 09:28:30 -0700 (PDT)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Tue, 22 Oct 2024 19:27:26 +0300
Message-ID: <20241022162726.166093-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_092835_036514_16B17853 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: efi: fix GPT header size exceeding allocation size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The buffer gets allocated with the block device of size SECTOR_SIZE, but an
ill-formed GPT header_size may exceed it resulting in heap-overflow.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 common/partitions/efi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 829360da6e..9a04b7014d 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -173,6 +173,9 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 		goto fail;
 	}
 
+	if (le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
+		goto fail;
+
 	/* Check the GUID Partition Table CRC */
 	origcrc = le32_to_cpu((*gpt)->header_crc32);
 	(*gpt)->header_crc32 = 0;
-- 
2.43.0



