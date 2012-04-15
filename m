Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQtE-0007ap-Sq
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:57:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:57:14 +0200
Message-Id: <1334501834-32001-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334501834-32001-1-git-send-email-s.hauer@pengutronix.de>
References: <1334501834-32001-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ppc: remove unused bd_t
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/barebox.h |  103 ----------------------------------------
 1 file changed, 103 deletions(-)

diff --git a/arch/ppc/include/asm/barebox.h b/arch/ppc/include/asm/barebox.h
index ac81495..a08e998 100644
--- a/arch/ppc/include/asm/barebox.h
+++ b/arch/ppc/include/asm/barebox.h
@@ -28,107 +28,4 @@
 #ifndef __BAREBOX_H__
 #define __BAREBOX_H__
 
-/*
- * Board information passed to Linux kernel from barebox
- *
- * include/asm-ppc/barebox.h
- */
-
-#ifndef __ASSEMBLY__
-
-typedef struct bd_info {
-	unsigned long	bi_memstart;	/* start of DRAM memory */
-	unsigned long	bi_memsize;	/* size	 of DRAM memory in bytes */
-	unsigned long	bi_flashstart;	/* start of FLASH memory */
-	unsigned long	bi_flashsize;	/* size	 of FLASH memory */
-	unsigned long	bi_flashoffset; /* reserved area for startup monitor */
-	unsigned long	bi_sramstart;	/* start of SRAM memory */
-	unsigned long	bi_sramsize;	/* size	 of SRAM memory */
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx) || defined(CONFIG_8260) \
-	|| defined(CONFIG_E500) || defined(CONFIG_MPC86xx)
-	unsigned long	bi_immr_base;	/* base of IMMR register */
-#endif
-#if defined(CONFIG_MPC5xxx)
-	unsigned long	bi_mbar_base;	/* base of internal registers */
-#endif
-#if defined(CONFIG_MPC83XX)
-	unsigned long	bi_immrbar;
-#endif
-#if defined(CONFIG_MPC8220)
-	unsigned long	bi_mbar_base;	/* base of internal registers */
-	unsigned long   bi_inpfreq;     /* Input Freq, In MHz */
-	unsigned long   bi_pcifreq;     /* PCI Freq, in MHz */
-	unsigned long   bi_pevfreq;     /* PEV Freq, in MHz */
-	unsigned long   bi_flbfreq;     /* Flexbus Freq, in MHz */
-	unsigned long   bi_vcofreq;     /* VCO Freq, in MHz */
-#endif
-	unsigned long	bi_bootflags;	/* boot / reboot flag (for LynxOS) */
-	unsigned long	bi_ip_addr;	/* IP Address */
-	unsigned char	bi_enetaddr[6];	/* Ethernet adress */
-	unsigned short	bi_ethspeed;	/* Ethernet speed in Mbps */
-	unsigned long	bi_intfreq;	/* Internal Freq, in MHz */
-	unsigned long	bi_busfreq;	/* Bus Freq, in MHz */
-#if defined(CONFIG_CPM2)
-	unsigned long	bi_cpmfreq;	/* CPM_CLK Freq, in MHz */
-	unsigned long	bi_brgfreq;	/* BRG_CLK Freq, in MHz */
-	unsigned long	bi_sccfreq;	/* SCC_CLK Freq, in MHz */
-	unsigned long	bi_vco;		/* VCO Out from PLL, in MHz */
-#endif
-#if defined(CONFIG_MPC5xxx)
-	unsigned long	bi_ipbfreq;	/* IPB Bus Freq, in MHz */
-	unsigned long	bi_pcifreq;	/* PCI Bus Freq, in MHz */
-#endif
-	unsigned long	bi_baudrate;	/* Console Baudrate */
-#if defined(CONFIG_405)   || \
-    defined(CONFIG_405GP) || \
-    defined(CONFIG_405CR) || \
-    defined(CONFIG_405EP) || \
-    defined(CONFIG_440)
-	unsigned char	bi_s_version[4];	/* Version of this structure */
-	unsigned char	bi_r_version[32];	/* Version of the ROM (AMCC) */
-	unsigned int	bi_procfreq;	/* CPU (Internal) Freq, in Hz */
-	unsigned int	bi_plb_busfreq;	/* PLB Bus speed, in Hz */
-	unsigned int	bi_pci_busfreq;	/* PCI Bus speed, in Hz */
-	unsigned char	bi_pci_enetaddr[6];	/* PCI Ethernet MAC address */
-#endif
-#if defined(CONFIG_HYMOD)
-	hymod_conf_t	bi_hymod_conf;	/* hymod configuration information */
-#endif
-
-#ifdef CONFIG_HAS_ETH1
-	/* second onboard ethernet port */
-	unsigned char   bi_enet1addr[6];
-#endif
-#ifdef CONFIG_HAS_ETH2
-	/* third onboard ethernet port */
-	unsigned char	bi_enet2addr[6];
-#endif
-#ifdef CONFIG_HAS_ETH3
-	unsigned char   bi_enet3addr[6];
-#endif
-
-#if defined(CONFIG_405GP) || defined(CONFIG_405EP) || defined (CONFIG_440GX) || \
-    defined(CONFIG_440EP) || defined(CONFIG_440GR) || \
-    defined(CONFIG_440EPX) || defined(CONFIG_440GRX)
-	unsigned int	bi_opbfreq;		/* OPB clock in Hz */
-	int		bi_iic_fast[2];		/* Use fast i2c mode */
-#endif
-#if defined(CONFIG_NX823)
-	unsigned char	bi_sernum[8];
-#endif
-#if defined(CONFIG_4xx)
-#if defined(CONFIG_440GX)
-	int 		bi_phynum[4];           /* Determines phy mapping */
-	int 		bi_phymode[4];          /* Determines phy mode */
-#elif defined(CONFIG_405EP) || defined(CONFIG_440)
-	int 		bi_phynum[2];           /* Determines phy mapping */
-	int 		bi_phymode[2];          /* Determines phy mode */
-#else
-	int 		bi_phynum[1];           /* Determines phy mapping */
-	int 		bi_phymode[1];          /* Determines phy mode */
-#endif
-#endif /* defined(CONFIG_4xx) */
-} bd_t;
-
-#endif /* __ASSEMBLY__ */
 #endif	/* __BAREBOX_H__ */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
