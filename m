Delivery-date: Mon, 11 Mar 2024 22:40:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNk-001Wy8-0l
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 22:40:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNj-0000pI-JI
	for lore@pengutronix.de; Mon, 11 Mar 2024 22:40:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p9y3PUt0GcNgJss3t9Y7dD2b27aBSlGGyRTSr+bod4=; b=mcNCjBf5UUeoHo
	PPPXg6JB3PgNe1g8z2kEDRg5aTDnO8THltmTh636ml/39X3i2EfVmAg8I3BEANYtvf/CEGHNb1bci
	J3l3COjPLXbIGIKM71Kaxna/ssnM0uz2FjHsD/8YQJmqa9ZEnTfuhBuuqwwK/F/4CODjDY/k+E8+d
	kYo4jSIB3x5CcPVHRlnA9Yz9jy6BwLks/1PiHdtEaERbQxhBrNq8EcfozwbB2Gh/t7Jpj83amTK6/
	1ZhNGBTvDcYpvNe31rEI9BdGwtzBFgA1gc8ZAeTWLwQ1X2KwUImhOhc0IM+dFlEAUUoW10K8t6Lxq
	7SszTge04sDImrlaoHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnN7-00000003Hsa-3YCb;
	Mon, 11 Mar 2024 21:39:49 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnN0-00000003Hp3-2Jlu
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 21:39:46 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-513b1c69cb8so1061650e87.1
        for <barebox@lists.infradead.org>; Mon, 11 Mar 2024 14:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710193174; x=1710797974; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6p9y3PUt0GcNgJss3t9Y7dD2b27aBSlGGyRTSr+bod4=;
        b=BY3rZ9HPgTfOr/RbT1xU8UAlu6N2vBG1+GVhIKSxNcphA5DnKKpJ8gHcnZ1ooO0YWg
         6o++HuJ5Z6qGPsbsI8GYv5QaJul2klGQm0kiEPrn42b+X3th4+FWmB54l64to9Pz+2gI
         3G0V6T88P2YR8quqNB67Djo/CWn1FFggPaPR6CjScaGaCto+FV+/sUL5hcRY3Q3uEVGX
         GWn7rtS5WWyFbbTmEUyEubHijYLdXf8sxB6KxPl3YN+zZDWBATyr4upkyV1xERojmhwy
         DehOhoULQ8Fztqgqo8Tf0IX6rG8igQKBrJVrb2GzhFtpt16fOS6lLATh8GEyqEQcIIaM
         6v+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710193174; x=1710797974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6p9y3PUt0GcNgJss3t9Y7dD2b27aBSlGGyRTSr+bod4=;
        b=cNLebA8YD5nIBxan14gp8dAvyUF9xlcOdR20iXxhBFnHrw8yHZE0+4A1yl6OsGFLig
         Dsbi6czddkPmqs1w6wGqiKabJ6cHukQmBAixJlYKtR1ueP9vxfaOsK/4P2xvmpM17EYL
         YpYA56/ukg0lyU1E6AaMz7idXeQQ0RRozuNFcUHEbH9c9ilD72y0iO7H45yXsd5dprxW
         2XBAw9Nl2MOyvwtYhiuDVGb34tuEf/TZENL8Nx3Ga468vXy9E9CX1TmglLcYYmoUOR2r
         rIPoJejwoB7pSQ/hRB6GeItkGSvpAv4YHVjLqRQTvaU0zcJ2peDQTn7ufiEAPGxKRHZ5
         YmYA==
X-Gm-Message-State: AOJu0YxAZkVqvEy6hDzkpBlXNutfdQofn0BJQqkFGF/MeORl4Umh5OFj
	9k0E11fHB8DWpfS4w12/vmuWOSu0NQtbPzSJlJGOHpMDEJBYhm78AxIb3cRXnlw+Qw==
X-Google-Smtp-Source: AGHT+IE5v2PUiGFv8gIuU1VEj/30+uap2JwI04XPMHEEdq0hnYRKwwJFfOh3OyEKU02nQmqo3zKMxg==
X-Received: by 2002:ac2:4ac6:0:b0:513:6632:2f62 with SMTP id m6-20020ac24ac6000000b0051366322f62mr5149907lfp.7.1710193173417;
        Mon, 11 Mar 2024 14:39:33 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id v15-20020ac25b0f000000b0051302450df3sm1237958lfn.148.2024.03.11.14.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 14:39:32 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 12 Mar 2024 00:36:07 +0300
Message-ID: <20240311213915.584429-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311213915.584429-1-denorl2009@gmail.com>
References: <20240311213915.584429-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_143942_892191_0CB8FC4B 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ddr_spd: add DDR3 Load Reduced module specific data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be used by the DDR3 SPD data printing routine and is needed for
completeness, to cover all of the DDR3-related cases from the original
decode-dimms tool.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 include/ddr_spd.h | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index a96d01df85..415fc88f63 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -264,6 +264,40 @@ struct ddr3_spd_eeprom {
 			/* 69-76 RC1,3,5...15 (MS Nibble) / RC0,2,4...14 (LS Nibble) */
 			unsigned char rcw[8];
 		} registered;
+		struct {
+			/* 60 (Load Reduced) Module Nominal Height */
+			unsigned char mod_height;
+			/* 61 (Load Reduced) Module Maximum Thickness */
+			unsigned char mod_thickness;
+			/* 62 (Load Reduced) Reference Raw Card Used */
+			unsigned char ref_raw_card;
+			/* 63 Module Attributes */
+			unsigned char modu_attr;
+			/* 64 Memory Buffer Revision ID */
+			unsigned char buf_rev_id;
+			/* 65 Memory Buffer Manufacturer ID Code, Least Significant Byte */
+			unsigned char buf_id_lo;
+			/* 66 Memory Buffer Manufacturer ID Code, Most Significant Byte */
+			unsigned char buf_id_hi;
+			/* 67-89 FxRCy and MR1,2 Registers */
+			unsigned char fxrcy_mr1_2[23];
+			/* 90 Minimum Module Delay Time for 1.5 V */
+			unsigned char min_delay_1_5;
+			/* 91 Maximum Module Delay Time for 1.5 V */
+			unsigned char max_delay_1_5;
+			/* 92 Minimum Module Delay Time for 1.35 V */
+			unsigned char min_delay_1_35;
+			/* 93 Maximum Module Delay Time for 1.35 V */
+			unsigned char max_delay_1_35;
+			/* 94 Minimum Module Delay Time for 1.25 V */
+			unsigned char min_delay_1_25;
+			/* 95 Maximum Module Delay Time for 1.25 V */
+			unsigned char max_delay_1_25;
+			/* 96-101 Reserved */
+			unsigned char reserved[6];
+			/* 102-116 Memory Buffer Personality Bytes */
+			unsigned char mem_buf_personality[15];
+		} loadreduced;
 		unsigned char uc[57]; /* 60-116 Module-Specific Section */
 	} mod_section;
 
-- 
2.44.0



