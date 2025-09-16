Delivery-date: Tue, 16 Sep 2025 06:56:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNje-003ZMP-0O
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjd-0004vC-Hu
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ve2Hsya7wLNQM/r1S2nGQhxt4Vzu0Zw9mE0+pdUiUso=; b=yVxd7Yj9EaBlMb9+VufmqUrKfq
	5aFcN3orS1b82aYDoNNj4JhWVaBACGZHoxHNkOw5WdDaCBQ4zKHPPJTZUgPwQpQo1IMbk5O7nhrdm
	fe6zYV6x+SpZ5lUCvevo35KYi1Fs8OWD3BSVoNvAEFE7WUrzoaMiv5y1oXoCt6IWT0fMmwwSuL2uc
	K+ltHQjxkVloNlEzppuQqLDNPxYp/KZllYE+cemM7z10SBlsBZKjCwtJLcbxKkkj9/0QhvfLFLBpr
	bafqfpPRPOzlH1qzpnR9B93fOK0UIf2JOP/uOMVOeMQwWpSRRu2kofjqvA9fgPfq7BD3h6MdveH+t
	0iNtp+tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNjC-00000006kny-35Ey;
	Tue, 16 Sep 2025 04:55:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNjA-00000006kji-0lTU
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:41 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-45cb6428c46so58998945e9.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998538; x=1758603338; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ve2Hsya7wLNQM/r1S2nGQhxt4Vzu0Zw9mE0+pdUiUso=;
        b=F1IZ4SzsKSWncTZJSQlDPC3tH2e9hyXdfs8Ir4Gc2FHh7aAMdGbeV1SoAySj1jNAIU
         /gUK6GS2emK1LKfp+5vX0J5YqvfiT+4aCRFL3Ne1ZQ0v6KNjfdbvPEkx9SWRjJ5Xfkv5
         tUNWQwdXolflfIXkLzN0XxCt5V5hY19L9c+Hbgp2qeZISeDhtt9tc3s6m4WoFEcJgZWT
         4VmH6iwEHCmKEIxDNCQAgiImzqSuH5KGdJ23ULCKfuEzJPp5P9bNYAQoXIAEu3cBpwam
         zJHFHPskwN2qD4qSX5JVwQQv/am3fsZ+27jg8e/TmztgbgsaoJCOm37x+TXPiw3aefvF
         wxpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998538; x=1758603338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ve2Hsya7wLNQM/r1S2nGQhxt4Vzu0Zw9mE0+pdUiUso=;
        b=F+ge8XPtTFdVgqNvuX+G/JL0Mb/G9Cd3mzDE8l6uU6L6FTAXZLaRYUjBXIhDkG6BmL
         t2ztP0zCworXw1rKdBBLZo+jLNJq3YuklvfFW26g51wZfXiEv2XYhcUOfPTHVuvfGIw6
         v97A4UufgTare7CmR/suZGxloDpZX2HC8CNEZM7ssAZf/x1Jnj4znfWMVd+M+DlwSDSX
         RpfCsQqkUPs4UgkNA6hf0P8cQbN9Y4eK8gthyhXfh0MKLL/5ddDYWhhDu8+md3C5oCXl
         Jx6A6cVDkY93KcrpjJN0IZSAsceE8TxlcknvNlIf/TeO5R2zX8ATatAWybE1Onl1DgpK
         8LPQ==
X-Gm-Message-State: AOJu0YzrxZ15QOlIxCgEjE724e6ZOZXiG8gr17qP8s5Ycdd/V1q2EG2Q
	CqVjS8ICwkle3uJ7Gyvi3tMGXCJ5Yu6T0a/R+WI8JU4vxQ3qpWzaojF8
X-Gm-Gg: ASbGnctiOT/0AWJg3GdoDlMMYnwzwDtpkUl+eOCTV5bPlaI330BGeUnuLSmDoS5USLC
	Ef2n0TBra4jfm0E6vQjZO8zRTm3NgGmcdoBO5rnsq6MXnxm2N2W226QitsF3RQzjPqQBoP4IxPV
	q0sv7+eMaCYDClyp0Y0kjRQxW50s1QUD+pSN7vrcfZZsanRD5T2mlqSzvGHej/YSGQdHn4p0vXE
	tkkLPuag/9055Ny/9W/+Vzxdhkxkq1ejNIsaaTaaPaQg/UHh8bUs7rQ4/b2SoNEOGG1SmAxN04D
	MnZCZ9HcsIhICXiqSMxedoY8AUljvhT377lra89xpuJTvPcbo9boMu5JrnlZ6uZxdqMkT+ocDXD
	E4OPkgp5b6cNhxBtC4DW+Ow72wpsPWXFjZQ+wbgWhjGqXcwL5wDpxVL/DNIEW7eA8UhSR3RNSd/
	ppxWfl533ZmmIq7PBkXEwLLumjlNdKgAJl
X-Google-Smtp-Source: AGHT+IHpodTl7VX1WgQg3bMIcYjOSlMg7Y235B32y+cj2AVXhAB2zUWQoIVguIFv9GTvdZuReJ6nVg==
X-Received: by 2002:a05:6000:26c1:b0:3ec:75c0:9cfe with SMTP id ffacd0b85a97d-3ec75c09f6amr709634f8f.32.1757998538254;
        Mon, 15 Sep 2025 21:55:38 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:37 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:55:00 -0400
Message-Id: <20250916045500.907542-12-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215540_229065_D29BFCA8 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH v4 12/12] efi: payload: x86: enable the possibility to efi stub bootm for x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

this permits to select one of efi stub bootm or efi handover protocol
tested on dell latitude and qemu.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 8f76b00744e7..47238208c527 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -1,7 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 config EFI_HANDOVER_PROTOCOL
+	bool "EFI Handover protocol"
 	def_bool X86
 
 config EFI_PAYLOAD_BOOTM
-	def_bool !EFI_HANDOVER_PROTOCOL
+	bool "EFI bootm protocol"
+	depends on !EFI_HANDOVER_PROTOCOL
+	select BOOTM_FITIMAGE
-- 
2.34.1



