Delivery-date: Fri, 22 Aug 2025 04:17:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHLD-003ATI-3B
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 04:17:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHLC-0000pP-SA
	for lore@pengutronix.de; Fri, 22 Aug 2025 04:17:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gzp/qCGNxj5EbDvPRzVu71je49CPaw0QPXMsGXENp/k=; b=yaEzGeuzcU13U/KHhJN+yqe5dk
	kiplZrwUbQbQK9AeIDU2jIrmM/OrU3//GomkZ7HBVnZxdzZdG8j0uWNptQ1nCz7HEJvNM+j65P8Nn
	iQBlOnp8LGK0D6r5m13e4yisTyCmPk+145GERZiWua1ZkVEIoEP1jbnK97U0dr3NohSHEiiebH14Q
	vOYMAf+ymviQX8jvbNHm6C4DycGm6uRu9DVRZKtZsOKIVMtRTQA420fh2htEJ3Ox7JhJUUSlVq2r4
	rUfQiS5fGaYzDbb8YCpIQCdHgtVRgFiqQgoqKoiBd1GkrYdKnSRPODrmr+eWTP655121u/c+V9ZqI
	glKD0pHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upHKi-00000001Fk0-0SKK;
	Fri, 22 Aug 2025 02:16:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCBa-00000000XLT-0DPx
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 20:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBY-00074s-62; Thu, 21 Aug 2025 22:47:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBX-001T3u-3C;
	Thu, 21 Aug 2025 22:47:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBX-005z7T-2v;
	Thu, 21 Aug 2025 22:46:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 22:46:58 +0200
Message-Id: <20250821204658.1426566-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250821204658.1426566-1-a.fatoum@pengutronix.de>
References: <20250821204658.1426566-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_134702_105595_F5FA05AF 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] state: dtb: enforce minimum FDT length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should check that we have at least a FDT header before dereferencing
pointers to the structure. Issue detected with libfuzzer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/state/backend_format_dtb.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index b41b896aaced..9624d1e8103e 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -45,9 +45,13 @@ static int state_backend_format_dtb_verify(struct state_backend_format *format,
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
 	struct device_node *root;
 	struct fdt_header *fdt = (struct fdt_header *)buf;
-	size_t dtb_len = fdt32_to_cpu(fdt->totalsize);
+	size_t dtb_len;
 	size_t len = *lenp;
 
+	if (len < sizeof(*fdt))
+		return -EINVAL;
+
+	dtb_len = fdt32_to_cpu(fdt->totalsize);
 	if (dtb_len > len) {
 		dev_err(fdtb->dev, "Error, stored DTB length (%zd) longer than read buffer (%zd)\n",
 			dtb_len, len);
-- 
2.39.5



