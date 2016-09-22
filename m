Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn064-0002D9-ER
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:15:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 11:14:45 +0200
Message-Id: <1474535686-7608-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] param: introduce param_bitmask
To: Barebox List <barebox@lists.infradead.org>

param_bitmask behaves similar to an enum, except that with a bitmask
multiple values can be specified. On the command line the bits are
represented as a space separated list of strings. In memory a
unsigned long * is used as backend storage, this can be modified
using the regular bitmap functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |   5 +++
 lib/parameter.c | 135 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 140 insertions(+)

diff --git a/include/param.h b/include/param.h
index 3fb4740..d25db9e 100644
--- a/include/param.h
+++ b/include/param.h
@@ -52,6 +52,11 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, const char * const *names, int max, void *priv);
 
+struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		unsigned long *value, const char * const *names, int max, void *priv);
+
 struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format);
 
diff --git a/lib/parameter.c b/lib/parameter.c
index 656a603..529d7ab 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -505,6 +505,141 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 	return &pe->param;
 }
 
+struct param_bitmask {
+	struct param_d param;
+	unsigned long *value;
+	const char * const *names;
+	int num_names;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_bitmask *to_param_bitmask(struct param_d *p)
+{
+	return container_of(p, struct param_bitmask, param);
+}
+
+static int param_bitmask_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_bitmask *pb = to_param_bitmask(p);
+	void *value_save;
+	int i, ret;
+	char *freep, *dval, *str;
+
+	if (!val)
+		val = "";
+
+	freep = dval = xstrdup(val);
+	value_save = xmemdup(pb->value, BITS_TO_LONGS(pb->num_names) * sizeof(unsigned long));
+
+	while (1) {
+		str = strsep(&dval, " ");
+		if (!str || !*str)
+			break;
+
+		for (i = 0; i < pb->num_names; i++) {
+			if (pb->names[i] && !strcmp(str, pb->names[i])) {
+				set_bit(i, pb->value);
+				break;
+			}
+		}
+
+		if (i == pb->num_names) {
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
+	if (!pb->set) {
+		ret = 0;
+		goto out;
+	}
+
+	ret = pb->set(p, p->driver_priv);
+	if (ret)
+		memcpy(pb->value, value_save, BITS_TO_LONGS(pb->num_names) * sizeof(unsigned long));
+
+out:
+	free(value_save);
+	free(freep);
+	return ret;
+}
+
+static const char *param_bitmask_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_bitmask *pb = to_param_bitmask(p);
+	int ret, bit;
+	char *pos;
+
+	if (pb->get) {
+		ret = pb->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	pos = p->value;
+
+	for_each_set_bit(bit, pb->value, pb->num_names)
+		if (pb->names[bit])
+			pos += sprintf(pos, "%s ", pb->names[bit]);
+
+	return p->value;
+}
+
+static void param_bitmask_info(struct param_d *p)
+{
+	struct param_bitmask *pb = to_param_bitmask(p);
+	int i;
+
+	if (pb->num_names <= 1)
+		return;
+
+	printf(" (list: ");
+
+	for (i = 0; i < pb->num_names; i++) {
+		if (!pb->names[i] || !*pb->names[i])
+			continue;
+		printf("\"%s\"%s", pb->names[i],
+				i ==  pb->num_names - 1 ? ")" : ", ");
+	}
+}
+
+struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		unsigned long *value, const char * const *names, int max, void *priv)
+{
+	struct param_bitmask *pb;
+	struct param_d *p;
+	int ret, i, len = 0;
+
+	pb = xzalloc(sizeof(*pb));
+
+	pb->value = value;
+	pb->set = set;
+	pb->get = get;
+	pb->names = names;
+	pb->num_names = max;
+	p = &pb->param;
+	p->driver_priv = priv;
+
+	for (i = 0; i < pb->num_names; i++)
+		if (pb->names[i])
+			len += strlen(pb->names[i]) + 1;
+
+	p->value = xzalloc(len);
+
+	ret = __dev_add_param(p, dev, name, param_bitmask_set, param_bitmask_get, 0);
+	if (ret) {
+		free(pb);
+		return ERR_PTR(ret);
+	}
+
+	p->info = param_bitmask_info;
+
+	return &pb->param;
+}
+
 /**
  * dev_add_param_bool - add an boolean parameter to a device
  * @param dev	The device
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
