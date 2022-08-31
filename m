Delivery-date: Wed, 31 Aug 2022 11:27:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTK0n-002Wv5-Fm
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 11:27:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTK0l-0005u1-PL
	for lore@pengutronix.de; Wed, 31 Aug 2022 11:27:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOGaKsGTbMWFgr+HlugC4th/YxbW3ko7iyQk9fLZ2I0=; b=GRokaAmFeN8vHp
	507u+OkRjCvmTPZrWMZesMivyGl8HBLAzEZ06kyqhVb9n6Yf3dMxfhzhZ2md6RBBTbvxizkU41Aah
	T1gPwS+WMvw/SaQ3PusSe11AvdQKh+t+D8+cVM8BrSFeXbrtmPOnJhQoLw/W8gDecRiSt3bo+nqgY
	LFzaeqq9lUjYPZkjXeQ8FjXzLXubGhLn1HoF1DffhO7FkDDNsHVh+kQGE+DN1RrwdzIJS08451NYj
	DsE+FcivW2VqXwcEsfFGbbxy/S20c+bQkbBip83d3uJK4envHR1RVdWWLvMaow85d4fbl2fXYr0+J
	7uy2FzeZs2XulwLa3aHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJzN-005GMt-TY; Wed, 31 Aug 2022 09:26:26 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJzJ-005GKT-GO
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 09:26:22 +0000
Received: by mail-lj1-x229.google.com with SMTP id z20so14002661ljq.3
        for <barebox@lists.infradead.org>; Wed, 31 Aug 2022 02:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=qOGaKsGTbMWFgr+HlugC4th/YxbW3ko7iyQk9fLZ2I0=;
        b=GViBmAoXlGOBCb1eSojMROqjTS4Y093VES20O/SzWD/52kACpdhMOozn4c7OM2b2hh
         +GuodjS1QYBWGZL8+uNgYV2cQsNYQr1bkVzPw+DtW/CEHE0FKhn0vTVsddjtNul7whKc
         oeqHylqNzVpdR649ij0l/BHNO7eCtAealqdkAxjajqw0aqJuJBJjskhkN0whyA1wz2nt
         hLDTkQUlJu48XnZC26Ui6MDd/J6j7Ow1quyMHl3kLYwnw4yDsOAQL+dOKcD+F9mTHWBs
         d7mrPERFbP5qReDrrjkvKdBwfw95mj8ub0CNjMzi8LeZX8ae8YmRDMghZ7m/1APhL8GJ
         D1Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=qOGaKsGTbMWFgr+HlugC4th/YxbW3ko7iyQk9fLZ2I0=;
        b=747Nn4fhRN/hDfEhurT8ILOBGsww674yV+1cIgIFpStDlAvhsCMZE/TLtvmneCTzci
         8ef3nvIlBh9ft73WJFsvHaw1ANmkrafP+XtVTLZwLQViSW1z4bRrAo0qFBPzcyiSN8dg
         /nMbmvumf+WUxxvkvhHPW5uIvZ5HWBPzd0QaRvccHHkNM8kzYogeBISxyaF86H7nDaKV
         m6GYP1HqZyP8lv6RxtsUM/D6XYS/2lxq6rXRawgVvTkwbUkxPeUCpKV2+kfHSPmcKLw6
         TusgHbcL0uR7hyiMpL62/wTNMfQzFMFQO2wnjnPDWGMQrzdv2gt6EZzF5hw1KAnIvvYs
         EQNg==
X-Gm-Message-State: ACgBeo1q6kthUQoLMIWullLhd/keIJ+uM/8OweYfOnu8loxwGwqMbg/j
	LLrKMYE+0VD+GaUb0vfW2rFl0feVM3M=
X-Google-Smtp-Source: AA6agR4qjkjI66pVXbONTBiN/7yhBBGzJmoFmCrtwCMeAahmVsaNDHikUiPsB1jRzj+Q8lu199xn0w==
X-Received: by 2002:a2e:9e50:0:b0:261:bbc4:249e with SMTP id g16-20020a2e9e50000000b00261bbc4249emr7734534ljk.265.1661937976744;
        Wed, 31 Aug 2022 02:26:16 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id d4-20020a05651221c400b00492dd8e0cb1sm1926199lft.22.2022.08.31.02.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 02:26:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 31 Aug 2022 12:26:14 +0300
Message-Id: <20220831092614.68259-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_022621_582599_01B762DC 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup-next: linux/nvmem-consumer.h: fix warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes the commit 06825a0ec35343a1
("nvmem: import Linux nvmem_cell_read_variable_le_u32")
from the next branch.

The warning is:

include/linux/nvmem-consumer.h:84:9: warning: returning 'void *' from a
function with return type 'int' makes integer from pointer without a
cast [-Wint-conversion]
   84 |  return ERR_PTR(-EOPNOTSUPP);
      |         ^~~~~~~~~~~~~~~~~~~~

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/nvmem-consumer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index b461f840957..1fce7e1ae09 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -81,7 +81,7 @@ static inline int nvmem_cell_read_variable_le_u32(struct device_d *dev,
 						  const char *cell_id,
 						  u32 *val)
 {
-	return ERR_PTR(-EOPNOTSUPP);
+	return -EOPNOTSUPP;
 }
 
 static inline int nvmem_cell_write(struct nvmem_cell *cell,
-- 
2.37.2



