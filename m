Delivery-date: Wed, 28 Oct 2026 10:52:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xM0L2-004HW1-2e
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:52:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFA6E202925
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:52:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YhJH2wwY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eSJ2xhne;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793181177; a=rsa-sha256;
	cv=pass;
	b=FCYWTQNL+znhwzdRymmgHjY7KcThv2beO/IHIM2HHN4lWqobXGmCg5J8sxk6ZqCo7c4Niv
	4hhyRguxZWsTBLQsJLPXW+6v2N1SLAl4vtdt62um3fIck65SXuraSe77xsrKzUz7NIfFBj
	M3KYy4KxxHd+lTkp4ckpq8UM3gc7NMY2GNg2xKuiOufj5ztxPZKY5mGMieH2zsMaUcDZ29
	3+iRNyShkVdMSM/zQRgweXSHjI0Jq6Wp3ihYE7N5scKCTE0VaU9zPOEBe+uOldfxp82lNe
	hcqyDPk4DkfEB0Iu0cBKe1phkgQeYjP77Pr34Cov7cI2JANH4dWBL3zF0BZAIQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YhJH2wwY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eSJ2xhne;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793181177;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=S9LW20jHhpLSsnEWzOv4ZOdhEKaOtHVGpK6RzcGuuac=;
	b=W8x8D7ztyi8/nkHXC5L6gH5D3PZwqDmFiTH22vRS+KAYZKbDcqe50S/SBD3mDLqMnKdyhA
	O5EaGfiUvpwLWliGF6XgOcte5wYqmhU0g13pNKM5DpprOBKa8RYaZalEjtA26aPtinWp5o
	BJUWWclRXGiFcveqURP/wujggCYGJW+7WgoqPvYFHFj2J1AARBlDsM4ZUrPqYBG6o/89U0
	1nEuPdCnycfSvedPnveI/m4ypma4/hCi0LHmUYDjAuBsXrIFLgkgVOnKgXBpppnYohlCC1
	lXuZ/Ds7lCsKnxJRnSH4nXW6AgtYF1K8n7iABIdhoGxYjPAj2E0BB7q5m0XwCA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=S9LW20jHhpLSsnEWzOv4ZOdhEKaOtHVGpK6RzcGuuac=; b=YhJH2wwYXl9YTS
	iAUHzjjxaEVE9jF57aKJbsROQ7m32HHGaPgTS34OKadFrTgl7dWMpRRAMf7h6jtE/yqbO6Qy17zsV
	/DfBiKVpFznyCBpKHRXqLVLRxJ6u1nhaOwX6SU1II8gYryT8qRmMdi+VJDThTLEYkbc/qsLFfTzws
	ld1ysDzPvT4rRapmaSVkKO2cYlhbUEdf+ulTRjdHhBkYAe6ZQ6EtH0VfF3uQGKE5RwF3RN4SK5qeu
	TKwftOKH1nT5e4VQjy1ibTUxZFbbZA6bOt8xFckn2Kdut05+e8VMhkLfdNJ4U8eFBatA4A8xojPTN
	eUwlNWZtWn6F6mNRfHNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu5-00000006eX9-1AAR;
	Wed, 28 Oct 2026 09:25:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztw-00000006eIT-1q8O
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 20744202962;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S9LW20jHhpLSsnEWzOv4ZOdhEKaOtHVGpK6RzcGuuac=;
	b=eSJ2xhneU9AkxXEHuB39sQ2HUGOo9jAqo9terxnGuuUrt/EztGtNUgXPrgSzFpvp/vWmdn
	SirpBhsOmUOcAJO9P2sInf9DXz4iDq6/iUr6V4W2Sc9pES1xPAzm73s0H5rC9s8EN+VnP/
	462/kiWGOq7GqVS5Pj2XOLplf6RpGolqQcQ+JMsd0mv2Whv4lhjUmyerYP6ElGJG5/YA9x
	aAHjbtxstRclCm7rIczkK7sRnPJDc/3N3ya/C4nDatSB48e6CH0LdaeutyIPkdcVuBn65n
	P86HMnxdOmhU5ueTp8dgciwWnN3XaJxmZfeHgux7nkgaAu+qoOONCkKPNzqhRg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=FIGcCuYhEWnVnESTUxRoUO1r1/X/Q9/0gyCtKp+Ww/eK9+wXGt+5XuRvtZRXThbSjbeZDH
	NFobjW1vlqjU9lIjdNxpSs4eKtzxBjWtJWXcb/FCXZQIjvLwv2NSPlFVQxw2jg7Z2QOO1D
	cVCilPXLy9ItPGByf+RZlM80lIVaE+mhLRdnDKVvh5Xevrw9IeezOVpSPpJq4R+A1TYPc+
	ZZxHeU9bktHbV7FIljtiisX7VMK9ygBGEbWbbtLZvD3gEtv9XbR4S6Am8cSFDb25dY257b
	+1hxk72dpTFUIDtcgH5sG3vbNospFn0IKgiLzzFPFdqMX1kaVRd8kwiddQEGzw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S9LW20jHhpLSsnEWzOv4ZOdhEKaOtHVGpK6RzcGuuac=;
	b=XYY6Xxn2gTWl6vP4abR4wShVG8QmtuPNUShFDoluab7LGhShxgt648oiHSCMoCr2bEOLrg
	9P8xw5IeT/bg/t0mtM1fpoo3sfTrPj8rhR6VGIkKnlyEdtPhSnh62NOCJd6jWLm6Yhb26r
	aCbg/cFTDn14f9OnsNptJCBbIGipc5Q4MK6v5fzlwW3ylcZocftBivTMi8d0LIUXwBbGME
	YKWvBpYXpBbNNwi+ltTpUIQfDn6AwhUKw/CRqvFBcoctDJCDFIjmuSStCg3aE8tow1KEOF
	OfrgFK3VNGx10Mhpx69Hn3gM0EyE9NuJOxezJUxO8Zr0EO/5Ebp68lnBgCd6Wg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 0695674094A;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 16/19] driver: make dev_platform_ioremap_resource() device-managed
Date: Wed, 28 Oct 2026 10:14:50 +0100
Message-ID: <20261028092442.3300753-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022457_004501_5F101179 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Unlike devm_platform_ioremap_resource()
    in Linux, the barebox stand-in never releases its region. Most users call
    clk_get() or regulator_get() after it, so a deferred probe leaves the region
    requested [...] 
 
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
X-Rspamd-Queue-Id: AFA6E202925
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
X-Stat-Signature: fhtk7w8fdnwikdzg49b1ccugh8sk4y7p

From: Ahmad Fatoum <a.fatoum@barebox.org>

Unlike devm_platform_ioremap_resource() in Linux, the barebox stand-in
never releases its region. Most users call clk_get() or regulator_get()
after it, so a deferred probe leaves the region requested and the retry
fails with -EBUSY.

Implement it on top of devm_request_mem_resource() and move it out of
line to devres.c.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/devres.c  | 32 ++++++++++++++++++++++++++++++++
 include/linux/device.h | 11 +----------
 2 files changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index efc810a8898f..f68b8e7b6590 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -7,6 +7,7 @@
 
 #include <barebox.h>
 #include <driver.h>
+#include <io.h>
 #include <dma.h>
 #include <talloc.h>
 #include <xfuncs.h>
@@ -204,3 +205,34 @@ struct resource *devm_request_mem_resource(struct device *dev, int num)
 	return res;
 }
 EXPORT_SYMBOL(devm_request_mem_resource);
+
+/**
+ * dev_platform_ioremap_resource() - request and map resource 'num' for a device
+ * @dev: device to request the memory resource for
+ * @num: index of the memory resource
+ *
+ * barebox maps everything outside the RAM banks suitably for MMIO, so this
+ * only requests the device-managed region.
+ *
+ * Return: a pointer to the registers or an ERR_PTR() on failure.
+ */
+void __iomem *dev_platform_ioremap_resource(struct device *dev, int num)
+{
+	struct resource *res;
+
+	res = devm_request_mem_resource(dev, num);
+	if (IS_ERR(res))
+		return IOMEM_ERR_PTR(PTR_ERR(res));
+
+	/* As everything is mapped 1:1 by default, drivers on unlucky
+	 * platforms can end up successfully requesting memory, but
+	 * getting a base address that looks like an error pointer.
+	 * Let's warn loudly about this case, as these drivers
+	 * should be using devm_request_mem_resource instead.
+	 */
+	if (WARN_ON(IS_ERR_VALUE(res->start)))
+		return IOMEM_ERR_PTR(-EINVAL);
+
+	return IOMEM(res->start);
+}
+EXPORT_SYMBOL(dev_platform_ioremap_resource);
diff --git a/include/linux/device.h b/include/linux/device.h
index 9b14bc74fef6..2b33580cd573 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -146,16 +146,7 @@ static inline int devm_add_action_or_reset(struct device *dev,
 #define driver_unregister unregister_driver
 
 
-static inline void __iomem *dev_platform_ioremap_resource(struct device *dev,
-							  int resource)
-{
-	/*
-	 * barebox maps everything outside the RAM banks suitably for MMIO,
-	 * so we don't need to do anything besides requesting the regions
-	 * and can leave the memory attributes unchanged.
-	 */
-	return dev_request_mem_region(dev, resource);
-}
+void __iomem *dev_platform_ioremap_resource(struct device *dev, int num);
 
 static inline void __iomem *devm_ioremap(struct device *dev,
 					 resource_size_t start,
-- 
2.47.3



