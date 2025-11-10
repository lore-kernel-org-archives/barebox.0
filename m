Delivery-date: Mon, 10 Nov 2025 21:35:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc9-00HVOj-15
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002JF-EY
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gQ4rHQ/aOokRioCr+08KuBst8e5laHZy3dnOa8r+mY8=; b=ZNDy86gUBEiS6slew8c2F1yPfC
	jgROGwszJ9vgQiuBEBF93sEAF4tZv9uBKoHYvsxADBlhUpcQCgnWe5KuGjibjYr2eOYPGsiu4iCn7
	CYTxPv+WjoqUBdpgYZuwLH6yJ6CKSJ1GZuri4uvOjwMkOa55MjbMY+Y433ftJvIGHW9OP933w29pV
	6c/zdb1AqaU91uDrQMpGVawSkAwC6QT+dWoRThwNw2NICcOIJlT/mbIGxwQt7Mhw0BCJyb5mED3O6
	lYgbcASHSxdkxdYLadsA7w9gIOZ5HXliARma9yvle0vvmg7iUIRooCU1eXThGxgniV7PWfUpTojy6
	hgEsTTsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbL-000000065eP-3TlW;
	Mon, 10 Nov 2025 20:34:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Xf-1YfH
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=gQ4rHQ/aOokRioCr+08KuBst8e5laHZy3dnOa8r+mY8=; b=MsjJoj/6gMlxtW6OtBzs38thCh
	J0XrJbAtDQrTIDoJR4Rt7RdNuhxQ6KCm1EUWognOrAoS4rmQNWivrIDXEAm1oSX1v8yfSiLxGWFUG
	y7doIF8zbHb4Cvs07jMs0ZMqPo1INXFAaXZuJDWA0WLASBtDVbAc5/Z2wSoa+E+7Dncnu7DRBIAzz
	PZ1c575BTIXFTt5AIn3SR3DkQgNF/YLgNGL5pHxx3i13jGhRwr5ndKSuBeVOIleQIUeRXl5lwVNW0
	Zm04erL/zgvsHrn4fo0CgErKcZvt3WT/i4hde2OH3/67bHEV7ko3Rnp7oq8MeSMkjPTln41LyGyNs
	pwYD3aSA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjW-0000000BgCz-1MbE
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Tf; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-17-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_449809_9807E7D3 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 17/23] handoff-data: Add BL32_DT_OVL entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to pass a BL32 provided FDT_OVL from pbl to barebox.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl/handoff-data.h | 1 +
 pbl/handoff-data.c         | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 7552ed5fc35f351f71822d309095980eaa764f63..88b1e9c80331a279564c338e758bd4928861ed56 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -13,6 +13,7 @@ struct handoff_data {
 #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
 #define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
 #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
+#define HANDOFF_DATA_BL32_DT_OVL	HANDOFF_DATA_BAREBOX(5)
 
 #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
 
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index 42e53f986bf14408f25cdf4434a5c284f8361401..2e1287cd69232d09b13384db3f1813737d67656e 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -189,6 +189,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
 		return "handoff FDT (external)";
 	case HANDOFF_DATA_ARM_MACHINE:
 		return "ARM machine number";
+	case HANDOFF_DATA_BL32_DT_OVL:
+		return "handoff BL32 FDT overlay";
 	default:
 		sprintf(name, "handoff %08x", hde->cookie);
 		return name;

-- 
2.47.3



