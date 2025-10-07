Delivery-date: Tue, 07 Oct 2025 03:00:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4R-0054cU-2u
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4R-00044t-8w
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=; b=rUMEY5zENibh/EHAWaBqa1VOhp
	Th2htJeyIYCa67vh3y+zJT2f/91NasmJEfz8EbhJV5TK5vj8U1bFGiXyjw9Ny+JW5GiWgGciGjWwT
	ZNoCYuJHI4jLXXRXZLQ9t6A4LdPeGCHWXVGAPEvHcqOjdd+IccBsmvJmxF02Xr6T0998RLEcRvDzt
	cEE6vUbCmb7mGgl3aRYNWQvjhNc33r2mgNNtJ4YDENNLtWDZG+Jvv25hq43VTWGCp4PXibsL8WpIn
	AHu80m0gJZpEfmUx2b16uK1E2oLZzzzuTC1XKEUqFadL2ofC5NVVrsaldjPCzgUTMXS19ahlhzqtG
	H650z2dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3g-000000014wl-2A7S;
	Tue, 07 Oct 2025 01:00:04 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3e-000000014vf-0O2R
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:03 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-87499a3cd37so42201236d6.3
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798801; x=1760403601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=;
        b=IVF7FpCJTvIvsweZ1VjRrpFD7O+BcD5cJHz2mQ1mBcbTk9sf6Pn66bSk2q4nXpXWa9
         TPkkd+kpvLTf7eamjhRqtrDhXVucC7bH9BMPoTKegfH5z7EJ+I8fsVUfEAUQ6Tfo1ZpP
         vyZoDn6jm/paIYAiSdQ0Wnls2hmw/n9Wif7iBXPkcvdIsN8lnA8WMw+Y+FsuJWz3O/gV
         zTdV/AMO0hduPTLhl8gOJN3kpZnKIloeNC/q5Ivjm8AcKdqOE8w5QVAsx7W+bZLHeYAO
         H1QHjw0/uplLsMpIzark3TiaDCSxUPdZ70npsT1cEWTqHKKXaZ6oVdcKoGB4pyskqhxF
         ovGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798801; x=1760403601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3kGEj25/JWU6A5Az258pmc4+R7XuRuLcONJ8V814oc=;
        b=uAXDlI5SN0t08feRM+k38t6auU47XWjXZ7Y+RCIIar+NzCCgBxKs/PsZAtAO2Assnl
         z0CjNAiVnMY9vh+7LSEQwFqP39Br/bDaHLwb9+38eXRfei4zBdwBHX7+Uz/WRGcXIZgH
         FMO380DD29AKotDEDsVde995GpUylMVlnh4futkubgeXk0E1qLaoXJxSTVFDFfEEbEH5
         DbphB/y74y89j41xnpbyPkY3mo/tPgbJc4JTNqyQTEkQxVqcikMFPFNB3Dh546TWupxx
         sTN6mgE1rBXP5LDR53Cx3D58DgMALHpGTR9v0cRjAT+UuUZdFTXZtrlijlBYSMfsREaW
         xnNQ==
X-Gm-Message-State: AOJu0YwjgPW5UBmad8eEr23qKHbmXxbvl1NHANNaefEQaSBDJoOCzlh+
	nZEgX4ObizolhzWjU0eJ5Q20rcX4nwNa6VyTREWrgvPGbYs2Ez979epWARXg36I5
X-Gm-Gg: ASbGnctQXNSGZ6iQb3qj8sugVd2cWGRMuzPGFlzL+1m5I4T9tCIfoodmiy/RZxTc+N1
	7jD+2ulVLWr9h+p6AP12TNDhTDuw1+R/PvLioV/JbgJm+OnZU+uqV/GZpFKhjmb6CSfXmw+yEhw
	mS78XeJ9mEDxSkFlgH+9b2vgdwxXoAljxi1CR78VzFS2o93mrFOUHlg16vIEqAe96DKkXrpvqNl
	lKpR2G8hJUObPqTEbIWWSWE0nNeabap2RjAS9AKWlhUNh/54Oko+rKrRHM/XDzwcFG2q3Gjiwel
	1OsDNI3mvAyNZfwXy34WU4nYrHZS0fpizfnHimhKa4HHt2IqP650S+3o/1KJZjn62J2TcMtIfGN
	8pVhsnONpS1QE+z+x95WkdR3pMpfuBlztQmKYTcGz3SWVkH7NLz06mTM6XtL25/N2
X-Google-Smtp-Source: AGHT+IGTkpYntHI3sqnOaO/hV2AWEXFCgSpZzDB29DS/W1nHuQlfVJNsb8AOM3fMUMCAsa0O2caxAQ==
X-Received: by 2002:ad4:5743:0:b0:812:dc64:e903 with SMTP id 6a1803df08f44-879dc86986bmr157324906d6.42.1759798800555;
        Mon, 06 Oct 2025 18:00:00 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.17.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:00 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 20:59:47 -0400
Message-Id: <20251007005955.1427990-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180002_135648_7DDB20E2 
X-CRM114-Status: GOOD (  11.82  )
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
Subject: [PATCH v2 02/10] tlsf: move kasan_poison_shadow into tlsf_add_pool
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



