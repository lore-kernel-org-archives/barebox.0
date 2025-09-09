Delivery-date: Tue, 09 Sep 2025 18:03:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o8-0017ec-1a
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:03:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o7-0007qX-OC
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:03:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A18zYE0MFNBXF+HdnXKIgThvFhUn3rmoQEibj9pNUpk=; b=xR3KDPxuwaX/6uXced/6Nqme8l
	075hv9r8qChrivd8YIxqn2t3tLmA9QeHJZK5hoKP+m7/o9pmFtkmPPUAlRgke6O8mR2Ryp3XllRz+
	tFsRNzE83ZUPHq+gZd87qbiFnnJEQ14HSoO6h3YPyxsPEeLzm0G7E+qt9Nx519sessFaLokclCutM
	MBGP/LJblzPKkVk5weyYlzIuw7vX1OxwF5tNGaVlJ2z30FvcmUzBhRQWu1TOsAudW/VF5RkbUKE5a
	yqG2N3qg8YKDX7reG9AfUygJPHQbSpvxOaBaaN9IN03OyLCx+ORVIPM29oDnpdbC/XTau/FqXrvWZ
	eHf6wJQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nf-00000008NoP-1i2P;
	Tue, 09 Sep 2025 16:02:31 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFe-00000007KJv-0MCB
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:15 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b00a9989633so178333966b.0
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423952; x=1758028752; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A18zYE0MFNBXF+HdnXKIgThvFhUn3rmoQEibj9pNUpk=;
        b=Dt4SIIvUVdW3W2Iffekms9fCeyEbqCvvE46qE/fxT0Qas5Pa4TwCbbaKyETSFQ1Ku3
         5IugYHm3APc2fRTdDOX5MjnduYnRUuK3Cv7fnaBlB+IYdDE+dW+883O/cJRb1j/iX3DF
         yFwrquP1mt9X6qXyULT0m8nWpaM2Zrf8gPSq9b5lQ7pplp4RCBYJOhQz8vEETHF44BY8
         aTK5Pif22qDsy8iZZjqBQx5K/LWrHqud9e3ZpRkhqL5OQjBr1uLOzYJLDI/G1N+mI9b0
         zyguezfwEf0mtO4MxdGCyDxFdyBVL8Xof9M/5ep1ddEroQwlK9lbG/XIuytp3IY1mbg0
         q7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423952; x=1758028752;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A18zYE0MFNBXF+HdnXKIgThvFhUn3rmoQEibj9pNUpk=;
        b=OgBAhR27iZq2JG+dHhr4Rr7mtiSsYSl7VlUHgWzZiG0l/uYIM8FqkIbQjIBU73wB8I
         q3SQkDjEivW+yQ+Q9KVZynrd1BlIDlYTgdkhOvhN16gqRxtgjgq6Ws7taVq/crNf2OcL
         QH9i5r+1eBHd8d+ETzpGcTzBk3Nk0ZUt6hQ0j8+1XRLPwL/oKFF1lfVwam8nMb+F7xdX
         9jPhKPo4S7UKZogkOr9lmWd/7F9vCexZSPLN6MiNEXLANxOKvZxHPOFgoUYBzVy3irVQ
         MsWdGnbqi6J9Opq/Ys0Vim6OWpIQ0gER9K1ROoO8Ygb4q3dQWs7xpTtearLqhVyy03cN
         r1cQ==
X-Gm-Message-State: AOJu0Yzp5w90KZCTlh2F+n6II42t+ksmODpNTlZQr+E4O3Py2M4kK1CO
	+j466QO6YzFkBeVs0718y4DyK9BNC8+xpH5dF5zatQN1ShpZ967xGDremm2O02KxYxounY+FWrF
	n/kbL
X-Gm-Gg: ASbGncuB1ZsyB0iCe/0/tdzVp7NxvmHs8QqiRM6e49M6jjMekZP7mPbLXzedkNOWu1O
	fCHfM+w9sr02cOzpwhCG/lniqcGhw55a+/e3jZpZZcMn8/spWyhGimvw3jOoTi+fReSFJFsrWWD
	eEvPGEjFfxw3ErifzJTgt1B/64QaTsa3j5s8cMVSqSt0scEkakeuGzGXzXNaE/kOq/TPbEvMAQx
	6e9s5C2D0M9RoA3GEfzCSecz7tmf6Rlph99eJyKcnHqs/Av+d/uKO3e+AHUdUKoeT6CusCRiaof
	r4xtJWvo5/eybE9OOK95/s9m3FoGtwRNWA8DY5N0dEsJ3w8Nr6jibtMoWIP8eLYDxf7FI85Kq7l
	MGYmvABtIeK2KjdCOtD2uJy+nX0k/AJIZshNhAMsgirLCMEd6znuMCoRluRnIeP0AgQ==
X-Google-Smtp-Source: AGHT+IEuu03iwIc7tz6oxGMjq4vRHRlOO332xhrSUD7faEwDmCfr65goilwo4NCN8zZepvOMojqJLQ==
X-Received: by 2002:a17:907:a088:b0:b04:3cd2:265b with SMTP id a640c23a62f3a-b04b1dd47b0mr1201024666b.5.1757423951909;
        Tue, 09 Sep 2025 06:19:11 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.11
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:11 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:38 +0200
Message-ID: <20250909131843.2260573-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061914_151294_5D5E8D2E 
X-CRM114-Status: UNSURE (   9.08  )
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
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/7] MIPS: qemu-malta_defconfig: Use largest possible relocation table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the upcoming device-mapper selftest, enabling CONFIG_DISK and
CONFIG_DM_BLK pushed the resulting relocation table over the 0x8000
default.

Given that the target hardware is QEMU, RAM is unlikely to be a scarce
resource. Therefore, go for the maximum allowed to avoid being back
here again when the next thing is added.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 arch/mips/configs/qemu-malta_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 5f2b4470b8..e5bc8ff8cb 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,3 +1,4 @@
+CONFIG_MIPS_RELOCATION_TABLE_SIZE=0x10000
 CONFIG_BOARD_QEMU_MALTA=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="qemu-malta_defconfig"
-- 
2.43.0



