Delivery-date: Mon, 11 Aug 2025 14:30:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfz-009Kqi-0K
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfc-0006jL-34
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I3IeXgjC2sMj3va/gl61umh2g3pwK9XgW9t8tqjFhUE=; b=vjWlsR7Q+QFAzGb4+736PhFOGO
	iEr+feqnlt/vr0ry2gw5y7MiQr9ult75OJC3/L1CEvEnbIs+oTfrLUii/rx3DzenrswPQ0fMbIM6E
	ArihIrH+YY2vOtmy5fAKExYB8+MrvVbfGJ4+ic/ZPvkTVuBq8sXwAC6UshKNdKCuEpyp0ZqdAPGWm
	Mun0KSetr2klOrHaIco2Mv4JAT8hXjabXu9VxXQkr08NOvWNrJL9mc8RwSdCrrN7XhUdyQafvlAPw
	5wJ2Wynml8yucBUuWIbInoRkTyi2JibdpdTe/lPSfJUhumGIZAeG4xn4L/XNdZfjLYj+CUDzC9eIt
	03XkmBQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReJ-00000007eeP-13PO;
	Mon, 11 Aug 2025 12:29:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-00000007dd9-3qfJ
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdi-0004WP-9d; Mon, 11 Aug 2025 14:28:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:13 +0200
Message-Id: <20250811122824.1667791-34-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052836_001881_51A63E5B 
X-CRM114-Status: UNSURE (   8.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 33/44] rtc: export rtc_class in header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has any RTCs registered.

The symbol already has external linkage.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/rtc.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index 4fa999723de1..43c8fb248f86 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -15,6 +15,7 @@
 
 #include <common.h>
 #include <linux/types.h>
+#include <linux/list.h>
 #include <linux/errno.h>
 #include <linux/nvmem-provider.h>
 #include <rtc.h>
@@ -40,6 +41,8 @@ struct rtc_class_ops {
 	int (*set_time)(struct rtc_device *, struct rtc_time *);
 };
 
+extern struct class rtc_class;
+
 extern int rtc_register(struct rtc_device *rtcdev);
 
 #ifdef CONFIG_RTC_CLASS
-- 
2.39.5



