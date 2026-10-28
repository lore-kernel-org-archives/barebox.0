Delivery-date: Wed, 28 Oct 2026 10:29:49 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzyf-004H77-0W
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CE092021E3
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:49 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2ouKnNTt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=g5KkPbZz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179789; a=rsa-sha256;
	cv=pass;
	b=Y9+XYNrBEZywFmWrT8969VE7BbKPP4kwHkVJyHo0OavRS1/RSltBNmGzAzrbpb7FRY6deU
	S0CcR3aSwWkzIfCnq15ZjU+Ljlijnm/27/c3bkjGA33gFYIWNgcEN71hPeX0Yw+CTp0WYx
	3aZuJZv6RiV74ez3wsugZ1n2UjXsmD20eMpLzFqJViM8tNErfhIvK63mkg6fVI832uFm9F
	D4C9ebCH3I4fENXaFlDF+uKefQFz113aPkKOj4Da7NAoXin484gr8SuAXUHT5YuHGB9pD3
	5+jjRS2xww986fE2tXugcRiilxA8zS3jHnDbgPN7WWUaplAurquBGX2KsVDB5w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2ouKnNTt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=g5KkPbZz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179789;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4SwvTYXdHNdC9pjHA1W96PdCVzcJF+S2KB+B/Oq3Wrw=;
	b=Cc/CGB/Kum+RmMpbAh3t1MCsDXTmtw5PG9IXurvRsSQ/ML/JQu5ZvIUsE26vbmn+fPZ1zu
	I+IejLhRDa3ZmLcauPHOAVXdM3T4f7IRa+pqhhibm/MizWallZSNUzSv+jH/B+4mo79Dcj
	nDdG2u41Jvlty/cOueH2ZtRIR86LYrljUBE/m9ViZr3GB4oRaO8Mb2rGaM5nSRJ1VxP1GR
	foRYTgUr/hKD1H/LAggB0DcKm5PBfvxJyg7AerZ3Fbf99bkqrfgyoJ8EhHmhsOuKpyHnsM
	wF010yE996oj6x9XtbHOTLm7Ku48uip+YWRy14ducMt6fYVJAKpjymWCw40nvA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=4SwvTYXdHNdC9pjHA1W96PdCVzcJF+S2KB+B/Oq3Wrw=; b=2ouKnNTtRhDEXl
	3DBTHPNWH9oC9iIBb5wlKqWejix4Gy8d9Q8HwI6gKqBO0yXS00j7R9v74z/nP/4vE1F7DnF/rfJzQ
	HIZzI3B+XTlH+m/8xEhTIn1GVeYoSMK+ROpnMTu9r11cAFx42HGes4SBxRcXV+36+EyppoBxoD16R
	Yax580qPDQydIR8x8TeSI7ZiLu4RQimbyzIrc7YdMPz14SHngNP2jPozJQCk+rA4AyglogTE9hSYe
	mNmQeP0foVgIX97K6pE2koZL6vzQdmuZ94kdPJV/9VT5DJJMiycKTKPTeBBAM6APKkX4oYxTDOf8+
	N9Bt4lUz7RxMXnCwfb0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu3-00000006eTu-41tT;
	Wed, 28 Oct 2026 09:25:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztv-00000006eH4-0qAG
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0001320295C;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4SwvTYXdHNdC9pjHA1W96PdCVzcJF+S2KB+B/Oq3Wrw=;
	b=g5KkPbZzqtv3jKkOcM7n0DDxfWoyfA7HA8vlA6nAciGH48DWBw1Wd11CBycrF9INAGlx2z
	J69QL/LBn66TY5f/9B8t+42NtEsG86DJyxiQ86dLvV2oLdnfnUJbk7pDcpkMvUgO15ExRD
	whPZgdl/GBXW7b9fHlBEHm/9jnJHt15A3Hreyus69yDdYysfh3ZuHIvEDbFKyMF2BD3RGk
	YzsQ1c1SvJ9wPy9+ArXmIdJyrqJEnqmmLDpyfuOoF6aKlVs5UVTdgBQQxHptqKdTg/Ggd3
	8wJn9SxcnYWUUgfew/GsxY+NA9SpAxrOPrgA/Cy0yn7UxAJqOl6lqVWTd6ZqMw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=Fb8jRzqe9ZJMb449hJWdAoFutjIT6P45Hd4epkRcph9Ecj2lP7agtm8IApunOmGud69ICQ
	a7TpEUfRpg9RHBBAoyS+Q62Q3G+B6ykHHrq9zq6vAyN06Srd1yGe8+CWC475/9nr7XwWNq
	/Kcamwz1pL9NfW8/BS1oGd2ageE1Fc6I9LtLarKEJP/KbyFGDoDov0mFTbuvyP3/+g/fQS
	N7SWxjGOiald1LqBpr/IDhDFjHiWx/zzqoDti4e0EvsGqtOJGoNMQSHefqYsMbTKpWxs+v
	WoC1qDFLYjYj2mfsFubsTocDzWrJFas2eDPmUPQQwottkJuHX7wyLzAPMSA1yQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4SwvTYXdHNdC9pjHA1W96PdCVzcJF+S2KB+B/Oq3Wrw=;
	b=Yc3dmMkQ8Yr0DafISi381Sj0y5JGn4yy7Y2mp0hWZnhwSZ+igjzW0F0POoh27Qv9dcGvVZ
	DHxM3TFztmEv5nbPtx3URp1ehI/3GT2p2P0qK9kzJ73cG8kSh5o/9tyiQEzgBhG9nAqsZq
	TzdQ4O4cl1Ff8WtFLxQY9A1HdGDTtK1jU4EBBkpTIXF/BFZWx2LTDLUxB/3tXM/ZswsTI4
	p74CP3ms91bfhqFVv32J6eru5B54e4cdcf4YvqAlOcaMCTq79SyjzgI+12CjqP+hXN1b4R
	uqi+SzrERgYXxcJTBED/KXLnbkrRdi/9PMwOtQTyLHEzkwj+UuAmXQ7NxSB7Ww==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id D97547427BC;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 13/19] driver: add devm_add_action()
Date: Wed, 28 Oct 2026 10:14:47 +0100
Message-ID: <20261028092442.3300753-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022455_493848_4CA3507C 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Add devm_add_action()
    and devm_add_action_or_reset() on top of talloc_add_destructor() for drivers
    that need to undo things on remove. As barebox calls the remove callbacks
    on shutdown, let's run the actions there as well, but keep the managed memory,
    which may still be referenced afterwards. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0CE092021E3
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ypdkbtqu9e6gjw898pspip7e777495fc

From: Ahmad Fatoum <a.fatoum@barebox.org>

Add devm_add_action() and devm_add_action_or_reset() on top of
talloc_add_destructor() for drivers that need to undo things on remove.

As barebox calls the remove callbacks on shutdown, let's run the actions
there as well, but keep the managed memory, which may still be
referenced afterwards.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/devres.c  | 23 +++++++++++++++++++++++
 drivers/base/driver.c  |  1 +
 include/driver.h       |  1 +
 include/linux/device.h | 38 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 63 insertions(+)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 26abc47cd997..bf118ae0820d 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -36,6 +36,18 @@ void devres_release_all(struct device *dev)
 	dev->devres = NULL;
 }
 
+/**
+ * devres_run_actions() - run the managed actions of a device
+ * @dev: device that is shut down
+ *
+ * Like devres_release_all(), but keeps the managed memory, which may
+ * still be referenced after shutdown.
+ */
+void devres_run_actions(struct device *dev)
+{
+	talloc_run_destructors(dev->devres);
+}
+
 /*
  * Memory must be DMA-safe like kmalloc()'s, so align it within the chunk
  * and store the chunk pointer in front of it for devm_kfree().
@@ -145,3 +157,14 @@ char *devm_kasprintf(struct device *dev, gfp_t gfp, const char *fmt, ...)
 	return p;
 }
 EXPORT_SYMBOL(devm_kasprintf);
+
+int devm_add_action(struct device *dev, void (*action)(void *), void *data)
+{
+	void *ctx = devres_ctx(dev);
+
+	if (!ctx)
+		return -ENOMEM;
+
+	return talloc_add_destructor(ctx, action, data);
+}
+EXPORT_SYMBOL(devm_add_action);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e214408e12a3..f87ecb200feb 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -720,6 +720,7 @@ static void devices_shutdown(void)
 			pr_report_probe("%*sremove-> %s\n", 1 * 4, "", dev_name(dev));
 			remove(dev);
 		}
+		devres_run_actions(dev);
 		dev->driver = NULL;
 	}
 }
diff --git a/include/driver.h b/include/driver.h
index 372b1297c6c4..c394c455b971 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -112,6 +112,7 @@ void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
 void devres_release_all(struct device *dev);
+void devres_run_actions(struct device *dev);
 
 static inline void device_rescan(struct device *dev)
 {
diff --git a/include/linux/device.h b/include/linux/device.h
index 595abf412180..9b14bc74fef6 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -101,6 +101,44 @@ static inline unsigned long *devm_bitmap_zalloc(struct device *dev,
 			    gfp);
 }
 
+/**
+ * devm_add_action() - add a custom action to the managed resources
+ * @dev: device that owns the action
+ * @action: function to call when the device is unbound, unregistered
+ *          or shut down
+ * @data: argument to pass to @action
+ *
+ * Actions run in reverse order of registration, interleaved with the
+ * freeing of managed memory.
+ *
+ * Return: 0 on success, -ENOMEM if the action could not be registered.
+ */
+int devm_add_action(struct device *dev, void (*action)(void *), void *data);
+
+/**
+ * devm_add_action_or_reset() - add a custom action, running it on failure
+ * @dev: device that owns the action
+ * @action: function to call when the device is unbound, unregistered
+ *          or shut down
+ * @data: argument to pass to @action
+ *
+ * Like devm_add_action(), but @action is called right away if it could
+ * not be registered.
+ *
+ * Return: 0 on success, -ENOMEM if the action could not be registered.
+ */
+static inline int devm_add_action_or_reset(struct device *dev,
+					   void (*action)(void *), void *data)
+{
+	int ret;
+
+	ret = devm_add_action(dev, action, data);
+	if (ret)
+		action(data);
+
+	return ret;
+}
+
 #define device_register register_device
 #define device_unregister unregister_device
 
-- 
2.47.3



