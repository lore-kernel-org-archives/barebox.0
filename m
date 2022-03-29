Delivery-date: Tue, 29 Mar 2022 09:38:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6RK-009wzz-J9
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 09:38:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6RM-00033m-GC
	for lore@pengutronix.de; Tue, 29 Mar 2022 09:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lvB7G/Xi4ICkvfh5JWUMWG7TYVGfGvJTypsMNx7a4pc=; b=EwbnD4cogMW3A+
	0e5IQC1wAmkdUV9BvMF0/B36SNojK7y8r5lmiw0v1Xt9oDNK5/NCFeXA9GqYfI2eICX0leAjJOxD3
	PVgB/CEn8YDUcqKfmwzAPZESyZJXXHdYCyDcoHqvpCeMtM3J6xFQ3kStRD5hgRBgQxfMS7Mv5tAe7
	O1bByhP4n4bHhI2jWXGGwvvNYKRp3LEjU8ftd1xHQwKLv34GZonwSd5NeKW9bgzz3Nbhafxi/2PMG
	vFEURg2dqMipcyY7o9KDTJcpft+cQY99Nin7xPxKIvL6oqyoTx6xlLDX8kx0TZ+343To36n79pCam
	WpTAXZskmHSSDsebqupA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ6QA-00BMu3-Cf; Tue, 29 Mar 2022 07:37:42 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ6Q6-00BMtQ-Je
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 07:37:39 +0000
Received: by mail-lf1-x133.google.com with SMTP id m3so28732035lfj.11
 for <barebox@lists.infradead.org>; Tue, 29 Mar 2022 00:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4QnLXX5k/yAPCrk4/4iT85N6+aFqDIUp+TEHarpYmbM=;
 b=OnoKWR86M/K53lVdVc/FfVxRPjnVFSVBi3RsctoOkEHDj2vSgDtovaKtuBMIrRuj4h
 m8M8sb6x2wWEBznOMtrt38cnXgv3gIuBMX51SRn1oXi9iSQbHIMD3lT3EMkNYwjaIOoh
 Hjmi7Hv0pGXwnYbF+whuBxP7FwQx2iJBDGn6g8UDDMCUyh5Co2oKi5KWZ70q9DRxGwgN
 O1wODOpaJmEcjuGqzEFFUTqdzbcyiPHivoE2doKJZc6NNR8opDreK9xb7UCweVAJEx44
 Hx9d5nIDzohaWJ+/SH+VQqfdWzOZUyr/cuYFeN0NWIXetKWMaORFudbRFAK+7nHYaNFm
 UBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4QnLXX5k/yAPCrk4/4iT85N6+aFqDIUp+TEHarpYmbM=;
 b=wSZRsp3UG+WW1AhsNVhWEJQMN0Cq6AzdmeEYsAwrqGU36DE2axFN4Qplc8IKduIct7
 MxwqxaSJTFF0kMIWR2MkL/QH2c8/qzfo+JRCM0d3vHDGI8eGPFcFfoDgVo6N6mc/0wKS
 XSl+GgIZQptKwwQ/cfXNnEi38Fk10S7r2TUQHErUDkKbyN0YI1Js/wUFROXII3uIXQt3
 W2+VzODp6sSNZvxAPWZ7OcTaul/bLXs31fHIZy5kUSuTF9k9jbvS6P1Pw2LOUGZICkuo
 aZux9QcINu7g0VQJ2V281Bes3Og0K7QYphes+llEUZ+Lpm2KXFkFf9ujMRJdbFCFy582
 cABw==
X-Gm-Message-State: AOAM5307qXJ6uBGwEnbDBLO/rTL7ZeHLu9E1NMtS21pnNIYNRsObljE5
 HnPw3mo9LMC5J1vmmuPUFRgAKW43kjVsSROj6IUXlA==
X-Google-Smtp-Source: ABdhPJyTQQtPPwwYlpt8Zpf4QF7sCXoqiuwWNJhsDHOV4xBREOXoCNsGZSqMhXc++rlIHiZ3Y9ra8Q==
X-Received: by 2002:a05:6512:c29:b0:44a:865e:19c4 with SMTP id
 z41-20020a0565120c2900b0044a865e19c4mr1501072lfu.306.1648539455446; 
 Tue, 29 Mar 2022 00:37:35 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 p14-20020a056512234e00b0044a54de0d1bsm1891919lfu.258.2022.03.29.00.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 00:37:34 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 29 Mar 2022 10:32:18 +0300
Message-Id: <20220329073218.10656-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_003738_668533_F36A8001 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ata: ide-sff: fix integer overflow in ata_wait_busy()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ide-sff.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 7884b62bab..69055e0585 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -96,7 +96,7 @@ static int ata_wait_busy(struct ide_port *ide, unsigned timeout)
 {
 	uint8_t status;
 	uint64_t start = get_time_ns();
-	uint64_t toffs = timeout * 1000 * 1000;
+	uint64_t toffs = timeout * MSECOND;
 
 	do {
 		status = ata_rd_status(ide);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

