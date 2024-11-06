Delivery-date: Wed, 06 Nov 2024 16:37:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6H-005ZzO-2P
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:37:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6I-0004CG-EP
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:37:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvUgRWG0vRHEzyVZ1CzumzKwzpTb2ooOm+C5Dvv2CNk=; b=wdX2zjOyjj+EG5
	2iDR2RgVWOGBTuk0oHZFH5TCkFap+hofJQxWBn2eHX8tjd1A9N6nqVEidzmy3jnONFrvt3hJ9HB5V
	daTxYXqsj3aXmMEZc0jftg8IMeLL9f3acFcM9sWIr7VXbbpxNtBltrCXVPw7F1oVnspDVCB8PGFi2
	8oOP0yei23tYgjlIvSRGl1hpfDa91vNYl2GRHONi86uE1MSEmfkyJG8bEFl9yPEOyKZ6gxC2INeLo
	s/Dq9+omXxPu2IZ8x9jPQXcqM1Q9YOy0Vl0yI6z3sEPaOigPHB6G7U2W1vbcTugmxxG/i302DiZgN
	Ybu0j2jdJVXG3NT0C0kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5n-00000003qZB-412H;
	Wed, 06 Nov 2024 15:37:11 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5k-00000003qX2-1L8y
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:37:09 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-37d6a2aa748so4119115f8f.1
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730907426; x=1731512226; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VvUgRWG0vRHEzyVZ1CzumzKwzpTb2ooOm+C5Dvv2CNk=;
        b=j5O9UhXJ1fMtk/BWLjykAfNOVoeyOmaFgwu12x2djFax0HfPEQZRoNcgW3mxGeZkIO
         bDQj9T4fUsOC/wZbfAdf/pvlBdvDFV1wLZ/LojAxf2BLuZuhKAgWZspaK+Yq/R13o6c+
         TGSncDn/Lzl+AC9Jdos9wufwpd+kNPmqxIOs/jXqivsXqhVpugiYtUET6+yovQhm/Tgs
         ddaQqdK5Ijbd5dniNPrDGC/D1Ikf+Gc9Lre2Wi681Vibl3xZE028BUYbBy8DBl1h3qrJ
         dfXC2roqEQLmhXnkHtsGki/L+QvJPlm2UrsYD7ZvDVWaY3rkVOprlVySOrxeAxjUVV07
         5c9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907426; x=1731512226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VvUgRWG0vRHEzyVZ1CzumzKwzpTb2ooOm+C5Dvv2CNk=;
        b=GgnxiSyLRbcxedV6OrfD9Z8c4MBn07KZ3sMDj7kj8/bOqmb2h2LTkhSCEfGTcr/E7i
         NX74dE+moHpQdWZsgZmJJc9p7T0ZXZeVGE0XZ632qXadns+nlprhvW/n0QlwS/n0LAmt
         fYrYeylKa7tv9MSE/36uyROB2KRQPm2UlBAB2wb6O7L189BgZ1cn6+YoJEQuHZlBU0YK
         c60fUCpO5vMhNwpbpJtDzDH1K0fbFTK7aUHmDPEQeEWkY46vdaqEMj3DqRbN6XMp51OJ
         ZFPGhSoqyoNKfypq0tXjKfWN8gcQf2KExXaTLFXzGMLOaDq55HzFBBdxBjvPsYocxYCK
         /ApQ==
X-Gm-Message-State: AOJu0YwMP6qQ9o2j4O97p9qVkqbPWPB+Gqjs6u0wNby4j16NLs19nra/
	HhyPb2AaPbn7zCmxmR1pIsBML/UlVmqFf5VnfzV85Uq5nxs7K2L+WfmtJe3hpKg=
X-Google-Smtp-Source: AGHT+IHgweHbQm7WYYBd38KE8J5xiTWmw18wrtZEYr4yWqi3m1pESc3XCLdoMWZnefSFFaE/K6hOVA==
X-Received: by 2002:adf:e19e:0:b0:37d:4a68:61a3 with SMTP id ffacd0b85a97d-381c7ab60famr17449153f8f.49.1730907426425;
        Wed, 06 Nov 2024 07:37:06 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e5cbsm19608925f8f.80.2024.11.06.07.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:37:06 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:36:59 +0100
Message-ID: <20241106153702.858977-2-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
References: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073708_383612_E3BF4CD4 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
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
Subject: [PATCH v3 1/4] mci: add a busy_timeout member to the struct mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This commit extends the struct mci_cmd to add a new busy_timeout member.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v2 -> v3:
  - Fix email author and signed-off
---
 include/mci.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mci.h b/include/mci.h
index cd01e2f992..f607ef1b74 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -471,6 +471,7 @@ struct mci_cmd {
 	unsigned cmdidx;	/**< Command to be sent to the SD/MMC card */
 	unsigned resp_type;	/**< Type of expected response, refer MMC_RSP_* macros */
 	unsigned cmdarg;	/**< Command's arguments */
+	unsigned busy_timeout;	/**< Busy timeout in ms */
 	unsigned response[4];	/**< card's response */
 };
 
-- 
2.47.0



