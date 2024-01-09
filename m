Delivery-date: Tue, 09 Jan 2024 10:17:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Ey-00A67Y-1H
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:17:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Ex-0000zg-1E
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:17:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t8WKbab9bK0jQCiL+MlRd9j+8BB6U/qsmQ/uSuWaxd0=; b=jlJO+AQF4W2lgoAvbSS0EHrydf
	CdAjGEIWBzHiXl7POpuyRRcnD8c4J4O/XNFrfkmqm340jctU8GP6v8FBS6MlUdzU8ZWa5fy7s4l3x
	BUj0B6Co7gDa5q1pNkLmHuxvW2g1LUmp2HIfIDYpbP7AmXc8Myf4Fbnc4rIBD0ZDUmk4fjBqpo0U8
	HNn7sMZgRqXOV93FgucI87rnYqlafPL+nzDNmF/QBt7BNAdGCpwgR4pJOeU6z2xQtJEOn+JHTMXKU
	0llYA+qHbWY1+juit8m3Hzb8REVR5I92UZ2rlNnySnDEaJR1J9zaYuaec6vLMcKRiDhdxtmrc5tTz
	DpApZU5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Df-007SQ3-2Z;
	Tue, 09 Jan 2024 09:16:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DY-007SMS-1F
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:16:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DP-0000Op-7O; Tue, 09 Jan 2024 10:16:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001RWi-KQ; Tue, 09 Jan 2024 10:16:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001A9f-1n;
	Tue, 09 Jan 2024 10:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 10:16:00 +0100
Message-Id: <20240109091603.235589-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109091603.235589-1-s.hauer@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_011616_428046_2F980A80 
X-CRM114-Status: GOOD (  11.40  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/10] immap_lsch3: Add more stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arch/arm/mach-layerscape/icid.c pokes on several peripheral base
addresses. Let's add some more stuff from the corresponding U-Boot
file for upcoming LS1028a support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/soc/fsl/immap_lsch3.h | 119 ++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/include/soc/fsl/immap_lsch3.h b/include/soc/fsl/immap_lsch3.h
index f2fdb7dfb3..f25a6e46be 100644
--- a/include/soc/fsl/immap_lsch3.h
+++ b/include/soc/fsl/immap_lsch3.h
@@ -29,8 +29,23 @@
 #define LSCH3_IFC_ADDR				(LSCH3_IMMR + 0x01240000)
 #define LSCH3_NS16550_COM1			(LSCH3_IMMR + 0x011C0500)
 #define LSCH3_NS16550_COM2			(LSCH3_IMMR + 0x011C0600)
+#define LSCH3_EDMA_ADDR				(LSCH3_IMMR + 0x012c0000)
 #define LSCH3_TIMER_ADDR			(LSCH3_IMMR + 0x013e0000)
+#define LSCH3_XHCI_USB1_ADDR			(LSCH3_IMMR + 0x02100000)
+#define LSCH3_XHCI_USB2_ADDR			(LSCH3_IMMR + 0x02110000)
+#define LSCH3_AHCI1_ADDR			(LSCH3_IMMR + 0x02200000)
+#define LSCH3_AHCI2_ADDR			(LSCH3_IMMR + 0x02210000)
+#define LSCH3_AHCI3_ADDR			(LSCH3_IMMR + 0x02220000)
+#define LSCH3_AHCI4_ADDR			(LSCH3_IMMR + 0x02230000)
 #define LSCH3_CCI400_ADDR			(LSCH3_IMMR + 0x03090000)
+#define LSCH3_SEC_ADDR				(LSCH3_IMMR + 0x07000000)
+#define LSCH3_SEC_JR0_ADDR			(LSCH3_IMMR + 0x07010000)
+#define LSCH3_SEC_JR1_ADDR			(LSCH3_IMMR + 0x07020000)
+#define LSCH3_SEC_JR2_ADDR			(LSCH3_IMMR + 0x07030000)
+#define LSCH3_SEC_JR3_ADDR			(LSCH3_IMMR + 0x07040000)
+#define LSCH3_QDMA_ADDR				(LSCH3_IMMR + 0x07380000)
+#define LSCH3_DISPLAY_ADDR			(LSCH3_IMMR + 0x0e080000)
+#define LSCH3_GPU_ADDR				(LSCH3_IMMR + 0x0e0c0000)
 #define LSCH3_PMU_CLTBENR			(LSCH3_PMU_ADDR + 0x18A0)
 #define LSCH3_PCTBENR_OFFSET			(LSCH3_PMU_ADDR + 0x8A0)
 #define LSCH3_SVR				(LSCH3_GUTS_ADDR + 0xA4)
@@ -183,5 +198,109 @@ struct lsch3_ccsr_gur {
 	u8	res_858[0x1000-0xc00];
 };
 
+struct rng4tst {
+	u32 rtmctl;		/* misc. control register */
+	u32 rtscmisc;		/* statistical check misc. register */
+	u32 rtpkrrng;		/* poker range register */
+	union {
+		u32 rtpkrmax;	/* PRGM=1: poker max. limit register */
+		u32 rtpkrsq;	/* PRGM=0: poker square calc. result register */
+	};
+	u32 rtsdctl;		/* seed control register */
+	union {
+		u32 rtsblim;	/* PRGM=1: sparse bit limit register */
+		u32 rttotsam;	/* PRGM=0: total samples register */
+	};
+	u32 rtfreqmin;		/* frequency count min. limit register */
+	union {
+		u32 rtfreqmax;	/* PRGM=1: freq. count max. limit register */
+		u32 rtfreqcnt;	/* PRGM=0: freq. count register */
+	};
+	u32 rsvd1[40];
+	u32 rdsta;		/*RNG DRNG Status Register*/
+	u32 rsvd2[15];
+};
+
+struct version_regs {
+	u32 crca;	/* CRCA_VERSION */
+	u32 afha;	/* AFHA_VERSION */
+	u32 kfha;	/* KFHA_VERSION */
+	u32 pkha;	/* PKHA_VERSION */
+	u32 aesa;	/* AESA_VERSION */
+	u32 mdha;	/* MDHA_VERSION */
+	u32 desa;	/* DESA_VERSION */
+	u32 snw8a;	/* SNW8A_VERSION */
+	u32 snw9a;	/* SNW9A_VERSION */
+	u32 zuce;	/* ZUCE_VERSION */
+	u32 zuca;	/* ZUCA_VERSION */
+	u32 ccha;	/* CCHA_VERSION */
+	u32 ptha;	/* PTHA_VERSION */
+	u32 rng;	/* RNG_VERSION */
+	u32 trng;	/* TRNG_VERSION */
+	u32 aaha;	/* AAHA_VERSION */
+	u32 rsvd[10];
+	u32 sr;		/* SR_VERSION */
+	u32 dma;	/* DMA_VERSION */
+	u32 ai;		/* AI_VERSION */
+	u32 qi;		/* QI_VERSION */
+	u32 jr;		/* JR_VERSION */
+	u32 deco;	/* DECO_VERSION */
+};
+
+struct ccsr_sec {
+	u32	res0;
+	u32	mcfgr;		/* Master CFG Register */
+	u8	res1[0x4];
+	u32	scfgr;
+	struct {
+		u32	ms;	/* Job Ring LIODN Register, MS */
+		u32	ls;	/* Job Ring LIODN Register, LS */
+	} jrliodnr[4];
+	u8	res2[0x2c];
+	u32	jrstartr;	/* Job Ring Start Register */
+	struct {
+		u32	ms;	/* RTIC LIODN Register, MS */
+		u32	ls;	/* RTIC LIODN Register, LS */
+	} rticliodnr[4];
+	u8	res3[0x1c];
+	u32	decorr;		/* DECO Request Register */
+	struct {
+		u32	ms;	/* DECO LIODN Register, MS */
+		u32	ls;	/* DECO LIODN Register, LS */
+	} decoliodnr[16];
+	u32	dar;		/* DECO Avail Register */
+	u32	drr;		/* DECO Reset Register */
+	u8	res5[0x4d8];
+	struct rng4tst rng;	/* RNG Registers */
+	u8	res6[0x780];
+	struct version_regs vreg; /* version registers since era 10 */
+	u8	res7[0xa0];
+	u32	crnr_ms;	/* CHA Revision Number Register, MS */
+	u32	crnr_ls;	/* CHA Revision Number Register, LS */
+	u32	ctpr_ms;	/* Compile Time Parameters Register, MS */
+	u32	ctpr_ls;	/* Compile Time Parameters Register, LS */
+	u8	res8[0x10];
+	u32	far_ms;		/* Fault Address Register, MS */
+	u32	far_ls;		/* Fault Address Register, LS */
+	u32	falr;		/* Fault Address LIODN Register */
+	u32	fadr;		/* Fault Address Detail Register */
+	u8	res9[0x4];
+	u32	csta;		/* CAAM Status Register */
+	u32	smpart;		/* Secure Memory Partition Parameters */
+	u32	smvid;		/* Secure Memory Version ID */
+	u32	rvid;		/* Run Time Integrity Checking Version ID Reg.*/
+	u32	ccbvid;		/* CHA Cluster Block Version ID Register */
+	u32	chavid_ms;	/* CHA Version ID Register, MS */
+	u32	chavid_ls;	/* CHA Version ID Register, LS */
+	u32	chanum_ms;	/* CHA Number Register, MS */
+	u32	chanum_ls;	/* CHA Number Register, LS */
+	u32	secvid_ms;	/* SEC Version ID Register, MS */
+	u32	secvid_ls;	/* SEC Version ID Register, LS */
+	u8	res10[0x6f020];
+	u32	qilcr_ms;	/* Queue Interface LIODN CFG Register, MS */
+	u32	qilcr_ls;	/* Queue Interface LIODN CFG Register, LS */
+	u8	res11[0x8ffd8];
+};
+
 #endif /*__ASSEMBLY__ */
 #endif /* __ARCH_FSL_LSCH3_IMMAP_H_ */
-- 
2.39.2



