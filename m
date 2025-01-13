Delivery-date: Mon, 13 Jan 2025 12:40:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInr-000a88-30
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:40:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInn-00087z-A1
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:40:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFeREKGJTPGyL93MDFTwfkWenWWVIviMmMsAVC3w+os=; b=cP8f1IVFsM+HcBSAQc57AwBBIP
	2n8e1DRb71J98x1VtdOWdNp8UKob6Dtqs1aRmyosk1vk4kEIyYA1YYaPtJ18ASuYyLL5iO7v8ggyM
	SVqNbNsXos1pYAHam+8+iDf7nWXCMzu31D7c0GKcb9nZmT52MxlGqsbA8755yZgs/9il7XDG9MSh1
	POUea/hyGuvQGhqWUD4KVLKR3YPpp8KN3E1AqsadOb2wVGRnKoMRtFFLBgFYJbdJ+iKO0dEqlUJpd
	sI+1QxYquLfoO+0REOie/ktmgV1rHoCFzLqWgJNP4KCMLrGzvMzxw3f0tj98oulxrglD7hvhxt6DG
	mwptWOYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImy-00000004xUj-0lKO;
	Mon, 13 Jan 2025 11:39:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImq-00000004xJF-2m2b
	for barebox@bombadil.infradead.org;
	Mon, 13 Jan 2025 11:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CFeREKGJTPGyL93MDFTwfkWenWWVIviMmMsAVC3w+os=; b=IXTlE/Yhg4abgMOj2PcbKgIoz/
	OEPJzWDVdmvwF4/iCpeiN0miOa4MZzTNQb0pF+5z0+gy9t6EDvRaYZCjW/iK4bfh59p0XmaXr9Fjx
	U1LPWOWeIqxsYKiKH6dSC8+vkx7Q0ELyIl2ZYpYiWOZAlvdiIhC6AjhutDYg5ZlNUDL0BU8aJE0dm
	t0cHll7TNm6CDtiiNsfcdXQzmyG9CZsv5xCK/rYM0XrSZuOM1BZOSOEbOnf6xPtH3T5hvjSSH37NN
	hIz2gsHs45eXq6Ft6swvB68Swk4gp2yH6byEkQaK18bhIGPq/u4VP9ZgjIM6U9U7mshH7qKl7mW7j
	R9iqeXvA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImn-0000000AHiK-0un7
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:39:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImi-0007LZ-Ds; Mon, 13 Jan 2025 12:39:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImh-000FYv-2L;
	Mon, 13 Jan 2025 12:39:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1i;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-11-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=778;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OjNtGH4VQtZyddfDOpbk7ueaT84I4SW//moDz2vzksA=;
 b=end1osbTxyBQAXHCkSeH84sW6mW8HMuC8LmOG9tIXOrQUndMLprKidNHMPYWssQWonstbbGc2
 ID58sbhIusWB7uBUeMscXj4GdvIZcJ/CMQqOso8IioNy9Jo6K18lPhz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_113913_489728_3FBFBE86 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: [PATCH v3 11/23] ARM: k3: add k3_debug_ll_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a function to initialize the ns16550 compatible UART for debug_ll.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/k3/debug_ll.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index 29bd4015ab..a37b50c726 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -33,6 +33,14 @@ static inline void debug_ll_init(void)
 	/* already configured */
 }
 
+static inline void k3_debug_ll_init(void __iomem *base)
+{
+	debug_ll_ns16550_init(base, 26);
+
+	debug_ll_write_reg(base, 8, 0x07);
+	debug_ll_write_reg(base, 8, 0x00);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,

-- 
2.39.5



