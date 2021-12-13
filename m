Delivery-date: Mon, 13 Dec 2021 22:12:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwscU-005gFG-EP
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:12:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwscS-00044j-Fy
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:12:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiR0I7mJCsuNlldFeRYBLjBtVUTgqSqMDcLgIp7VsQU=; b=oaXTxb1ONb/z3R
	sIwUlTHIhh50NhYK4VNMw+7vZNgfN1NjJoW839EhV0CN5YA7CqNTdmbDR1MchUu+QbbLm2bDDZLkm
	wrQg+m/ujjvYrOxLH1Vyv1s0nxwVQxduU8h77bo0tflbj1WmRa4N/fEyCA3Qq8Zj0RdvVDqgfggYV
	/L/KXyxxYynnPiCXbCDPXkAGzH/dkZrFZeO9bT9ro9dZaYCNtPev87roIwi//pGbAFqXICvDnVOqw
	MVZslzTgCfJ6FkjKT0xe0SG5mjunhHNjN2Yum1lmB94m/BjVdibQk+2lvsb0Uk3m7ViYG3VH29QY+
	oMOvlfP6QdHdYiNjcbVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsb0-00BPnf-DB; Mon, 13 Dec 2021 21:10:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZU-00BOul-CM
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002T2-0a; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpC-9f; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:54 +0100
Message-Id: <20211213210905.3399551-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130920_537612_99CC89F6 
X-CRM114-Status: GOOD (  10.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/25] efi-stdio: Fix '\b' handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In vt100 a '\b' moves the cursor left, but without deleting the
character under the cursor. In UEFI the character under the cursor is
removed instead. Catch '\b' and manually move the cursor left without
deleting the character.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index d512cc3e01..beef911a16 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -329,6 +329,13 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
 				efi_console_add_char(priv, ' ');
 			pos++;
 			break;
+		case '\b':
+			n = priv->out->mode->cursor_column;
+			if (n > 0)
+				priv->out->set_cursor_position(priv->out,
+					n - 1, priv->out->mode->cursor_row);
+			pos++;
+			break;
 		default:
 			efi_console_add_char(priv, s[pos]);
 			pos++;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

