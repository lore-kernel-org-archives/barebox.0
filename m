Delivery-date: Mon, 15 Mar 2021 09:29:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLibT-0000ad-L3
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:29:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLibS-0001qK-SJ
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:29:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Zxk4fGNv9aLs1AVHIf9Q+zSo37zkdsEes9Ob7CgNXeA=; b=XnRkWgrnYvDfsS3W9fZxL1hLlh
	YKzJ/Xx+Jji9KbJBDR19oREDZBUFv0Qanu/dZq20tKDJvefBRLvVOnIXPSMxYvqomD+FPKp+YejIA
	8aGpCFbktBDLiruJUaRbHl5iTSxVUL5+rZCYS3Iw8sN+/dKZGwzx7wNxQnDydSCSHkq0J8EIiEZMI
	r9CzsXkQz0GBoceIEwgqCiIQB00LRkDf4+ojj439WzZbYZwALWMBw/6J4eiAPatjwOCe+cDTfklDd
	8Qz9sowmLE44oyuweCQ5+4OCMOvL99hJ2qinTY4N4uyTjVTNtdAYwjTM0kAmtV35eR8Hr/uMI7he5
	SyrrRfrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiaJ-00FDvu-TJ; Mon, 15 Mar 2021 08:28:20 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLia8-00FDun-7b
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:28:10 +0000
Received: by mail-lf1-x134.google.com with SMTP id r3so47294390lfc.13
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 01:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DslkJahIVjSxkIax8KT4YtwFLLR0utOLKaqLvLyblVQ=;
 b=jJyfeQYvlQ/+bUlVGM76xKPUbMlOicdfEouJTAbSSyIBoyYfBA/6mhWJfoECxNrYS6
 6n/EnSijVLqqhWv7cIzkIUi56hbm+39BUqs8DKKW55BL+owLAyMLurjb0wmdDD2unBYn
 xgT3Mq7oRah7vl753KlJc+qOzY7VDSOLwxlrMUXeI7lmyd/BHDeqWGz0JKBrgx7vqx9k
 G0vON+UqcVuEUK8SpF5yPzCyrTL57AgZaWo4GkmSbQH7O1c2AhSRxmTIVSo0dvnozhsG
 DsAiLi10HNfqZ7Il5oSNJGReeyPyA7qyAbDp9aBAU7K3SAyNMABUpwhNEdmfc3GLk8nk
 cdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DslkJahIVjSxkIax8KT4YtwFLLR0utOLKaqLvLyblVQ=;
 b=Q9l/EVUVumX7Q2AyDce5wiGccMiQ1cA88ihAVcF4uXWzSxNkFZPgJgJNyhosq0nnZh
 oA0Jhn2IS7nx/pdqr0v0huGkl+HYQsdIy2XT9Os2W68Ghwb/EbRbqYZqJXPX6/PURxa3
 nYL0VC6/5ks7+30Mu84OllAlCkeCFt5vqBIzVkjj98FtJKmIzaf83Z/UMDTreRCS9vu4
 Go8aMLRTbIcpVoTAv/+YxU5/zorLlfhDhaELk4kneHFodjGjj2JSPmnFUgcdPHRrpSyo
 lVh94gYrry3qhmtyrrVXR4zVfb7J3g8G4iB75hnOckEQW6204ziWCJt04sTrRCX3G5pP
 OMDQ==
X-Gm-Message-State: AOAM531d/sdqHZW8x8QF/8RM8jQC4hQ84mzyOKbrecMb5HMbyKYK4Nl3
 JAgi0hSDEonC0qJh8ZE+pmGYd1a1tebgHg==
X-Google-Smtp-Source: ABdhPJxlzgcH6gfSxJTUJ/8L7mA1/ClxJeH5yujNJqTV3fXPp25g6GJSq/6+8JJpIWPxcCiVCBAOUQ==
X-Received: by 2002:a19:6b10:: with SMTP id d16mr7622157lfa.540.1615796887156; 
 Mon, 15 Mar 2021 01:28:07 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id q16sm2620377lfu.153.2021.03.15.01.28.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 01:28:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 15 Mar 2021 11:28:03 +0300
Message-Id: <20210315082803.52984-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_082808_667760_1206ABCC 
X-CRM114-Status: UNSURE (   7.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] bootm: add RISC-V image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/image.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/image.h b/include/image.h
index fa06476845..b593ae30ef 100644
--- a/include/image.h
+++ b/include/image.h
@@ -129,6 +129,8 @@ enum {
 #define IH_ARCH IH_ARCH_AVR32
 #elif defined(CONFIG_SANDBOX)
 #define IH_ARCH IH_ARCH_SANDBOX
+#elif defined(__riscv)
+#define IH_ARCH IH_ARCH_RISCV
 #else
 #define IH_ARCH IH_ARCH_INVALID
 #endif
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

