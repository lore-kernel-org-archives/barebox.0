Delivery-date: Wed, 15 Mar 2023 10:01:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0s-001K4o-LC
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0s-0001ic-Jo
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xxr0hzbfOEsSpZmP8VUuYOfiJpzGij+EVmNJoHdNaI=; b=SbR13xoWwgrBlE
	jQYktR644H25SE2v6rrtnVtsyQKrwWLa0mUq5iwRDsmw5oJj6O0ewIZKgpsxcLkEsF/Q+KPAFqSGr
	FdwkeiUgASOCWYfhlxGftxHsJfDQN8MBFdoiq/+ffGxU2vKviNnr7zSKNHYRKkB1XHArecGsecqzK
	2eStGCCBHEU0VRU3m9yQgmgqk4/SxciggnQfvcKqaO4L8HTscRzWjVUva5kmmCIIoNeBO+7lP9Hzg
	nRCkyWu336TI/XEt9+w6NCs7PkVbhTMa6pji4t2Ryzk2VVmw5PtM4XFKOEIoNh8wTBr9PlWjKQ1lm
	4ctK32GyhI8IoFA79HHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzS-00CqPG-2W;
	Wed, 15 Mar 2023 09:00:10 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzO-00CqLu-2e
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:00:08 +0000
Received: by mail-lf1-x130.google.com with SMTP id bi9so1183628lfb.12
        for <barebox@lists.infradead.org>; Wed, 15 Mar 2023 02:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678870800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xxr0hzbfOEsSpZmP8VUuYOfiJpzGij+EVmNJoHdNaI=;
        b=eEKy5IxoTUWKbqcYvkfGWG3HsAOfA+NukaWgehSqDJfcXHCLlBia+Imw6Mflnmi/TP
         1tiF5lpnQIRrKakLM7sACSFNuRdLXUAmXcAduxi8bNEFI4jeM4yDLKP+0oYwU38ZtL4j
         V5csvwFJXPY5G3jdcD7viYiSC7+FtqE+hGrCYu5T4PcIrNgriHkX38NyRADUE/k5d4tL
         /WG8oqxUcC196AB05xSPFRtb/CIOjQxxrEx5ikAfJAkG8aoGR9YWEWFKykLEJjR1zEO7
         EGoP+17QOj/eQxuco2DKv55JKSoVe36phLTE2xHDBt+NvIb/TUoiTwg6KDXiQN3EEufA
         E6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xxr0hzbfOEsSpZmP8VUuYOfiJpzGij+EVmNJoHdNaI=;
        b=5d9MwYtayJxc5+ScbUhthjLLzSI1fyC968osxupx9RGWgS5uu6rdIX1ycPte2fEEQv
         VfUSMQn9OW/jx5npMAR3JgqgoRkxYAggtp12ivT1lil8lGiNomwGJ4hmimVvQzHyOZLv
         EqgeAkck0jyygxrTf2ELr5CrBVRH8YfgEJBwhx4o25Ocd9EUArIJHjnwUvsNYDtTSp6k
         vWa6RalfhvOHMDEa9Iyz/JtSbrGQc52Eu9iKCNx86Tq52a3RwAASfgM74lSC6l1Fqme3
         Qdm82/csCvPae7AFWbeHGHuD+bVD3E6qIbY2VoIQD4uRh+/lfvChF019BSwFHpL9j4Ld
         Jd6Q==
X-Gm-Message-State: AO0yUKVFfktgGaan/qlSruQnEyzM1JO00GBMtRLLoZF+2AdSs54olqEB
	jdwXQ/atCXCG67861fHIjfRd2A5Tvhiy4qPq7BQ=
X-Google-Smtp-Source: AK7set8bF95xEp0+Jsjn8xCzSCPDkcsNMyWcuJt7eufiaAN5PSo+m77FvRsopGMYcUHIUVaQsUK8kg==
X-Received: by 2002:ac2:4430:0:b0:4dd:a918:183d with SMTP id w16-20020ac24430000000b004dda918183dmr1497631lfl.27.1678870799971;
        Wed, 15 Mar 2023 01:59:59 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id t10-20020a19ad0a000000b004e7a0f67490sm737300lfc.110.2023.03.15.01.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 01:59:59 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 11:59:51 +0300
Message-Id: <20230315085953.4094660-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230315085953.4094660-1-denorl2009@gmail.com>
References: <20230315085953.4094660-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020006_884143_F366BD54 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] MIPS: bootm: do not free fdt pointer that contains an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Also add a proper error message.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 655535737e..95e9dc0d7d 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -57,8 +57,8 @@ static int do_bootm_elf(struct image_data *data)
 
 	fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
-		ret = PTR_ERR(fdt);
-		goto bootm_free_fdt;
+		pr_err("Failed to load dtb\n");
+		return PTR_ERR(fdt);
 	}
 
 	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
-- 
2.30.2



