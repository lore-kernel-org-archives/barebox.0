Delivery-date: Wed, 28 Oct 2026 10:29:49 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzye-004H6T-2e
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AA9CF202930
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CnAuHwNt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KNpDLDDo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179789; a=rsa-sha256;
	cv=pass;
	b=MxHQy6zbfZpSjy7pig3ygP3eWbNn21JtIUgRfYBVfStZg81rl0HoBOU2j+dkWrTDIgu9ig
	51y7/3QWqShPMihH46E5s3KGoumM9zv/16iPXf2NsXsG8AtDt6QZqd59ylClG9FPbAFd8K
	w8aczhzC2SK/evJi0ZVDFtpQkJZNMKuoDna+RyKJ64sFw5m2bahk+MbAYh9ndWvpAi18R2
	r5HtNaA6NeIOUiM9QsQhMWW3Wbr/w/ownKmKlQkZAhRiz3aQEifx6s0HeBnNOzrZGSGuPD
	OV6ToCkamXf+KW+s8Eh1jNSQqDWyGQH/qrRvQQQfieDnR/t2lbAERFMYdqnJsQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CnAuHwNt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KNpDLDDo;
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
	bh=s2T7GHni4v6iYO5Gz14DUTtCKSkjrrc4/ICgOsSbHSI=;
	b=AtT+IkP/TejjgvLaqifaBeL8gBmsEd6jW/Lc+3MlOON5iI4ZYbkgWYlSmKPGUno+fceqXY
	MIBeHtprIWlpdrDrVRM+hvi9bHFqf0BNQ284c1C01cZuBPWv4uoFXE4kCvVz6ALIaO5+rw
	NHheO/LH2sLrXyKiDaAhKP5TT1iQMUSOtysc/ss1MoJkwA89bMLN0+vkm2LNwuxCGT97Q6
	MT4PJDy5GM1Uim/l11X6Nk7qDeKfU+q+4wnXgjXbDjh/jw+KCNlpvW3vz0oG+KCg8aNOai
	pnqfwZ+41mDCfIzXFvgtPQmxhZPISGwCn4I975bDIH7nxzI7eamzTcds5QSgrA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=s2T7GHni4v6iYO5Gz14DUTtCKSkjrrc4/ICgOsSbHSI=; b=CnAuHwNtGdprDa
	MxlwxHLr2jmQOqEcYxxF4nGSA1UCPpZIN5I+yrNWBb4E08HdW68ySZiNY8GNslMwfFgDJfuNVbkkB
	1zEQrRDlc6/pPyAvosIM1FhlzoWeK7iXlC70M6ESkXqxfvs2giKzMaE72ucAWu9dbm8Lzmby2pFW/
	92UDEi48QJDwEuntKT6EXBS3ljPTJWVdXuMnbZrHIi9+GamMk1kxZDAxp1dvGfEV6lhifQLGQclkv
	0nLrDdcNubAXGqrqColmGPHGJIA2P85n4SdfH5R9Uwxe+TjjRjG+tdc+vVNBUBTAaU5q5zTnnt3HV
	HPBP+8bfbOWDIQ7i+W9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu4-00000006eV2-1E7J;
	Wed, 28 Oct 2026 09:25:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztw-00000006eIV-1sZ1
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 15A3720295E;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s2T7GHni4v6iYO5Gz14DUTtCKSkjrrc4/ICgOsSbHSI=;
	b=KNpDLDDo58pzpuIEJmlOMNjta9iuC79bEutUOuubbSRkkh5TvU2Ny26SxqcXZwmhso9KBW
	LWDFJmNRSkSlMxqm+PLVj+4nkAwrmuhy90q3OYVfWNDjeVX45YjwDQ4rGpTPl8rUaMZCO3
	iLdVv0l2eZU4L9ConVuUMVV+K17RPSyIQLrYpQDu6RUkiIXufedoMY09yCNWrhx4jAryPM
	VQl1aeszF1Q+NZiElAFz5hRJakgFxSSzYcSsTXZ8m1pUiHupqfY5vfg8fcDFugkzjrA6RJ
	7LKkadWCp4HtA9fLFLnmX+GNjC8bzmEuhli1kmLjDhhGLO0fWx/zfdDO7uotXA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=dtkijPLhWCpt6j9Rj6tJkvt5bCHTTkcgVVH98LiRWfxA/cD8Yjc2cFMD/C1ClESq3b2TlN
	AqxkCx76/T42pjDmHvHRV8UH7hJw7yjrn0GK1WXVkGZwGc0c10C/Zm6Kn9MEUtAUGFE3oc
	m4v9Jiw2Y1Pp2iOIIeuEWzaluBMVz5ll/+6/xSuCXpzQzXWYSOKh8S49MutGHS/O7cFq1g
	EPJBISSCkjQTqDsCnM/fLOLNS9uZ7o9pNgcvlJ9YmeXnDZRx37XSe3CZ/ZuwaUF4NCkjY6
	Jt4+gYDBSoL4Ldcug7uZV9N2YRTKWuHt7mYpNPyF66uHdUOIU+KhmJ5AhZpEuA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s2T7GHni4v6iYO5Gz14DUTtCKSkjrrc4/ICgOsSbHSI=;
	b=YVhHtYcVz8uJu0xuwPSykXlt6A0V7fyIC8kMa9/whoWCRRU5qxtGvjsVfml7URiWhXY8b0
	zGygHgZ+bpholxkEAHT424raY7U3OFZ+4ar1RlOWV4+EgEYGJNVKc7p63f1wGQPtfax5Nv
	WcBuVRLAoPAaUc3YC/0qPNZMl88FZimuFpfzerqYxrTIysgUcz2KoFnR2bCRL09jtvp0QW
	7tyApI3cP4FSiIU3A7whFBNBqoso+1d1z6dXzF6Oo4Sdzr9xFo0/OX2zwJ2eghxs1LB5UY
	tvZdTMMPecE5t1vKrCCHaC1OGCuR2bj2BR0jb3ZuS2KxQBFxuVuRbyp5MtkDew==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id EFF0D742F56;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 15/19] driver: add devm_request_mem_resource()
Date: Wed, 28 Oct 2026 10:14:49 +0100
Message-ID: <20261028092442.3300753-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022457_016291_DE95D090 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Drivers using dev_request_mem_resource()
    have to release the region in every later error path and on remove. Add a
    managed variant that does this for them. Assisted-by: Claude:opus-5-1m Signed-off-by:
    Ahmad Fatoum <a.fatoum@barebox.org> --- drivers/base/devres.c | 36 ++++++++++++++++++++++++++++++++++++
    include/driver.h | 3 +++ test/self/devres.c | 38 ++ [...] 
 
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
X-Rspamd-Queue-Id: AA9CF202930
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Stat-Signature: y6qqfps8dm73rphff66k6jtp33cd8ap3

From: Ahmad Fatoum <a.fatoum@barebox.org>

Drivers using dev_request_mem_resource() have to release the region in
every later error path and on remove. Add a managed variant that does
this for them.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/devres.c | 36 ++++++++++++++++++++++++++++++++++++
 include/driver.h      |  3 +++
 test/self/devres.c    | 38 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 77 insertions(+)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index bf118ae0820d..efc810a8898f 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -5,6 +5,7 @@
  * Managed resources are children of a per-device talloc context.
  */
 
+#include <barebox.h>
 #include <driver.h>
 #include <dma.h>
 #include <talloc.h>
@@ -168,3 +169,38 @@ int devm_add_action(struct device *dev, void (*action)(void *), void *data)
 	return talloc_add_destructor(ctx, action, data);
 }
 EXPORT_SYMBOL(devm_add_action);
+
+static void devm_region_release(void *res)
+{
+	/* No need to release regions when shutting down */
+	if (barebox_system_state == BAREBOX_EXITING)
+		return;
+
+	release_region(res);
+}
+
+/**
+ * devm_request_mem_resource() - exclusively request resource 'num' for a device
+ * @dev: device to request the memory resource for
+ * @num: index of the memory resource
+ *
+ * Like dev_request_mem_resource(), but device-managed.
+ *
+ * Return: the requested resource or an ERR_PTR() on failure.
+ */
+struct resource *devm_request_mem_resource(struct device *dev, int num)
+{
+	struct resource *res;
+	int ret;
+
+	res = dev_request_mem_resource(dev, num);
+	if (IS_ERR(res))
+		return res;
+
+	ret = devm_add_action_or_reset(dev, devm_region_release, res);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return res;
+}
+EXPORT_SYMBOL(devm_request_mem_resource);
diff --git a/include/driver.h b/include/driver.h
index c394c455b971..4005804bb1a9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -193,6 +193,9 @@ struct resource *dev_request_mem_resource(struct device *dev, int num);
 struct resource *dev_request_mem_resource_by_name(struct device *dev,
 						  const char *name);
 
+/* Like dev_request_mem_resource(), but released when the device goes away */
+struct resource *devm_request_mem_resource(struct device *dev, int num);
+
 void __iomem *dev_platform_get_and_ioremap_resource(struct device *dev,
 						    int num,
 						    struct resource **out_res);
diff --git a/test/self/devres.c b/test/self/devres.c
index 4fdc71064b4a..6992eb20ace3 100644
--- a/test/self/devres.c
+++ b/test/self/devres.c
@@ -8,6 +8,7 @@
 #include <linux/bitmap.h>
 #include <driver.h>
 #include <linux/device.h>
+#include <linux/sizes.h>
 
 BSELFTEST_GLOBALS();
 
@@ -136,6 +137,42 @@ static void test_devres_shutdown(void)
 	free_device(dev);
 }
 
+static void test_devres_region(void)
+{
+	/* The last page of the address space, skipped if it's in use */
+	resource_size_t start = iomem_resource.end - SZ_4K + 1;
+	enum system_states state = barebox_system_state;
+	struct device *dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	struct resource *res;
+
+	device_add_resource(dev, NULL, start, SZ_4K, IORESOURCE_MEM);
+	if (selftest_check(register_device(dev) == 0) == false)
+		return;
+
+	res = devm_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		skipped_tests++;
+		goto out;
+	}
+
+	/* Shutdown keeps the region, but drops the action all the same */
+	barebox_system_state = BAREBOX_EXITING;
+	devres_run_actions(dev);
+	barebox_system_state = state;
+	if (selftest_check(IS_ERR(devm_request_mem_resource(dev, 0))))
+		release_region(res);
+
+	/* Releasing frees it */
+	selftest_check(!IS_ERR(devm_request_mem_resource(dev, 0)));
+	devres_release_all(dev);
+	res = request_iomem_region("devres-test", start, iomem_resource.end);
+	if (selftest_check(!IS_ERR(res)))
+		release_region(res);
+out:
+	unregister_device(dev);
+	free_device(dev);
+}
+
 static int probe_result;
 static char *probe_buf;
 
@@ -282,6 +319,7 @@ static void test_devres(void)
 	test_devres_alloc();
 	test_devres_action();
 	test_devres_shutdown();
+	test_devres_region();
 	test_devres_probe();
 	test_devres_unbind();
 	test_devres_child();
-- 
2.47.3



