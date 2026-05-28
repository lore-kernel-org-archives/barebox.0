Delivery-date: Thu, 28 May 2026 14:18:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZgn-004jeq-1F
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 14:18:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZgl-0003mL-Ac
	for lore@pengutronix.de; Thu, 28 May 2026 14:18:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aPL5OsFQ0NSyfQU97v8X38FjTxpkWVhnHmABB3j8qOU=; b=AzvwBmgpCYu1x0WAi+5McPhxP2
	aGIkDWakNS0FWRfaMBQsnRCrTXVmxm5GlDYUgPY+wQdEmrwNVzikseEz8dCU/hjo/3GOIztFRYt7W
	vr0572KHbiuJWy5N+Ytz/orAfsEowTAePhmTvTI6jEMecRbmIozQ94T0wNXaXQltCgBB+qHTvi2pu
	9s7ksgAgFfO/Y5T9SBvLde/fhMdReHku/NVkfKAapZY8A1O4cjuWXs2hgwDOAy3qzErnt7EKgIziQ
	LuBTp3w2Amv9niL3QwBOeaBwcSPaZrXRP3ldAoaML+VwRjPEtk0rl/hyOgWYWqF05Y2qlZ1umplXq
	lzdiIqtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZeQ-00000005hsT-1mj9;
	Thu, 28 May 2026 12:15:50 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZeN-00000005hrp-46Ng
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:15:49 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5a858881ad2so15786534e87.3
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 05:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779970545; x=1780575345; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aPL5OsFQ0NSyfQU97v8X38FjTxpkWVhnHmABB3j8qOU=;
        b=h2YPlOsLJOEGr8RNZxPIYPHspEqzzz2XzyPURQ2zKCcV8A3rXcw4wk1PP8i39/fUWa
         RFd8R2Iq9S0hR2k/IYU06i9NK0iM5w8k6lozPqxTq9/bsdEcUtijoA1IvcEmhl9h8EDG
         J5z+Dfi8W6C642BveCbVFOU4l5kYGEio94+4dsEsK7NFEM3mnU2o7gxYjkLqqwvd0uoF
         GE9vDE3hitpxUyGuIyvUGvDDc52afHMJ1gAf7TPcIZMz2GWH3VwZjREkg7TZX0RNdYMv
         yq8Fix0nDm4cmQTbd2ccFG06Xu4F23nLf3ek1LTXw0JIkwrvyGcuiGOgw0FIZjyDFwYH
         exNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779970545; x=1780575345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aPL5OsFQ0NSyfQU97v8X38FjTxpkWVhnHmABB3j8qOU=;
        b=cyDdvKrNAPyG71qJg6ILnOKwyuEqUBT2BIGsDZd5qDZQXo83jR0Dnj3RUpKPZFzizi
         6PfYTKpcc3gOUzhlt9flJvlhW6fdED0D+8m01hgw4giWy1gO7fua1Zf5qyYDjo73+Bwf
         g3cbddqNOtPFISbsP41KQwXGxL9+uOoSsI5T4syrRnkCssVFlj9vPfW6/dhIAZEze4ZI
         153ZjRXRQYgJP0S41p//prcMVg2h68kdr9bKB63CNing3xYkroQh33ZLumFVk+LmyINF
         F/w8w/L2MapyxKc01e8ju1LJU17xO6V/IUR3Rl0y0cfq5fxlcAMCXLNybGj+1V2Ijier
         Rxbw==
X-Gm-Message-State: AOJu0Yy1Oi0CocdQKZtXyqL/bUscRqvv5HiOIiFX+rU3usHynA+6QWYw
	UGIKR/ShD485WeIPqaqQBoe83JHzgbh894JCNvZ0FFMt64TGo2GvDDS0wy/EZu37j/I=
X-Gm-Gg: Acq92OHH45v+FtUbII1lH+gPBwKaX1ZxF6XwYWXHrAarVgGRhPuez+uUkPKavogfTIm
	OlB3fPDGd4eSAXn3Vd3rzvrqLDlXLSl/EqQ398i4clVdhlXZgsujs/LD1GHSZ3E71zuEaMBkDLS
	ed+3TjgLCZ9+SHoxurxdkBQM3nyOSVBFRbv+59OqQTAxz8N3kyLmSAGETd33LL2N3AI0DM4O5V0
	oo1iVwOqbyi5Y/ZUyJ5qWfDDr2Ept9hUBW4gasoBPlVuywsIkMapNcciPP3RvO7JNuYHn/qvMwn
	qY62fx8tSfms2y2ixqu+CAXnrINkCIBm5YYaS+DRCCSf/m9ATT91gwEvoqRlzE5e4cRvNCP1tf/
	pW4hJAzTHbyRiD0+3fxd307Gls8HPJzKlincMlzGwxxHcI07GPkOCm+zXTypHy6obRIXT8dg4RN
	MUoCS3F0RofzbT6cFnZ6MkX1EiHf6elTnR59vZuc5diacCPgLAeA==
X-Received: by 2002:a05:6512:388f:b0:5a8:6eb1:2b6d with SMTP id 2adb3069b0e04-5aa32314263mr5850758e87.9.1779970545005;
        Thu, 28 May 2026 05:15:45 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa462e54e4sm1898035e87.37.2026.05.28.05.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 05:15:44 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Miaoqian Lin <linmq006@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 28 May 2026 15:15:30 +0300
Message-ID: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_051548_027264_2976AD73 
X-CRM114-Status: GOOD (  10.69  )
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
Subject: [PATCH] clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Miaoqian Lin <linmq006@gmail.com>

Replace NULL check with IS_ERR_OR_NULL() check after calling
rockchip_clk_register_gate_link() since this function
returns error pointers (ERR_PTR).

Fixes: c62fa612cfa6 ("clk: rockchip: implement linked gate clock support")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
Link: https://patch.msgid.link/20250805030358.3665878-1-linmq006@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 987c3bc518..d01574c60b 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -566,7 +566,7 @@ void rockchip_clk_register_late_branches(struct device *dev,
 			break;
 		}
 
-		if (!pdev)
+		if (IS_ERR_OR_NULL(pdev))
 			dev_err(dev, "failed to register device for clock %s\n", list->name);
 	}
 }
-- 
2.52.0



