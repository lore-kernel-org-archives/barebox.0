Delivery-date: Thu, 15 Apr 2021 15:17:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX1sG-0007SV-8O
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 15:17:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX1sF-0008Hk-CH
	for lore@pengutronix.de; Thu, 15 Apr 2021 15:17:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bzUO7KtIyWFWzQsGKSVgwjBoHz/eRJ2boGRefKMgN9Y=; b=nPvTzqH54zSXO7
	cPRe/wKV8MRM1I8+hjDKMVFQM7J9CnTXfzv4TSqGRWiWU3rmNYESLvABwak009WLcmXJHBDB9Hs4V
	GkcxUNmZcEqJoErGLMjtmnbFKiRYTnnHrH0NmoNhRBjCmzW8IhGr03rR0/qe0SrvdR0vAV48IG+lw
	9fyP59F9rwHpweftwwrgvxIgq4j3Rq+S2ILCWYyGy0hiOZjvauxh0qVywKRHh/u3FXJziyD0FFWF3
	khStXpgbXe6PwxT3xrbKPXCCCCtWf9F9sHmQs/VOVx3dx3klESpgaH+Ku5VQMOIf8WOMmYPlMMaWi
	lsUJbUK6QoawJls3/psQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX1r8-00GESe-Uq; Thu, 15 Apr 2021 13:16:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX1r5-00GESG-04
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 13:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=6fTJ246eOcYzmi4qkf6NIrtJQFiXKOq/KRYxKIfBhsg=; b=yndFEjlAb/gCPa54sMFQ/ZZwjq
 nxDYBQAdoCtgcs3+xtT/0jf/1YDtrjmVeYgAKLXZlMDZ93xJM7pG3SxmicP9hmD5n92mblDaY38p5
 +naMkznO4y9YB0TmP82G0E6iuZ6fqlbAZ6J4zcbYD+yskvC6CeDqyUJ6ki9Ql3ORHkXGhSNvnPiVp
 xG4BdvD+t5Xk0tEdbWBxZRo3eKo205cSTtrbHwG31fEYesx44pQfdWh5+fP0yflPISu7crHXepBAV
 K4SmVdvmxMkGfVUVAESqZjI6cAZE0gmTaFitqBPWcuuezZWKi13GvVrpUsyMOFTt3Z8xdqaTEm1eA
 5QiMHn7A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX1r2-008bAp-4V
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 13:16:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX1r0-0008B3-MP; Thu, 15 Apr 2021 15:16:18 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX1r0-0001Vx-EX; Thu, 15 Apr 2021 15:16:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Apr 2021 15:16:16 +0200
Message-Id: <20210415131617.3582-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_061620_214395_94FD408A 
X-CRM114-Status: UNSURE (   8.78  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: Update sabresdb dcd data from U-Boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DCD data for the SabreSD board goes back to 2013. This updates the
DCD data with the values from U-Boot-2021.04 which are likely better
maintained.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../flash-header-mx6-sabresd.imxcfg           | 144 +++++++-----------
 1 file changed, 53 insertions(+), 91 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
index 133f499ab9..d0a0b40189 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
@@ -1,128 +1,90 @@
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
+wm 32 0x20e056c 0x00020030
+wm 32 0x20e0578 0x00020030
+wm 32 0x20e0588 0x00020030
+wm 32 0x20e0594 0x00020030
+wm 32 0x20e0798 0x000C0000
+wm 32 0x20e0758 0x00000000
+wm 32 0x20e0588 0x00000030
+wm 32 0x20e0594 0x00000030
+wm 32 0x20e056c 0x00000030
+wm 32 0x20e0578 0x00000030
+wm 32 0x20e074c 0x00000030
+wm 32 0x20e057c 0x00000030
+wm 32 0x20e058c 0x00000000
+wm 32 0x20e059c 0x00000030
+wm 32 0x20e05a0 0x00000030
+wm 32 0x20e078c 0x00000030
+wm 32 0x20e0750 0x00020000
 wm 32 0x20e05a8 0x00000030
 wm 32 0x20e05b0 0x00000030
 wm 32 0x20e0524 0x00000030
 wm 32 0x20e051c 0x00000030
-
 wm 32 0x20e0518 0x00000030
 wm 32 0x20e050c 0x00000030
 wm 32 0x20e05b8 0x00000030
 wm 32 0x20e05c0 0x00000030
-
-wm 32 0x20e05ac 0x00020030
-wm 32 0x20e05b4 0x00020030
-wm 32 0x20e0528 0x00020030
-wm 32 0x20e0520 0x00020030
-
-wm 32 0x20e0514 0x00020030
-wm 32 0x20e0510 0x00020030
-wm 32 0x20e05bc 0x00020030
-wm 32 0x20e05c4 0x00020030
-
-wm 32 0x20e056c 0x00020030
-wm 32 0x20e0578 0x00020030
-wm 32 0x20e0588 0x00020030
-wm 32 0x20e0594 0x00020030
-
-wm 32 0x20e057c 0x00020030
-wm 32 0x20e0590 0x00003000
-wm 32 0x20e0598 0x00003000
-wm 32 0x20e058c 0x00000000
-
-wm 32 0x20e059c 0x00003030
-wm 32 0x20e05a0 0x00003030
+wm 32 0x20e0774 0x00020000
 wm 32 0x20e0784 0x00000030
 wm 32 0x20e0788 0x00000030
-
 wm 32 0x20e0794 0x00000030
 wm 32 0x20e079c 0x00000030
 wm 32 0x20e07a0 0x00000030
 wm 32 0x20e07a4 0x00000030
-
 wm 32 0x20e07a8 0x00000030
 wm 32 0x20e0748 0x00000030
-wm 32 0x20e074c 0x00000030
-wm 32 0x20e0750 0x00020000
-
-wm 32 0x20e0758 0x00000000
-wm 32 0x20e0774 0x00020000
-wm 32 0x20e078c 0x00000030
-wm 32 0x20e0798 0x000C0000
-
+wm 32 0x20e05ac 0x00000030
+wm 32 0x20e05b4 0x00000030
+wm 32 0x20e0528 0x00000030
+wm 32 0x20e0520 0x00000030
+wm 32 0x20e0514 0x00000030
+wm 32 0x20e0510 0x00000030
+wm 32 0x20e05bc 0x00000030
+wm 32 0x20e05c4 0x00000030
+wm 32 0x21b0800 0xa1390003
+wm 32 0x21b080c 0x001F001F
+wm 32 0x21b0810 0x001F001F
+wm 32 0x21b480c 0x001F001F
+wm 32 0x21b4810 0x001F001F
+wm 32 0x21b083c 0x43270338
+wm 32 0x21b0840 0x03200314
+wm 32 0x21b483c 0x431A032F
+wm 32 0x21b4840 0x03200263
+wm 32 0x21b0848 0x4B434748
+wm 32 0x21b4848 0x4445404C
+wm 32 0x21b0850 0x38444542
+wm 32 0x21b4850 0x4935493A
 wm 32 0x21b081c 0x33333333
 wm 32 0x21b0820 0x33333333
 wm 32 0x21b0824 0x33333333
 wm 32 0x21b0828 0x33333333
-
 wm 32 0x21b481c 0x33333333
 wm 32 0x21b4820 0x33333333
 wm 32 0x21b4824 0x33333333
 wm 32 0x21b4828 0x33333333
-
-wm 32 0x21b0018 0x00081740
-
-wm 32 0x21b001c 0x00008000
+wm 32 0x21b08b8 0x00000800
+wm 32 0x21b48b8 0x00000800
+wm 32 0x21b0004 0x00020036
+wm 32 0x21b0008 0x09444040
 wm 32 0x21b000c 0x555A7975
-wm 32 0x21b0010 0xFF538E64
+wm 32 0x21b0010 0xFF538F64
 wm 32 0x21b0014 0x01FF00DB
-wm 32 0x21b002c 0x000026D2
-
-wm 32 0x21b0030 0x005B0E21
-wm 32 0x21b0008 0x09444040
-wm 32 0x21b0004 0x00025576
+wm 32 0x21b0018 0x00001740
+wm 32 0x21b001c 0x00008000
+wm 32 0x21b002c 0x000026d2
+wm 32 0x21b0030 0x005A1023
 wm 32 0x21b0040 0x00000027
 wm 32 0x21b0000 0x831A0000
-
 wm 32 0x21b001c 0x04088032
-wm 32 0x21b001c 0x0408803A
 wm 32 0x21b001c 0x00008033
-wm 32 0x21b001c 0x0000803B
-wm 32 0x21b001c 0x00428031
-wm 32 0x21b001c 0x00428039
+wm 32 0x21b001c 0x00048031
 wm 32 0x21b001c 0x09408030
-wm 32 0x21b001c 0x09408038
-
 wm 32 0x21b001c 0x04008040
-wm 32 0x21b001c 0x04008048
-wm 32 0x21b0800 0xA1380003
-wm 32 0x21b4800 0xA1380003
 wm 32 0x21b0020 0x00005800
-wm 32 0x21b0818 0x00022227
-wm 32 0x21b4818 0x00022227
-
-wm 32 0x21b083c 0x434B0350
-wm 32 0x21b0840 0x034C0359
-wm 32 0x21b483c 0x434B0350
-wm 32 0x21b4840 0x03650348
-wm 32 0x21b0848 0x4436383B
-wm 32 0x21b4848 0x39393341
-wm 32 0x21b0850 0x35373933
-wm 32 0x21b4850 0x48254A36
-
-wm 32 0x21b080c 0x001F001F
-wm 32 0x21b0810 0x001F001F
-
-wm 32 0x21b480c 0x00440044
-wm 32 0x21b4810 0x00440044
-
-wm 32 0x21b08b8 0x00000800
-wm 32 0x21b48b8 0x00000800
-
-wm 32 0x21b001c 0x00000000
+wm 32 0x21b0818 0x00011117
+wm 32 0x21b4818 0x00011117
+wm 32 0x21b0004 0x00025576
 wm 32 0x21b0404 0x00011006
-
-wm 32 0x020c4068 0x00c03f3f
-wm 32 0x020c406c 0x0030fc03
-wm 32 0x020c4070 0x0fffc000
-wm 32 0x020c4074 0x3ff00000
-wm 32 0x020c4078 0x00fff300
-wm 32 0x020c407c 0x0f0000c3
-wm 32 0x020c4080 0x000003ff
-
-# enable AXI cache for VDOA/VPU/IPU
-wm 32 0x20e0010 0xf00000cf
-# set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7
-wm 32 0x20e0018 0x007f007f
-wm 32 0x20e001c 0x007f007f
+wm 32 0x21b001c 0x00000000
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

