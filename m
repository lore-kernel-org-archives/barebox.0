Delivery-date: Thu, 28 Mar 2024 19:39:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufD-00A23x-1w
	for lore@lore.pengutronix.de;
	Thu, 28 Mar 2024 19:39:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufD-0006yw-1H
	for lore@pengutronix.de; Thu, 28 Mar 2024 19:39:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3f/qMJTT3HelQ6/4q1U+rsxYaJUnV3M+1YzxLmRQ6k=; b=4uC8Ll12V9LEMM
	gzvYVXW9JH2ElHRFV0bPKhXfmbxLbUPI9g9tw1NXMNbDO5xDd/OdFPhWfXnoaXR2wgS7S69Qbg2sq
	f/cruUQhdsNEB9U5mLzTwFYSlquukQ6m7QGniPFdjttfR258je+wV2MJ7ZJ4nB2Nv1Vlk+4oW+BJM
	AsGxUY+n0oOjf+6rIzM4LOAPIlliII4wGAMcUyAyRx0Tvrfqwkrmh7wiveF/h8ysaW6ebV2vpp5WX
	D8G+McpytSAL/mWZcD6YFY/F7LuRKuTXLeFsEo3z7cFKjCccBfTBNAV3J3UlHr+FXl1nNDm+j86Tq
	NOJK9I9V98nK7jI3GTpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpued-0000000FD7y-1FIW;
	Thu, 28 Mar 2024 18:39:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpuea-0000000FD71-31Xn
	for barebox@lists.infradead.org;
	Thu, 28 Mar 2024 18:39:10 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-513d717269fso1436784e87.0
        for <barebox@lists.infradead.org>; Thu, 28 Mar 2024 11:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651146; x=1712255946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x3f/qMJTT3HelQ6/4q1U+rsxYaJUnV3M+1YzxLmRQ6k=;
        b=nJ9HE1XOQFJ6ekps1kAmk3t3C0v97VtDugZuB+wThve3vywj0ZejGir+rmgPQsAJV4
         2Jo89Ei6QHz7Jt7kuB7gih/AtLY8Yzpqrg4d9vhNgRjzMVku2yH9pxGfiAQ9gPU2v3eZ
         QBipsOG/mlUB5xJZkrVy30SI3PurXPtZO9qBbJu8b8WUHYhvxCuiBT8ucLL3ES7P/nzg
         m4ix6Mnsyst+spPqKhfbansRRcqbLt+2mf+xvotO+grhVlyehBBfIGx//Es/Tnskhw9Q
         XTuFMT6aCyI4ybLcXPjZ3jgACqVHcxGmhfUguPxfzEA3/EO2NAyICLBQuJ0wOxVPovg+
         Ofng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651146; x=1712255946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x3f/qMJTT3HelQ6/4q1U+rsxYaJUnV3M+1YzxLmRQ6k=;
        b=EyeEMLUJP9PwRTH7QIX8xnMeyhgzlhUiCd6L9hY01GvPM1Z7TV4vGZUobBvrqnP6sr
         0H/YabtbauxS7WvHDcipVuH8YKyr41ZVXlNUceodHBUFibm5FdfVu+OUZ+kE7gU1clJl
         0rDptlKC9eFXVRkxV2Cd+kDNB6C54GVGiSYMLycMwaPPjMShX9eZTM5K6idANXQdgE2p
         0wN8Z5tLB+1CvPhEFzw6g9ENwa16/a4EvNttSlBp7x6Uo5stB7qA3Me7n6KsU8k7NyrB
         ozXfjmzpbeXm/5wutjHT2sUgeCp+F87ELdndmkvrTz1l++ysjun4nrAutjwWALizub+z
         WljQ==
X-Gm-Message-State: AOJu0YwokHuGQljzmZshiaJlPKECSBtktuVq9V2b8jCLekh134JYbsSh
	IGF0XI3Ngo6gVRSz+ZocGNlWE9sCjMjab5aDb2bFjEaXoAWqzc9FGDMBc+qF3s9u7Q==
X-Google-Smtp-Source: AGHT+IGTknHQ2HWi+rqbZ3n52WiL8oXjKDEIeNe02aIXRloul8l+4k9JWz5uK3PoDH2UhGgFWXTDvg==
X-Received: by 2002:a19:6452:0:b0:513:c658:799b with SMTP id b18-20020a196452000000b00513c658799bmr146392lfj.55.1711651145663;
        Thu, 28 Mar 2024 11:39:05 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id z28-20020a195e5c000000b00513bd67f45asm308176lfi.66.2024.03.28.11.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:39:05 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Mar 2024 21:37:00 +0300
Message-ID: <20240328183851.3842-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240328183851.3842-1-denorl2009@gmail.com>
References: <20240328183851.3842-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_113908_778826_4ECD329A 
X-CRM114-Status: GOOD (  11.10  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mips: cpuinfo: fix cpu name output for unknown processors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise it would output <NULL> as __cpu_name global variable ends up
being a null pointer.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/cpu-probe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index cbde43a595..47c9c671eb 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -17,7 +17,7 @@
 #include <asm-generic/memory_layout.h>
 #include <init.h>
 
-const char *__cpu_name;
+const char *__cpu_name = "unknown";
 struct cpuinfo_mips cpu_data[1];
 
 static char unknown_isa[] = KERN_ERR \
-- 
2.44.0



