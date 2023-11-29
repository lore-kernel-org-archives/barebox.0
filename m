Delivery-date: Wed, 29 Nov 2023 21:32:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8REv-00Dd1s-3B
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 21:32:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8REv-0006HV-Vp
	for lore@pengutronix.de; Wed, 29 Nov 2023 21:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/WHM19DU4wRDH79lAbRl21Fc7rf/bhj7cex4J7JjeQo=; b=wFVhcbnErZtigPPbn7WGbBNOCJ
	8NEY1o96cwVPfxq4DhgiZ5uex3ZSA8aYYYeRmY5B81kkuN7sReC5wo9d+70JgGMvAuXaEbVRMUX2U
	Dr0/N0kyV2R7joEm4a+UgRi6St+Zk3AcYD7cPmZnuZ9IaPG5pntfnpVjmg429PWXv6HZswuL1SOKv
	O0YFF9z+uxCXe+Oc0S1jVIbsU5rR1ChLC7ld8VuD3XUJ0ltfjd3+s4MpqW9QWJk0OSUhN01wz0kf8
	kmT594Kkuga2uw16hoKqhblo4bSXWgyjZBVQmqQ8hAg5Zre8rrLw/gWjhz53NRth2aD2h1HWgN8wh
	63TdC0Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8RDM-009Ffh-1g;
	Wed, 29 Nov 2023 20:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8RDJ-009FfM-2u
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 20:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8RDI-0005yd-HY; Wed, 29 Nov 2023 21:31:16 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8RDH-00CTpy-Rm; Wed, 29 Nov 2023 21:31:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8RDH-00A9uG-2U;
	Wed, 29 Nov 2023 21:31:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Simon Glass <sjg@chromium.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 21:31:06 +0100
Message-Id: <20231129203106.2417486-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_123118_058407_783521C5 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] FIT: support kernel images with type = "kernel_noload"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

U-Boot interprets "kernel_noload" to mean that the load and entry
addresses shall be ignored[1] and that the kernel image should be executed
in-place, unless compressed[2]. The entry and load addresses are still
mandatory and need to be initialized to some dummy value according to
spec[3].

barebox, which is unaware of any special semantics for the kernel_noload
type, would thus try to place a kernel_noload image at the dummy load
address specified and fail if that's not possible. Fix this by treating
type = "kernel_noload" as if load and entry properties were omitted,
in which case barebox falls back to find a suitable memory region at
runtime.

This change is motivated by the Linux kernel series adding FIT as
additional Kbuild target for ARM64[4]. With the change here, it's possible
to consume these FIT images in barebox as well.

[1]: U-Boot commit b9b50e89d317 ("image: Implement IH_TYPE_KERNEL_NOLOAD")
[2]: https://patchwork.ozlabs.org/project/uboot/list/?series=382849&state=*
[3]: https://github.com/open-source-firmware/flat-image-tree/releases/download/v0.8/fit-specification-v0.8.pdf
[4]: https://lore.kernel.org/linux-arm-kernel/20231129172200.430674-1-sjg@chromium.org/T/#meb5bda548de8d8d403c67ee90f639923c8a182fa

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0352dc5cbd0c..5ef5013bd41d 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -545,6 +545,7 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
 {
 	struct device_node *image;
 	const char *unit = name;
+	const char *type;
 	int ret;
 
 	if (!address || !property || !name)
@@ -554,6 +555,11 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
 	if (ret)
 		return ret;
 
+	/* Treat type = "kernel_noload" as if entry/load address is missing */
+	ret = of_property_read_string(image, "type", &type);
+	if (!ret && !strcmp(type, "kernel_noload"))
+	    return -ENOENT;
+
 	ret = fit_get_address(image, property, address);
 
 	return ret;
-- 
2.39.2



