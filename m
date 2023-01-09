Delivery-date: Mon, 09 Jan 2023 14:10:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErux-006gHn-Q8
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruu-0001a1-WA
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MXNOtE8x0mqmEet41wtv69cAnlTTEj6dG3HG/95w6gM=; b=GbUMHvUZCLKrT75hry1LeTICd5
	3vKAo9++oxIlEE/3ZC4hE/8Kfd8z8leu3BTRuWfzlLeScL6i4eXl//Ka6UWOK+HI7nMXPxvLmXnht
	rYwKi29+h5YdPkMPY+dytkx1BckckyZrBo97L1X1X6mc00Au/HFG6TBtDuIcBstHm8lUmNE4QVYxB
	2Y0+vw+Wo3vGVzxqhZ7dw7203eSCXss4+EiQXN3DAKtVOTiZKI6Tck586cMXVsRSbjD0XfPe/hXyT
	O5OEkZKnzTnSH8c1L8oj1e8fEIeLMB54okewLIKnADoSReZNdNml8t5QNXed9UwW1rxovbikPO/l5
	PbhRIl8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtX-001RWD-7H; Mon, 09 Jan 2023 13:08:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLh-Fc
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qp-Kq; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-004qw2-15; Mon, 09 Jan 2023 14:08:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGo-GD; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:19 +0100
Message-Id: <20230109130822.1657470-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_727117_E3F66C64 
X-CRM114-Status: GOOD (  11.55  )
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
Subject: [PATCH v2 08/11] common: deep-probe: don't build without CONFIG_OFDEVICE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a number of drivers that can be used with and without device
trees. On AT91, some non-OF enabled configurations run from on-chip
SRAM, which is limited to few tens of kilobytes in size. We need to
be very size-concious there and having deep_probe_is_supported() as
static inline helper evaluating to false when unused makes it easy to
discard code that is not needed for the non-OF case.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile      | 2 +-
 include/deep-probe.h | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index 25f5653f906a..bd5b50bc3be2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -6,7 +6,7 @@ obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
 obj-y				+= console_common.o
-obj-y				+= deep-probe.o
+obj-$(CONFIG_OFDEVICE)		+= deep-probe.o
 obj-y				+= startup.o
 obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
diff --git a/include/deep-probe.h b/include/deep-probe.h
index f75ad1065c86..927dd8d6cf50 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -9,7 +9,14 @@ struct deep_probe_entry {
 	const struct of_device_id *device_id;
 };
 
+#ifdef CONFIG_OFDEVICE
 bool deep_probe_is_supported(void);
+#else
+static inline bool deep_probe_is_supported(void)
+{
+	return false;
+}
+#endif
 
 extern struct deep_probe_entry __barebox_deep_probe_start;
 extern struct deep_probe_entry __barebox_deep_probe_end;
-- 
2.30.2



