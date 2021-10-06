Delivery-date: Thu, 07 Oct 2021 00:32:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYFSn-00028q-7s
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 00:32:37 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYFSm-0000st-8y
	for lore@pengutronix.de; Thu, 07 Oct 2021 00:32:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=35eoejq3iRwOp2OdlpY63GIEj3vySgN1Fyz0mbgBfVk=; b=WFWE1mL0uyZK3a
	fZLqvIuzwwa/jtKOwZ3BecDnJbuOIg8PxGEdtSp66T13JDx79aZg6sl9sfBz9a6d/XKss99t6mpPj
	YUPUSpabcgoZtTA7Orqcnkhm5L0Ytbvf+S+96ox8wgZq0B+qtlM3KclRdtJL45jB/17knDhSRqF/E
	Vhr2+P0PZiM/o606Q8Nh9Tk/rVviTAtKweH40y52NRexVR7CpQymSo/C4qI/Mm/tIuCqtE6Qs0Wo9
	006AmkzPlkQf0/k9Fv/HVZuSWM1zrIV53pcA5dQBz9kZK62HGxJxkMvB7h4j8fnBKJVMFFFd1F66d
	kdC22BF1pYJm4qJYZSEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYFR4-00FhtR-Ig; Wed, 06 Oct 2021 22:30:50 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYFQz-00FhsU-Mp
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 22:30:47 +0000
Received: by mail-lf1-x130.google.com with SMTP id r19so15510053lfe.10
 for <barebox@lists.infradead.org>; Wed, 06 Oct 2021 15:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k/OURlmEdaGHE7N76tORvPWh3UnaYIMZdL64IRkj5i4=;
 b=g1sPA8ZURwrQD/lo+dSohzNb0nOgNM96OhVLHccMs2lJlR3BQI7GQsZXbJfextASxd
 7d+i2QU5pXncmrrrSPt+jlUccfNCe804qwCTx00CguI6eCXMg6x80G8/g6NDPBrBRJi2
 JbYuR59m/xvcJI5/BMKs5QnLLIn3sz+oj1CvX1905g49E5/0yV7dkgtY1b4b4i1fxvSt
 wz3oUOeVNgNR+Tn8wvNnX3J/Tb6mvOS74nSAVMSj+GNUix0r8kO0NdzjRe9v5ZNVTZkn
 zAhUr2mQGGKJUf59b3+gQ1NGO3M/P5zbi57MKHdxgFUlgiaIESbCSkvDRxKEq7uq3PJp
 4VYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k/OURlmEdaGHE7N76tORvPWh3UnaYIMZdL64IRkj5i4=;
 b=vOf8nDc0ZBMBLxEW2XunURRXmN2qI5Y/XliuWqbT4EdZTucoeIFKwTfNCmzIxyJmQT
 tz0uyHvRlrIVjHBPfnIqLPEzmGgfjG+0PPyye+oaVihvtpu/c4VYzmOThBZ9xZgaFTAk
 hREOTq1zZbpSr/GWlFxwU26xzoA9IoTkCUb51Bq5+bIYHyqlfqmfpiF2ViAb2+KttMSq
 mDe8R1QW5vinF/DjcOuWJKU877x3t8rduJYTphwR0LFQvRG+psDY2IsqsRwZUIxURwB8
 M/zxYfxJ7bFUp2t441fDb7gUX2ihBlc9Eb9ajV/OlQiNnG2/ANubTf3raMeGY77sbQxo
 DbXA==
X-Gm-Message-State: AOAM530DxDBaUAGpJztQPvNU+oH1Qv1g8A05jKkUxSO1phC3RaWc5eQ1
 Qu6EEYdjhyy6Pb5M0i4sEDlDrPl8/c4=
X-Google-Smtp-Source: ABdhPJzj0cBvWqZZIOFnTl4fL/43EgoK/PMkniORcSN5tj+3Bl9D4o5CS/IEcb5GmdPRayNcC/8uPg==
X-Received: by 2002:a05:6512:12c9:: with SMTP id
 p9mr632758lfg.345.1633559443517; 
 Wed, 06 Oct 2021 15:30:43 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id y6sm401337lfj.47.2021.10.06.15.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 15:30:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  7 Oct 2021 01:30:38 +0300
Message-Id: <20211006223038.129681-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_153045_781107_24C6C7A6 
X-CRM114-Status: UNSURE (   9.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation/boards/riscv.rst: fix code blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/riscv.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 97f4d1deb7..b7a3a95f0f 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -168,13 +168,13 @@ Connect to board's UART with your favorite serial communication software
 (e.g. minicom) and check 'nmon> ' prompt (nmon runs from onchip ROM).
 
 Next close your communication software and use ./scripts/nmon-loader
-to load barebox image into board's DRAM, e.g.
+to load barebox image into board's DRAM, e.g.::
 
   # ./scripts/nmon-loader barebox.erizo.nmon /dev/ttyUSB0 115200
 
 Wait several munutes for 'nmon> ' prompt.
 
-Next, start barebox from DRAM:
+Next, start barebox from DRAM::
 
   nmon> g 80000000
   Switch to console [cs0]
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

