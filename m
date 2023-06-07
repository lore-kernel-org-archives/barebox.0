Delivery-date: Wed, 07 Jun 2023 07:13:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUU-00DxNN-Tt
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 07:13:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUS-0001XJ-M0
	for lore@pengutronix.de; Wed, 07 Jun 2023 07:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qx9PEzYMePk6Cr5kzT3euiwGTG3Az2bu9w4e9/Wghko=; b=FJWGGnrSLFPa33
	AzzbxzGo2u9TjR0sPFHGBk5Dm6HOhndQrE4JiU4Kd1MKx+9jaLnwcyhumSpFazWv+5qObbC6087SA
	vzyBZnJt+xAYIIl9HrKHZ85HPnNOnYUMAeDaSgHpjEZXqoQd56hUbRW9SUebjPathFFRh7H25sJGw
	wW7JqtQGqzZArHH3pFVdFPDs6G4tfyZLm8PlSl8zMulzGMErdYTJCHr1G/NgWo43YILZ8fqy3NLWv
	WWIGs6TePx8lxylODmtxzHoZgWh9zc4o/tPNB5eeeJrHanjw0k/2mNr4gB1XG2XFXMhm0j40YCO37
	hXYbDKcbhfp9vZhALGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT4-004OkS-02;
	Wed, 07 Jun 2023 05:12:22 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT0-004OiA-2t
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 05:12:20 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b15a327c20so81961391fa.1
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 22:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114729; x=1688706729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qx9PEzYMePk6Cr5kzT3euiwGTG3Az2bu9w4e9/Wghko=;
        b=eZ44Z+I6vxBNgOu5HRNLS3im674S8/u8ZNdcMFFTBFeeU287rKztjdkrj42NHP/dUY
         AHcma0/UHgMVTUriQtrcKmo1vFbk7lVhTFGfVWkSpOLu1GiXlHEpvmi4qyj8ApV0bK+a
         QxWDC0HJKIv13CGP0Q/nsEqQYBOqh//4vsuJW6e37S5YgYoSYX6Rbi7LYgOYW0Xeb7Uz
         U15ML71B7pTvlRdbZ6h4l0ILilzQlIzfH8uBq4PjUpoleRirm75eDU55WmpO3yyhhu61
         tWAVVedOCkm5uIY7cdVXKTxY5vLev0PedI+8wRzrVd6PsNFknqXYc83ANhmx7jLHE6DM
         zA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114729; x=1688706729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qx9PEzYMePk6Cr5kzT3euiwGTG3Az2bu9w4e9/Wghko=;
        b=ibFQMJe9QB/NWEj/0SCEaZZLexmd33jf/LBlddO3po5QhFyig5aHIxvnaAo0ryIm08
         XMTf/6tt29vh1gqrcT611z2bKXioBWV9InEEu8oP88sY7iqx+DCoGia+IOyU+L3129Vq
         4uqTC0P0tX4X7dxDU09NdAoaixNYCiMlVLGL8yBu1YrLk/mbCJAVPzN+qmxQDuNzi7Nk
         QJdznv8weM0I3FEJqwMLx8SXlSNJxeKuW3/W0KT0AgQQjMAzwBvGQIlYQq9xk7GS7LUU
         xDL+/bEkZ9v0nb2xfZ+wmMpfek/kqufhf07qJBBNtNAIsEh8meSTG3I1qlYkZV1U95v1
         7NbQ==
X-Gm-Message-State: AC+VfDyYzgav0/1JT34p7o+saFmIrCCGKmrZ37uTTbWY4e1a9GnlsMfz
	atdpgnPvXC/fB9jnMKmgoH6xUqrY5erB0A==
X-Google-Smtp-Source: ACHHUZ6vVJi6//4y3KxGHqQgaqwi/P2Ytjvh2x9n9lG5cGTqf68kseOCkZfiFP53XiUtMMRRlBelDg==
X-Received: by 2002:a05:651c:90:b0:2ac:770f:8831 with SMTP id 16-20020a05651c009000b002ac770f8831mr1601437ljq.40.1686114729141;
        Tue, 06 Jun 2023 22:12:09 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id a18-20020a2eb172000000b002a8ac166e55sm2110913ljm.44.2023.06.06.22.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:12:08 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  7 Jun 2023 07:59:37 +0300
Message-ID: <20230607051155.3175-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_221218_940961_A2675F33 
X-CRM114-Status: GOOD (  10.57  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] Add CI for MIPS64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a necessary defconfig and labgrid configuration file together
with the corresponding CI job for building and testing the MIPS image
with 64BIT option set.

I've decided against giving the defconfig a generic name such as
mips64_defconfig. For now, only Malta running in QEMU is really
supported, so naming it as that seems more fitting for me. And if
more MIPS64 boards will get support in the future, then this defconfig
might be renamed appropriately.

Denis Orlov (3):
  MIPS: add qemu-malta64el_defconfig
  test: mips: add QEMU Malta 64le labgrid config
  ci: add a job for testing 64BIT MIPS with labgrid

 .github/workflows/test-labgrid-pytest.yml  |  4 +
 arch/mips/configs/qemu-malta64el_defconfig | 87 ++++++++++++++++++++++
 test/mips/qemu-malta64el_defconfig.yaml    | 22 ++++++
 3 files changed, 113 insertions(+)
 create mode 100644 arch/mips/configs/qemu-malta64el_defconfig
 create mode 100644 test/mips/qemu-malta64el_defconfig.yaml

-- 
2.41.0



