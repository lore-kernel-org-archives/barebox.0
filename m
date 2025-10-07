Delivery-date: Tue, 07 Oct 2025 03:00:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4Q-0054c8-32
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4Q-00043v-26
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=; b=WIbPAzahJNuSdLZt8OTW4pgMxW
	+uoemPRXlr2cbahrO85JDsgMm5aNHCxio2UTEyYT59FXsk2x2/sg4VUNXp512IRjPXpd4vk8tsIug
	79Mob075g2oiOy6Ti8ouyrBoo8UUPgfOgqj51AE6NSpumiNUECossMKhqKCHGzr2qY+EibqenxCt0
	BqiA+zbOgalGvoyrLNME2DUZDDnkgltkjFoc49K63MknmKyOuiXdTrRDx2aAzJ9TxXkDGK+PXa70p
	X1qxC/n/jFg9yD+8uMnlDwvt7GAy9ZzDzUK1Zawz9BhxsM4gm7yo0iINwr8xRqaTbEJ1FAttRzNRv
	Z5AjMwyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3h-000000014xG-3To1;
	Tue, 07 Oct 2025 01:00:05 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3e-000000014vy-3nVm
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:04 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-78f15d58576so54173946d6.0
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798802; x=1760403602; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=;
        b=ceblpZiND8iXzw08zCbyFvRJfJBlFnt7x7HmPvn8/qzP4QCSw+GKAcRFgzVHlHmdB3
         dC37ANRmXR6Yd6dhgfUs1p40VrM5jHqQq0LdFzsTyol4pdeZ6b94pf2n9ttF8mdurD/m
         sWLzVpuwAjKuybyQWJuEgmX6pC905cdUYF4DEhUKvGSCsgZLMscUBQbVHGKbVRC28vHv
         f4VBU0voxRhSBbzD7e6hS0PpU98nflYkiquJc2HL3cviHeGKZjQW+eK9gAql+cakWunb
         +K4uEf9/t0hrI+IlR6UVmoK+DOrz/YLcJMUjeLZS6r5gaJ0n1/YWcAYecQXmFYv8HqWG
         dRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798802; x=1760403602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=;
        b=moPhGaMo488JYKNWJDxC7gHl1TDOcJ58g95UKFs5xBfjUj7/adEzspOCeTTrvRKTuE
         E4kLPJ5Hp30nPoWw76t8sBpReBKhmoIku99gqUgXJH3N9WQo6yR2FtI/fgb/bkMwx4A6
         bX+vwUEFHORmn869rdjeKFjNvx4sW+u5fb58OG2hvdfiQtZigntuHdSal7/vMxUsrDas
         R04grwKG7LjKMvBkzCQWRU7emoQ6c2/sp3r6rGEb4yU9ggoG15yRfTwxfzGnm9zDrRUx
         PdYO09LO0yrgcnQ3lLZKipA3ZDR0NSZjJQzCrfIU1W9Hiae4FNAuK34kLgqu23s9EyHV
         7whg==
X-Gm-Message-State: AOJu0YwzEq1FwWtr7E8Z5bDn1mxg7zeEdge2yDl7/P5kfIsPsOapua7G
	SmWH2LOkATaexo/K4t7qmdP3BcOs5INe7hVZhwhFjRaUm7o+/RSwuexT
X-Gm-Gg: ASbGncuxEYMjIcQZ1jTJKC+kNPO9FIE1VCW6UTtwhvrXsEuDbDkkBmpUOBvthDs3Cu/
	D4kWmTfrTKFJFZ8daz/jH9iXw1xSjMkowiWfJLxaP31dCcYzCob5pfLeyrlZRhWgLsVjqQk3x7K
	dPk1g1JLU3yvuyhTQV8EzrloCUC06d/+bLv0Y5birDylyRmfeneqOsvmUpjA1Or6CBXdIYgUzcK
	wsKy+fKsPeO6Rw9wDkdffxbQ69uwwV3hKuHAxy96+Sjzcyn+M3ga7uiAbDjoQ3VPNJTqQKdDfuJ
	/jXBLF7xJ1ZHW3yav9TpYKBFb8Q1W2lQoQ5G+RWWn3eAQFtUwWeatNasMq23/0D+JO+Opfqw1o2
	d/LOE28wDV2WE9m9c/GpaBeYfnqdOWcASnEs5wUvbPd3V8HqxeuD7QuK6B1lC7hlG
X-Google-Smtp-Source: AGHT+IE5Hj0OU+tsOukuyhXnrjMsDke0i9chIP9aCYqBDdHoaiRmCDQRts4UI6PtYfsDqCY6/SVjHw==
X-Received: by 2002:a05:6214:1ccf:b0:77b:3734:8a6e with SMTP id 6a1803df08f44-87a0527f26cmr24218056d6.29.1759798801665;
        Mon, 06 Oct 2025 18:00:01 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.18.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:01 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  6 Oct 2025 20:59:48 -0400
Message-Id: <20251007005955.1427990-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180002_943848_DD8F054D 
X-CRM114-Status: GOOD (  13.41  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/10] tlsf: support on-demand requesting memory from external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

barebox running under an operating system (or nearly one like UEFI) does
not have control over all the memory and should not hog too much memory
upfront as that can interfere with other applications, e.g. EFI drivers
or the EFI firmware itself.

To accommodate this use case, allow TLSF to dynamically request more
memory from an external store via tlsf_register_store().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/tlsf.c  | 29 ++++++++++++++++++++++++++++-
 include/tlsf.h |  1 +
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 4ee53a9b2f20..636b57b1c642 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -159,6 +159,9 @@ typedef struct control_t
 	/* Empty lists point at this block to indicate they are free. */
 	block_header_t block_null;
 
+	void (*request_store)(tlsf_t, size_t);
+
+
 	/* Bitmaps for free lists. */
 	unsigned int fl_bitmap;
 	unsigned int sl_bitmap[FL_INDEX_COUNT];
@@ -568,7 +571,7 @@ static block_header_t* block_trim_free_leading(control_t* control, block_header_
 	return remaining_block;
 }
 
-static block_header_t* block_locate_free(control_t* control, size_t size)
+static block_header_t* __block_locate_free(control_t* control, size_t size)
 {
 	int fl = 0, sl = 0;
 	block_header_t* block = 0;
@@ -598,6 +601,23 @@ static block_header_t* block_locate_free(control_t* control, size_t size)
 	return block;
 }
 
+static block_header_t* block_locate_free(control_t* control, size_t size)
+{
+	block_header_t *block;
+
+	block = __block_locate_free(control, size);
+	if (block)
+		return block;
+
+	if (!control->request_store || !size)
+		return NULL;
+
+	control->request_store(tlsf_cast(tlsf_t, control),
+			       size + tlsf_pool_overhead());
+
+	return __block_locate_free(control, size);
+}
+
 static void* block_prepare_used(control_t* control, block_header_t* block,
 				size_t size, size_t used)
 {
@@ -934,6 +954,13 @@ tlsf_t tlsf_create_with_pool(void* mem, size_t bytes)
 	return tlsf;
 }
 
+void tlsf_register_store(tlsf_t tlsf, void (*cb)(tlsf_t tlsf, size_t bytes))
+{
+	control_t* control = tlsf_cast(control_t*, tlsf);
+
+	control->request_store = cb;
+}
+
 void tlsf_destroy(tlsf_t tlsf)
 {
 	/* Nothing to do. */
diff --git a/include/tlsf.h b/include/tlsf.h
index e0dcdac1e7ab..ea86b0600c49 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -63,6 +63,7 @@ tlsf_t tlsf_create(void* mem);
 tlsf_t tlsf_create_with_pool(void* mem, size_t bytes);
 void tlsf_destroy(tlsf_t tlsf);
 pool_t tlsf_get_pool(tlsf_t tlsf);
+void tlsf_register_store(tlsf_t tlsf, void (*cb)(tlsf_t tlsf, size_t bytes));
 
 /* Add/remove memory pools. */
 pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes);
-- 
2.34.1



