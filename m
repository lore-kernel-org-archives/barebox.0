Delivery-date: Mon, 16 Jan 2023 14:48:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPqo-00DbyW-Us
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:48:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPqm-0000gv-JR
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:48:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nBPQwceu7vLBfpnU3aDksJ804oAJZu0gc0oxAojruQ=; b=nOL6HHBv0Tspij9iRMWwpIdjG6
	nIlsW9mELuWJ/6DoN5yWMdYZgeR4p4ERLTh0u5DBHWcHQ4MEcYyQfuBe9iJk4qxJRb+GguT7cWT8d
	jLtSZbbkquPAInRt9ELzsxYtNhuKyQCtfDm6qW1izIlMCC71qPXZE9MNv0rFOdwFXtAlt/JFqmRKt
	19zT4TH75b5ODajkAphi8FTwOoLEnmVRJJS3ieoos+2+rIV15FT6V3Vk+7brAHecXfok4Iolb+ZKA
	hHu3Higx4AQ+67vbHrRviBztm9tJ8ijdCtM32lR0p5xC/KvHao2saqCUt53bqRplf/Jk/9N5+eL8m
	VjbMuZ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPpM-00AZ2G-4W; Mon, 16 Jan 2023 13:47:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnn-00AYJb-Ut
	for barebox@bombadil.infradead.org; Mon, 16 Jan 2023 13:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7nBPQwceu7vLBfpnU3aDksJ804oAJZu0gc0oxAojruQ=; b=Qw3sxpotTwd62IMQrt8JKVQXb/
	MfeO5coKdtLLwUbtKfW5bNp+vLDJIxXKSxQ6fchzHhKSf+X+A8ylb7Q6vHLE8zYfuT/SzX9cHukpO
	4nF2B2It/VwYxKAoG6sE8yIDBq5t3SQ+xunZKR96+EMpUX+N8shLcws+yCLk685eQkYFPEZEJcQK1
	QphdPl8s8Lw8dIhgGGdK98+/7Z+/Zajs51Pv1tzzOHHIbrdBt8Ul0DIUoM8FMyBvxlRpvGWQuuPfW
	BgwkUxxc2JxvXhnsS7RMd0fWQ9IxBQ99H0eNvYcxkGdtV+nhuWqI2ACUWNke6SUsQKBVLWKY9xGFJ
	fejEpCKA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pHPnT-005c47-30
	for barebox@lists.infradead.org;
	Mon, 16 Jan 2023 13:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-00080q-M2; Mon, 16 Jan 2023 14:45:08 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-006SKd-2n; Mon, 16 Jan 2023 14:45:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyT-RW; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:45:00 +0100
Message-Id: <20230116134501.2006391-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_134514_440837_05F387F4 
X-CRM114-Status: UNSURE (   8.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] net: dsa: add struct dsa_switch::priv member for driver use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While we could use container_of, this makes porting and synchronizing
with Linux drivers easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dsa.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dsa.h b/include/dsa.h
index 001c4899ba41..e823bac0a78c 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -82,6 +82,7 @@ struct dsa_switch {
 	void *tx_buf;
 	struct mii_bus *slave_mii_bus;
 	u32 phys_mii_mask;
+	void *priv;
 };
 
 static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
-- 
2.30.2



