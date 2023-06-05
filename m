Delivery-date: Mon, 05 Jun 2023 23:31:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Hnk-00CFdP-HL
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 23:31:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Hni-0008QX-27
	for lore@pengutronix.de; Mon, 05 Jun 2023 23:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iaa8idp7FRWH4VCrMyXGKPYgXNiKfJBB7cFss5bQgjg=; b=3wYiFWscEXH/Bp
	VO8COWnaEwzgenWfaEtBxIgBfC47dSn2unSkhuER2k7hgyfQEfk0/TxJrc3C/oBQWyZWRtx1pPyF9
	OJPfqmoo0wei8J0PTk/Ra/qFFKYUF1byYO6y/I81rcf0qXqzOESNiUtH1eK6fw5HCBMVi+kYKsxsO
	30hwJyC4etBnwsoOI5iughGIdxJWlaDcjBxFisc4HJtrcXrB2/UaPTmmoys9HRURZNy+LPfpIQkNF
	bY2EtnnmSB1gUHyXe0hv/oOD1ebc382zvq35rMr5oop9XHkET7Zp4DfLwd2QP+8xQ+OnXfks6KW3X
	lKkPyilRpHzaHv513H5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6HmQ-00GrCY-0J;
	Mon, 05 Jun 2023 21:30:22 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn8-00GhBQ-39
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:04 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1a3fa2cd2so63580051fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996821; x=1688588821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iaa8idp7FRWH4VCrMyXGKPYgXNiKfJBB7cFss5bQgjg=;
        b=RIdSZWUvJhRVH8Uv2TEifk1vqiMykyLyaGdy4i+1ajOTr2QujBm4K4Q2S5tTgsLQJH
         5XiEhaX+3yUzSypj9zzwgjKfAeHhPpgqGZdeSga8Xzz/64eJvOd5ARkvoHfpsnz9hWDs
         fMJRV7cD6040deZvY3CpoAqvBd32s/7NWrqbXfBqPFQtAMRi84d9j4XUeeyjbL9dW3pg
         llj01Gx8SoPgyfjy5FpbE1qN6zcuCx9NDVCWZ/pgq5LHrWskjqPGhi57sGKtiv5+4szQ
         WE08C7jsNF08tjzXbPXjRREoNBGEqC4pgQiinT8TWgfdjshxrAhMQUX6N8E4s0hplKPC
         6Afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996821; x=1688588821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iaa8idp7FRWH4VCrMyXGKPYgXNiKfJBB7cFss5bQgjg=;
        b=PeEyK/s3SW8MpRuyGU6QJfSBD1b5UVyaKE+LrZjdfPzPjokBBDj36w1YMHLhGnuzmo
         IFZ45KhNf3T3Z5chCDJ8vwBYmfi5oef4reLZEN2soNvrsPs4rf9FwsHsVv5oN/1lThQx
         hRFKnZcIgEQ87668h6Li6NmMmHBACaLFZ5MMeZNNLsJTXbxUzcpTm5f76uJkXDx/XKPu
         d5Upqr7FaUd9Bg8t2sVyvTqs6iMx7EUTD5NKOHcyYXu8jftW8au21An/ReZwTad9emTH
         syiRZEcjlrzLMl3a4E2X16sIXr7s7gcCb5l/WoQ9ZwbJSlAFX9Wn4o/uK9heHaZpkeSE
         lneg==
X-Gm-Message-State: AC+VfDyVk7igCnMlzpHb9SPUtovTFcRiHrzp3yF9wmW7Vnq719YVE24S
	1JkdJ8hTgpyo05pGu9zxn7ON0aHKV4BI7A==
X-Google-Smtp-Source: ACHHUZ6qniEp2+GZqvxKgne5NY2eUmW0UJgKrksgGPvCkT18cTISc+nriYqT2ASb4rSdpQZwluFKKw==
X-Received: by 2002:a2e:9c8e:0:b0:2ac:8090:630e with SMTP id x14-20020a2e9c8e000000b002ac8090630emr201019lji.28.1685996820946;
        Mon, 05 Jun 2023 13:27:00 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:27:00 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:44 +0300
Message-ID: <20230605202634.42175-14-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132703_019656_9B97D27D 
X-CRM114-Status: GOOD (  15.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/17] MIPS: traps: fix passing wrong sp when returning from exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This code seems to have been working on 32-bit builds by accident.
However it totally broke on 64 bits, resulting in "restoring" some
garbage into registers.

The reason the code worked on 32 bits is this. When we are entering the
barebox_exc_handler() function, we are passing in a register the current
stack pointer as an argument (which corresponds to the regs parameter).
On o32 ABI the space for arguments passed in registers is reserved on
the stack by the caller. So, when we are taking the address of regs in
the body of the function, we have to put this argument on the stack,
into the first reserved slot. However, this slot is located exactly at
the current 'sp' and thus the address of regs happens to be the same as
its value!

On n64 ABI, however, the arguments passed in registers are saved onto
the stack on the callee side, so we end up with the wrong value being
used as the stack pointer.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/traps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index ff0a54af8e..45694fe7ef 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -173,7 +173,7 @@ void barebox_exc_handler(struct pt_regs *regs)
 			"move\t$29, %0\n\t"
 			"j\tret_from_exception"
 			:/* no outputs */
-			:"r" (&regs));
+			:"r" (regs));
 
 		/* Unreached */
 
-- 
2.41.0



