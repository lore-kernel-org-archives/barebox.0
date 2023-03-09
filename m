Delivery-date: Thu, 09 Mar 2023 11:44:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDko-00EiMq-Ax
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:44:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDkn-0000nV-4I
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:44:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BKwK8KO96BqbcdpRBlksiSjUpqDJT4aqC72XSZVl7DM=; b=uvKQf/CbGiXlBoQU7z7RX8TxBK
	2c3QVcLf4vbazlG/rmt6la+8iHjvz90lJc/REI5TMFq6N8SqIM1NwVc0aH7bjB4Na5AizAQqQxIw4
	EeljN7rO+Sas0KQDY/gEuMmINmtjIXp6akUcUCVYjxob6xvk21ZU1/w3ZIh3xNmn4S1OXbfYwiyv1
	WwfjrmQJhT8aCZJZkE2GerCUQyoGt4gWDeS2anW1vYnucy36Mj6G7oNGYDVOi+uJRNyhzEprQH/gE
	RKTVmtF/vyDcDGIDkDfIEG8ZKhD/PyU+pR9TFS3c1BGFuUb6UDpTczasDAlsqrJKGvjgNT8Kbt1bn
	VDOfyIRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDjB-0099HH-0k; Thu, 09 Mar 2023 10:42:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhc-0098Gn-1v
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BKwK8KO96BqbcdpRBlksiSjUpqDJT4aqC72XSZVl7DM=; b=R+72e51SP+lsuIcYSDIlQcZ4k5
	oLISDVDWAf4C+6n7ReZVUYbZmy5oq491fnIC9A1/tCjDLCYtC+JH5K67cuhHixTQJjiym/bnQef8J
	xvbMu51+hNM9+ywiGwc/esJw/e3oDB4fPEV8BqTbJq/18PhRi19lHtZWhXYl/QTMzg3lYSfhGDrMv
	7ri/Lr5jvRCObC00iSvxLrN05+H2MBAQfDS/adEhXSxGA6xQDVt96TRT/clFdtA2MuSDsFar19YFz
	Bmfa+nSb0J2mJdYiR9pg4EmRKe2NOltSC32El+VRQEijeuH/SWq/p95syX+LVD7PWHj06F+O3U0k2
	aOhdIXpA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDhW-0005RF-39
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:40:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhS-0007YT-3s
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-17-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104048_010749_3DBF2F6A 
X-CRM114-Status: GOOD (  11.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/21] ARM: i.MX: bbu: add target device offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make it possible to specify a custom target device offset. This is
required for the upcoming i.MX8MN/P QSPI update handler which reuse the
common update handler logic. For i.MX8MN/P QSPI boot the image must be
written to a 4K target-device-offset but before that we need to strip
the SD flash-header-offset:

     Generic-Image			Target
       +-------+  0x0                 +-------+ 0x0
       |  .... |                      |  .... |
       +-------+ flash-header-offset  +-------+ target-device-offset
       |  FCFB |                      |  FCFB |
       +-------+                      +-------+
       |  .... |                      |  .... |
       +-------+                      +-------+
       |  IVT  |                      |  IVT  |
       +-------+                      +-------+
       |  .... |                      |  .... |
       +-------+                      +-------+

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 8eca0783eb..066b7c0002 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -26,6 +26,7 @@ struct imx_internal_bbu_handler {
 	int (*write_device)(struct imx_internal_bbu_handler *,
 			    struct bbu_data *);
 	unsigned long flash_header_offset;
+	unsigned long target_device_offset;
 	size_t device_size;
 	enum filetype expected_type;
 };
@@ -89,6 +90,9 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD)
 		offset += imx_handler->flash_header_offset;
 
+	if (imx_handler->target_device_offset)
+		offset += imx_handler->target_device_offset;
+
 	ret = fstat(fd, &st);
 	if (ret)
 		goto err_close;

-- 
2.30.2



