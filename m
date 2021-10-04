Delivery-date: Mon, 04 Oct 2021 11:19:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXK8a-0002ZF-2O
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 11:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXK8Z-0002Al-7T
	for lore@pengutronix.de; Mon, 04 Oct 2021 11:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CeF9O3ejw3DzI+TP4nhGG6Q2rUQUuoCe5nxvqmflDsQ=; b=XhY32bpwKGice3
	X04okriAFZinGU4Gpz9MCmvfNQnYkmklzvERxNRvH3DPL7ko0/JipdIXCW9t/uBmMHQqWtU6yxuN8
	3viD/KmmcLX76SHph37NCJnEG7bjpNk6mjcjM/S1IxOIJrtCEviloAEtgqqEeorlfJ2LlY/f6MfB2
	gIWk0mSxAKCT5W6dnX3BrqzWsnd8+ceA5CIh52AolOx5saBjQUCa/oJgXo7xZt1bd45Hi24Lf5nLK
	u+GrUpOguohDCLzx/PvrEoxSO9YJ0W5q0WagSxTz0B5Rokjm5AjAQ1K2PVfKatlT/HugDaWCvebmE
	o/tB22Nh6Vi+D4klQ/PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXK6P-005ko6-3h; Mon, 04 Oct 2021 09:17:41 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXK6J-005kln-Iv
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 09:17:36 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x27so68313579lfa.9
 for <barebox@lists.infradead.org>; Mon, 04 Oct 2021 02:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PqP6j6q8Ra1cO0hJ1SQqct6tQDU4AoImrB6adf/N+Lw=;
 b=apFwemOKYlE7SWsgMJLNpOMJBByPbGXMAGzNY5I87Y6xtSpGaC+YDrHkr850IB4SD+
 Uu9Xb9GcKiXr6GtAHmcRza3bTIpDtStG3tovEHLcvMAJBf8a2rpkTPfz+xxsi9OJD2LM
 mcxOzO8/mJTo14lg7wumePk/IPbvWHJzgDMfg2QSKGFXX0lgQulerrSVLCWMY9XXsywB
 Vn5Yawm0lRJVNvF/mhqdRo/YfYp9dIl933nd5DYxd1L7seXlB9i2WhC3K68n1Zsbb0Sc
 NVByx9smJK2M36G/KbvmOznttkSMcqnJ46sYcttIE9jsSmwX9hOB/wsLBJOgP+48sgWF
 RthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PqP6j6q8Ra1cO0hJ1SQqct6tQDU4AoImrB6adf/N+Lw=;
 b=FamXqY+kYVDACiMNLnITDn7w7vndCnXZPl7OPHxe8qFLTnNXqRyp+72hs5kE92vDiz
 DfGphD2LMMchYtttU3o2YtPTv8WNd5JNEd+lwMoa2uQWCpPlBZPUZygXMywZiQGwUDSm
 xG/BiNESp8G1PN1bSHk1on5NrHZb6xenadwPsxAcGW/ghNrI29s41/pbbMwlTsNg5dX0
 tp7dXhPC5HT5GrtFmHzeKPX9fquoVjtzwkJ4NBuUlQRZoEITHSSSfxYZOyRcnriaWcpR
 QVito9DXuvQ+lnh1x+AmauQpAeT/4+CrOSC5Shqq8CjC8hb8F0+3hc1Jfdin8A47xjEx
 zi/g==
X-Gm-Message-State: AOAM5313tSNHXlQRDIHkuj0CaSr27bds/Nvhicrw6upQjLhPf/mdZAVr
 SknesrT7IQ3b7TEJ26c32dgpX2PoY/8=
X-Google-Smtp-Source: ABdhPJz7at2tgv9P1uNoxGJBBBh3nceV0oTNLOhuB0RP3kwK1m8Mhb7VVHPG3TU6pBhtIWyPc0J+jQ==
X-Received: by 2002:ac2:5faf:: with SMTP id s15mr13218303lfe.116.1633339052612; 
 Mon, 04 Oct 2021 02:17:32 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id 8sm1547487ljf.39.2021.10.04.02.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 02:17:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  4 Oct 2021 12:15:50 +0300
Message-Id: <20211004091550.42289-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_021735_669528_EC6884DD 
X-CRM114-Status: GOOD (  12.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: core: fix whitespaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/core.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 37fccda6be..c6c1e1e7cf 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -377,7 +377,7 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
 }
 
 int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
-             u_char *buf)
+	     u_char *buf)
 {
 	struct mtd_oob_ops ops = {
 		.len = len,
@@ -420,23 +420,23 @@ int mtd_write_oob(struct mtd_info *mtd, loff_t to,
 }
 
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
-              const u_char *buf)
+	      const u_char *buf)
 {
-        struct mtd_oob_ops ops = {
-                .len = len,
-                .datbuf = (u8 *)buf,
-        };
-        int ret;
+	struct mtd_oob_ops ops = {
+		.len = len,
+		.datbuf = (u8 *)buf,
+	};
+	int ret;
 
 	if (to < 0 || to >= mtd->size || len > mtd->size - to)
 		return -EINVAL;
 	if (!len)
 		return 0;
 
-        ret = mtd_write_oob(mtd, to, &ops);
-        *retlen = ops.retlen;
+	ret = mtd_write_oob(mtd, to, &ops);
+	*retlen = ops.retlen;
 
-        return ret;
+	return ret;
 }
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
@@ -757,7 +757,7 @@ err:
 	return ret;
 }
 
-int del_mtd_device (struct mtd_info *mtd)
+int del_mtd_device(struct mtd_info *mtd)
 {
 	struct mtddev_hook *hook;
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

