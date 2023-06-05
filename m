Delivery-date: Mon, 05 Jun 2023 22:28:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoQ-00CCTo-2s
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoM-00011j-RA
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3shzOE20y0UHRTtyK2Op14BlwWbLPNY/wzSW06HTXPM=; b=BwQPMX9h+uUvRI
	DYaYnui3bdVaKRC0dBGUDTyjM0+y8MEI2aBv+ywI4aix8OnOrWZBPpY6hraNafNIpJp1I2qldsNHs
	Tm9vHVDgLBs3WfCNgQhNs35ztuP61tVgdVEpjRUMi5z5GsfjbfOZ4Wa7eVCwUSPmQYOD2PVVZwfX7
	XqlVeThjTKaW6UBYbskOK5hn4t5qHjtajTERdEvAvhd4essdWMB0KQCZyH0mAMegMzgEBhsOILo4M
	SmPD84mrmtp0dw3Pr181KOo4f6b5z7Mvt+AwUNNtvINwyXeGdcCJYZOWZptxfxBIiabLzabjbdCI1
	E6tsb96Ff0xU9IBaBODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnA-00GhDH-2L;
	Mon, 05 Jun 2023 20:27:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn6-00Gh7f-1g
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:01 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b1b2ca09b9so43519091fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996816; x=1688588816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3shzOE20y0UHRTtyK2Op14BlwWbLPNY/wzSW06HTXPM=;
        b=VTD5DhHlp8mm2NwWBK3/x+23KYgisGGALoQu5raVaQU7XpgreNOi/JoUEeYmO21p9r
         029U7+VGQZu6p8lOr7AoXGeHIIm7Vzpq9g7w4PuCj2goCC7EgaMru39P8C4JkRTtZtm+
         gv9IZTzn7bpSo7LRvPD94hgUQTWPMY5aStfwhiXBG3wW2lw7nc0VrtVTIDEFazQ1dCMI
         8ooVUW6fBU6AXpYSWnX0dkZnD323z3+MBRedOxm9CqWRKnADOETjst94yW0DpNwS874C
         RBCaPcGc6tnUrfN5o+PG9f2UDWVB5vi8vahh0tyNn4M3m3LkImFOs0yisXciMZXr8o7z
         6RnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996816; x=1688588816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3shzOE20y0UHRTtyK2Op14BlwWbLPNY/wzSW06HTXPM=;
        b=fhPMreAGM1wDrAsveoi0IVVDOS3SrNrj03rzWP7krIj6+ejjcJCqIFIpdj3VWmL3cN
         b9sCLRyjcEzq47nFRnzwVDhWN7RG9jcu7xfvR6wDF9Dh8Hkcz16Xv8jKZc7kWV4RrvxG
         ysDDw2cS8jB9NvNw/TVlpiQDXkS/s/YnW3u3GdAXm1A5XIEgqH5aIUekH+PaCyBPAqYF
         h8DItQw8iKqZqf8l9WQQPOqKXysJuQzpSn0H5GW5gWqYKHTHGpf7niV4UwS3RNvqbQS/
         m49pqFwk19RYol3eo/xQD7IJ1MaJ56gln4HFrc1l0YAAfKOxfkJqvT3mIKuPLgihPjH8
         eIoA==
X-Gm-Message-State: AC+VfDzvzAI9ZLG+cJz9f+Fy11uszpAty5Vw7IQLJ1bUKq8KIZwO2imB
	K1zr9Ff3Fw0khLL9x2RONXkWlJkN/gtHFg==
X-Google-Smtp-Source: ACHHUZ6PoePmxZPvoSJULmMZjgCH7EV4R1SFcsKqxeoDKsVeauM1GORV7WIYWGLi8ljos6OM816qwQ==
X-Received: by 2002:a2e:8195:0:b0:2b1:a3e6:1fa8 with SMTP id e21-20020a2e8195000000b002b1a3e61fa8mr186438ljg.49.1685996815716;
        Mon, 05 Jun 2023 13:26:55 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:55 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:39 +0300
Message-ID: <20230605202634.42175-9-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132700_583531_C4B8BB86 
X-CRM114-Status: GOOD (  10.86  )
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
Subject: [PATCH 08/17] MIPS: malta: fix GT64120 base virtual address on 64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use CKSEG1ADDR for it to be properly converted to the 64-bit
sign-extended address when building with CONFIG_64BIT set.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/mach-malta/include/mach/mach-gt64120.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
index e7d230655c..20ac4d94d6 100644
--- a/arch/mips/mach-malta/include/mach/mach-gt64120.h
+++ b/arch/mips/mach-malta/include/mach/mach-gt64120.h
@@ -12,6 +12,6 @@
 
 #define MIPS_GT_BASE	0x1be00000
 
-#define GT64120_BASE    0xbbe00000
+#define GT64120_BASE    CKSEG1ADDR(MIPS_GT_BASE)
 
 #endif /* _ASM_MACH_MIPS_MACH_GT64120_DEP_H */
-- 
2.41.0



