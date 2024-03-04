Delivery-date: Mon, 04 Mar 2024 20:11:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiJ-008dof-06
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:11:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiH-0005v2-Nn
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:11:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k3SaohC2/ElW7FH+dJ9J/XODiYC/ynol2Zd5DFz+WD4=; b=iLn2Br7JE0EruV5qa+n1WJ7t6Q
	Zvr3/Rc1JOkzw1flaSRM27XyoXiGMBZs6uCsO+qz70oTWZE9Dqt3Xen8wadlaCj8bv5I2BadR0RDm
	OaejBqdd0dHVnA53q6nFljCNYKTZwxVOh/q+BizmTBtP/ORpapYd/bRyiKB1j6OaS5ORooxb69BDF
	MQUr3mMm5NM2VZ+YdRR+C8/7L9PvulnxynnR1FhQmLs4dA3cJbGF061EZ+UnyOSFK7yDDKgRLZJML
	9TCVir91QptmByYpAx81Wl+d1qsIgBtW1B9i8xeHlua7aPuJvqHWBod0wqH89PE5iO5KT2cs0jVNN
	PcFZn98Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDhd-0000000ANTC-06ac;
	Mon, 04 Mar 2024 19:10:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDae-0000000AIeZ-2Tca
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k3SaohC2/ElW7FH+dJ9J/XODiYC/ynol2Zd5DFz+WD4=; b=kJLLUR5+Lp8GWvDQJeN+c3d7gw
	qtPp1aZtKSvBOQHByu3qysPXU4WZo3ZSNk3X6Wel6rBxGGrurrlWF8iGz33F+FXeyl6W+Jrp1nTtx
	yxzyLKUTm+GHjEldtwQqZMGRGeyBBaZ3yOeiPPmVgBO5cVIhgbtBBVs6UE/d7t9VprXWPzgiROjt8
	+dwSMlvt8c1PDAX0jbQgdSTw+2SUB2+hinihkTwFI/3NBvQCU8+zuyY8EHOexjPwWuw1CKr4jpmXV
	GR/HUtRiUed+Q4IYGEPn+1Ukr+JmyIOA/14pyW+an5FhlNpJlZB4JcqYwskbGe5ruJkxzBKIyfVpS
	M+DKP2SQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-00000002BSz-1S6b
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00068p-II; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PJq-3C; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-1B;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:21 +0100
Message-Id: <20240304190038.3486881-97-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190301_422520_6B9B7BCF 
X-CRM114-Status: UNSURE (   8.14  )
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
Subject: [PATCH v2 096/113] efi: payload: don't require efi_loaded_image->parent_handle for bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fixes bootsource detection running barebox as EFI payload under
EDK2 2020.11.

Fixes: 443eb41376d9 ("efi: add bootsource detection")
Cc: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 3a16deab5f6b..857f1b8c097e 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -404,9 +404,6 @@ static void efi_set_bootsource(void)
 
 	efi_handle_t efi_parent;
 
-	if (!efi_loaded_image->parent_handle)
-		goto out;
-
 	efi_parent = efi_find_parent(efi_loaded_image->device_handle);
 
 	if (!efi_parent)
-- 
2.39.2



