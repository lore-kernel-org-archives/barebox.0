Delivery-date: Mon, 17 Jun 2024 13:37:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfv-007YfE-2E
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfu-00079M-Ua
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ByV9UMVOpQPlbx6ZYNIJu8H0QPajOt7lbWu4u/kif60=; b=yQBqFQbVSpO66c0Z2ixJDT0ApX
	8FR6/jYyxarT8/lNMiniLQGNZWQ1eVPIApsW1QM80dWIu5pMNInIJiC8JS3YKEa+66g5E+MdB1KOR
	ErkPbdQmH0RaIy/ZlFPiXxOV6I+IYr93hP9gHxsWCCesieIRqpphQJ3KKzvJ5R3Y/mfS3ME3Ay4TV
	C9gCLAp0BBcf9gXHuCnP3nmIM8MRvYY2/OgQ58teHLZ8NrRWXGVaGUtm3RfmQqxUqywJoDb/DN/o5
	03FIZ2vegwxIhhz9skvT3NJIS/SG/fDQ55UEh9bDlLBnhOQdrAQM7Q/z80lEBoFm8giBOeaBjW1TI
	nrpl+bwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfJ-0000000AVep-0QLj;
	Mon, 17 Jun 2024 11:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVW9-0wfQ
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf7-0006ab-OI; Mon, 17 Jun 2024 13:36:37 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-1-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_349846_36AAD9AD 
X-CRM114-Status: UNSURE (   6.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/14] ARM: arria10: system-manager: add handoff registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The isw handoff registers are free to use for the bootloader. Add their
offsets for lowlevel debugging purposes.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/mach/socfpga/arria10-system-manager.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/mach/socfpga/arria10-system-manager.h b/include/mach/socfpga/arria10-system-manager.h
index f92025ae32..536baf6bc3 100644
--- a/include/mach/socfpga/arria10-system-manager.h
+++ b/include/mach/socfpga/arria10-system-manager.h
@@ -53,6 +53,15 @@
 #define ARRIA10_SYSMGR_FPGA2SOC_CTRL		(ARRIA10_SYSMGR_ADDR + 0xd8)
 
 #define ARRIA10_SYSMGR_ROM_INITSWLASTLD		(ARRIA10_SYSMGR_ADDR + 0x10)
+#define ARRIA10_SYSMGR_ROM_ISW0			(ARRIA10_SYSMGR_ADDR + 0x230)
+#define ARRIA10_SYSMGR_ROM_ISW1			(ARRIA10_SYSMGR_ADDR + 0x234)
+#define ARRIA10_SYSMGR_ROM_ISW2			(ARRIA10_SYSMGR_ADDR + 0x238)
+#define ARRIA10_SYSMGR_ROM_ISW3			(ARRIA10_SYSMGR_ADDR + 0x23c)
+#define ARRIA10_SYSMGR_ROM_ISW4			(ARRIA10_SYSMGR_ADDR + 0x240)
+#define ARRIA10_SYSMGR_ROM_ISW5			(ARRIA10_SYSMGR_ADDR + 0x244)
+#define ARRIA10_SYSMGR_ROM_ISW6			(ARRIA10_SYSMGR_ADDR + 0x248)
+#define ARRIA10_SYSMGR_ROM_ISW7			(ARRIA10_SYSMGR_ADDR + 0x24c)
+
 
 
 #define ARRIA10_SYSMGR_BOOTINFO_BSEL_MASK	0x00007000

-- 
2.43.2



