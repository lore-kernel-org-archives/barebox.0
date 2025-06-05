Delivery-date: Thu, 05 Jun 2025 15:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARY-0041gE-2Q
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARY-00031m-4F
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGLWWokSDEdSslCBdjAOsgc4+GWejM4ywHZbPIEg3V4=; b=kJdK3MNSXuMuDsCG9AP/nnBnG9
	fSinyQs96NSi6YykX3kuua3w8M7jqI1Mb6oYX5FA0/vWNpmQfp3EZW026GtU4xYfR6t2YnAZhI/TA
	MJ0KFv+hvcmQCQt1/ma0jxzxVyPSzDCFjg2ZqMGG4mlHoQ1bPt4Gd0TCnZ4nOlacFSqihhruPmzp/
	d4FKpvxqEl8e8bs79POmcLRfp4mHQhB202jWl6SkOLt7yWAmqiEHXzoTPt4e844h0yi3g1WuNdZvE
	HF+MkthisxXop3pgAaVjJf0o/FjZmnaGCq6TtKnZojoQ20DNu8hi3s8UemdRq7wU3tQqIeJ4GxOGQ
	oOzxsQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNARA-0000000FaNn-3NeA;
	Thu, 05 Jun 2025 13:15:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFM-0000000FXwn-1qqh
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VGLWWokSDEdSslCBdjAOsgc4+GWejM4ywHZbPIEg3V4=; b=VfTsW/m52VF00Ywp47fAdGbr1i
	k0Ruq1wQbgSZaiYktDwrOddlvTkKe9ArL3sP/mbcFLa6KNTlFLxowi/6BMnOuuW91cctVyJgtS38n
	N47U5OoRidZq9Ep6ShGfBlnhK7R0SpEep9Ul8HUGPtbTI1wQeyr/mGj25LdJVvfSeeJq0WtOtwh1L
	spVePOfciXBTpITNcHDjmk4sUYCewSMI4tUsbmvJdMs1yC9yGNBSKWYI7nYa68acXhAUGb3Yd57to
	t0j9nUHtnpXsVBYHQqjjmCIQGaD/rMGY6V9M07UbXjYyrIOgcUJF0pj7X+YQbNIO9CLZYniZ7RHdh
	a7GZcXRg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJt-1JUT
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00013d-DK; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xk0-0i;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1r;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-27-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=967;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=l7VsdzcVCyAmMi+6njrFhmq3XhdUbT6os3l08f5ssGg=;
 b=cugNj3zWzxcpTeMYIE0VMgXcapU4JriO3TruBGa4WNgGjB7fVIfjdRLbY6cq31ekNcqic+Sz7
 39koixr42hPDl0c0JdwXrKjsuGIRSxgBJN9Muys7D/xKJ5G9ePsT8wK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_457741_425A372A 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH v2 27/33] dma: ti: k3-udma: limit asel to am625
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For reasons currently unknown the asel setting is only needed and
required on am625. It doesn't work on AM62l though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/k3-udma-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma-common.c b/drivers/dma/ti/k3-udma-common.c
index 8661d148aa1324828a168edb5caa496bb7e6da45..49e2396e9b52145fdf325c2e07efe0869f844a1d 100644
--- a/drivers/dma/ti/k3-udma-common.c
+++ b/drivers/dma/ti/k3-udma-common.c
@@ -1102,7 +1102,7 @@ int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
 	    ep_config->mapped_channel_id >= 0) {
 		ucc->mapped_channel_id = ep_config->mapped_channel_id;
 		ucc->default_flow_id = ep_config->default_flow_id;
-		if (args->args_count == 2)
+		if (of_machine_is_compatible("ti,am625") && args->args_count == 2)
 			ucc->asel = args->args[1];
 	} else {
 		ucc->mapped_channel_id = -1;

-- 
2.39.5



