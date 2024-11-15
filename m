Delivery-date: Fri, 15 Nov 2024 12:58:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBuxv-002EY9-0j
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 12:58:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBuxu-00012x-In
	for lore@pengutronix.de; Fri, 15 Nov 2024 12:58:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i3Fow8Wl7JchDn0Lmja3ViLb5TVzJHj2eoAblMEG9O4=; b=j1/KjE4YL035PIaHZem6y2mqfA
	aeE8yuj4V0cG92jNmPzEs4SpUI3YdXVOYmEs2SXHPATOISRFS71Rt3ZowpW7NBO1qW4Npj/SOAAxz
	FJTU0skZJUUrLfEvfrOsvqFOVIxL4Z6SP65LdXA7XxsM10fTOkwsXrzTzRZtcXaNGKUCGd71NWOyy
	3F2vbmnAo/ZF4dHDYMZBsNKI+mqQeOYBzQ7ZRKt4WhVebOMwnGDV7x3/zblb0KoPEcLJlEeBK+GTf
	h12Q8Xint9x5oitU4OY6RVAUuWKTptAWzTIR38CzNxRJpx+Vp8cXe2zrZs/5HtOL20/JgUtcQtE+2
	JQGB8X+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBuxO-00000002aYE-04Ea;
	Fri, 15 Nov 2024 11:57:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBuxK-00000002aWS-37VT
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 11:57:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBuxH-0000mz-1H; Fri, 15 Nov 2024 12:57:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBuxG-000trg-2l;
	Fri, 15 Nov 2024 12:57:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBuxG-00GYQA-2V;
	Fri, 15 Nov 2024 12:57:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: h.assmann@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Nov 2024 12:57:34 +0100
Message-Id: <20241115115736.3945523-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115115736.3945523-1-a.fatoum@pengutronix.de>
References: <20241115115736.3945523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_035742_782865_4FE12BAE 
X-CRM114-Status: GOOD (  11.67  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] environment: implement of_env_get_alias_by_path helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by board-code that wants to get the alias pointing at the
backing device of an environment node add a simple
of_env_get_alias_by_path() helper, so board code doesn't need to worry
about property name and whether the binding uses a phandle or string path.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/barebox.c |  5 +++++
 include/envfs.h      | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index ed5d171e43a8..7d433e280ba5 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -15,6 +15,11 @@
 
 #define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
 
+const char *of_env_get_alias_by_path(const char *of_path)
+{
+	return of_property_get_alias(of_path, "device-path");
+}
+
 /* If dev describes a file on a fs, mount the fs and return a pointer
  * to the file's path.  Otherwise return an error code or NULL if the
  * device path should be used.
diff --git a/include/envfs.h b/include/envfs.h
index 767b34c943de..8bfc83b6b008 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -118,6 +118,16 @@ static inline const char *default_environment_path_get(void)
 }
 #endif
 
+#ifdef CONFIG_OF_BAREBOX_DRIVERS
+const char *of_env_get_alias_by_path(const char *of_path);
+#else
+static inline const char *of_env_get_alias_by_path(const char *of_path)
+{
+	return NULL;
+}
+#endif
+
+
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 void defaultenv_append(void *buf, unsigned int size, const char *name);
 int defaultenv_load(const char *dir, unsigned flags);
-- 
2.39.5



