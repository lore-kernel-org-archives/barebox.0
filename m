Delivery-date: Thu, 09 May 2024 11:35:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s50Bw-004wnL-0e
	for lore@lore.pengutronix.de;
	Thu, 09 May 2024 11:35:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s50Bv-0003ve-HV
	for lore@pengutronix.de; Thu, 09 May 2024 11:35:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EYZUWtzHVX1CxOWdXqLcoWO9zYAwzSibPokKVBcOC6M=; b=wNb2zK6fuWsqbI
	zxyo9Nce8sV/Hgu2cuO2ZOaU2xGNiQLld6sUl6tGhnJ5RIoas0m87CxEWeiLdSKgq7VW0juky4jxF
	w8uK80EzI62QswzHTYdyEvZldtT5BMtgGJvrmYaslzJkxnaAtAb7uPqCEsySEYBK17wdRVuph4607
	NUXHHdThZtJp6QSV8XTmCpp0KhoQNrqgROCbPuvoU9FfaKSEkp9h84sLFgEUI4CwbCcqNEqPQnMD8
	f4jnAksn5foOQzxXnUoD85CrONZSW7B+Q2oWB0osZB/yg3zw4cUFh8G4Q6JPCgLImgevEYo4bBr0c
	WWu93ptkLlrdl7PK3btg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s50BF-00000000zVF-1aYo;
	Thu, 09 May 2024 09:35:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s50BC-00000000zUU-0sTL
	for barebox@lists.infradead.org;
	Thu, 09 May 2024 09:35:11 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-51ef64d051bso700858e87.1
        for <barebox@lists.infradead.org>; Thu, 09 May 2024 02:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715247306; x=1715852106; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EYZUWtzHVX1CxOWdXqLcoWO9zYAwzSibPokKVBcOC6M=;
        b=OTSafYyUbO6bjUByKbMUMPd7W5ieEMfpfI6Q0cjVGB88N3jUmjIIo9xYvaitw8iLq0
         Lkdb17HdVJTOykyxePFaoT2UBxRWggeJlQ+d6Vo5144H/pV+a+oZ3KeOw4Zz9LPkEZHL
         bKVZISbWeFJOutqUaGepcCcWb6VX3cp7QpWQEpOX5PKZ3xAvDUM3gIDdANhFysbEwNiB
         JXrxaoK73IQbtrbIz8J/UNCedr/RzHFNd82TatKnUhm1Uv9jh1h40GiyJrM3G0qzPL7m
         ZkHUUc/nJT3nhCqXclPQlghkp7pInV3mo/wCQOvg3qafEMr+r4FI5YnR9JrK8Vlg+8mT
         z77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715247306; x=1715852106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EYZUWtzHVX1CxOWdXqLcoWO9zYAwzSibPokKVBcOC6M=;
        b=SeJ8LAIZHR5/QnH7pXBYdwhmfXk45RRDBxaEcgtNsujeJYG30X1L8VBCEjPyp2TsTA
         znxWZK5ttL+JtuP/asqGDSHDaqgSDqYcrjdtjdOTIyJX9PCQtNWkvHae48ZIdD1BYRgl
         MnMxuFm+os1s01qJGTcwpEtLLnbqttSZNy0VdaCVcQF6qmVTz9x9TJfT8wZSrwsJhnbG
         HghYLjSoT/0CapyUDdpTbup2wFUyD/E0FqIKfbYdspKRGhsIMhclNsQHWliBk4fOET3p
         4Y+6+Fyw3hVJfyx0KQPwUTKVRXX1QJkGTPuxrBYyBhS4hsofho0ewYxB7t7ocDB7LIAA
         mICQ==
X-Gm-Message-State: AOJu0Yzx/h4B6gon7E33GDHO0K5K62ttg1TEEm61crTq59lqX+ZDagst
	kDT1/VmuyP1TokbxCWIa5/AXLGJUC9zmYThQfWl1WiQDtzSlbtnOdmllgg==
X-Google-Smtp-Source: AGHT+IHBXMMRad0bNFO+EcmBWagsHN6SU+zRuyEwRMyVada3Fm91vu2ffcpgUjWHWcqfWQy4kYgeew==
X-Received: by 2002:a05:6512:3e28:b0:51d:82a2:8d72 with SMTP id 2adb3069b0e04-5217c567d06mr4052087e87.40.1715247305460;
        Thu, 09 May 2024 02:35:05 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ba6f4sm224421e87.118.2024.05.09.02.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 02:35:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  9 May 2024 12:35:48 +0300
Message-Id: <20240509093548.52130-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_023510_270997_3919206C 
X-CRM114-Status: UNSURE (   9.42  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devel: project-ideas: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/devel/project-ideas.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index 4127b2556b5..8d6b5d6e584 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -194,7 +194,7 @@ peripherals to the virtual machine.
 
 Expected outcome is snappier and less CPU-intensive barebox demo.
 TinyEMU is extended, so the RISC-V machine is more like real
-hardware and tutorial is extended to make use of the new pripherals.
+hardware and tutorial is extended to make use of the new peripherals.
 
 This project does not require dedicated hardware. The development
 machine need only support a recent browser.
-- 
2.39.0



