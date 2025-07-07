Delivery-date: Mon, 07 Jul 2025 13:55:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRd-00F0zS-1w
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRc-0002lB-GZ
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+zGazEoIKK/+Yu9sQXAPkXgJDrB9KljZP8k3cLpcBMg=; b=yLmepXJ9RosOrcAdkyTowfxa4M
	xb1gC1JUzgVKxwjrNpuphi+u3iHSnN9JATsqXFPDkZd2zSOZsW+9RAJ7us5SHg8vu9iO94yk6qii5
	lJxitu4yKdXx681DZuGd2k/o617qYq/OiqGr8lz1YFm21O9bWVMklnqiERlsL6Ol2WpNmNPtAhIOL
	lEHTktox8Dwyv+DenB8XA/uBVUqlAzocGwfT0RjWD+IMa4Q+nUfsMYGRgvFDmqh+FCoo2LDYON5mN
	MzU6weRKg6PgQhIkZ/U5SElzZe7iPlJ9JyteKuK3vrSJUwto/V73Qoe75F/Iz971ykaULZbE4L23O
	wshO2FdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQt-00000002LUB-0hxT;
	Mon, 07 Jul 2025 11:54:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjwC-00000002GjI-1NeI
	for barebox@bombadil.infradead.org;
	Mon, 07 Jul 2025 11:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+zGazEoIKK/+Yu9sQXAPkXgJDrB9KljZP8k3cLpcBMg=; b=Fo162rMk0xS8aVMWjQmd0M5125
	kJQJ6PryZgSd5lQWmxrUYqwZJQ6cBCVJFtg23JACKohSjTXWlLV0GQprd3GvtxEKeoHBhXdfDjB3H
	mQoeLM6tT18p3zqKPpAqLfskCypxmHfZfhEtVl34OfQ9NID80Hr+O+6v8GtOUBHe+nCNaTSa4CBk3
	WDCtopSyMxxfbA4byM6xz1uvAwkk7BroXZsGzLA9vCSwiiX56YJS6+ipI/IkVSn/n0LEIYYcI5WhO
	TxzoTn0h/6ao1B5Lcf69yTD2Sfuup9bcfRd3flyXL9W1ZCMxpaAhl7SPNETi8oq5hGj6/OkTNdKDV
	AW34KrCg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjw8-00000008TaA-39LK
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:23:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvv-0001uY-Sy; Mon, 07 Jul 2025 13:22:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-6-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_122305_071208_AFAFE904 
X-CRM114-Status: UNSURE (   8.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 06/10] linux: clk: add fw_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow setting a local parent name for the provider that is registering
the clk. This is done in Linux, too.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/clk.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index f2c02c9eec8fca9702176d0265eecc3620e74fdb..f893d9071371340366b118b506e597195d3f1d58 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -352,11 +352,13 @@ struct clk_ops {
 /**
  * struct clk_parent_data - clk parent information
  * @hw: parent clk_hw pointer (used for clk providers with internal clks)
+ * @fw_name: parent name local to provider registering clk
  * @name: globally unique parent name (used as a fallback)
  * @index: parent index local to provider registering clk (if @fw_name absent)
  */
 struct clk_parent_data {
 	const struct clk_hw	*hw;
+	const char		*fw_name;
 	const char		*name;
 	int			index;
 };

-- 
2.46.0



