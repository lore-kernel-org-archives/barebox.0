Delivery-date: Thu, 31 Oct 2024 10:28:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RTz-0032pT-0E
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 10:28:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RTz-0007lf-Mn
	for lore@pengutronix.de; Thu, 31 Oct 2024 10:28:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NB7tVD01dW1PdEG9amHQnBgRKVqFPeBGcR3asOR2Mag=; b=hwH93TDy4xZ9chxJOJBS6odVYE
	3NYBHedB2LKEBjdcJrzBukrouab9R13UrEHMk4HYqlmq2nyLdGo82LMJ+cKi0iuA40mp/oD5TuwKb
	3tmL9Kpxei7oDGwftqox24WYT62QOhHfXz/TkBRgnHumyT/Nfjsw34rZ2wwikYiC3nEH6F48gIG0V
	tj7f+hHZOathbiPtWXiAafwbbGZIk+SUwNa17Qi4qpzSdwkXtJ0N6ctEwIzJ5kEihGtTMtzs4XQbc
	i5iZz3TkQc3tUpieKDyBDty5reBOCHmDGH5+JsZsd0Egltil5KaDD4BtG7Dg4FSnbuqzT69uWjrtd
	W6lqfJsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RTR-000000034rn-3OKZ;
	Thu, 31 Oct 2024 09:28:13 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RSl-000000034p3-1apT
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 09:27:32 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-37d47eff9acso459707f8f.3
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 02:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730366849; x=1730971649; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NB7tVD01dW1PdEG9amHQnBgRKVqFPeBGcR3asOR2Mag=;
        b=FyT3ix9v7D/LY+lnjHtnVb1uzDOzmoaXZiyANJYH3wo5Sz6EwoKrNQY3prrnwi1Asz
         P0Q/Y0oOzClu2HgMiVjZ/xMep2cAsdAmhthq7f113RldRn2meeoaAIdU8wNRJX7UetYG
         Har743jza88JZIgIneoW72DLONZIqtaMA1teBN2V5uLteWXm13PtnubIRv2wHSyA6mq4
         CKgIieb8Py75gCUumHWe3IxEVe7rMe8g/cJkCu0KVXt/+O42jdihhUscB3SV5DJm7Ucx
         lFsthvjqNYs8r2cpwREs2ADHDuxr8FiEzgS2B4mrmH+cmsv/kOzZVy81tyFlNq+AB8fW
         wUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366849; x=1730971649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NB7tVD01dW1PdEG9amHQnBgRKVqFPeBGcR3asOR2Mag=;
        b=FMdgXVUH23Pn2V5o3GlkSF9I+kW5CERyNKwr4KPDjNZwLj7x8LpmFRZNmW8JXCaVTS
         TIOBrH37vX+C5/Iu0jCEslfpeP6OltXBL9jJKDvYnlLbBSMkB2ozyx9ZvtUdj9m/JVpN
         I/ioj0YbcbOHzqsSQCPTUv7k4IoK+vV4xj5wglC4NUULhPSH7an6BHT11m+c/Ih6akNl
         W4P1bM/+vyFNv9hZz+6v5Usg4JDwSJXPwigT5vHEGmBDumC0lbtJqmyGT7mEJywRlHs4
         1BPam3826JAzY89+xXVbtkH0IQy48u/9bGHPB4R510CYlhOiZRhkgPAlq5EhMlst+H1H
         eXQQ==
X-Gm-Message-State: AOJu0YyV8kHDv3b4SqFtTf1gh3MgF3GnQJY5TKuDUqRFPN46Q/FcCayf
	B9fm2bzogvw5pa2Xg/cV+ry87xcETV943minKOact+U3bMQxeW8MhblqulpR
X-Google-Smtp-Source: AGHT+IGThOBoMy4j56dVBAz5XSl0LqsX9s7RBrFmVMFDIJVSQyVOB2geSHlebTBtMwgd1/vVtyZWfQ==
X-Received: by 2002:a5d:5705:0:b0:37c:cc77:3e72 with SMTP id ffacd0b85a97d-38061163c83mr13917764f8f.33.1730366849272;
        Thu, 31 Oct 2024 02:27:29 -0700 (PDT)
Received: from kaliss.. (82-65-217-21.subs.proxad.net. [82.65.217.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4d82sm1538825f8f.45.2024.10.31.02.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:27:29 -0700 (PDT)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr,
	sebastien.bourdelin@gmail.com,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 31 Oct 2024 10:27:18 +0100
Message-ID: <20241031092721.763280-2-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_022731_441513_35721952 
X-CRM114-Status: UNSURE (   8.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] mci: add a busy_timeout member to the struct mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

This commit extends the struct mci_cmd to add a new busy_timeout member.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
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
2.46.2



