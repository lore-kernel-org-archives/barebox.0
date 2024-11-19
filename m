Delivery-date: Tue, 19 Nov 2024 22:26:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDVkL-003z3D-0Q
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 22:26:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDVkK-00027a-Jd
	for lore@pengutronix.de; Tue, 19 Nov 2024 22:26:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UNJXsKkuauPPGQXkgBUIyKz3zKNNJx3vNl0PsQdH/sQ=; b=tc7hpBlLmyu6HKSelRwXz72s2N
	2hZ2/desgM0fOSBE88pUdVS/J5Xf4agB78loxVTQAfA0nuz4BrCFB9JvF0BuVDP/TafeQeogKA5BX
	J6xMiBQH6tGmJC+E+MCNUkKueed6sZ8UysAgIH4ILPLa4B/8B0/hcW/1OAOoqFesbzp3/94eISE2b
	cTtpZHNzQ8qFV8NXxEaiLkTOdcVAjncSMexiYG90rAuZGIzASKi2lZvG2XKxULJW5/rXS27O7zO0n
	sCgurdZr+HDHhgB3lk5UVj49nYhohWpAfQlhHu41X9L9g23NkVfkYUqFOYBWsdhSPZ8H5O6zQm75z
	/BkTXKEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDVjm-0000000DoGO-2QUt;
	Tue, 19 Nov 2024 21:26:18 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDVjk-0000000DoG3-3Ajl
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 21:26:17 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso50414775e9.0
        for <barebox@lists.infradead.org>; Tue, 19 Nov 2024 13:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732051575; x=1732656375; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UNJXsKkuauPPGQXkgBUIyKz3zKNNJx3vNl0PsQdH/sQ=;
        b=lBoZLoAlv6g+9LlIQ6g5XHTMTHtsHIKdWFmQn7G3dvFiJkTEVKbOHmOzAbJQoM5j7X
         Jmiks9BQzveBUWE70UtI1ktAwvZicdZOMFriRywOoIdR7VraTdRIDzZ/6WP8g9keGKAd
         8I0jH4nHy9Tt2tsPOF6Yf6ZyrqeU5mFEPikXBJhHAxlxuuHvRCEMCsEXmbSQ9SMeNno3
         pNbJPDFPbOhvA4p3kzAbPeHbJ3TdOYqfNsWStcvTj8Haz2m32XBX3TTuEtTD39flp0+0
         xWegBlO/LHC/fDnjw7l1FVe+gl8rxXyybRpSDoS6niNCsqgNXxaBfNggzZZMZrechu4S
         cV6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732051575; x=1732656375;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UNJXsKkuauPPGQXkgBUIyKz3zKNNJx3vNl0PsQdH/sQ=;
        b=hsqd2IXB9EXSWTEYFQdXeqZqSIWp+/87SmaSDXDy9DBUrvt4wuGk+3OKQdtlGfu+8E
         CZrSdGOjX+had/ozztB+WZM/7RFivslP+0Pgbv+V+Jf9TV/zfg+bbv2uCXSruV3xq9Z5
         e0zjKppGwSdFieGn7n3nkIVVsyEtHQulcumeTzaWmZ3mlju2dGSxpoRjkjm/VH695yZm
         mXK9KVtsrQCZ7gJQhbmIXT5eU5eXlBq61WQhzQV/QA8oArK6ZFjSRDj7lwJP/7zm+LhJ
         Wn2iqRUN/ixw5Whsy6o+CmOcvNMOoZVTPnj20QFvSNB9UdytKMf68t6H1i9dCJQCsvBJ
         NEhw==
X-Gm-Message-State: AOJu0YyB85pp+VlWRMtiTFWydMI49woZAMb6+UxUbQH1WS7YFBqCpQRd
	MjT/fYqdekjNMA9cQ2zYPz8p9RqfT4kadd039S16Tq1lOCZ1BduXcojzUNRn
X-Google-Smtp-Source: AGHT+IFsv3LPfDbks7ovtSEwpo5EOwP2zwicHrPeFVfnQe0LtxiA20ot5Wk6JLMw15/2HkEIK10miQ==
X-Received: by 2002:a05:600c:1d93:b0:42b:ac3d:3abc with SMTP id 5b1f17b1804b1-4334f01548dmr4062055e9.24.1732051573033;
        Tue, 19 Nov 2024 13:26:13 -0800 (PST)
Received: from localhost.localdomain ([197.53.14.60])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da2946a3sm207204125e9.35.2024.11.19.13.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 13:26:12 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Nov 2024 23:26:04 +0200
Message-ID: <20241119212606.1668337-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_132616_809916_E852F490 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] of: fdt: fix overflow caused by fdt_prop extending beyond fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While parsing FDT, fdt_prop sometimes extends beyond FDT resulting in
heap-overflow.

dt_ptr_ok() checks a pointer is within bounds of the FDT, so we can use it
here to fix the issue.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 drivers/of/fdt.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 75af1844f3..69c041cb89 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -257,6 +257,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 
 		case FDT_PROP:
 			fdt_prop = infdt + dt_struct;
+			if (!dt_ptr_ok(fdt, fdt_prop)) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			len = fdt32_to_cpu(fdt_prop->len);
 			nodep = fdt_prop->data;
 
-- 
2.43.0



