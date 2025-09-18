Delivery-date: Thu, 18 Sep 2025 09:45:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L3-004Nzt-2M
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L1-0001ob-U3
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nmWe/rB3op5p6FHOUmWW6NIMdfRJG92oVgv679iwnC8=; b=qLAW1hgAowNrJX+xbjiN449gbs
	1uwzRwZoZtWPtC1EguvvooJeE6PPWdYlzQgHPeAWRfqFueDgclXApY38FQAFcvFQHJRZvzjIJ8c9o
	oNUrV3psSLXVgoAcRxMN0cFu8fY8NJviSiDcSGTcesEkL53gFuo+v5J5laRfLkgdRg4IbYK7hkvGq
	a6YXhLlSjOKbrPDaM9xbfiEHQGbUYICEnwkK86rlBlU2+cbzaFN/eGbBhOr7HIHEimUtDve4+ph6h
	QTkWLoKqZPugGbW+Vt9azJLZ5rPGZkfcFrn7kCHVrcykVXHesNcnK8yXS+yGN/+LfnjFO1Ot3yQ8+
	zElU0cNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KS-0000000GaVm-2szk;
	Thu, 18 Sep 2025 07:45:20 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KN-0000000GaP9-3DjG
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:16 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b07e081d852so115480266b.2
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181514; x=1758786314; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmWe/rB3op5p6FHOUmWW6NIMdfRJG92oVgv679iwnC8=;
        b=AhADQBub0/CaksgTf2YDNiGFkId133CRw7rBfUVFLktRKHwxphJymkMVYSyfvSmieP
         0LvNf/O4Iwrl3QrxccD6vcu/goqRocwUEo46VSUYjy3Nia4r32eJnUTf3BVFHhX8a6q7
         6RqWUqBH5uPzPbWPTD6utsc/coy4S0L2Tvepv7DYVLtq5HEjCuCzSiQQdjpqw9X1yGSL
         o+f2aeiWHcIgrTV27TkwN3k4CzT10+yXgef1qhhuCx0nE3XqYnCI3CYNjk0YBwj40Isj
         Rxwbmd5ZJeQDut5/TOT/iYZk4ybDTIemjsSmW0ytjqfb3LtP0cHYkd94vEYS4/5Zwhvf
         CISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181514; x=1758786314;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nmWe/rB3op5p6FHOUmWW6NIMdfRJG92oVgv679iwnC8=;
        b=Ox07FH7nx2CTlu57sEGPqkGFx7gVAUkU1NxS13vvgXHMd1hcSEfodrKd8o5TDfWsAl
         82apB7scCcZPiqWsQb7hSzxS2TQl5qKhlfk1bT/X3faKteGPrav05c+asLDmdNYjxUwq
         yw8jeyAplBOkf4KwPi27QBaKMf2lgWaHevrXacWcZX1LpejTgCXxpSlWSdFzU+sUkyVj
         7Xzz7biR5B3lCocBxFBa+5DbmRvUEUAv5rPKvJL4V55/t7w5vQzDZmpBQno+hRsFljWP
         nuC/+F/DWUGxj9vp2A5tgmGgo0Cs5eaxKFXeuxsYMo7pvLUKiXLRkIAr/KZUzjEbN4y8
         hurg==
X-Gm-Message-State: AOJu0YxvI+mKUoEupAo8YbHgbMWzjRl4JhmYWJ84Bm9Sx7pvV2cO4DBK
	SY199xFP4q1LLXLCkuk9oX+Lh/LKKVLTRsGMg5TqsPOLc2V/hQehL36jn2Zo/khgAZOG1HpEIDe
	kdA+v
X-Gm-Gg: ASbGncuNnR6In3qCWOhojsMAQ1dTXbLP+u8Ylwd0jgRx07CWe1seXQzs5fTmlS4hzDF
	eNQkAz4wkY3mNJ/CxKglzg2DFe9aEgh77k5SlXmPIhYARyrNS597AsmiJpuRMKPny7MYS/BbbEC
	ZJLnawqEA7s9LbPmAHaNAURZygyHDpWbsI6d3wB1lUPL5wIDtfPQarLposXxx7DFJY4iuD1kCU3
	y5oiy0g6yxY1IVo/vHzbTJxFbjwnxWM8Lwe/Tpm/BgkK0B3lTrOdGDj3mJvdbjPhjEeHWE+GWuO
	JNGnn1wZezcyvD813pTNmY4xTUZFR9Tp4BNmjZ3kH+PFp5HlcYCDEtVqpKP8du7IEsUidYwrReF
	qDAefQXEscgKHLU5uOfy4IHMgSQyBOHUSYopLFAHTs7r7daVFnPm13qelSX8YyvmRvFpBGI8XVK
	1eodgRbQ1NunOzvMwwWd0=
X-Google-Smtp-Source: AGHT+IGzB7UqJjDw4KI5TbTg3pvxeu+H4ymBQrs8YQzU2C3Nw7crNYjVQbeRsWlBj8sjUIR1OortoQ==
X-Received: by 2002:a17:906:6a17:b0:af9:2e26:4636 with SMTP id a640c23a62f3a-b1bb6beec4emr558344766b.32.1758181513912;
        Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.13
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:20 +0200
Message-ID: <20250918074455.891780-11-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004515_831231_18EAEC32 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/11] ci: pytest: Centralize feature discovery to a separate step
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This avoids the need for each step to (re)discover features. Start off
by only checking for 'testfs', but this can easily be expanded in the
future.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 .github/workflows/test-labgrid-pytest.yml | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index adec3defc1..6918ea1b98 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -64,6 +64,17 @@ jobs:
     - name: Checkout code
       uses: actions/checkout@v4
 
+    - name: Determine used features
+      id: used-features
+      run: |
+        for i in ${{matrix.lgenv}}; do
+          if grep -wq 'testfs' "$i"; then
+            echo "testfs=true" >>$GITHUB_OUTPUT
+            exit
+          fi
+        done
+        echo "testfs=false" >> $GITHUB_OUTPUT
+
     - name: Build
       id: build
       run: |
@@ -83,17 +94,14 @@ jobs:
         fi
 
     - name: Populate testfs
+      if: steps.used-features.outputs.testfs == 'true'
       run: |
         export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
         export KBUILD_DEFCONFIG=${{matrix.defconfig}}
 
-        for i in ${{matrix.lgenv}}; do
-          grep -wq 'testfs' "$i" || continue
-
-          # Just use already built dtc
-          export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
-          exec scripts/generate_testfs.sh
-        done
+        # Just use already built dtc
+        export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
+        exec scripts/generate_testfs.sh
 
     - name: labgrid-pytest
       if: steps.build.outcome == 'success'
-- 
2.43.0



