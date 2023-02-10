Delivery-date: Fri, 10 Feb 2023 15:49:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUi7-00383Y-64
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:49:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUi3-0006IR-Po
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:49:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6sMa21csMAB5g5A7kqFf1RUUg4wHW+aTRwDXXfwezo=; b=lYQSr/n0Y1F8L+
	WfLB5i1+v3UGmFPZAFwJyijsfKc7PFkgvg8xjZFd7b6BaxePbM98TKuw7ZzDMww1XDfIST6oLmA5H
	CBfjNasWqtN+Ivx42/melwvANQfk2ePjJCQZw4ZHsRtKZ+dx++fLKX0mezydvsko13vCQt+SXolnE
	A2OEoD3975BAJMQO0ONRNg2bJ7AbjHOdE5Le+PfhzPqdtVoT+V7rzJPTdpsD5mTqW272wzyR1rGF0
	QIgSDYlz5idDuhQpDLkgQ0lOzcEptjqZG2VFIZUgOtkvqHdCWTax1V7nmBu1Syvylfqs1rXmzIiFs
	Uf4rFvZfkHFlx/7vHYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgv-0066CV-B6; Fri, 10 Feb 2023 14:47:57 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgr-0066BX-6L
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:47:54 +0000
Received: by mail-qv1-xf31.google.com with SMTP id k4so3644182qvu.7
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c6sMa21csMAB5g5A7kqFf1RUUg4wHW+aTRwDXXfwezo=;
        b=KNJs9PLNfK/GlmaKRmpT9agRf2Petyj89FzGzGWXlhbY8SebJKV0PDF9nFZf3XbSwX
         MklLa2+T2XqKRH+AAxROhphawCd2BwdRyi9rqMW5dzIpwlKBYNn75WYpccmCFbfnwRUT
         E+DAUZODoD+xqudzRVFrFfwdLd6eE35KLEh7vuxecGDLpToFnzOfDjjgW4oWhrB5QhKM
         iYq4s350g705bh5Tqb+lon1sWLRvsogipWfFclHEZy+e9zqA2ZYv9VmgMY3eSmEJ5q8g
         JbEFofzHW6Ld1bu0F+3CnM9GJhFO61AWpiPA5h3IRM/dRxLJ4Oxr2tsiaMP71fftDa9B
         Dkrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6sMa21csMAB5g5A7kqFf1RUUg4wHW+aTRwDXXfwezo=;
        b=e97ivMJ6WTGaivBKXtrWAW7pi1HqDx46Tu5NXnP0xsqpvkkRs/9cqqylzy1YLbmqNj
         B3XcWri3L/2Dfcaca3OAzCvlSxUiLpCMh1KekkAp9tb0xyVe+Uw5/glm29e6Cz+hZAlM
         DWSzzf1PdyQ93e19AG4af8knyPeqXyiit/8hcF3H69rLn++EClHLkbmtEwQK0REQxIRW
         YBfgBt+L+lDZubz3+NHrzb/0cEcKcUQZUdbyDeR26Y4AxaNtk1uosp8LOGg/smao7V5c
         E33MBB8JrXqDwl2VJIiDKVurIxa6qchXNidm3YPf/2o3VdrSiy9npPPArbaMZFf1qfsV
         hqRg==
X-Gm-Message-State: AO0yUKUMLGnI0y+tOvi0pr6KmmBcgVE5E57Bz0jQidaBA1xn+9+2rBXf
	sO3A1CjnCJ1oJ+pF8OYYMUx5OAOU+F8iJM2Mk7g=
X-Google-Smtp-Source: AK7set/D7U3oy9y7ns12ysFjZYGIis9dD6qndnAnUElFQ4s+pMRDjsNrVavYSnb3eSS5ZP87XTielA==
X-Received: by 2002:ad4:5aa4:0:b0:56b:58e9:f7d9 with SMTP id u4-20020ad45aa4000000b0056b58e9f7d9mr28916789qvg.41.1676040470415;
        Fri, 10 Feb 2023 06:47:50 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u63-20020a379242000000b00731c30ac2e8sm3661703qkd.74.2023.02.10.06.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:47:49 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:47:41 +0300
Message-Id: <20230210144745.915720-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_064753_268518_A187F02A 
X-CRM114-Status: UNSURE (   6.14  )
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
Subject: [PATCH 0/4] MIPS: dma: random fixes and improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Denis Orlov (4):
  MIPS: dma: fix nullptr handling in dma_free_coherent
  MIPS: dma: remove unnecessary ifdefs
  MIPS: dma: add arch-specific dma_alloc() implementation
  MIPS: dma: simplify source structure

 arch/mips/include/asm/dma-mapping.h | 40 ---------------------------
 arch/mips/include/asm/dma.h         | 43 ++++++++++++++++++++++++++++-
 arch/mips/lib/dma-default.c         |  8 ------
 3 files changed, 42 insertions(+), 49 deletions(-)
 delete mode 100644 arch/mips/include/asm/dma-mapping.h

-- 
2.30.2



