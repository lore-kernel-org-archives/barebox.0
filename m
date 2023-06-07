Delivery-date: Wed, 07 Jun 2023 07:13:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUU-00DxN5-9p
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 07:13:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUR-0001X5-QW
	for lore@pengutronix.de; Wed, 07 Jun 2023 07:13:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HqifC3OoI+NOGefNFbR7NV6o0rxe4pNuumEMLX/lJ0=; b=qaPnb2ahfocvA2
	hhSW9ENHiXzI7L/CZERpQofFB3iABXd/HAp2tKXq2CQo8NbpTxzPVaViE+OQwkW0/mvP75/46UBvf
	zAs2Ns+l4ciKvwy2j1/N+ZY6uOlgnkOBdeSYVrqhU5nGa7QTBM/Me2QSkzpxJSSTDgk3hrMGvlIQ1
	8BkmoXnprelly9/C5wk4amFRus4SWcp5XV2mJQ13t1BpjFPPfK/Wcy3iqzA5PdurQtjSX3+oCPCe1
	gTPsS4DJfidpehflBVRgRylKsYlsI9anoB28OSsBH3ElcQ4nw3kIpK+DJXgjE3b1cbeMafeS8MvPI
	p1KuYHOdQ95teGactkUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT4-004Okj-23;
	Wed, 07 Jun 2023 05:12:22 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT0-004OiS-2t
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 05:12:20 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b203891b2cso1245821fa.3
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 22:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114732; x=1688706732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0HqifC3OoI+NOGefNFbR7NV6o0rxe4pNuumEMLX/lJ0=;
        b=iHFOFqVrXlQwP12WB6NgwJ/v1hlOepEewOj5amqTwIQpLfPjZ4jr0vF0HKfRFhxLL2
         CahJFCfXtBahHbE/jHtZ4O5EzP+YX0bg9FRBFFHcYiV1yhYmBS6bYYZcnCl2qQPClS7G
         TRwzc42N3aJMCyi6cTuBdQs9LogDk9Em7+3VSbw5cDHTJ/OyW+cpzj59wZcYi6Q3ukHy
         h5xvmrDBtWa6aYLPbX8BuvcJnMhhxnU9FACI8Q9ewUCHLqPgfG8bpuQm/uwWbdPnxIsf
         wYwSPy6EFU/N3bTYLXpr7Ao5RruDTUhU1JB6oa6EQJATg84/ZKruIpNPOeY40i8ay1uk
         Usvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114732; x=1688706732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HqifC3OoI+NOGefNFbR7NV6o0rxe4pNuumEMLX/lJ0=;
        b=anArYwqsZP8xtr+kuJhqjG7obR6gBiGTDZmEoWGLPwvZezK7O7RuZ1oGfAv4lr3dIP
         PgopUYudet747ertmr3BYpZ5Hb6e3HPMmFDNuVdNjEdOFULF2+f5v+n0euh3F4KxeT99
         otbZ02d5IqX4mO9ym2VTRyMIRDybY0fllDAiIOJeVB8RLqX4SEXwGRAf3oEans3XgseZ
         bS8gKywa0wP3NxBnyB9cUMzzBRcCwAA7l8jyF5yFYovwOeBk9DWHRzNzJhwzOjBfEw2h
         khfM4Jrhwq/9Sw4tI4bKFy0MmGcMoGerFhF1rjO70ekLN3rdfHbODXAjlfCbTHX/tBsR
         Nwyg==
X-Gm-Message-State: AC+VfDy32RiPE6wF3/9t+UsKPy+xYH7c3ASI5WEJ5nq8CyOiZAEd3wSi
	0hb3reN9XzzybiXPTxv6zd/3KpsdqTG8nw==
X-Google-Smtp-Source: ACHHUZ568846vzPbcw+x5bO4umAaUd7gPKGlIhzMhKO3E5qVMKsnGJPYq5GbRHq8g96ldLbuL5ZXVw==
X-Received: by 2002:a05:651c:10d:b0:2b1:e369:40 with SMTP id a13-20020a05651c010d00b002b1e3690040mr1794058ljb.27.1686114732513;
        Tue, 06 Jun 2023 22:12:12 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id a18-20020a2eb172000000b002a8ac166e55sm2110913ljm.44.2023.06.06.22.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:12:11 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  7 Jun 2023 07:59:40 +0300
Message-ID: <20230607051155.3175-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230607051155.3175-1-denorl2009@gmail.com>
References: <20230607051155.3175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_221218_941292_1A5EC011 
X-CRM114-Status: UNSURE (   8.23  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ci: add a job for testing 64BIT MIPS with labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 .github/workflows/test-labgrid-pytest.yml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2c74150066..674e4251d1 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -26,6 +26,10 @@ jobs:
             lgenv: test/mips/qemu-malta_defconfig.yaml
             defconfig: qemu-malta_defconfig
 
+          - ARCH: mips
+            lgenv: test/mips/qemu-malta64el_defconfig.yaml
+            defconfig: qemu-malta64el_defconfig
+
           - ARCH: x86
             lgenv: test/x86/efi_defconfig.yaml
             defconfig: efi_defconfig
-- 
2.41.0



