Delivery-date: Fri, 28 Jun 2024 15:04:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNBGo-00Dfqx-0c
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 15:04:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNBGn-0002n9-Gs
	for lore@pengutronix.de; Fri, 28 Jun 2024 15:04:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6I13oq/F3un/IL9KtWV91o5Mes39pBdbIptzfQqjSjM=; b=gSGmAFzl59V0fNF9Y/+Kys18Mb
	i3etxx/pEa7lB3RZcEzPoKayxDVIH1DIjVhGX4hNYZSJPcxyB0z7e70aqzTz2Ah9+fkcm4KB99ms3
	WspfVGcSRFWuGx5t1Up2f9B05iyBS9iM4E98kG4UrHw6usqscd8WinvE21gpAag1yf6yv/2gafSo7
	NdtlxJz1gU0NMYGcfvUyYiGvoVD8ADWsaQ38VBIVV3PTPjsjkLOBHWP7SwJcUL1M5M7IjOKq/qq4I
	OursSaDjTVH/tIBd/y1ByUQIfuhQYTcWifIyOKV3TJ7FA5nbe5GuXhFsoNgkKoTdYh+BVCTURhpGV
	OMXGBicw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNBGE-0000000DlGc-3yyF;
	Fri, 28 Jun 2024 13:03:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNBGB-0000000DlG4-2RND
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 13:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sNBG9-0002Yy-LK; Fri, 28 Jun 2024 15:03:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sNBG9-005byy-8r; Fri, 28 Jun 2024 15:03:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sNBG9-00854r-0a;
	Fri, 28 Jun 2024 15:03:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Jun 2024 15:03:23 +0200
Message-Id: <20240628130323.1926125-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_060327_641841_C91BBA48 
X-CRM114-Status: UNSURE (   9.89  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master] ARM: Rockchip: call arm_cpu_lowlevel_init() in EL2/EL1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TF-A blob in RKBIN seems to initialize use of NEON and the crypto
extensions for lower exception levels. Using the now available upstream
TF-A doesn't seem to do this with the result that enabling the
CONFIG_DIGEST_SHA256_ARM64_CE and CONFIG_DIGEST_SHA1_ARM64_CE options
can lead to crashes:

  Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34bf3
  elr: 00000000efd7da48 lr : 00000000efd7d7e0
  x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
  x2 : 0000000000000000 x3 : 0000000000000020
  x4 : 0000000000000000 x5 : 00000000efff7dd8
  x6 : 00000000ca62c1d6 x7 : 0000000000000000
  x8 : 00000000afdc1b68 x9 : 0000000000000000
  x10: 0000000000000000 x11: 00000000fffffff6
  x12: 00000000fffffff6 x13: 0000000000000020
  x14: 0000000000000000 x15: 0000000000000003
  x16: 00000000efff7968 x17: 0000000000000003
  x18: 00000000efff7ef0 x19: 0000000000000001
  x20: 00000000afdc1b30 x21: 00000000afdc1b10
  x22: 00000000afdc1b30 x23: 00000000ef600000
  x24: 0000000000b35a40 x25: 0000000000080051
  x26: 0000000000106858 x27: 00000000effe0000
  x28: 0000000000000000 x29: 00000000efff7e40

  Call trace:
  [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
  (sha1_ce_final+0xbc/0x114)
  [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
  (machine_id_set_globalvar+0x7c/0x100)
  [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
  (start_barebox+0x60/0x8c)
  [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
  (barebox_non_pbl_start+0x11c/0x150)
  [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
  (__bare_init_start+0x0/0x14)
  [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c)
  [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
  panic: unhandled exception
  ### ERROR ### Please RESET the board ###

Fix this by calling arm_cpu_lowlevel_init() outside EL3 as well.

Link: https://lore.barebox.org/barebox/CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com/
Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Untested, @Alxander, can you give this a go?
---
 arch/arm/mach-rockchip/atf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index eaba209ff32d..bc47c64078f7 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -134,6 +134,9 @@ void __noreturn rk3588_barebox_entry(void *fdt)
                 */
                rk3588_atf_load_bl31(NULL);
                /* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
+       } else {
+	       /* TF-A may not have enabled SIMD for lower exception levels */
+	       arm_cpu_lowlevel_init();
        }
 
        barebox_arm_entry(membase, memsize, fdt);
-- 
2.39.2



