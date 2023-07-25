Delivery-date: Tue, 25 Jul 2023 07:08:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHG-008zss-N7
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004FM-T9
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ySUMDj3jN/bmd1YYEkrljWrazc2jREBU7PM3Bmygbc=; b=Cy9rNi6wLjsVne
	eTvEZgI1B+cKZI54bkWpKl96qTlFSfaZSzotBMsWrHggT5GQvUhBZDpa7fB38fHCEfolM3qFxLE7I
	4MY3p+vQzsNGkOVitJhnfYw++vWHKk0E5YkJqrsB9v0b1NQPCeWXNY2cB4s6vJd2A0Z4bSQCivnFZ
	R7spD8vpqGToJYx3QYALr1V8Tm2qxvCPfjr3OTRc0GrcljPCzLlerXgnwMOXMO+bJGHhWiQWQHi5g
	D7FcnAmElDSD6h5RK/Zykcf5AdU3UYQwDwSlHuXAqkUpAhmlZXAeVtKbf9v8Pg9TKduo/l9YA4vGn
	/quTvNctuoLHjmV+mnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG7-006FVt-1Q;
	Tue, 25 Jul 2023 05:06:55 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG0-006FNR-22
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:49 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-52229f084beso3089559a12.2
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261607; x=1690866407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ySUMDj3jN/bmd1YYEkrljWrazc2jREBU7PM3Bmygbc=;
        b=XTYbl+Px4dFdJw6RoRhyS9sdn6kE1J/WCIpgzyN0bl3ohKOA09EBJf65z1jbDT2Seh
         8VWd6Q2s64iz+YK6JzFiIc+V/7LMsrnT1ilPxkuK+AKM709tJpQPH2zuppq/5U++yCU8
         +p/DHmNZyrRjsD/2ekI2nEXglNDJ2XgyH0eoiTVW8Hb3Hc39sGEE2JvC1XmENlbsNX9G
         ZE9O4LpXvyvs/VEm2jzTm22DO6ksvhmtgYu5MNgI5qVUp27l4YyAOCqYWm9RZ1Xx/n5M
         lAIo9e9q3Oa8jibPXJcuePdmZPl79vm/qi85B9UnY2fPMgR5p/FPxva7IT+c7chv2lpj
         LuGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261607; x=1690866407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ySUMDj3jN/bmd1YYEkrljWrazc2jREBU7PM3Bmygbc=;
        b=aqJ80Gv8Ny5TINbyVbLi2209J8+zZrLb5U1NeyKdLp9dVEexsEvAYZvWIEnNj91KK4
         8I27t3Gk7C8lEIdH1zIfdhu76N6SvPKnc9lbNr8herhI+H7Kv5S3GOi+vO1xkCy9qjfy
         i3Xwk7OWHuM33+I9CChFsro+39vkkXUzquT3RZ+6fzd/Cba3FSeGt68skZkiALX2roJK
         j/Mo4573P9y1fBhkts/J4XussRvASGJv2ji31jd7QvVOfQVBNMlS421kKnYeAz0drx/5
         xRt6OS81+tXXuSNDIfxXQMJSFRkI1h+guTz+2Gd06YUs4aXGiwoKhHBvEvBrxzFKo2o4
         P3Sw==
X-Gm-Message-State: ABy/qLYMqNTLV1VG+gsr1uiMm09pQ+Ni6QRQEQAte2tHWE3IxZnmJlhI
	3jZhByNTNiIFxL/Kzy/69P/h2xEDe3yMtuP4tQE=
X-Google-Smtp-Source: APBJJlEUw9KHivkc7JANB+fHtl+p++fcaGnaR/6szF++kVQbmnKce2PWjV613OTdyOmHjorDzYYwMw==
X-Received: by 2002:aa7:c544:0:b0:522:3849:48d8 with SMTP id s4-20020aa7c544000000b00522384948d8mr2949404edr.9.1690261606954;
        Mon, 24 Jul 2023 22:06:46 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:46 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:16 +0300
Message-ID: <20230725050618.3451-16-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220648_670413_79539019 
X-CRM114-Status: GOOD (  11.34  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 15/21] MIPS: main_entry: properly set XTLB handler for 64-bit mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The offset of the TLB Load exception is different when 64-bit addressing
is enabled - 0x80 is used instead of 0x0. To simplify things, just copy
the handler code twice, for each of the cases.

While at it, also remove the incomprehensible cpu_has_4kex check. All of
the supported CPUs have MIPS R4K compatible exception handling scheme
(and we even hardcode that), so what are we trying to achieve there
anyway?

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/main_entry.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 99cd2ec846..237288a337 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -50,11 +50,9 @@ static void trap_init(void)
 		set_except_vector(i, &handle_reserved);
 	}
 
-	if (!cpu_has_4kex)
-		memcpy((void *)(ebase + 0x080), &except_vec3_generic, 0x80);
-
 	/* FIXME: handle tlb */
 	memcpy((void *)(ebase), &except_vec3_generic, 0x80);
+	memcpy((void *)(ebase + 0x080), &except_vec3_generic, 0x80);
 
 	/* unset BOOT EXCEPTION VECTOR bit */
 	write_c0_status(read_c0_status() & ~ST0_BEV);
-- 
2.41.0



