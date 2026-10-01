Delivery-date: Thu, 01 Oct 2026 09:13:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAya-008MCm-2S
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:13:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2E498200206
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:13:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jO+OBkaL;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=lWuNbWBv;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HBi349HF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790838788; a=rsa-sha256;
	cv=fail;
	b=H/Py3Zl1JXDW8DN54Egw0gRcCi1t3v9AN1oeiB8YpWd2GNsONP8eMCLNFbt3iphhHhwiBv
	3gUeFoDiWp/BahZXEtEQ5BIMDM07tX/fJkH9L2YqjkFFdliNhV71r80Thb+Fbv83h7n1Me
	ODr4YtSDNh4KlFTlAq1E7F7LbllPIgi6vlcGk73OulglAVa61TtV0+kcsA5dYDX1fPvNDc
	cHu3Oa/1kRnmqmcsvB2SFLRVROZA8yKA3HMVSis1t/hD+Jd9bPulwM5oxjb3FmdxWPUVnh
	IspH77Hy1WYh2voJGgrOT3ZVq/Mq4TvB72QtcaLreLMj30IIEKFwYsGxvwq0YQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jO+OBkaL;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=lWuNbWBv;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HBi349HF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PKn0mntnSpfvrcBGZXrn6hUtHGNCcjY5hyjqSqQt2WU=;
	b=BLgLxN9t9w+gj3MXa1F4oHR8NSsZ1E9Skezg/ANFt7CXXNzcfp9YOFCMdwHrUZJjsMp63e
	Xeka4BBts4QWANgwhSa0cpa/WqLsnTgEJGIP1H9ypTqKk7yuxacHfzP/dIZgRVmunAZxz4
	tzoAKBkrU+R7xBQ3J5OP2byoXv1aMQfPPDP4L3CMRZhjvycZ9GwxB+sKRzCeQ9iVuaNXYf
	iowP+DKRhYd1bIi9p92Pg5YxIh5Nn+HCfMo4wOs9o+5UvofPoR+xh3tqhuWSSnrgwOJTyD
	i8oX/OcYJPRZPewvLF8PEUPWagGCgkYq0LCvuppeSzZM6pRmfYpdLLrdjBsdcQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PKn0mntnSpfvrcBGZXrn6hUtHGNCcjY5hyjqSqQt2WU=; b=jO+OBkaL1hLtMr2n/AKnZkUh/k
	bsZiD6MwhJjaJvwaQOWwrXKf4dmy1mU+jJqNH0yR54iW/vJKZPnOu3jAcryUio5BQzjLmIg2Tplug
	UATodDQw7hNQzDyLTH9zKAu09eNU1vH/XOp+7Rd4d6c409RUDhvaPjBHl02qrNGhbp8vxdoGasVvj
	Vq2yS4XYNev/a4YjZI1X4x0VzZeZwNaXK9fAv2qgxaI0fTDam4aeJn/O+8XzAzZpmGDkI1Bb5sfUp
	/POd35VEMk49E4S74LNcb1iGGKeEFbGQ85LWY7kipG+5JwNZOOlwTl3mPLLFQi9l6qyVUSBtwwQad
	cshET+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAx1-00000007xrT-0XgA;
	Thu, 01 Oct 2026 07:11:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAwz-00000007xpg-1lXV
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:11:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=PKn0mntnSpfvrcBGZXrn6hUtHGNCcjY5hyjqSqQt2WU=; b=lWuNbWBv9p0dJzaTdFnQ6qytxn
	PcWoweYhWeCQDFd/wM4jrObINjZnSx3ZSCRFsYaQmka0RjRWLVy6c1s+yNjp3lEkXv0rjinu5jzdE
	ucFJFTjLYg4Kq/4m/U9krXRglBdEFrSEHouDouyw5xa5ZgHMlks8UcB82oDOVGSDIRXr3Iq4I++JO
	Zf1gTp6KX5MQE2MUE0lAGcLmDD5fHNUQPgxDj3NcMG2yqO7PdBYCz/95HaR940GylSWXft2Cc/rNp
	vQ5YCYGZ6D6MZMtLL76B2cPuFnM/KQUd4w+5v0FYNKKnvBAwQI8+x13Szryx2WPcj4zmhbO9nB+Dk
	2aUQaucg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCAwu-00000004fGj-3gRe
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:11:28 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 33378201F18;
	Thu, 01 Oct 2026 09:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PKn0mntnSpfvrcBGZXrn6hUtHGNCcjY5hyjqSqQt2WU=;
	b=HBi349HFX71VKgXd7sH+oGe/ehXEM5Pw+CRBbbDq34DrSGjXTgreun+YVADkKT342rPx1U
	PMfp9Xw/Vk7Et81mZn140q+r1+msSlFGVo7XNV3jCcFWKtgXrZnE02zj2/WDaZwqhcCyML
	qAruEnqW6PdHmUSt/JDo9JS5X3+YmceZVrx5XjsDM+W/s1MJflGMqULgAPV3PcYYE5tLw8
	f/FJthA3VoGz89fSVww3ej4k+pnxHC1WQPHkBPny/YLlXSNNFkBkzyHb3HPM8YLuQyP1Pn
	ncjVYm700KzvNe2+jn5T6BNTRuibgmUs4DIvMdrsTj2uClp+kuKixK48kcw/SA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790838682; a=rsa-sha256;
	cv=none;
	b=TnYjB4/I3l5HCgFN2GM2VIcjyJAPbZeoEuL6WdYpZgFnFr4JewRenUaSRO1xoLHq66aQ6O
	0wYstMqqjyJh6/B1BcZQeJOYYS/9FrnTMKv5aDHWYxaeh7TfwkPivLzgX5FdjJq8HcIK6Q
	sgTwhlqLuKDI/YyQuXayUdBD+Nrr0aTv6qo/WduX2weRwoHKlqjxrNZLP5ESGabSU/+ice
	IdURoNqCSP6ZbgTfD4wTNhNg0Y/iss2YuNBl9Hm+/ijWzeW6HPcYwD8to0ixI0V8svC8K1
	Ee829nRPiRV5UR08dNRZk/ALazRQvHFMEaJIMevxwQrH2DnkBYOlNO/hzbt0mw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PKn0mntnSpfvrcBGZXrn6hUtHGNCcjY5hyjqSqQt2WU=;
	b=DobBb1c/x4lfs97mocwNZjGgOkIvRXW1UGm6IybbFnR9A1wB6k1AaidYWkSA7/vDjOR2Lm
	Pvua5UJR+Jw2m/edltOfq2Y8UKfL3Ccm4cXAWpJygMbZIHnjpQkBYJcX62gGDlaB5DLC+G
	XTUjdf51AGYE6JNYv1mb5z+Bby3DygyDuaJyoR65DzZkhCUY2dtDf4DFrACvTrvWwmy2H+
	F37BfDeLNVYzkicydzoFjJ4FLX2U7mcETN57GvvUv4Xnl4NhI6KASngo4dwjzCSOIqyTjI
	Ho2lXwgkogdK4ZktlTIbRMB9e8xgnLFOSJTGSxoXIvlzA8siFBBsP2gQEy2aIA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 01 Oct 2026 09:11:20 +0200
Subject: [PATCH 1/2] bootm: fit: open FIT images only once per loadable
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261001-fit-cache-fixes-v1-1-568bd214e5b0@pengutronix.de>
References: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
In-Reply-To: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790838682; l=3248;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YxTQ91BR7ZklIXXaVzCpudkhHdawxFVQ5CwlZxa/ihc=;
 b=yRlUopH3+GsEwUOngfDBlUmEc1/B8pea+wbmM3eO0JOG5ppUI98sNPTAtcekKQYuXLwGazaG/
 uJc6w8/7eJgBhfAT/sEjzEWnQJrpPVS7IwiOKJXhCVoduxHW33S5ECq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_081125_156346_9E370A97 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since commit c3d383e958f3 ("bootm: fit: switch to new loadable
    API") the FIT loadable calls fit_open_image() on every access. bootm accesses
    the kernel loadable twice: in bootm_open_fit() to detect th [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.767];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2E498200206
X-Stat-Signature: uoshwtc59mrdnc6d9tjjx5gxorkeawik

Since commit c3d383e958f3 ("bootm: fit: switch to new loadable API")
the FIT loadable calls fit_open_image() on every access. bootm accesses
the kernel loadable twice: in bootm_open_fit() to detect the kernel type
from its header and in the image handler to copy it to its load address.
Each call hashes the image again, which takes about 40 ms for a 12 MB
kernel on an RK3588.

Cache data and size in the loadable, so the image is verified and
decompressed only on first use. The data is owned by the FIT handle,
which the loadable holds a reference to until it is released.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm-fit.c | 40 +++++++++++++++++++++++++++-------------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index f7742b8717..68bede1300 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -194,23 +194,38 @@ struct fit_loadable_priv {
 	struct device_node *config;
 	const char *image_name;
 	int index;
+	const void *data;
+	unsigned long size;
 };
 
+/*
+ * fit_loadable_open() - verify and decompress the image on first use
+ * @priv: FIT loadable private data
+ *
+ * The result is cached, so hashing and decompression happen only once.
+ * The data is owned by the FIT handle, which we hold a reference to.
+ */
+static int fit_loadable_open(struct fit_loadable_priv *priv)
+{
+	if (priv->data)
+		return 0;
+
+	return fit_open_image(priv->fit, priv->config, priv->image_name,
+			      priv->index, &priv->data, &priv->size);
+}
+
 static int fit_loadable_get_info(struct loadable *l, struct loadable_info *info)
 {
 	struct fit_loadable_priv *priv = l->priv;
-	const void *data;
-	unsigned long size;
 	int ret;
 
 	/* Open image to get size */
-	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
-			     priv->index, &data, &size);
+	ret = fit_loadable_open(priv);
 	if (ret)
 		return ret;
 
 	/* TODO: This will trigger an uncompression currently.. */
-	info->final_size = size;
+	info->final_size = priv->size;
 
 	return 0;
 }
@@ -218,17 +233,14 @@ static int fit_loadable_get_info(struct loadable *l, struct loadable_info *info)
 static const void *fit_loadable_mmap(struct loadable *l, size_t *size)
 {
 	struct fit_loadable_priv *priv = l->priv;
-	const void *data;
-	unsigned long image_size;
 	int ret;
 
-	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
-			     priv->index, &data, &image_size);
+	ret = fit_loadable_open(priv);
 	if (ret)
 		return MAP_FAILED;
 
-	*size = image_size;
-	return data;
+	*size = priv->size;
+	return priv->data;
 }
 
 /**
@@ -264,11 +276,13 @@ static ssize_t fit_loadable_extract_into_buf(struct loadable *l, void *load_addr
 	/* TODO: optimize, so it decompresses directly to load address */
 
 	/* Open image to get data */
-	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
-			     priv->index, &data, &size);
+	ret = fit_loadable_open(priv);
 	if (ret)
 		return ret;
 
+	data = priv->data;
+	size = priv->size;
+
 	/* Check if buffer is large enough */
 	if (offset > size)
 		return 0;

-- 
2.47.3



