Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubUX-0000w1-Re
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 12:21:47 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 483Lx24BGjz3qpgW
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:42 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 483Lwx5BKMz2TSCf
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:37 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 13:20:44 +0100
Message-ID: <20200123122045.25507-4-ceggers@arri.de>
In-Reply-To: <20200123122045.25507-1-ceggers@arri.de>
References: <20200123122045.25507-1-ceggers@arri.de>
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
Subject: [PATCH 4/5] globalvar: Allow NULL pointers to be returned by
 dev_add_param()
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

The following commit will change the return value of dev_add_param()
from -ENOSYS to NULL if CONFIG_PARAMETER is disabled. After that,
building without CONFIG_PARAMETER will return a NULL pointer to
__nvvar_add() instead of an error.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/globalvar.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index cec0a9cc4..8dcbc04bd 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -166,21 +166,24 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 	return 1;
 }
 
-static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
+static int nv_set(struct device_d *dev, struct param_d *p, const char *name, const char *val)
 {
 	int ret;
 
 	if (!val) {
-		free(p->value);
+		if (p)
+			free(p->value);
 		return 0;
 	}
 
-	ret = dev_set_param(&global_device, p->name, val);
+	ret = dev_set_param(&global_device, name, val);
 	if (ret)
 		return ret;
 
-	free(p->value);
-	p->value = xstrdup(val);
+	if (p) {
+		free(p->value);
+		p->value = xstrdup(val);
+	}
 
 	return 0;
 }
@@ -194,7 +197,7 @@ static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val
 {
 	int ret;
 
-	ret = nv_set(dev, p, val);
+	ret = nv_set(dev, p, p->name, val);
 	if (ret)
 		return ret;
 
@@ -225,7 +228,7 @@ static int __nvvar_add(const char *name, const char *value)
 		return ret;
 
 	if (value)
-		return nv_set(&nv_device, p, value);
+		return nv_set(&nv_device, p, name, value);
 
 	ret = nvvar_device_dispatch(name, &dev, &pname);
 	if (ret > 0)
@@ -233,7 +236,7 @@ static int __nvvar_add(const char *name, const char *value)
 	else
 		value = dev_get_param(&global_device, name);
 
-	if (value) {
+	if (value && p) {
 		free(p->value);
 		p->value = xstrdup(value);
 	}
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
