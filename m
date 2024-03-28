Delivery-date: Thu, 28 Mar 2024 19:39:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufG-00A24q-2S
	for lore@lore.pengutronix.de;
	Thu, 28 Mar 2024 19:39:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufG-0006zC-08
	for lore@pengutronix.de; Thu, 28 Mar 2024 19:39:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfdwapEdwqOZbH7zdP4vGMYFEe5OvjpiqK4s+/9IrEw=; b=b1L5wd5CGa/vpZ
	ACZN1MpHrSpA7ZMmc/9PSZTIU2F31X0SieX//ghWNdNw7kUkOhUGRDJYVk420Q/6QCN+Mqqk/y3A8
	W6+GLU3xSEsX6oqsdiz/qxNjdKDQrvucoVkW8ZFArvWTKbTeeTytzQXFs32AvfC4lA5cM68wNbYdp
	HH0HqZe08zV+2KepLklC+jWgRReaHvEHnBHFmlw8gJu5TpSbYHaRcW48Ft7bwdBaUWfaO7q/6e2WZ
	fQDafrYvgV/lndEtqJAq8XeLoweka7aLQK3BpxWM7AyfZh56TnJByL6/UQU8DpuHYrSKJQ4vjdMFJ
	Pet1QPpZq4wJo5l+y5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpueh-0000000FD8w-34G9;
	Thu, 28 Mar 2024 18:39:15 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpued-0000000FD7r-3ZsK
	for barebox@lists.infradead.org;
	Thu, 28 Mar 2024 18:39:13 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-513d212f818so1385857e87.2
        for <barebox@lists.infradead.org>; Thu, 28 Mar 2024 11:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651149; x=1712255949; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NfdwapEdwqOZbH7zdP4vGMYFEe5OvjpiqK4s+/9IrEw=;
        b=KXt9l2vnfMm1o1I56TZDAJPK2SWQYEmXwQrwXA8aRqJZYBF88P4wk0nePuPiI2HTyx
         mPRchv8hRKHXhdvJ9HG+5UERKrvmz7+eOktgDM3LxY2aUc633t2rWcfv2vNKTcXr//pR
         x3qqha5E6b1uSQnko8dtEVZlfWWlAC4OMdmQnSXYJrkFVW6ca4rbS2qhTljbr0OhFSzx
         x8qN0JrYM8+PVQ46bS4aYEvuNs+XD51cNfCztsho1ytAwGdZxFx4c/EfWlr3g4gciEuD
         z1dWV2u/dbIFB+ZQbYEQKK1dHhxjIUZi/y36r+vcuCnNkkt3Jlo6AuemJ776kz93Guvw
         NohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651149; x=1712255949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NfdwapEdwqOZbH7zdP4vGMYFEe5OvjpiqK4s+/9IrEw=;
        b=WjMqXztwhGEjWvMXSEGEw57C4z261RWzwv/rhEehUTZUvn4mBQn+OS4ElmZGwTE8s9
         IMxjFGN9kwBW4EllZebq6YTPBxLlXqjSvhRbBk1MElqm9HRqbFxL/yT1R8iq/q37zBMn
         +3dt7yUyxAhiltqQu4eZb78I+hdDllWytJpPIGMkURkMPjLMVw5Yly0o98ztXI20+sGE
         PE0fs1zJ4b1D+1BdJyV5Sk1qVx7u+Mset7fdciUS1jlZFwsW1d+pjhCns39/+rZr/na0
         t8sqK2TzjVk1X9W0c9yHz/ZhsNJ2WDPJeWB5XWrqkgrONu8Jp+2Jxu+9OGQT/KI++1ta
         v2Hg==
X-Gm-Message-State: AOJu0YwJkS9TY2KAn0ZfqNZpxYPX8hhijFTxDpcAL0zs+AhamWSaNNmF
	seBJM/sJgSZ8bq/tVqO+6P5GBRbDCPwHI5KxIxw/Yg+4CoFaxiL+rVouyQd0sJN9Gw==
X-Google-Smtp-Source: AGHT+IEsxdLiMdjNPrsRBm8H4+CYuiLQe78rq7cQNHzLh7iGKhPTN0R0A0zYYZHNBSFuviYOwuXYSA==
X-Received: by 2002:a05:6512:20a:b0:515:c43e:19c6 with SMTP id a10-20020a056512020a00b00515c43e19c6mr196212lfo.23.1711651149192;
        Thu, 28 Mar 2024 11:39:09 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id z28-20020a195e5c000000b00513bd67f45asm308176lfi.66.2024.03.28.11.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:39:08 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Mar 2024 21:37:02 +0300
Message-ID: <20240328183851.3842-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240328183851.3842-1-denorl2009@gmail.com>
References: <20240328183851.3842-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_113911_910560_5CD586C9 
X-CRM114-Status: UNSURE (   8.35  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 3/3] mips: mipsregs: remove duplicate definitions for Config 1 bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Also reorder some of them to be more uniform.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/mipsregs.h | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 9e7d656542..0b618320ff 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -406,18 +406,14 @@
 #define MIPS_CONF1_PC		(_ULCAST_(1) <<  4)
 #define MIPS_CONF1_MD		(_ULCAST_(1) <<  5)
 #define MIPS_CONF1_C2		(_ULCAST_(1) <<  6)
-#define MIPS_CONF1_DA_SHF	7
-#define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
-#define MIPS_CONF1_DL_SHF	10
-#define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
-#define MIPS_CONF1_DS_SHF	13
-#define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
-#define MIPS_CONF1_IA_SHF	16
-
 #define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
+#define MIPS_CONF1_DA_SHF	7
 #define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
+#define MIPS_CONF1_DL_SHF	10
 #define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
+#define MIPS_CONF1_DS_SHF	13
 #define MIPS_CONF1_IA		(_ULCAST_(7) << 16)
+#define MIPS_CONF1_IA_SHF	16
 #define MIPS_CONF1_IL		(_ULCAST_(7) << 19)
 #define MIPS_CONF1_IS		(_ULCAST_(7) << 22)
 #define MIPS_CONF1_TLBS		(_ULCAST_(63)<< 25)
-- 
2.44.0



