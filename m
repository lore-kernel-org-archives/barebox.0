Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg01N-0005MY-Pm
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 04:59:03 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 06:58:44 +0200
Message-Id: <fd628c977540248c78d6ca26d5023e85b3d923b7.1561525118.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/13] arm: lib: add CSF section between PBL and piggy
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signing on i.MX8MQ is done by signing only the PBL, since the DRAM is
not available on early start and the SRAM is not big enough to contain
the whole image. Reserve a CSF area between PBL and the piggydata, to
ensure that the CSF area can be loaded into SRAM.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 300671b..d2f5ab2 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -90,6 +90,16 @@ SECTIONS
 
 	pbl_memory_size =  . - BASE;
 
+#if defined(CONFIG_CPU_64) && defined(CONFIG_HABV4)
+	. = ALIGN(0x1000);
+	__csf_start = .;
+	.hab_csf : {
+		BYTE(0x5a);
+		. += + 0x1fff;
+	} = 0x5a
+	__csf_end = .;
+#endif /* CONFIG_CPU_64 && CONFIG_HABV4 */
+
 	. = ALIGN(4);
 	__piggydata_start = .;
 	.piggydata : {
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
