Delivery-date: Thu, 20 Mar 2025 06:21:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LR-001l89-1E
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:21:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LQ-000487-3V
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:21:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=09lkI9mzpZ/uj/tsTxYUzIol2f308ZuF/q9CTaQ29D0=; b=Q53aowqH5kpyPstgL/YpTLvk/O
	PHBwxl9M9yvvxfdcGJRKznGRb5oM8vxon4WF9q9ozDcdw23k8kOJbSfPOv1K/QpVsGAcSv1iyhqJt
	bpC9f8NiUDwy/cfuu/LUoe9LVw/L+p1DgOKZPv4LCMAiOqoIuRoHVQc1yaCDDv2/EDdRTZeN67UmK
	dCk+9d/60as2niaIa43lxTaO/ZCq1EFAcpaDaBMJTF/Pblfuww6DS1bmh0o0xHBDdgZqK1ZX1IVua
	GBV6xy9f83TtGB4X1yvlsI6fNWOUxmG35EzT15sSqEGcsKsAwXR2wjUO/rJhcPE/yQ+3piMQakieE
	0d2mI8zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8L2-0000000BCv0-1vbN;
	Thu, 20 Mar 2025 05:21:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Kz-0000000BCtL-3o6D
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:21:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-0003mW-Lg; Thu, 20 Mar 2025 06:21:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-000hvn-06;
	Thu, 20 Mar 2025 06:21:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-007GdX-1A;
	Thu, 20 Mar 2025 06:21:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:57 +0100
Message-Id: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222101_950110_9BFBFFDA 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] complete: give device_param_complete a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently always complete device parameters with either a dollar sign
in front or an equal sign after. In preparation for allowing completions
with neither, give env_param_complete() a flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/complete.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 5b8b499ed38f..6061c8ba6ecb 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -9,11 +9,15 @@
 #include <complete.h>
 #include <xfuncs.h>
 #include <fs.h>
+#include <linux/bits.h>
 #include <linux/stat.h>
 #include <libgen.h>
 #include <command.h>
 #include <environment.h>
 
+#define DEVPARAM_COMPLETE_ASSIGNMENT	BIT(0)
+#define DEVPARAM_COMPLETE_DOLLAR	BIT(1)
+
 static bool is_valid_escape(const char *str)
 {
 	return str[0] == '\\' && (str[1] == ' ' || str[1] == '\\');
@@ -170,7 +174,8 @@ int device_complete(struct string_list *sl, char *instr)
 EXPORT_SYMBOL(device_complete);
 
 static int device_param_complete(struct device *dev, const char *devname,
-				 struct string_list *sl, char *instr, int eval)
+				 struct string_list *sl, char *instr,
+				 unsigned flags)
 {
 	struct param_d *param;
 
@@ -179,8 +184,8 @@ static int device_param_complete(struct device *dev, const char *devname,
 			continue;
 
 		string_list_add_asprintf(sl, "%s%s.%s%c",
-			eval ? "$" : "", devname, param->name,
-			eval ? ' ' : '=');
+			flags & DEVPARAM_COMPLETE_DOLLAR ? "$" : "", devname, param->name,
+			flags & DEVPARAM_COMPLETE_ASSIGNMENT ? '=' : ' ');
 	}
 
 	return 0;
@@ -292,21 +297,22 @@ int tutorial_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(tutorial_complete);
 
-static int env_param_complete(struct string_list *sl, char *instr, int eval)
+static int env_param_complete(struct string_list *sl, char *instr, unsigned flags)
 {
 	struct device *dev;
 	struct variable_d *var;
 	struct env_context *c;
 	int len;
-	char end = '=', *pos, *dot;
+	char end = ' ', *pos, *dot;
 	char *begin = "";
 
 	if (!instr)
 		instr = "";
 
-	if (eval) {
+	if (flags & DEVPARAM_COMPLETE_DOLLAR) {
 		begin = "$";
-		end = ' ';
+	} else if (flags & DEVPARAM_COMPLETE_ASSIGNMENT) {
+		end = '=';
 	}
 
 	len = strlen(instr);
@@ -338,7 +344,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 		dev = get_device_by_name(devname);
 
 		if (dev)
-			device_param_complete(dev, devname, sl, dot + 1, eval);
+			device_param_complete(dev, devname, sl, dot + 1, flags);
 
 		free(devname);
 		pos = dot + 1;
@@ -348,7 +354,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 
 	for_each_device(dev) {
 		if (!strncmp(instr, dev_name(dev), len))
-			device_param_complete(dev, dev_name(dev), sl, "", eval);
+			device_param_complete(dev, dev_name(dev), sl, "", flags);
 	}
 
 	return 0;
@@ -356,7 +362,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 
 int env_param_noeval_complete(struct string_list *sl, char *instr)
 {
-	return env_param_complete(sl, instr, 0);
+	return env_param_complete(sl, instr, DEVPARAM_COMPLETE_ASSIGNMENT);
 }
 EXPORT_SYMBOL(env_param_noeval_complete);
 
@@ -415,7 +421,7 @@ static char* cmd_complete_lookup(struct string_list *sl, char *instr)
 
 end:
 	if (ret == COMPLETE_CONTINUE && *instr == '$')
-		env_param_complete(sl, instr + 1, 1);
+		env_param_complete(sl, instr + 1, DEVPARAM_COMPLETE_DOLLAR);
 
 	return res;
 }
@@ -460,7 +466,7 @@ int complete(char *instr, char **outstr)
 			env_param_complete(&sl, instr, 0);
 		}
 		if (*instr == '$')
-			env_param_complete(&sl, instr + 1, 1);
+			env_param_complete(&sl, instr + 1, DEVPARAM_COMPLETE_DOLLAR);
 	}
 
 	pos = strlen_escaped(instr);
-- 
2.39.5



