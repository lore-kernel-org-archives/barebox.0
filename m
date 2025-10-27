Delivery-date: Mon, 27 Oct 2025 07:31:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlE-00CFKJ-0h
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:31:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlD-00083p-Iv
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:31:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4oBmaGrwNbhbWJDKGQw1XGK0l7bBDguKGAgu/YhP3u0=; b=gTHmW0918e0tsczpHcG65wr17V
	QBwZktA4PpnWOcrkJvChSasV6ur4hTOqWaRTYXqYN+5v0S02oea/D8vtDAvEA0AuEsj+eeFA14GDm
	QVFYbTt43TMtmcmQCbD62OcvAVzVO1SDy2oWVoVDSBuL/PapQGOGys4vY/g6Kwkifb+YE34/HVSmn
	vWgaFKZiG/LBu6PNSbKIR4PQo+xRhCbkWEJbahvejdg7YfDYmk+GG8le75QMr6RiWcRbh2ioax6IO
	T9SKemS5Nu0lB+Whton2xIUfu4W+Ugnu0PhE86wInRLjrwdG9aat/Pe5Ey27L8LY5LzkW07zSv4Re
	QrN//OiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkk-0000000DCK1-3gAA;
	Mon, 27 Oct 2025 06:30:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkh-0000000DCIm-3ZZm
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:30:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGkg-0007sa-8p; Mon, 27 Oct 2025 07:30:46 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:30:37 +0100
Message-ID: <20251027063045.2396578-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027063045.2396578-1-a.fatoum@barebox.org>
References: <20251027063045.2396578-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_233047_890849_DF9418CB 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] param: add support for setting parameters with percentages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some parameters have a maximum that's below the maximum value allowed
by the type, which would be convenient to set as percentage, e.g.
volume of a sound card or brightness level of a backlight.

With the new simple_strtofract, we can easily accomplish this, so add
support for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/param.h |  8 ++++++++
 lib/parameter.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/include/param.h b/include/param.h
index a15e064ddec2..59aa8a3a385f 100644
--- a/include/param.h
+++ b/include/param.h
@@ -116,6 +116,8 @@ void param_remove(struct param_d *p);
 int bobject_param_set_generic(bobject_t bobj, struct param_d *p,
 			  const char *val);
 
+int param_int_set_scale(struct param_d *p, uint64_t max);
+
 #else
 static inline const char *bobject_get_param(bobject_t bobj, const char *name)
 {
@@ -251,6 +253,12 @@ static inline int bobject_param_set_generic(bobject_t bobj, struct param_d *p,
 {
 	return 0;
 }
+
+static inline int param_int_set_scale(struct param_d *p, uint64_t max)
+{
+	return 0;
+}
+
 #endif
 
 static inline const char *get_param_value(struct param_d *param)
diff --git a/lib/parameter.c b/lib/parameter.c
index 274e6fcb8376..f36d77d119fa 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -354,6 +354,7 @@ struct param_int {
 	const char *format;
 	int (*set)(struct param_d *p, void *priv);
 	int (*get)(struct param_d *p, void *priv);
+	u64 scale_max;
 };
 
 static inline struct param_int *to_param_int(struct param_d *p)
@@ -403,6 +404,33 @@ static int param_int_set(struct bobject *bobj, struct param_d *p,
 	return ret;
 }
 
+static int param_int_set_scaled(struct bobject *bobj, struct param_d *p,
+				const char *val)
+{
+	char buf[sizeof("18446744073709551615")];
+	struct param_int *pi = to_param_int(p);
+	s64 scaled;
+	char *end;
+
+	if (!isempty(val) && val[strlen(val) - 1] == '%') {
+		u64 percent = div_u64(pi->scale_max, 100);
+
+		scaled = simple_strtofract(val, &end, percent);
+		if (val == end || *end != '%' ||
+		    scaled < 0 || scaled > percent * 100)
+			return -EINVAL;
+
+		/* saturate at 100% */
+		if (scaled == percent * 100)
+			scaled = pi->scale_max;
+
+		snprintf(buf, sizeof(buf), pi->format, scaled);
+		val = buf;
+	}
+
+	return param_int_set(bobj, p, val);
+}
+
 static const char *param_int_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_int *pi = to_param_int(p);
@@ -432,6 +460,24 @@ static const char *param_int_get(struct bobject *bobj, struct param_d *p)
 	return p->value;
 }
 
+static void param_int_max_info(struct param_d *p)
+{
+	struct param_int *pi = to_param_int(p);
+	printf(" (maximum: %llu)", pi->scale_max);
+}
+
+int param_int_set_scale(struct param_d *p, uint64_t max)
+{
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	p->info = param_int_max_info;
+	p->set = param_int_set_scaled;
+	to_param_int(p)->scale_max = max;
+
+	return 0;
+}
+
 int param_set_readonly(struct param_d *p, void *priv)
 {
 	return -EROFS;
-- 
2.47.3



