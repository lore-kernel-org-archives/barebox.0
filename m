Delivery-date: Mon, 27 Nov 2023 07:38:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFv-00AdvY-1p
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFv-0007SF-J9
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z3MmkH48URQQgnlEGnhcQTuXKbz5sapnsGNzLN4jWz0=; b=zbewbb69EfcRN+Dx8a+3rt8U+8
	tbPDqHoFKB/9p5HAoCeJohDJw2dlI5tcV1as8vPTQcwC3na6ENvGaN++IKo9p5GoHeA4sx1vx53yT
	tB+9hkDpltClgzeOJPQPj8zhF7eWX696w4hKYt7vjtFgDGL1V7XkLfSKZVlCZ6oqqjpDLdZxKwOaB
	FOjTxX+t8Tj1TBdrLkKft+hZMi28YcRklZpTYsuhfxrS+uS0eWwn45wfPCiaLv/V1V0AOKdOrOBRy
	BaHFJPoz7fu2ona0ZbFdVQcRXFyz4UEHEHRuZhNPDuw2Es44W6x/pUMrO0Y8orR4Hn7sM+XNPwudH
	v9R1W8XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEK-001Z0W-23;
	Mon, 27 Nov 2023 06:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Yws-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00070c-Jh; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00Bsgc-6y; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-0R;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:55 +0100
Message-Id: <20231127063559.2205776-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223617_131670_A45028BB 
X-CRM114-Status: GOOD (  13.73  )
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
Subject: [PATCH 4/8] devinfo: indicate if device tree nodes are differently populated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't preclude multiple devices pointing at the same device tree
node. It would be useful information for the user to indicate when
that's the case, so extend devinfo to show the information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index d89d8c2f0ac4..aeb9c5533931 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -103,8 +103,17 @@ static int do_devinfo(int argc, char *argv[])
 		}
 #ifdef CONFIG_OFDEVICE
 		if (dev->of_node) {
-			printf("Device node: %pOF\n", dev->of_node);
-			of_print_nodes(dev->of_node, 0, ~0);
+			struct device *main_dev = dev->of_node->dev;
+
+			printf("Device node: %pOF", dev->of_node);
+			if (!main_dev) {
+			       printf(" (unpopulated)\n");
+			} else if (main_dev != dev) {
+			       printf(" (populated by %s)\n", dev_name(main_dev));
+			} else {
+				printf("\n");
+				of_print_nodes(dev->of_node, 0, ~0);
+			}
 		}
 #endif
 	}
-- 
2.39.2



