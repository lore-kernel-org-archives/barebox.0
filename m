Delivery-date: Fri, 12 Dec 2025 06:09:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP4-00AYQD-2E
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 06:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP4-0000ei-0Q
	for lore@pengutronix.de; Fri, 12 Dec 2025 06:09:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vmt5+GCdwKvMsc08VS2N2L8CrAR4qALAGU8lJ43orjY=; b=p3MB93oR6Nphi6FGuNlp9I2xN8
	MabE5kDZLTGSUfU6LfhIR3AuvObUXwvYwbU/U6yVETtX59b9pQdn8Rg7KRn6VIMpURHF3M0fpPFG/
	kA6j3W9oDBYsNtdbEQM7pXk6MXkgT5okPsksd+7HmrOMmNvtWXuaZR8re9lNdNcvJlqNSP7RvF60a
	dCsPbtlaMlxBdP7ucM5gtU9vBJwdHBFZTfO4T5oL44jMtRRD85czZFWwsZ8Ca0lLZfSdEEOM/zgkE
	3MCsN55RGHfvJQbl5md4jTbhtmsvqcNTJqKj8snMxME+hRMt+gpgXDruF1GpiBd6Y3hLN76fB3FKR
	Rutpw48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOT-000000005wO-0eFO;
	Fri, 12 Dec 2025 05:08:41 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOQ-000000005vC-13Dh
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 05:08:39 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4eda77e2358so7422911cf.1
        for <barebox@lists.infradead.org>; Thu, 11 Dec 2025 21:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765516116; x=1766120916; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vmt5+GCdwKvMsc08VS2N2L8CrAR4qALAGU8lJ43orjY=;
        b=ifeW5ftnF4TNGAGphSdvitEdPs/lus5B9n4NBd7R1MwcckzJZtTrqWusCK9W9+NVmW
         +lOUKzcXSxQAujhlLhKtbtMM/IEQUrM9QN50KoBg4TfL0GWsl8VFAuQLi1jefWsLKdCY
         egaKR4YN5aNItENpk36j/JAxc4cvqbJYXByaJIvwI0R01qSXtVA6rIZfHFP4hBalr8/B
         sl1fuw87p9PK65ySGdAAMFYuIvZRnEYW9X8CXrdWVy0yFOIFadj+FVgLoynVjACs3sdK
         WVE/Hs+3w5+a8+uhcw3KhSiZNUYmdvLmPsY9eRwwsj8F1+otyPKblP1IiwIjf3kHpvff
         5TZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765516116; x=1766120916;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmt5+GCdwKvMsc08VS2N2L8CrAR4qALAGU8lJ43orjY=;
        b=c920glz2gcS17oyAijy9ijesD6ph2yXrNjm/0dQVLvwpDnbdcVzwpHsczoiVj2h/EV
         rvOJ49Y+7nVdQmlQNPgKfQgr53ahmBh8V/qZAJAGfY0KgUqysW4y1NRn1FeSudmgeivT
         ortjSOSW56stE05jyh8ndKbVokz+8fpuAD7pNZjZ8w3TJyNgACp5mGvO4c4kFBLCtzXt
         eXLHaEduEW9GdQJPrKP5hYOzjYHl27b+B2QITvz5E/jKFMhP/9nxgNtnPNdmmJG0jkZp
         DLBbDytYaFxxHmhNdyCZvs/rdyELZyUzQ+/5BQugYySy+LshM7cG/KPJLUQpq23mtZbO
         3elg==
X-Gm-Message-State: AOJu0YzMJkABlrZtqwJfjH01dMp2VvDLfcOVjOTmkFN07gjym2k7EHlC
	hBr/fm8zwNqWZuMgdSykcH91kYj8Dl9twjpqZe8VTt5Dkpkdcb9lgamS
X-Gm-Gg: AY/fxX7WRBH0Ya+NsPddUTgG0iz93ulbEx5fVHURYgnvOhw76rZwIaGndfqorQ5fFa8
	P9iUbye6UMWnhnWnzTxUZSD8bt8kqLTkZqfQ/bmryz3051Bfj0YDduviVowOe5ogUmbxvgcQ3fJ
	gXvheick/u8sT50JAdjbAqITt0j2uCHSji2sqGPsM2P7EEeOM7TrPnu4YsHhLOjQS0eq7nq5tR6
	sVy4UKEYe+9mQcpUJykYQiLSZSdwiX44O5V8pWKZUDAkWCWqEP2Mgwx7aedpHnt8Y17PNPd6lnr
	TFjQPB5TV/BGI6rNLhb8m/XwUMNHQmX4ZElS6fFpQVDW+lC0wtnUDZiXOKxDHw1XD7b3zO5Ww/P
	b8b85usqDulSDLvIg5VHiJ5jUOibCefB8GT+g4EEG67xUqE44NvaUDdpKVHqJDmZ5pkN9YPCpQZ
	o/YNHy92QgBKc=
X-Google-Smtp-Source: AGHT+IFQagIFjQVAPrkt9STkMNJWR0620xfK32VIIU4nfpavKN2sAd8rERqWZkQCLVkX6aCJ6lGsaA==
X-Received: by 2002:a05:622a:2b0f:b0:4ed:ee58:215 with SMTP id d75a77b69052e-4f1d0538c38mr10752411cf.35.1765516116143;
        Thu, 11 Dec 2025 21:08:36 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::3a34])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm33486341cf.21.2025.12.11.21.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 21:08:35 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 12 Dec 2025 00:08:20 -0500
Message-ID: <20251212050824.1273837-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_210838_322436_76E2B5DC 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] test: Containerfile: fix build issue related to apt cleanup.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

We cleanup the apt data after the second install group otherwise we
we have to do an apt update.

 => ERROR [ 3/10] RUN apt-get install -y --no-install-recommends lsb-release gpg  &&
wget https://apt.llvm.org/llvm.sh  && chmod +x llvm.sh && ./llvm.sh 20 -n trixie  0.3s
------
 > [ 3/10] RUN apt-get install -y --no-install-recommends lsb-release gpg &&
wget https://apt.llvm.org/llvm.sh    && chmod +x llvm.sh && ./llvm.sh 20 &&
apt-get remove -y lsb-release gnupg &&
apt-get autoremove -y --purge        && apt-get clean &&
rm -rf llvm.sh /var/lib/apt/lists/*:
0.240 Reading package lists...
0.258 Building dependency tree...
0.261 Reading state information...
0.266 E: Unable to locate package lsb-release
0.266 E: Unable to locate package gpg
------

 1 warning found (use docker --debug to expand):
 - MaintainerDeprecated: Maintainer instruction is deprecated in favor of using label (line 6)
Containerfile:67
--------------------
  66 |
  67 | >>> RUN apt-get install -y --no-install-recommends lsb-release gpg \
  68 | >>>      && wget https://apt.llvm.org/llvm.sh \
  69 | >>>      && chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \
  70 | >>>      && apt-get remove -y lsb-release gnupg \
  71 | >>>      && apt-get autoremove -y --purge \
  72 | >>>      && apt-get clean \
  73 | >>>      && rm -rf llvm.sh /var/lib/apt/lists/*
  74 |
--------------------
ERROR: failed to solve: process "/bin/sh -c apt-get install -y --no-install-recommends
lsb-release gpg \t&& wget https://apt.llvm.org/llvm.sh \t&& chmod +x llvm.sh &&
./llvm.sh ${LLVM_VERSION} -n trixie \t&& apt-get remove -y lsb-release gnupg \t&&
apt-get autoremove -y --purge \t&& apt-get clean \t&&
rm -rf llvm.sh /var/lib/apt/lists/*" did not complete successfully: exit code: 100

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 test/Containerfile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index c9e11b45985f..e322fed15727 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -56,9 +56,7 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
 	device-tree-compiler \
 	u-boot-tools \
 	yamllint \
-	yq \
-	&& apt-get clean \
-	&& rm -rf /var/lib/apt/lists/*
+	yq
 
 ENV GCC_VERSION=15.2.0
 ENV LLVM_VERSION=20


