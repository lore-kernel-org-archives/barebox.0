Delivery-date: Thu, 08 Jul 2021 10:32:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSS-0006MI-OF
	for lore@lore.pengutronix.de; Thu, 08 Jul 2021 10:32:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSR-0006ws-So
	for lore@pengutronix.de; Thu, 08 Jul 2021 10:32:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7tpJkgGSAts1wmc7mNN29/oXJNwnEglK+0OO7mCP/Ew=; b=AcDimNsvqD4jlB
	+nY/IvOYETWBJu1v1aXdZqQTjpE//859JlbxDSe8e16IUimulqJL2rEGFJaqEqrxWzwOKQnPpFoKK
	BUqEEYiJwn5iQXo30tYkYqk13yW5bOqp4qI9/gzDvh+QDnnn8+ciyBdLKjDkq7YlYwkmCklqd5pOh
	DOCoLg+YGz+eogiMUV0aWiZ5wAobkhhNnjZXWj8PTfmQOKqK+iwqsE/M9iuI4uLZjsU4ahTUpqq73
	5tjUWuywxu4optTheL9txlU4srQr04dO4g1jFjb7xOSub7Cv22hwCmaCx9zJA8Qupxi71P/vr8SxX
	pHMj/CvoTjQpElY/h16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1PQn-00GJvy-2S; Thu, 08 Jul 2021 08:30:49 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1PQh-00GJvB-QJ
 for barebox@lists.infradead.org; Thu, 08 Jul 2021 08:30:45 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f13so12827666lfh.6
 for <barebox@lists.infradead.org>; Thu, 08 Jul 2021 01:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6GT2MOsfuAmnQ3o1PYTU9ENmHyPYGgQLAGQJjBeSSGA=;
 b=KUa3n6XhAAI01nww56IB3zJm75JEvtmVlY36dKyV+UxYOg+rmmCSgyYNn52tEiY7u6
 jqS/YIE2h9OdDVSEwvaMZVk5njgBzBk2Sj22IzK2Nb5jWOcTvWaiqPKfsO6KwV71rOy1
 zp2PbxfY0QFs8+0sAJ6wVcHe8mGnI2z6QQ2fBiIIijTxwJgdN6XwtZ8Wy5i2eVeWmj6j
 isxRrSmxY+fIJFI6L2rgiegzktIWhuAt9qw7W+61AfLRxm0Bn/N/vjPCTS8toyYBK/FR
 w4UyViwBQ/3NV+U2bTdur0/wzjjxjiIrMuAAvXY90i9lufyB+iyNnm1/VJhA/iqSCWhm
 mMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6GT2MOsfuAmnQ3o1PYTU9ENmHyPYGgQLAGQJjBeSSGA=;
 b=cedrBIzNp3DXtU4dluI54PqJ6BRTePc7TZN/Tkxfqc/sRMB3Tig5AbnyypDN2GGIcv
 Cw1QGT7oz521of5Pg3BXHnTBjCqk9UKMYGazgZzZ1shVT+WIp3BtJgIsJ8xxY0VXkYIu
 S+D8Tar2g938CG+WFw7rd07aG+UlyTIjdwKiF2eRAGVjYRrBD29FmybtSmcahyi1zllq
 BAOtDRMq6FoJzD/NOpf3Ax+/HW+nHgC89mmPtsLn0eeklWIiJRqgqXe1ODHX/XN27bM2
 DsLoaek0ufrnESNZg4byv/qNMzmJBWxXNfkIH8JEgGDa0Vm07Gf/9v1qTxGcs0ykv3l8
 vAnw==
X-Gm-Message-State: AOAM530Qx9AbrC2Dc39AopZX6EIF6MYhhNPnvMPo75Wwhtm0BBHrEU90
 fqo/yAju+8GdLKWPx9u/ldkrwygeBEI=
X-Google-Smtp-Source: ABdhPJwKviDFF7xwWbsglf7zMtU3JFiD9InWVgrq+8MSNFqT8irCwdufdLeR+v0zXVQMNMOkrB7fPg==
X-Received: by 2002:ac2:4e08:: with SMTP id e8mr23703380lfr.74.1625733040576; 
 Thu, 08 Jul 2021 01:30:40 -0700 (PDT)
Received: from localhost.localdomain ([176.59.43.199])
 by smtp.gmail.com with ESMTPSA id i21sm127364lfe.86.2021.07.08.01.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 01:30:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  8 Jul 2021 11:30:32 +0300
Message-Id: <20210708083035.40814-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_013043_908858_9D4B902B 
X-CRM114-Status: UNSURE (   9.00  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH next 0/3] RISC-V: resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After migrating to PBL we can't use nmon assembler macro
in C code anymore. This series adds necessary wrapper
for invoking nmon from PBL C code.

Antony Pavlov (3):
  RISC-V: make it possible to run nmon from PBL C code
  RISC-V: boards: erizo: make it possible to use nmon
  RISC-V: boards: beaglev: make it possible to use nmon

 arch/riscv/Kconfig.socs              |  1 +
 arch/riscv/boards/beaglev/lowlevel.c |  2 ++
 arch/riscv/boards/erizo/lowlevel.c   |  2 ++
 arch/riscv/boot/Makefile             |  1 +
 arch/riscv/boot/nmon_entry.S         | 13 ++++++++
 arch/riscv/include/asm/riscv_nmon.h  | 49 ++++++++++++++++++----------
 6 files changed, 51 insertions(+), 17 deletions(-)
 create mode 100644 arch/riscv/boot/nmon_entry.S

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

