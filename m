Delivery-date: Tue, 30 Mar 2021 03:19:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR324-0006ZV-3g
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 03:19:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR323-00077Q-Bb
	for lore@pengutronix.de; Tue, 30 Mar 2021 03:18:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PKNYj3L4aBmOdOnE8ClGqjGDsgsITPc6noEgmCeVhiE=; b=qpQcFZE35O0/4qlhBJZ/sdVvKl
	WJnxVfPM1yrhaj/vZ7B/aDBEVxnjIOp5gVim+pf2aYVbCu5MRiBRg64exxFtgzOmyczDSukU0WEjh
	cV/8C0DJRtI3GClBntkB97e0+xe04oCudI4EraqmnsXX0S/sD9dlIpquiJb/yYo4otpmkRWSMJhEJ
	VSivmkwZuWeIXfigWy2yGOSeRDsP2crYkSduil3+0r4EklFFBA1hbKnHs7o1V5e76r01lSXH5FIFG
	BPitvWOjbPOy5eHBg2KozpsIXQmCkBX5vMApMHGuyh4kub+JQr6JSiFIHN4hKHbwWe/E9K8IufHd+
	wixQru3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR309-002KEA-4H; Tue, 30 Mar 2021 01:17:01 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR0Pt-001gMa-EG
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 22:31:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id y1so17644546ljm.10
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 15:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zlgq2CpoYI32qTkP+EX5roxC1aiW1TYV5oWKo5+L8KU=;
 b=GjqZN7/Xi96hkgGqho4F2/exzTskyP/lXZmLIO6swOGhZkz0P7CopOHYK3866LFtOv
 Ms2e4wJjDtvM/OG3RNK+ypyior2f3Nx05DcmcTVo3v1TsiXtH6g545DiSG+plOxjDDxf
 0bEonlToq1lPpyWUjGifHyvbIgIS8hoA5EtlTZ1EvCIxQ2h2LgrxHFGIlQLDbA5GzwDs
 0NUbRNE6lNzfaEsH4rp843bC304TaNHTpD0Msje0l2QkOhZkhSVziYMZf0WH9ewjnZJD
 OIyNK+EAuNcq43b+yddCSAP5sqdMDZjSifTkKSWDYDqRjT2wbYXIg3h3JkQ+2rdH1D7D
 05xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zlgq2CpoYI32qTkP+EX5roxC1aiW1TYV5oWKo5+L8KU=;
 b=qpoRjFPPPSqCKZ+ZaNzEhV6WOvGaPMrgPO7KTnLLYVjWoeuXi9G9MXn0yqnqdvJKMe
 QsqsYiChoSHqqvnAcLcthGX4bzRltF5QqmpkMYTk2vDj7UXm3L+qxuTKJwnBJ8suegsW
 uWt/Ak35/jzNRFOwVTyWiy61CUJ2j2gPSzN3zeudSTUSkUzSsN1Gi4GF3B7AppTnpwyo
 pNSPhCRwNxP9nR0tFndElVqauirJW0rz8DjjcU5GJ1pNs5LrQBqSn5j+L6OfNpJoBnsf
 AkYT7gLV/0MgabVb1PUWtjxKT6k80etY0oQhlrLfG94w+N+7HlSxrUJEK2xX9l4MnS4E
 ftOw==
X-Gm-Message-State: AOAM530EfLjrLUMWAyKOdfPQG5PX8n1i8Gu1HrYN3pW5TkKFZwi51SEr
 aZDSDM36QOLbcMyO0VxsHJe0xjpDAHI=
X-Google-Smtp-Source: ABdhPJyhcbbg0nSzRzRDsahWxFsnSpwdKYGrNeW9ioUwDIUjC0Syfs0kzQM4A7M8XJx1+u1/3VClsA==
X-Received: by 2002:a2e:99ce:: with SMTP id l14mr19710102ljj.93.1617057084073; 
 Mon, 29 Mar 2021 15:31:24 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id r9sm691710lfn.247.2021.03.29.15.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 15:31:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 01:31:17 +0300
Message-Id: <20210329223120.442256-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_233125_631366_E40D6B65 
X-CRM114-Status: UNSURE (   7.54  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] RISC-V cycle timer fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (3):
  clocksource: timer-riscv: adapt riscv_timer_get_count_rdcycle() for
    RV32
  RISC-V: erizo.dtsi: set timebase-frequency = <24000000>
  RISC-V: drop old timer handling code

 arch/riscv/dts/erizo.dtsi         |  2 +
 arch/riscv/lib/Makefile           |  2 +-
 arch/riscv/lib/riscv_timer.c      | 63 -------------------------------
 drivers/clocksource/timer-riscv.c | 13 +++++--
 4 files changed, 13 insertions(+), 67 deletions(-)
 delete mode 100644 arch/riscv/lib/riscv_timer.c

-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

