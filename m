Delivery-date: Fri, 23 May 2025 10:53:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIO9p-001q2I-03
	for lore@lore.pengutronix.de;
	Fri, 23 May 2025 10:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIO9o-0004fd-Gc
	for lore@pengutronix.de; Fri, 23 May 2025 10:53:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1tfo/jizH08YcDX2LWyc90+HRkn0NbocUuK1UYvr+nQ=; b=M9vRa/vwSvGBqvD8jr0YW9DwqC
	jogyYd0pquYZzXDHA8G9qOfxuJMbUrIq4uIMtQBfXdRdxaBSCdXnXz/a0XUTT87HL7ZJ0D4TTKdI5
	p/KQPfBjmSaabHZfg3NPfPc0T+FUu1LZlb7fKMuMY1X+nwdr/eVP1oAurzLGSdulwGi2+rpo6BFl5
	5W0HW7CfcYX788T1CYpcOrCDG9cA16Qf0bjRkp5AaC8raa/aPrnIQ/MKdG8Th46KMSJQ91HVc+ZIr
	Lv1qxNt6ReyqDO0pFDRE+cWa+ZpvNKqv75omj6rBG9LMS7GxbAg2OEmRV/Fsd6Xpeytnyx7DQ0zxx
	afE92Tsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO9a-00000003Md6-1Wwz;
	Fri, 23 May 2025 08:53:22 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIN4y-00000003DTe-2oGA
	for barebox@lists.infradead.org;
	Fri, 23 May 2025 07:44:33 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-54b0d638e86so13275340e87.1
        for <barebox@lists.infradead.org>; Fri, 23 May 2025 00:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747986270; x=1748591070; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1tfo/jizH08YcDX2LWyc90+HRkn0NbocUuK1UYvr+nQ=;
        b=KmUZALxozQJn/vj5LBNcrRqu17UOURdazSwRRyPTgcegmc51HmDy1YvqSFMP6nA+pw
         mcHrNh+Lj3Y0Ek5miCjJuEwIECQ1gtjmCP+BHK9iF1foZtljGvP1sYUwxBZFynfhP1Bd
         N4cA/FtGcKR8vnHN9yoe8uxprhAzNh3IFS2ssKE3fhxkWyiA/fu6t6eMmJob16bXXWV8
         4SgO9yfI7qVppReJiQT4wXc7d93FoW+XRYbTrX5LpFmf1vbDVr36Y9yyayXT4+0GP54U
         nYH8513gWGoceHjidNyoZ1jJTV5kR8uunzoQVBvZjCaYMvy0PqnDnI60SCwMtvuUBrmB
         jwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747986270; x=1748591070;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1tfo/jizH08YcDX2LWyc90+HRkn0NbocUuK1UYvr+nQ=;
        b=pnnfzk1T1WyHuzl1Ea8room5LCVuhxgYcqpNKvKbdzqn854ei0gbADWZ2ymbuGaaPf
         ExfQq+svqci3xrsl2ScooJlDoYnj88MIvy0lKTrs5edAbSmwr2+lBU0d2havSVRwLxlt
         L4pCiWvldwcEMCO66vV+VLe8dALtTNaovOusRoXV4jN78pFgL4UZqY+jPW5XZQOSuZkX
         hIrioj0suWVRaHvW3IRk4h5pS0jW8SCeo1DevrWOdM7VofrO0pa3jT6xp1AbsP7c3a3b
         c8MFTvq78VkSqqWZfikYyoVll6ZJN1OTRhUsR5wlecEFDE694g4i7VTfm29BckYjvdwD
         jdVw==
X-Gm-Message-State: AOJu0Yyy5tHM4m1s3n2r4eo0S27dB1pIRDmQ+h3x+lOg30rBO08AjWz/
	SKmZfBfvGh8gcSZtyraWgx9M+oQvOpRoBFhHe3If1D1NQfSKlykVTyE0Vc8ZNT0D
X-Gm-Gg: ASbGncswiWteGX1PM7HZaa3Fnjxv5Ep7LF+kXIcK4ssqpHTScI8y/SuSHpe8y/jZFwI
	CMxHSUUB9BLCCwG9EimddBOyOi8PvJSWE5SjF53Gyt+QrwvrgYwSbIbrIQtsJGmoSv86lqobcHp
	/03Avkt947NNKXpW8AKK7IxOvucGmrIkfGR24E6NZx3BJ8LDvDbEf4LClH43BAdGP9f6FSHBYD3
	3kWicrRtegcTa3gryaHb0BpifaB7AfVgSj1hUKLOjSKXH++L9n0R1lH6sdS/ma5T1D9inErMddr
	deQprXtWoC6t/+Rc+TbfrxqEX0fGlaIVO0+rXgC9WgqkZ5Ec4V+imeecdK7/cCYRToRRk/xwnA=
	=
X-Google-Smtp-Source: AGHT+IGB2HXXPbwyLh+L6jr8zwr86H9nOkUzvzk0BczdgPBkLKmY6kWSn3Rv37NeC9c4gOPLAs0HMg==
X-Received: by 2002:a05:6512:6307:b0:54f:c335:13c5 with SMTP id 2adb3069b0e04-550e990071emr7443163e87.37.1747986269789;
        Fri, 23 May 2025 00:44:29 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e702bde3sm3719855e87.162.2025.05.23.00.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 00:44:29 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 23 May 2025 10:44:19 +0300
Message-Id: <20250523074419.24899-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_004432_709351_FAC3581A 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] at91: xload: Fix MCI instance selection for SAMA5D3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the result of sama5_bootsource_instance(r4) instead of raw r4
to determine the MCI instance index.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 709bf05487..fd3878269e 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -218,7 +218,7 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 	if (ret > ARRAY_SIZE(sama5d3_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sama5d3_mci_instances[r4];
+	instance = &sama5d3_mci_instances[ret];
 
 	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
 	for (pin = instance->pins; *pin >= 0; pin++) {
-- 
2.39.1



