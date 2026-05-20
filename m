Delivery-date: Wed, 20 May 2026 16:53:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPiJ0-001tw9-22
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 16:53:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPiJ0-0007U2-3a
	for lore@pengutronix.de; Wed, 20 May 2026 16:53:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VI9x1Y+MoUyc8H/fbCtLn4NcS3+YRbLo7bB5OWTXXFQ=; b=W6zzwb9W/RCQOwEux3hDEDDTw/
	o00ALP2jIxNlsMO3EK6rt5UvBisDSSljD1A0cRiTIrYcQi4AROnlFZnzUsZ1x8IGygUGPmSsk4ogU
	ep8UBM2Sz9qsrxrq83s8F00Z+YYdwWwF1a9bxXjFen0BWs2nEWPoXWKOjIS8lQBSeQ9Z/2EXY9/Hl
	Q2PaBUaqFdpE6siORndjdvyP0Xk2CKPEvKBMrMT11l0nXT0YDCbgRBrgncQf5nvaSx5irXymktKWx
	aAKwThEcBDKvNPH6DyzMhp/w1olsVmmawIRBSrOKaDyZqZN+AwBReJidxB8SUv904hWx56HAt6jtB
	0imsm3KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiHW-00000004sv6-49F1;
	Wed, 20 May 2026 14:52:22 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiHU-00000004suZ-2LqL
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 14:52:21 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5aa0862dda1so6486755e87.1
        for <barebox@lists.infradead.org>; Wed, 20 May 2026 07:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779288738; x=1779893538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VI9x1Y+MoUyc8H/fbCtLn4NcS3+YRbLo7bB5OWTXXFQ=;
        b=AP0esaE/I9un4W1PxY/AHZBn9N/kABraWdfjWhJe3iUQTuD8O6TfNxH7iUWwNlQsRE
         XfGvnTkFRw5pRtyQg3bZSMm3jJjy1DD+5k36lOp5RhfaocGgVHClM6imGeIacauS1YPG
         QSlEDl7dueisNPuL+wJx1QbgA4Kl5RFrWP62vF4KMQNcHNmW12/Fg096AE/BW5yN01EA
         UOlwmX64XwVwU+L7icBk4QS1wbHj0D1E0Qz/TjvPKirk8nRDV3Ob/CD4sFoBpbcuPpVn
         hDYYkZhKEDGmYj4nfH/14P8FWZTb8InRj3s8HXPDbMLRVbmuzlwQknDPCcLWouqqr59l
         W/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779288738; x=1779893538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VI9x1Y+MoUyc8H/fbCtLn4NcS3+YRbLo7bB5OWTXXFQ=;
        b=SMXWg2+i8eeqVRoly1Quk2pcGMQJl/LJx2rXgLNLZ3HLBuFyl4BuhjqBQDwd9CJsSA
         6d8o7UvXN25ec6SFGW56r1cHXpkfJfVxFM06qtlWt+NzrLp12iRjWmZeQ0fc6VPuqjYi
         RdgaI0dMvPH8WtEF6Y5Nxy0kQPO4E+swFdN9YGseNWnzvw1h46zm0+NitqZ3IEP0BPGi
         8wKM8ctaADYOS/iRfnRHwkh05RQ3+HU1PZhwzyXSmk61mGgvuhKpSCPhR121+EIvMWwt
         nsVplwsUDtJC2CHn6Rqmt1G4d7jeeFyufn1ig9zBJBrl+6yM7zTNP0tWwHnaKvQojcPn
         INiw==
X-Gm-Message-State: AOJu0Yz7PnYEf9PB5Qj0bai6+n3fiRWb9qYuPYeaYArjbZjCCwRnlSvq
	BHACZFScyu/irUH4SIe8K/OX7UNeJrCEri6huj7cKXRRJ3vBpfI3Qs6o5SLGavmIPZo=
X-Gm-Gg: Acq92OGMG2++meTYA4jiasIVDITJoNYRpCPphJ0dxxHjMGg6PFQoTfyk6CvNvLPEd4q
	j6thNAU4dzlX2QE8W0XeeVLj7cooq9FcxZxpaPedoVI6kOBP+HPXiTJ/1rGiYLiAFRoqXCUJa03
	eS4fmwJX5NNKklgaIIUaatJ89DcLWl6rjUkQo4QC2yPcfYkDkl4d3cW1ji5bmXB04tKcbhtKoZo
	VGMciFj89ozXQ2ljdvDJSuNM6aK+MuAgyWg1Rx7i/E+G8p5B3YRVuU2+HXhy9zODI97ZgoKWOSb
	DXzyD8lBUMq1jRX07S7HJceUivFpOhKePEHGhYJZ+Jvh8ubrC+ckuqUhUylhmnfoeKpozBCT1SC
	ytPTLWvWQyE088ymbNJkd+ysdS+oDOvBAAXSM1DUbjUXU6/wM3O7+NspVtonkYvP7RN9odDrIz1
	bcTg4ttRSKh4LPPd+iW9UdG9A/yy49zdNj23k0jS32y7Iumda4KQ==
X-Received: by 2002:a05:6512:3b96:b0:5a8:a754:f9d6 with SMTP id 2adb3069b0e04-5aa0e769b74mr8068641e87.29.1779288737866;
        Wed, 20 May 2026 07:52:17 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164ccd7dsm5065376e87.67.2026.05.20.07.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:52:17 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 17:52:15 +0300
Message-ID: <20260520145215.412167-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_075220_613957_6C2E4F8B 
X-CRM114-Status: UNSURE (   7.27  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] .gitignore: Add *.z generated files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 16f78e8155..92bddb81eb 100644
--- a/.gitignore
+++ b/.gitignore
@@ -46,6 +46,7 @@ policy-list
 *.dtb.*
 *.dtbo
 *.dtbo.*
+*.z
 
 #
 # Top-level generic files
-- 
2.52.0



