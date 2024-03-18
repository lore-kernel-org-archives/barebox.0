Delivery-date: Mon, 18 Mar 2024 11:23:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9b-00CDLj-0V
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 11:23:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9a-0001Y8-08
	for lore@pengutronix.de; Mon, 18 Mar 2024 11:23:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3S6UjGOGvmcvcSEFNTfFcHSRgDeQu+4hJgP6UleqvY8=; b=bjOOkhNjUZkTcR1QAxdg5uA5uM
	toaCueL9NUwR9Q6KdSvGeimfwVs0iym3h6Rd4yZnkA5zASfI/fJOqINT5gOU2anw2jiaiMMffp1ug
	5DHh4R1mnOLkP8P9o2mr8wCEy09vYiPQK5iQ65R2vYfSvWbFNvmEAL7vMLImGcjBdKxE55rXjtdkq
	1on6cJfymjrRZiTpcNPt3UKXH8Rsdayy8wZ49VBr5pjAV7Y7TkU9h7ZMYYL0msFs6b/7xvv0z2PJp
	HU6ftawnrAjqxW44nRcxyLmrLnoWdhN1ZsmZj5r6vQgycjmco2K/f4VhcaR63zwNm6Z91Q0wQRZz5
	XA9cxVMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8s-000000087pr-3GeF;
	Mon, 18 Mar 2024 10:22:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8L-000000087Ji-21sk
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:22:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5O-0006MJ-Vl; Mon, 18 Mar 2024 11:19:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-7-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1170;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=CtTX13jqdNslpxoA8hatxk83pUK/9LfOrhAGQvCX/H0=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iLIeUUovuiweMlWvdorf8utHOSZvFil/fW2L70ezK
 0udeKW2dJSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJLGxk+F8Z+FujfRmr1JUj
 67Y/lVnzX1NOo3RqrO+bi1p/N+vpNC1n+Cv1oEvrVaF70a9gDqn+GJEllRN2zalYw+zk84XBWf0
 fGy8A
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_032221_744299_963CCF10 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 07/15] mci: core: save the set clock as actual_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux mmc_host saves the actual_clock set on the HC. Do the same to use
it later.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
2.43.2



