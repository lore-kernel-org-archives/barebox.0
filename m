Delivery-date: Mon, 10 Oct 2022 08:35:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmOH-0034h7-UI
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:35:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmOG-0004PY-0m
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:35:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Z3lhJ1S3sxAEuaW//OKOuEhCDgOUlndHCDcV5Tj3TE=; b=jjRYGoLw6yKn0Lqe8DwujVUOjV
	JdVH+B4xRduk/M3ZcFXdSITcGYISJV8Z3StkzdhlZdGhP7RJMM8NiM044MHccoBJ2UI2UteQIaxOP
	X753bFQvya1fNlWtBZkugQ7MjmSTfUUQSOUSZ2Wmr+JeTBEV9vow4Uzj2k9m7U2XKPbJLHWFujfoq
	shtY1uEZN3V6CdPSpkbTvRAkcMhoYAYpFS4NpKwqwdWxSQlHQaxjurlfqkYWmygwNcH60kpweG9aG
	RSY57SgiQI9stJeB/3jKOpsDPjonCmP1MCRv+n8zIn6WNQeM89QRc2RpeyTYqkjNgd1jlAKdUPaHJ
	E23E8ing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmN3-00HF0L-VD; Mon, 10 Oct 2022 06:34:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmMz-00HEzi-IR
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmMy-0004Bu-92; Mon, 10 Oct 2022 08:34:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmMx-000dbr-JV; Mon, 10 Oct 2022 08:34:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmMw-008qM2-Te; Mon, 10 Oct 2022 08:34:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:34:30 +0200
Message-Id: <20221010063430.2107824-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_233433_625081_7EF3A2BA 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

BootROM on the i.MX7 doesn't set the SMP bit when booted
over serial download. This leads to vastly worse performance
when doing memory-heavy operations in a USB-booted system,
as the caches are not utilized. Example running md5sum over
a 25M image in ramfs:

  without patch: 10796ms
  with    patch: 457ms

This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
well, which also has the Cortex-A7 as CPU. Like with
imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
slow down.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
v1 -> v2:
  - don't drop arm arm_cpu_lowlevel_init as cortex_a7_lowlevel_init
    does not call it (Marco)
---
 arch/arm/mach-imx/cpu_init.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index ea3621541979..3f16ca70ce26 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -49,6 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
 
 void imx7_cpu_lowlevel_init(void)
 {
+	cortex_a7_lowlevel_init();
 	arm_cpu_lowlevel_init();
 	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
 }
-- 
2.30.2



