Delivery-date: Mon, 06 Oct 2025 06:16:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdu-004lqa-1h
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdt-0002qG-ED
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=; b=AEykPTNUftOlY/z9hJLnmdQ+hP
	9FAU4YmhJ1ny0eWLYeSv8wZyYb2eD+XBXSbVeX1hiHF8TCvmG1Vljwp7gNSFPUUgfBv8OzvwmztsV
	t6I8CqHX9zjGszbsqLUN9Fcw1ptx171/yl0BJTDVPxbJuLbyAsfTxTu+p3VRHAVaLF8LsXKzph0it
	y5oY3tjA3s0KVcZnJ5dcF0v6W5XEF0uesZjXKLi2uB2eD6D1tlJXyPyJ+agyO4Qk1F1gFT+kb1AsP
	GvU+iYj2RIKMKGouLCLnrjcGEkhlTXWoR6jCAwDct/nvACgB2okHbT/Jff7Nx8+8apQL7gT5nKYfq
	hKvPWDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdA-0000000GuHl-3xvW;
	Mon, 06 Oct 2025 04:15:24 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd7-0000000GuGM-41Vp
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:23 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4d9f38478e0so45303391cf.1
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724121; x=1760328921; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=;
        b=eJpv7IqTizVkcqzg47f0E3RmINubugMKyeqa7z9Zirarna2bzbhRiDLSdH2ROe4cFg
         HrelbYkkCNnWIxPDPpiDy1CCOXhqLZ9SFc8WyfaudsPMCqavhBlqB2EmqlJntMZ0exyY
         oyqARMdXu+ZKwi7+j4PjyW/RbPnZ3kuQk1oBr+ueFiMn8WRRhTj3UO+KuCEdhRIwgO7h
         0rySBFsIhzzEwZ4jeDf+XWPQEmwmWyqcE5q5NxVnawPv94UIQUh7y2kE1zIKdgzzfhjT
         +9oYGykv9A38pQoJQ0jDqBP+Ni3sX5nqAo4KJYelmK/EXMj3AwmZAiWo5qf5fTDMnlsa
         NH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724121; x=1760328921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=;
        b=WYlv71FyFtk+FHVEBNZvKlDFlR+hJvPOnxp0IcyCv25H7XdWRHgFm+wD7fu8pxdu86
         dNgA7B6Q5yDc/pDbOrZnkhTtFTraGhy1tE4Wc2GW6bxwXZCu86mSz5Waki4r89HuB1wm
         PT9P1eUILzcu/0EWnOCe6b9wC1zrODGa8deiigHftVgwXVpyG0DiF0GZmUOsistYhBN8
         mvJdNfdf4uJa+dHfBMIN1e9w1eWntWs392/jsv1UHlKe08nFG3CveZwjMAhqAn51JiB/
         +nfI5TI6H1slCrsR1CIgx0r9vxj3YPOjjl6a+Y/BsIsoFKTeCZOg/6J50E0bNLIm8s3F
         AKiA==
X-Gm-Message-State: AOJu0Yw5wcvG7XIIxzjRotFX205ZHcZFfWDB5s78bl71M3cKrTBqq/py
	rAg66xiZ6OqW7wSzTQioavEEUukDb41+J/oqYARoSaLxBTweqUO9W8lH
X-Gm-Gg: ASbGnctyoaNmSXKS51Q1XqXRRRaitGxy1MVCMLJoNYdekJlz/E7LQn4WPZLzG4/JCzN
	fZc64gOMe+E5d/YqLDDhhLQIgGLJjnTWcLieI+J0ipm1JNTyY0TbIiLRXOCH6//SvHWW93/PrbQ
	vEIIT17aFPOhGjnbLYtfFZU9EBQQml78k0KKI+DPqK3ZVTdwwkzX3COaSngDQFgIwfgvvcgJoUR
	Xwr3A/YTO4V7kteS2Ug2oVKIzOnkqwvIWE2rqXhTgvQK84RJVKTDdSWrx/VYa4WxvbjpZMCAjsd
	aUGHo/T5q20wJ/YMh+0OSiUgjIbjN8MU5HAXgj8o+TqpY3dhoDwUpiAEyrQaoZYOklzQ7ywR1pB
	65oQGxnvXR5WLB7/tcb/QyfnZpz3/jek3V4SWUu2bvO1KXMy8g7VyVZSh+ik9dlUDjA9MDz8mJL
	tpjX0b6XXK0w==
X-Google-Smtp-Source: AGHT+IGyWBeRNN2XSTZ+znb5HBMKB7ugs+8xZGWjsGIwhR50bpVMqaDDmjgz/MURpXkChINWOsJeKA==
X-Received: by 2002:a05:622a:28f:b0:4b6:18ff:3630 with SMTP id d75a77b69052e-4e56318698emr193493481cf.24.1759724120756;
        Sun, 05 Oct 2025 21:15:20 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:20 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:05 -0400
Message-Id: <20251006041512.1360284-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211522_007060_7B0E83AE 
X-CRM114-Status: GOOD (  11.42  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/11] tlsf: move kasan_poison_shadow into tlsf_add_pool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Unallocated memory is poisoned by default to catch heap overflows.
Its control data can also be poisoned by default as the code takes care
to unpoison it on access.

Move the poisoning thus tlsf_add_pool(), so users need not worry about
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/tlsf.c        | 7 +++++--
 common/tlsf_malloc.c | 2 --
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 8666b94ea387..4ee53a9b2f20 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -814,6 +814,7 @@ size_t tlsf_alloc_overhead(void)
 
 pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 {
+	control_t* control = tlsf_cast(control_t*, tlsf);
 	block_header_t* block;
 	block_header_t* next;
 
@@ -844,7 +845,7 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 	block_set_size(block, pool_bytes);
 	block_set_free(block);
 	block_set_prev_used(block);
-	block_insert(tlsf_cast(control_t*, tlsf), block);
+	block_insert(control, block);
 
 	/* Split the block to create a zero-size sentinel block. */
 	next = block_link_next(block);
@@ -852,6 +853,9 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 	block_set_used(next);
 	block_set_prev_free(next);
 
+	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
+	kasan_poison_shadow(control, sizeof(control), KASAN_TAG_INVALID);
+
 	return mem;
 }
 
@@ -927,7 +931,6 @@ tlsf_t tlsf_create_with_pool(void* mem, size_t bytes)
 {
 	tlsf_t tlsf = tlsf_create(mem);
 	tlsf_add_pool(tlsf, (char*)mem + tlsf_size(), bytes - tlsf_size());
-	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
 	return tlsf;
 }
 
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 6e9d48af26bb..74089fe7f390 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -115,8 +115,6 @@ void *malloc_add_pool(void *mem, size_t bytes)
 	if (!new_pool)
 		return NULL;
 
-	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
-
 	new_pool_entry = malloc(sizeof(*new_pool_entry));
 	if (!new_pool_entry)
 		return NULL;
-- 
2.34.1



