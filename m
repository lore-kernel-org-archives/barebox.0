Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sI-2V
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:00 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:40 +0100
Message-Id: <20190315091453.22393-2-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 02/15] pstore/ram: add Device Tree bindings
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>, Greg Hackmann <ghackmann@google.com>

From: Greg Hackmann <ghackmann@google.com>

ramoops is one of the remaining places where ARM vendors still rely on
board-specific shims.  Device Tree lets us replace those shims with
generic code.

These bindings mirror the ramoops module parameters, with two small
differences:

(1) dump_oops becomes an optional "no-dump-oops" property, since ramoops
sets dump_oops=1 by default.

(2) mem_type=1 becomes the more self-explanatory "unbuffered" property.

Signed-off-by: Greg Hackmann <ghackmann@google.com>
[fixed platform_get_drvdata() crash, thanks to Brian Norris]
[switched from u64 to u32 to simplify code, various whitespace fixes]
[use dev_of_node() to gain code-elimination for CONFIG_OF=n]
Signed-off-by: Kees Cook <keescook@chromium.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit 35da60941e44]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index fe65959791..98c11e456d 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -36,6 +36,8 @@
 #include <globalvar.h>
 #include <init.h>
 #include <common.h>
+#include <of.h>
+#include <of_address.h>
 
 #define RAMOOPS_KERNMSG_HDR "===="
 #define MIN_MEM_SIZE 4096UL
@@ -349,6 +351,74 @@ static int ramoops_init_prz(struct ramoops_context *cxt,
 	return 0;
 }
 
+static int ramoops_parse_dt_size(struct device_d *dev,
+				 const char *propname, u32 *value)
+{
+	u32 val32 = 0;
+	int ret;
+
+	ret = of_property_read_u32(dev->device_node, propname, &val32);
+	if (ret < 0 && ret != -EINVAL) {
+		dev_err(dev, "failed to parse property %s: %d\n",
+			propname, ret);
+		return ret;
+	}
+
+	if (val32 > INT_MAX) {
+		dev_err(dev, "%s %u > INT_MAX\n", propname, val32);
+		return -EOVERFLOW;
+	}
+
+	*value = val32;
+	return 0;
+}
+
+static int ramoops_parse_dt(struct device_d *dev,
+			    struct ramoops_platform_data *pdata)
+{
+	struct device_node *of_node = dev->device_node;
+	struct device_node *mem_region;
+	struct resource res;
+	u32 value;
+	int ret;
+
+	mem_region = of_parse_phandle(of_node, "memory-region", 0);
+	if (!mem_region) {
+		dev_err(dev, "no memory-region phandle\n");
+		return -ENODEV;
+	}
+
+	ret = of_address_to_resource(mem_region, 0, &res);
+	if (ret) {
+		dev_err(dev,
+			"failed to translate memory-region to resource: %d\n",
+			ret);
+		return ret;
+	}
+
+	pdata->mem_size = resource_size(&res);
+	pdata->mem_address = res.start;
+	pdata->mem_type = of_property_read_bool(of_node, "unbuffered");
+	pdata->dump_oops = !of_property_read_bool(of_node, "no-dump-oops");
+
+#define parse_size(name, field) {					\
+		ret = ramoops_parse_dt_size(dev, name, &value);		\
+		if (ret < 0)						\
+		return ret;						\
+		field = value;						\
+	}
+
+       parse_size("record-size", pdata->record_size);
+       parse_size("console-size", pdata->console_size);
+       parse_size("ftrace-size", pdata->ftrace_size);
+       parse_size("pmsg-size", pdata->pmsg_size);
+       parse_size("ecc-size", pdata->ecc_info.ecc_size);
+
+#undef parse_size
+
+       return 0;
+}
+
 static int ramoops_probe(struct device_d *dev)
 {
 	struct ramoops_platform_data *pdata = dummy_data;
@@ -358,6 +428,18 @@ static int ramoops_probe(struct device_d *dev)
 	int err = -EINVAL;
 	char kernelargs[512];
 
+	if (IS_ENABLED(CONFIG_OFTREE) && !pdata) {
+		pdata = kzalloc(sizeof(*pdata), GFP_KERNEL);
+		if (!pdata) {
+			err = -ENOMEM;
+			goto fail_out;
+		}
+
+		err = ramoops_parse_dt(dev, pdata);
+		if (err < 0)
+			goto fail_out;
+	}
+
 	/* Only a single ramoops area allowed at a time, so fail extra
 	 * probes.
 	 */
@@ -473,6 +555,7 @@ fail_init_fprz:
 fail_init_cprz:
 	ramoops_free_przs(cxt);
 fail_out:
+	kfree(pdata);
 	return err;
 }
 unsigned long arm_mem_ramoops_get(void);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
