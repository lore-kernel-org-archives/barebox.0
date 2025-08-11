Delivery-date: Mon, 11 Aug 2025 14:30:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfi-009Kmh-0a
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfN-0006RV-IL
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ZfFRu4osCF3A3uPexJHOVLXkyU3IM/dkcYmKYhhYk8=; b=j/YTyJvB4AW9l1yh9dgrrnYvi3
	R7rJ0RWk4Ry7lqyq6bYWdAFgHTNGTcH2LGp4Eo3XHK9XEn3ZB5Yk4RifxN0LXjKVcPcYi3KbPNJlk
	WqPfMJLHFcJyQKtodT/czgNrDPu2sAWUu4ceQgj7UX56uOUmaDtmp91dPfkFeP/UnielJSPLFeCGm
	jX1uS4fTWQ0xUk1jBzsDdhENN5YGbulMEUWrSUhM5BMYYEBXCMnnoJd0Y2b2byC85NC5i2NamJUig
	MsymmyvfWVusrN7vHn1XNzQu+BhnzVxbHUDLCTdvHSO0AtNkK38tgbIIxYwvoOKWU9IfdVOklrNtV
	fKLonhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReA-00000007eLT-1YV4;
	Mon, 11 Aug 2025 12:29:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007diA-1q3I
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/ZfFRu4osCF3A3uPexJHOVLXkyU3IM/dkcYmKYhhYk8=; b=RBbJSZBFArHr0cYtKKp8udqcPa
	5mTayS+h5FBEjE7sxKHV4ZhBMlajb0QsNjcY1sP1sBDdW4dsLDzces8UnvEmAg73UkyBjYHy95a6G
	GE9df0qTxlICF3Z04Ump2zTLPmedyzK+B8SIY6pYllOpoZVgRcauVmgXg+L1VEqCLoN3WfK6FXfOS
	tPyyHPB7cApWiIP1wS2XwY2Z7TxAdsgKc0xrNuNKPhec//7KvrHjexlRQaa4uG0rpE5OVeD46XJdo
	7nCL9W7k781rRvS6MyVzfO1hGgixmS/b3kzzUU9/JDMaaC1njpnKEjO2ZKcSS3g/ehIELK6wuhGr9
	qldb8I7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdk-0000000FPV4-2egQ
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdj-0004WP-Iy; Mon, 11 Aug 2025 14:28:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:18 +0200
Message-Id: <20250811122824.1667791-39-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132836_798655_C4B489BE 
X-CRM114-Status: GOOD (  10.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 38/44] pinctrl: export pinctrl_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has pinctrl devices bound.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/pinctrl/pinctrl.c        | 2 +-
 include/linux/pinctrl/consumer.h | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index dd0ed156ec9e..106a4423184c 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -18,7 +18,7 @@ struct pinctrl_state {
 	struct property prop;
 };
 
-static LIST_HEAD(pinctrl_list);
+LIST_HEAD(pinctrl_list);
 
 static struct pinctrl_device *pin_to_pinctrl(unsigned int pin)
 {
diff --git a/include/linux/pinctrl/consumer.h b/include/linux/pinctrl/consumer.h
index c13f9822ab1a..3c99e9d189f2 100644
--- a/include/linux/pinctrl/consumer.h
+++ b/include/linux/pinctrl/consumer.h
@@ -4,6 +4,7 @@
 
 #include <linux/errno.h>
 #include <linux/err.h>
+#include <linux/list.h>
 #include <device.h>
 
 struct device;
@@ -11,6 +12,8 @@ struct device_node;
 
 struct pinctrl;
 
+extern struct list_head pinctrl_list;
+
 #ifdef CONFIG_PINCTRL
 struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
 					   const char *name);
-- 
2.39.5



