Delivery-date: Sat, 10 Jun 2023 10:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCO-000qXA-4F
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 10:43:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCL-00059d-S6
	for lore@pengutronix.de; Sat, 10 Jun 2023 10:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g1DQO1pmszyAxMzL2LSm/hHSJBPpIsYa62C5aOYm0Ng=; b=bgLP2BG1HsTeBK
	uvVHpMJUIpOGLxW8tJ9TKzALolNHm01mislBIGcoxw7Eouz4bpGWhar4XQXLwZooJ6EJtK8gSeSpV
	o3PzNtItlUoT81UbiJxrYSJpntKcmRwjHhPYywnVK5iZe9rANmJ21/sBw8q7lM/iUEXLGcbZ4wJuh
	RFuUZiDJoEcoCmYhnL31aPfR6uSudSYUmf9bYxYhtpOYWqFWfVSVfe1RK62wGHmrZyQx4TmWCkWX2
	ohTxbv+BdtBy/mm7vvozkoikjBcwUUXHkVtuUi0AA5hN7d0dVIHi/83f/HYkLi2YNegqKQwR1KRKD
	3lgX5iN9VEXhZ+RIBbjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uB1-00FZGC-1j;
	Sat, 10 Jun 2023 08:42:27 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uAy-00FZF9-2l
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 08:42:26 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1c30a1653so28582171fa.2
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686386539; x=1688978539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g1DQO1pmszyAxMzL2LSm/hHSJBPpIsYa62C5aOYm0Ng=;
        b=dif96DJEF548UAdlxe9fWKKF2OIi90UBNp2ATo0plWKAnUaCCHVc7hbeUqaqQjRdWU
         IBPD29t9pggLFQwXpeI2ycb3+yokyqRSxOSqFyPYXQs8rTn2R76/mP8NqwwPBJ1vYrOh
         lno9grAY4DesCxCXuGVF3QbCBJzWu3MWDbhanKqOKOYBCvu4yFHC4GLIlLsnJxiMBPbx
         a4S3qhD9aZ4wSpFyUl+JUMKVxF+DFzte1QxmQE6iXefua18wIJVcyOh286VkyAPYpdu+
         kBWlsljXxXHcq2xi72ZDohWMIJtn0YLhBCl3Cb1EEzrFsP8USliI2KSkouVUX7gR1mtN
         2fvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686386539; x=1688978539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1DQO1pmszyAxMzL2LSm/hHSJBPpIsYa62C5aOYm0Ng=;
        b=JGKl9B3rY1awZLAtQwDs2reyduuxjgw5iGPHEUEsHfJok3kxh1eLHG3Z4NaensIjj1
         q+HhSffmPHartNfGtvUgwiEIpTY8b37knsmNMHX2e6ykl8LG+4EVNSpHRXx3Vd/ePsON
         QgbyrH3Va4FK8uYamlfL04Kk+NOUls2oR7HY+a4keqxmcD5db34kY2kceElDLn6id/T1
         UXtmTxiZ0RSgc4zrb4Kemt2hI6pkDe42zoL7QDD0ri60/Xnk5CmEFCVoZaUyK9DIMUH9
         QI2JCPk5n/6lvwm0cwWNasFGIV4lrL+IyPoFluxRcxvADCKO/3cjXZgj4cMVgJSYvYI1
         DzIQ==
X-Gm-Message-State: AC+VfDy6tn/zg+1UqdLqb5nv0tms4T1FuzxZ0TKoKztj0ZimEZhs8E11
	/Yz76+RnhO/2N+wgzDD7bHdbyLP9++QAqw==
X-Google-Smtp-Source: ACHHUZ7pkq/i0O/GdOsv/D+WNtsuo+A+wBIjSJIrTpBUvq6K6m9q/9dwNxc1obfD6deROJl1qhrKIA==
X-Received: by 2002:a2e:7d08:0:b0:2af:1adf:d2ce with SMTP id y8-20020a2e7d08000000b002af1adfd2cemr434000ljc.52.1686386539212;
        Sat, 10 Jun 2023 01:42:19 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.223])
        by smtp.gmail.com with ESMTPSA id y14-20020a05651c020e00b002a76bb6bce0sm763331ljn.37.2023.06.10.01.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 01:42:18 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 11:36:27 +0300
Message-ID: <20230610084146.9448-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_014224_937512_5730FDD9 
X-CRM114-Status: UNSURE (   7.45  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 0/2] MIPS: set virtio and other options in malta defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The issues with VIRTIO_PCI on MIPS seems to have been fixes, so enable
this option. And, while at it, also enable a few more for which there is
no reason not to have them enabled.

Denis Orlov (2):
  virtio: remove VIRTIO_PCI dependance on MMU for MIPS
  MIPS: enable more options in malta defconfigs

 arch/mips/configs/qemu-malta64el_defconfig | 10 +++++++++-
 arch/mips/configs/qemu-malta_defconfig     | 10 +++++++++-
 drivers/virtio/Kconfig                     |  1 -
 3 files changed, 18 insertions(+), 3 deletions(-)

-- 
2.41.0



