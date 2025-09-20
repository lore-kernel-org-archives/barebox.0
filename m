Delivery-date: Sat, 20 Sep 2025 05:04:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntd-0054ww-2j
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznta-00050l-7H
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FjXDHH9+9IICthkfiXNIjhBViCUJDk2KItY+WsZZtfY=; b=pnycA8Fm+qeem3
	uT2QwbZY1rG1/Ui6KaytQhemi4jkK7onFayo0iOGncvlPlkzI3oQJ9XFVhEZIzD4x7v67yWfK/42T
	krs6j6UMJ700TU9DBHmomMji/qvG0bB0wf0gM07BeCKoOScW82Y3P5tNxip7f9VqzDqBT3G+KED4M
	c2BawCGwVbcHKKwJ64SFoscinPaiKKqRKLrwbwuSqa/IXfSwa6HQpGQzK9J4CpSRICX7P2Xru3iKi
	XdpUbfucghN7iPZ5jLGtRBQS2GEtS5BMWI9JlBrNANrvrYEkc/QAmlZoIHpc/x0eyF+SPN6R7Go1K
	xZwXhu4I5WOFCpZgJXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsl-00000004bhe-1clV;
	Sat, 20 Sep 2025 03:03:27 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsj-00000004bhC-0k1Q
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:26 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-46b303f7469so316575e9.1
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337403; x=1758942203; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FjXDHH9+9IICthkfiXNIjhBViCUJDk2KItY+WsZZtfY=;
        b=mXSacetI36Vanza6Nd7iOJG+n97JaoeTolBmggMKUQ55f0CAHKWqYsAPmoR9ZT/Kn0
         OkNPVCqzh9BVtw/ASbtPKrLnK/eBnI4TnNVSiqXTFLD56OaHpCHjWUrG9WR+IlpEBzvk
         ecLuH32GODV2d4tLWEYN2z7ryIjU5/T50rIIb2Pf9pyYZdpnxIeCPpluvHIMFxkikiCQ
         ig+vnSIHTUysLACY49uB/0E4xd0hSdP0B5B/ZYe8UugeHRQATtHLz8LXIrGIWP48TieS
         fPfwCLV2druewDQ/Sh7r+3PtTjPYsodVGU5LomiSRcdb9lkhPaokreOnkfglLNGqS+u1
         ANZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337403; x=1758942203;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FjXDHH9+9IICthkfiXNIjhBViCUJDk2KItY+WsZZtfY=;
        b=PujJXD61q4IH8Cz4imozjZF1DuwhjETEzNwHsmOuw3rbvQa+AUJgcjOkeJjkeOEYFc
         iYXJQN5CJcDzqlkzLLn/5W9OYy/31Xv7WDXa0tkRw87K1EI4moMNbZMp0SevS/GI/Vfo
         3y/dOuAVEeXwxQ70DjjSKSpfWF8ziqUHdgivg/bqnyrOtOSsSDqnvRn68jNMIjH6jLHQ
         91evKqYfVoXKky0QZcWC9/DNR7Lx/uoxu8GdgJWGsQe1WKwyBIlwxO2M2L+mapZaPCix
         B+YCL5hJJyR6eLtArZUAFQTffVRdgjPZwGnZI8pOVKprbepCFG7r1GT2Uzq/4luiI2Uq
         uaag==
X-Forwarded-Encrypted: i=1; AJvYcCVwqCKCnl7qF+TvqulpAm5KPHyxH1SqtokBAmfH369EBeStJru4iEfhuzOvQw2jGMhdyzoux7cd@lists.infradead.org
X-Gm-Message-State: AOJu0YyaUC77e7s9BGuioq+Z7yL+iwnJ1FrO2PL9NGNKHeG7oTiJEr2b
	hJAbjhSx9QmntCTLlaC18ivKV37aUVDzsl6NmgVPEXJ/4mL3MIJ9LbGj
X-Gm-Gg: ASbGncsQbxDs/hJGabZNuZ9qtf9A9aE6Vvhda7LdFYKkdFfay4J5PdmaOT28BxChDe4
	7PuGFvyHtBpBxkmwHVib/5j4IDfvu36dD4wBzWemT0cnsshigOx8O4PL2pXLPEpFSNGo2wQNAwX
	Rki8jdZNWpFpQoUip0iqZYG6gFXcstIgtwQSjwJf5TzOV8P/5oZhIM2qJLi8iXlYfAIo1rmqSLe
	69QBn9mEGpRmzTdZMYiGaAzP8v8S8nRVrLTXYHgDFsbZwhr5yXkTp3uqRGPkx6Mle8w2JALLmNp
	Rf7CXzzYh8yE4ecZ+jA7VzJb2SXDVUhALOyOJORb6/JSYAYO2Xex2BkSVpHW3qnwBtO6vFIKTru
	HaNWA6PfIk/UcNiRus1NIRZCpqKFiR7AGwf9RDPWCWwzKeXFziMW8mHOlsRXfZXpIcCReXue9hG
	4xfW1Sy7Ry
X-Google-Smtp-Source: AGHT+IGOprCbwRPuiQNS3Msw1a9jwFCPAtE38W8jscKPBtgR9OAOpuiYIJpYzcy01YAtP6lDJenAOA==
X-Received: by 2002:a05:600c:5490:b0:46a:6e5f:203e with SMTP id 5b1f17b1804b1-46a6e5f22a4mr16677295e9.23.1758337402906;
        Fri, 19 Sep 2025 20:03:22 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:22 -0700 (PDT)
From: chalianis1@gmail.com
Date: Fri, 19 Sep 2025 23:03:09 -0400
Message-Id: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG0ZzmgC/x2MQQqAIBAAvyJ7bkHFDvaV6CDtWguhoRCB+Pek4
 zDMNKhchCssqkHhR6rkNMBMCvYzpINRaDBYbWftjUeOglcOxAV3itG5QJachhHcZcj3n61b7x+
 HlzbnXAAAAA==
X-Change-ID: 20250919-efi-loader-cdff44ad2d40
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>, Ahmad Fatoum <a.fatoum@barebox.org>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200325_244562_A54BEB61 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/15] Implement efi loader to run barebox as efi payload
 app and then load efi stubed application/kernels.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
Ahmad Fatoum (5):
      efi: payload: split image handling from legacy handover boot support
      efi: payload: add support for efi stub boot
      efi: payload: add support for fit image
      efi: payload: make selectable without COMPILE_TEST
      ARM: cpu: allow selecting CPU_V7/CPU_V8 directly

Chali Anis (10):
      arm: efi: add a generic defconfig for v8 efi payload,
      efi: payload: initrd: implement efi initrd media protocol.
      common: filetype: add x86 linux filetype.
      efi: payload: early-mem: helps to correctly boot x86 linux.
      efi: payload: bootm: add x86 efi stub boot support.
      efi: payload: x86: enable the possibility to efi stub bootm for x86.
      malloc: tlsf: efi: add a fallback for allocate more memory when we are in efi.
      configs: efi: arm64: x86: enable the use of efi malloc fallback.
      efi: payload: earlymem: allocate only the barebox needs in term of memory.
      efi: payload: bootm: remove redundant reallocations in image loader

 arch/arm/configs/efi_v8_defconfig | 267 +++++++++++++++++++++
 arch/arm/cpu/Kconfig              |   7 +-
 arch/x86/configs/efi_defconfig    |   1 +
 common/Kconfig                    |   9 +
 common/Makefile                   |   1 +
 common/efi_malloc.c               |  80 +++++++
 common/filetype.c                 |   4 +
 common/tlsf_malloc.c              |  22 +-
 efi/Kconfig                       |  23 +-
 efi/guid.c                        |   7 +
 efi/payload/Kconfig               |  11 +
 efi/payload/Makefile              |   3 +
 efi/payload/bootm.c               | 477 ++++++++++++++++++++++++++++++++++++++
 efi/payload/early-mem.c           |  19 +-
 efi/payload/efi-initrd.c          | 123 ++++++++++
 efi/payload/entry-multi.c         |   5 +-
 efi/payload/entry-single.c        |   5 +-
 efi/payload/handover.c            | 195 ++++++++++++++++
 efi/payload/image.c               | 228 +-----------------
 efi/payload/image.h               |  14 ++
 efi/payload/setup_header.h        |  63 +++++
 include/efi.h                     |   4 +
 include/efi/efi-payload.h         |   5 +-
 include/filetype.h                |   6 +
 include/malloc.h                  |  19 ++
 25 files changed, 1352 insertions(+), 246 deletions(-)
---
base-commit: 3366e9e04a284b7fed71c4b8729fe331b6547d6b
change-id: 20250919-efi-loader-cdff44ad2d40

Best regards,
-- 
Chali Anis <chalianis1@gmail.com>



