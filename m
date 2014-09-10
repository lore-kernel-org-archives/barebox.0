Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYS-0003ws-P9
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:05 +0000
Received: by mail-lb0-f175.google.com with SMTP id v6so4339185lbi.34
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:21 +0400
Message-Id: <1410334946-12922-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/9] MIPS: add (another) Ingenic vendor ID
To: barebox@lists.infradead.org

The latest Ingenic CPUs (e.g. JZ4780) use new vendor ID.

Based on commit from https://github.com/MIPS/CI20_linux/tree/ci20-v3.16

  commit 00b672aa52f299f1d67ab18274c3f5e5d5a15767
  Author: Paul Burton <paul.burton@imgtec.com>
  Date:   Mon Jul 8 12:14:28 2013 +0100

      MIPS: add (another) Ingenic vendor ID

      Ingenic have switched to a new vendor ID for the Xburst core used in
      their current SoCs such as the jz4780. Add this vendor ID and handle it
      in addition to their former vendor ID.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/cpu.h | 1 +
 arch/mips/lib/cpu-probe.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index dcc2a27..572cabb 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -27,6 +27,7 @@
 #define PRID_COMP_MIPS		0x010000
 #define PRID_COMP_BROADCOM	0x020000
 #define PRID_COMP_INGENIC	0xd00000
+#define PRID_COMP_INGENIC2	0xe10000
 
 /*
  * Assigned Processor ID (implementation) values for bits 15:8 of the PRId
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 8235a54..4622bcd 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -158,6 +158,7 @@ void cpu_probe(void)
 		cpu_probe_broadcom(c);
 		break;
 	case PRID_COMP_INGENIC:
+	case PRID_COMP_INGENIC2:
 		cpu_probe_ingenic(c);
 		break;
 	}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
