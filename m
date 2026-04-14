Delivery-date: Tue, 14 Apr 2026 18:59:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCh6w-00C8P8-0g
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 18:59:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCh6v-0002nW-Lm
	for lore@pengutronix.de; Tue, 14 Apr 2026 18:59:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gb0bOsTZ9ybcLQORPkXWBWNeenxEqHbOrSFvinhvF0I=; b=WsmHFnwTwvZClM8B9GAi4qASCS
	3PNcQNqmna6mgIEek1G8LcOkYKeaT3sLRbgVfBxhLWL3nyos8g1nxm3aVCKhNCxM014HDu8W/ZyBK
	B8+MDOl6og+ltGOB9jZWg6aT+vWSH3O4xmvK1Ss6js6MV4ERsu1nA8+lxrGHDdM3VV+0KkJZ/2X2K
	Yon0Td2rIONmydyNZSRseIBDoYcV518Tn8AnozeOAV1GC06knjDhJUox8/uDJqS+vYGkJnk1sChiX
	/Q3bS2qBssxyaW3RVuxvfxW4oJqU93itgINbTXuanUThHaRkhUfnVp8AGb9Z9utzYYyi+cSUdIrVO
	ZukcQJbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCh6J-000000002bn-0Jjo;
	Tue, 14 Apr 2026 16:58:59 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCh6G-000000002b2-1tdg
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 16:58:57 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5a0fc5e2c59so5572356e87.1
        for <barebox@lists.infradead.org>; Tue, 14 Apr 2026 09:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776185934; x=1776790734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gb0bOsTZ9ybcLQORPkXWBWNeenxEqHbOrSFvinhvF0I=;
        b=cmvh9GwJM2lXTp9d0p4FHRyEUQpzHVm6/xDZ72Jvye5r9ksIIzRlU8a26sAab+TEqJ
         8TPm/BOpGszbBHOTjqUFcUENVp3Vx8Hqdi1DUlbLb33Cbi/WzsOVODdVv8915RaukK8M
         2hhjEq21FCODwZNW3QWo8xRP/IeuISIPioC8i1gkMNPKLNRG/zXxlJvtn24U6REDBv17
         oWSVhNSgXnNC/6mxuIOWNt2e0EqbvKEER72vXmCWRgsH2U30aW9c6RXe6eMpHq2G9F/x
         k2qM7OGc8xLAlsdDX11pCp6V8D7qw8Ou/c9sOsolhkB0Gzf02IkeQNL9O5qh862Fluzz
         mxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776185934; x=1776790734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gb0bOsTZ9ybcLQORPkXWBWNeenxEqHbOrSFvinhvF0I=;
        b=dNeUhLXjURGHN6sTNaE15wAJZVKQ4U+mC+mC26Q19h10QEh510n/7StLcOfuM53w+G
         Gdt6g1vZV5UQ7aN1wla5X6DtIx3fq6sMrXllUb99rH5rTb31CB+Gqs0eYbdrd/WiCIcc
         43JKXVOi7B7EbVFz02VL9IjpXJZ913M/kJLNz+RBZGyqUODRONvLAnEsl+6vjcujcBQN
         n63V3zji//maSNt8ccREAi6WSDAt/bMMz+1O9ksDzUcPNnYMre8IJOMBNtptvU3hUEQG
         4Tvx2KsEKeoSZYa4KZ27l2M04du+4D0xYTkG93/hmqjJXjymKS3DVc7Pi5U+lj7CRWru
         4jtw==
X-Gm-Message-State: AOJu0YzQ1ArI+0yZbLJs4XeoKYr0gPZJjockYLGHtQKLn23cABibp0xY
	aayoaPBa2611t4TAqNKDSeWMNcGxwZBgNasmsxqc+syx0XEOWuaJtW4ZdcDu+w==
X-Gm-Gg: AeBDies3uTaryrQQh6lWq0J3eyQkXoxVw1r9Aysz92l19MVDL8uCKuHZTCNU6oTdVOL
	YuScY9N6Ny0FC+EKQdW2TFMBCjngTwMRau2ZwtmWwlb0xwCM45S9INRDYIwufrwyg/sTPaHIfwd
	YGb+no8yRjbyXG2YoALGDBzhC2FvfmFqe/A2E3u1R6dwya72NaoTtH0OcghZFQCT9kvEBdUrvhO
	QgtPmkIhu3GILklQRYmd5+XZMKGC4azgANB42O794iwlWT5V3JvzKNtyv154P1d4SOs/O9x6EWy
	kU+ZIJ8gTs8abh58Bqttxrvx2f83QdNZ+/qeG97Y3uRH54FyqrPRi+e5Cz7f9ooHJn0VLBoYN77
	+2PO3QjquPg0P5Irn1b6wCI0IOq9c2xKNnxylbwqSmb2/imR3zJe0uje/erotyqAImEqY74vMFR
	oeGy36OB2V6oPJGsJUZxQraibMWm0ChXY9QEZYujjkykFibYpw58xmucEqcUvvMRcoTXwGiFXKs
	7UJHQ==
X-Received: by 2002:a05:6512:3b0c:b0:5a3:ff48:f7db with SMTP id 2adb3069b0e04-5a3ff48fa55mr2327193e87.34.1776185933589;
        Tue, 14 Apr 2026 09:58:53 -0700 (PDT)
Received: from nixos-ac.lan (h-176-10-144-156.NA.cust.bahnhof.se. [176.10.144.156])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee86778sm3323565e87.16.2026.04.14.09.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 09:58:52 -0700 (PDT)
From: Anees Rehman <anees.r3hman@gmail.com>
To: barebox@lists.infradead.org
Cc: Anees Rehman <anees.r3hman@gmail.com>
Date: Tue, 14 Apr 2026 18:58:12 +0200
Message-ID: <20260414165812.194029-1-anees.r3hman@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_095856_499968_87EE59F2 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX7: DDR size detection off-by-one in row_max
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The imx7d_ddrc_sdram_size() function passes row_max=15 to
imx_ddrc_sdram_size(), but the correct value is 16. This causes
count_bits() to return one less than the actual number of row
address bits, halving the detected memory size for any i.MX7D
configuration with 14 row addresses (e.g. 4Gbit LPDDR2).

For example, with 14 row address pins (R0-R13), ADDRMAP6 disables
row bits 14 and 15. count_bits(15, ...) returns 15-2=13 instead
of the correct 14, resulting in 256MB detected instead of 512MB
(single rank) or 512MB instead of 1GB (dual rank).

Fixes: 2639f77c8a45 ("ARM: i.MX: esdctl: Add memory size detection for i.MX7D")
Signed-off-by: Anees Rehman <anees.r3hman@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 6dc92e90fc..05c355accc 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -642,7 +642,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
-				   15, ARRAY_AND_SIZE(row_b),
+				   16, ARRAY_AND_SIZE(row_b),
 				   reduced_adress_space, mstr);
 }
 
-- 
2.53.0



