Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFuNp-0001HL-Ad
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 07:19:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id d6so1354920pfn.9
 for <barebox@lists.infradead.org>; Wed, 09 Sep 2020 00:19:09 -0700 (PDT)
Received: from zen.local (174-21-64-208.tukw.qwest.net. [174.21.64.208])
 by smtp.gmail.com with ESMTPSA id p190sm1759890pfp.9.2020.09.09.00.19.05
 for <barebox@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Sep 2020 00:19:06 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
Date: Wed, 09 Sep 2020 00:19:05 -0700
Message-ID: <2373015.TR22srR748@zen.local>
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
Subject: [PATCH] pinctrl-single: Support 2 pinctrl-cells in ,pins mode
To: barebox@lists.infradead.org

The 5.9rc-1 dts update pulled in a change that broke all TI AM33xx
platforms.  This fixes that.

Previously, when using pinctrl-single,pins, the value of
"#pinctrl-cells" was always 1, which indicates one data cell per pin,
which contains the value to to program into the pinctrl register.

In kernel v5.9-rc1, commit a13395418888 ("pinctrl: single: parse #pinctrl-cells
 = 2"), added support for 2 data cells per pin.  The two cells get ORed
together to produce one register value.

Then commit 27c90e5e48d0 ("ARM: dts: am33xx-l4: change #pinctrl-cells
from 1 to 2"), changed the dts files to use two cells for am33xx and
changed the AM33XX_PADCONF() macro to produce two data cells instead of
ORing the two values together.  The pinctrl driver will now do the OR
to produce the same value that was in one cell before.  I don't see what
this accomplishes, but there it is.

The dts update pulled in the latter change, but not the former, leaving
Barebox's pinctrl-single driver unable to correctly use the am33xx
pinctrl data.  This commit adds support for the 2 cell format.

It would be easier to just change the dts files back, since this change
doesn't appear actually accomplish anything, but then the dts source
would be out of sync with the kernel.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 drivers/pinctrl/pinctrl-single.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 4ce66a84d..c31b7e036 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -27,12 +27,13 @@ struct pinctrl_single {
 	unsigned (*read)(void __iomem *reg);
 	void (*write)(unsigned val, void __iomem *reg);
 	unsigned int width;
-	unsigned int  fmask;
+	unsigned int fmask;
 	unsigned int fshift;
 	unsigned int fmax;
 
 	bool bits_per_mux;
 	unsigned int bits_per_pin;
+	unsigned int args_count;
 };
 
 static unsigned __maybe_unused pcs_readb(void __iomem *reg)
@@ -96,7 +97,7 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
 
 		size /= sizeof(*mux);	/* Number of elements in array */
 
-		if (!mux || !size || (size & 1)) {
+		if (!mux || !size || (size % (pcs->args_count + 1))) {
 			dev_err(pcs->pinctrl.dev, "bad data for mux %s\n",
 				np->full_name);
 			return -EINVAL;
@@ -107,6 +108,14 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
 
 			offset = be32_to_cpup(mux + index++);
 			val = be32_to_cpup(mux + index++);
+			if (pcs->args_count > 1) {
+				/* If a 2nd data cell is present, it's ORed into
+				 * the 1st.  Additional cells are undefined,
+				 * just skip them.
+				 */
+				val |= be32_to_cpup(mux + index);
+				index += pcs->args_count - 1;
+			}
 
 			pcs->write(val, pcs->base + offset);
 		}
@@ -177,6 +186,13 @@ static int pcs_probe(struct device_d *dev)
 	if (pcs->bits_per_mux)
 		pcs->bits_per_pin = fls(pcs->fmask);
 
+	/* If no pinctrl-cells is present, default to old style of 2 cells with
+	 * bits per mux and 1 cell otherwise.
+	 */
+	ret = of_property_read_u32(np, "#pinctrl-cells", &pcs->args_count);
+	if (ret)
+		pcs->args_count = pcs->bits_per_mux ? 2 : 1;
+
 	ret = pinctrl_register(&pcs->pinctrl);
 	if (ret)
 		goto out;
-- 
2.25.4





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
