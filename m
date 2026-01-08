Delivery-date: Thu, 08 Jan 2026 17:02:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTB-002ffI-2E
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT8-00019y-T2
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e6xgPL1u97U8siFAFO2MSeh5bXeYr8J2+4Jlzjfl3cc=; b=f5xo8ztphXtxattpHQ0h9bKai5
	e9FdhGjpZkqRnHfSSmwXtUHZ0hubDiN+3jcvIf4DmbUMfLM47uNkbOyvqMuYySJINFdiY9HUUSeU0
	43uGDZ6l7bL4+fwTEENza1oQWBfoKYcpWZ04xplt4Sm00fNUyC39lPpnfIfFZqVVTqqAEIn94Vwgw
	IxZMZUmW3EjPSuYGnY83TUgqGdLcndjHWPzgszUpUYP+rQliiQDHirGGx/0pQKJI7BhKu/0vAgGhz
	gvdbRQl+w6s2RLJxE0qMiggvkCOZOFRz48eXLZHLgAEOzkOjek1dqjHpXm0oUW/gjMsbp6Dr/fwX5
	b+frcsWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSH-000000001uM-1vZY;
	Thu, 08 Jan 2026 16:01:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS6-000000001sV-2o7O
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=e6xgPL1u97U8siFAFO2MSeh5bXeYr8J2+4Jlzjfl3cc=; b=mDOWwxxpfO0NthUKlrKk1OO3FN
	bHZIX04KzBDbv0B3F5uwdA7dZ7V6KKJYhY7CCgTSYPUku13Q0ri/NTVS0hMFtlowEla2OklwAE3RB
	FufJLYyIFGESW0c4ZT5GrYZDkQYkr25Tc3I0qF5pi8oA1i1GLhGgU6tfIi2Zp8Sa9zBXqLK1y9j3b
	sFIjJ3WhOhJxWraxKp8busSaUXj+E+XjigMfy/1BhypCFp1p1oQz/IW9YcdsbSGuxPHtklJgbJT+A
	SWrSqsYUUf3ZjNb9ExhCDKjXq8/SI4zHPp2lL8euOugkCLEqnEOJMdWE+3P1/RdugIcHihru+pXyW
	GpiyfvCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaTi-1bwN
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-0000Qo-Mt; Thu, 08 Jan 2026 17:01:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hX0-1Y;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1c6z;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-20-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=814;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ej+wU3+RaUFPlc5c7uZsa2b43U2UnNPECeSOygKGhVs=;
 b=klCzEhkdf1b5lJRINXCcbDBXq9AZJ6QQh12kUR+5F8gq/RHigFfYOmuaBQuwkEaszpXeAAbDI
 CJaVtvlo+52B8YgPBsnV5Tia7+5hOlb4ssNCml+3de1RlnuwMjVYJPw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_512022_447DE248 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 20/23] riscv: Allwinner D1: Drop M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Allwinner D1 selects both RISCV_M_MODE and RISCV_S_MODE. The board
code uses barebox_riscv_machine_entry() and not barebox_riscv_machine_entry()
which indicates RISCV_M_MODE was only selected by accident. Remove it.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig.socs | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 4a3b56b5fff48c86901ed0346be490a6847ac14e..0d9984dd2888e6cab81939e3ee97ef83851362a0 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -123,7 +123,6 @@ if SOC_ALLWINNER_SUN20I
 config BOARD_ALLWINNER_D1
 	bool "Allwinner D1 Nezha"
 	select RISCV_S_MODE
-	select RISCV_M_MODE
 	def_bool y
 
 endif

-- 
2.47.3



