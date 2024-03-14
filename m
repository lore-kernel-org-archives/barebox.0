Delivery-date: Thu, 14 Mar 2024 19:49:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8m-006QiO-0f
	for lore@lore.pengutronix.de;
	Thu, 14 Mar 2024 19:49:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8l-0004GF-7t
	for lore@pengutronix.de; Thu, 14 Mar 2024 19:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8XBhCwm0n3zIvlAbm+DK1OMM9js1KTNmUP3oUUz4rvM=; b=A1f8YcEgR0dp9wAjo5kHgVWk4X
	Sa1+J/0baEJ0vmBUCRKIPT2CwjRN5xVLc7jey/DHDKHxH7EbmI38gEAOeTgJTOo5EVTA2n4SBpFUK
	IwDIq0GqplKxIgxdA3+f3LlNdl9ChjmHX/zPqilddl2rMJveKmMQXrGtuS+QqvMveb+f7s4BeXf5U
	fJcul/rYjC3paiYMe5NRUVVf9cg3dJ6kFVaxMU01GJQVYGQLgDO7m9wZdNFB7LpK/uqiVCHv5qiF3
	7wFfcvW5surRTZcAH+3NrLKiUO7gk2me4NtjEZG6ydhxq7ETH45zrVQ7P7Q60I1NeotSFC5TGC1AQ
	I8td64BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7y-0000000FMr7-2B9T;
	Thu, 14 Mar 2024 18:48:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7t-0000000FMme-1eZR
	for barebox@lists.infradead.org;
	Thu, 14 Mar 2024 18:48:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rkq7q-0001yt-Lf
	for barebox@lists.infradead.org; Thu, 14 Mar 2024 19:48:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 14 Mar 2024 19:47:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-6-0386c27fe653@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1117;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=XiK+vwDGuZA1Gw64jS/QwGfJvOOmaQxb4DSQkUFMBMU=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFI/uwV/3Nq07a1Y4Jbn4tp5iQtF70S3vpy8b+bq2LYXC
 /K69p760VHKwiDGxSArpsgSufaQxmbhzzpfjp9ngJnDygQyhIGLUwAmwizA8D/jwIeU+uy+R+4l
 f9o62i2K/l2R+n/GdRNPxKSeX8ZrZjszMlxjunWKzeVTyz3vdsvo26b/ZwZJ1godW/jBikdywY1
 V63gB
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_114825_575356_E3FD3FD7 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/14] mci: core: save the set clock as actual_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux mmc_host saves the actual_clock set on the HC. Do the same to use
it later.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 ++
 include/mci.h          | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2b39985d5e..6c473d21bf 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -867,6 +867,8 @@ static void mci_set_ios(struct mci *mci)
 	};
 
 	host->set_ios(host, &ios);
+
+	host->actual_clock = host->clock;
 }
 
 /**
diff --git a/include/mci.h b/include/mci.h
index 91460b7ef6..fe0bd26888 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -460,6 +460,7 @@ struct mci_host {
 	unsigned f_min;		/**< host interface lower limit */
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
+	unsigned actual_clock;
 	enum mci_bus_width bus_width;	/**< used data bus width to the card */
 	enum mci_timing timing;	/**< used timing specification to the card */
 	unsigned max_req_size;

-- 
2.40.1



