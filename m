Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZDx-00044H-0X
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:14 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:43 +0200
Message-Id: <b47be3ebef7f5423728ce8c71d8c92f46bdb8b82.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 04/16] arm: lib: add CSF section between PBL and piggy
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
