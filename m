Delivery-date: Wed, 22 Oct 2025 07:25:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM7-00AV6k-38
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 07:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM7-0001lR-E1
	for lore@pengutronix.de; Wed, 22 Oct 2025 07:25:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ylth6lhMCeafCcSCSmtJOsLPEuMJmSybPPhxXNbe51k=; b=EC+pRJ160n5cC7ivz/NDvseDRn
	KmJvJy/wNMIdGswIDJeCO86nv2uMtWOlzc92yvMO9vkXO3HCkIOBy5zvouDbXzJ8f8rvPB0814Ish
	tpgREfxg8OdZVeGpquQ4J3vWYxnpNpHRdAr49xjgHEbLe/X/OZrBQgzmoBD40biI1pnbGBcI7ZmYR
	qu3NIp4Hc46bKRASzVNpLnPx3+G8qmWKuYImwNKtcCCvIPbtlWI/qrHXnMWqWjJaEhdcQL7cq/ajM
	VnpnQyV3N3w6RZINhpk/Nfw9dPaKRrru7VojBs6PtMRMw1Bgzsga6doJVFyLmH0lR5UaiHi1voQGe
	k1HFqZww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLa-00000001WiW-22s7;
	Wed, 22 Oct 2025 05:25:18 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLW-00000001WhO-0dYm
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 05:25:15 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-7f04816589bso982785385a.3
        for <barebox@lists.infradead.org>; Tue, 21 Oct 2025 22:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761110713; x=1761715513; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ylth6lhMCeafCcSCSmtJOsLPEuMJmSybPPhxXNbe51k=;
        b=ds8R4b10mabtKZ556J7C1TajJuEJfcK6Xfc49WZY2bLTP3qj3v4CWaIoafW2U0RqR3
         lpzCyxXGB46aSa49s/oeIH59LhmKyuEYCai15wUGRfcR/ZNauAboKJ2s5Uqwy+EJvNyG
         G72q0hiOhthzotccy40hMDtFsvf7ih0mW0PVNIiTo/15Hhw7lUsspqAfaDGlQEwxPREE
         6859RK3+6xUqA/MAIFlBnMYU2rU8fKuwm7ijp0tDRkKVAmLe7itcHqMHB2zTxQBtJlj2
         v+FI0+53dYKOgpc92p9MYM0Ne+DPZSqnY28QAfZfoeRnF2VkYphKOf4E3YSMaKi9pGkz
         EqOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761110713; x=1761715513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ylth6lhMCeafCcSCSmtJOsLPEuMJmSybPPhxXNbe51k=;
        b=H+m3XuCI8dGcR3YoqSvrker+DH4+C71rr4qw4J7K6AdmFde5Q2YQwopGJqWfx25GFL
         OemEmgSUL64/fzJ/JlQVF76PMjLuoGsT7oXRo+8ZDvNUGELdIcA7ZO+giOHHObGjkIm4
         N4IUJws9+LkcpFmYKg/od2XQNUYsOI67tLk/0qjBjF3invM157193+rvqz5gv6zoFkEJ
         4CQBcucEw8s4FnJmjpyFuA99RQbKJAlZzFJYA6v31XJkrW1I3szpojfF/2aCg/vdu+Iv
         FobcZlwckMk8kqzNu095n9KJukNZVFlihHoVIn7dOZOFIDszA/Q/tnkBeSCetuzbgo5R
         vtqA==
X-Gm-Message-State: AOJu0YwxCNEgdCB6MvAj7DSCzPDKP6nma5g3WL3ksvfB5VLBks5Dc/Ah
	xLfj2SjosRFyU9LaaaAjxbtZVrWlPmHn3Txfb5pydGBTkpWVo33Y9Neq
X-Gm-Gg: ASbGncuC7rhMW3TtgO1wStqhtgAbswy7L66LpgFpiY5cdugiARFTCTobxQJLUqgVKjo
	PvFB77dbJNb4+Of382iS12Afby+dFERMNYO1OZJRIZkD4ZbFu2aPPGALrYrpwb5DQx2JgXpg2A1
	gzXd1LsFdHOoPC764KfHTtO/YDN7TF3S6odmowxf+wcvjZiMKh1vup6s5ZboBKiAuwyQlqGyhPC
	Rpotl/IQQP0K5x0XPT4STaMtjl5yWTBFyyq+ka3E9C0G9QAcCrqmRn2pLqnYiQ+k8ISgHC8J3KB
	zD66GnjEIHYJ7UoB5Pybqo2eUqOC6TPl5CQGuD2+7iPr01oA2fwAkWOi47LwG5YzU6sL5bSTNK1
	HxKvR/lAkRYQitvvvQ7+mjxVeDv+ZDb8S+dxqymll7KqTlyd7ita34RnEH4fbfIShfM5iEKWeVd
	1UOHyXnILD/R/tEklQGJCEbO6IsDAD
X-Google-Smtp-Source: AGHT+IG+14Wj/goYfXxXqW+HhP2v5iCWGkhU860FC9bS5n2pEHCTTtpqxdN1SiLWo9F8uPCg7W4SmA==
X-Received: by 2002:a05:620a:c53:b0:862:3e8d:e4fd with SMTP id af79cd13be357-8906f06c61fmr2499523385a.40.1761110712743;
        Tue, 21 Oct 2025 22:25:12 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:3b30:d6e6:3dc0:29f0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cc8d5edasm912895285a.7.2025.10.21.22.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 22:25:12 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 22 Oct 2025 01:25:06 -0400
Message-Id: <20251022052508.1368520-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_222514_201357_9D76E887 
X-CRM114-Status: UNSURE (   7.90  )
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
Subject: [PATCH 1/3] test: Containerfile: add qemu-efi-aarch64.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

this will provide the uefi bios binaries to used for efi aarch64
payload test.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 test/Containerfile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index c6c3c57596a6..3d277a147ad1 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -40,6 +40,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	qemu-system-misc \
 	qemu-system-mips \
 	qemu-system-x86 \
+	qemu-efi-aarch64 \
 	qemu-system-common \
 	ovmf \
 	python3 \
@@ -63,7 +64,7 @@ ENV LLVM_VERSION=21
 
 RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
-	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
+	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \
 	&& apt-get remove -y lsb-release gnupg \
 	&& apt-get autoremove -y --purge \
 	&& apt-get clean \
-- 
2.34.1



