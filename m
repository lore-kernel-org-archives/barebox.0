Delivery-date: Tue, 11 Apr 2023 09:16:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FJ-00HI6P-On
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8F6-0001fj-N5
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EhpT1idvPXc4opBGKj5cr426x+frQsOL3Ceodq8lzBE=; b=SWNbh+yneqY6DRgL+mdP1gv/ad
	T4rGYwoZ9RvdOgSu2mmp2FT8b0Gcl58hSha0+Iqe4MVSBVXy9pf5Bgb6ew266z9e/tZj6UkZ+DuVy
	CIPqYCDYKijidcKVtMySYadE/4Rkx4UtZV9ubN+3xdiyQVsPUWUlkn50c4teMhnG97EoomsOXNlb3
	HTdHWgec+xEoKogxkjdj6LNyuL1i48plUmCHRa0lzbL65Clbeb7XX9bKLYDE99MfR+0CJVRsx3es1
	ftta581hLDIU/hfB3G93uLgAzzvI9lmxyXtMcrN1QrHKLUauNsnyFOEWKA3CgYr1J9Z3wFxxGEfA8
	a54z6ztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DT-00Gg6W-1Y;
	Tue, 11 Apr 2023 07:14:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DI-00Gfxj-0i
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000sv-Jg; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-00ARw1-01; Tue, 11 Apr 2023 09:14:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNo-PC; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:30 +0200
Message-Id: <20230411071436.1630752-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001448_257514_5929FB59 
X-CRM114-Status: UNSURE (   9.17  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 08/14] RISC-V: configs: rv64i_defconfig: disable SBI serial
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Virt64, enabling SBI serial leads to doubled output, because both
OpenSBI and barebox use the same serial for output and all consoles
are enabled by default.

Given that SBI PUTCHAR is no longer part of newer SBI specs, we can
just disable the sbi console driver in the defconfig to work around
this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/configs/rv64i_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index 2c5bfd2df131..53c367c5e415 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -97,7 +97,6 @@ CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_SERIAL_SBI=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_SERIAL_SIFIVE=y
 CONFIG_DRIVER_NET_MACB=y
-- 
2.39.2



