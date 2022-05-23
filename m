Delivery-date: Mon, 23 May 2022 09:53:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt2sa-006H9S-DI
	for lore@lore.pengutronix.de; Mon, 23 May 2022 09:53:28 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt2sY-0005lm-5w
	for lore@pengutronix.de; Mon, 23 May 2022 09:53:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=77zYPzm88z0D3k4Lb6nP4ul6+bLbUt1VyyuSUrWAa64=; b=I8ucYir5RkJ3IN
	2FrGQJvYKIUQ7VVfbMeh+fRchgZshqhqNCU75WSzOmHiMvb/O7zXxvFfVk1nau5tgDOrrXu3xdykx
	OoJWsA8PlRp4Cgeu4pJkkoVAAx5ExYWJmzmFoyamW5lwRb9wBksw0vArqR/cmI/aK4TLgLVLM2zik
	Lw/Fhp7sDt7dPHi1lO/BBZGPAkown2YqrhBKMJGvXFqiu1y9wh8hFFR8lVfwX7wi5i/MGbAcl9B8z
	xfBDzS9edx9qtM8wamGe3giF86TfgBDlkvUQ7GxPXn9LITYN/6jWq/K7lqi/DdfWi7U7UqL5wdzto
	6zezwRNHqkattttS5hng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt2qL-002BW0-IR; Mon, 23 May 2022 07:51:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt2mz-002A7b-Lb
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 07:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=xktjBYoGFQj6XnUc9W+vIooXMeRth6KOdRNToa38cJQ=; b=YzBmJ9bETiz8PaEcxKA/79IQDu
 p1JmH1sGDMrpCfEvVKuTzcBlFg60TO+owCFUNbP99TPBUTnapXqvbIKj+A2PKG1vhi/kjC3WQYwAa
 VXnYRboa/PnhA9Vwqg3uEVt9r+OBB8vCY2CMQotbhqbKrbRTpj3RMs9dv6wzqlgZx63I6jYbvHkap
 vkBWW2hOx4jmM0lKzbFeFTBf8Aweou5seNyh1zX7yYg73VHnx+FtSZeztDh9UkaHdZlvTA7NoQdR5
 IunmBpOywCloKzuUF0sb60jHd4Ou58XKU9lg1d9QZ+S0WhwJ1xNSUt7p21cBROzBFrmwrMNiSN1YT
 zLNdyl8w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt2Pj-000vzE-Li
 for barebox@lists.infradead.org; Mon, 23 May 2022 07:23:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt2Nb-0001y0-FJ; Mon, 23 May 2022 09:21:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt2Nc-0042N6-4I; Mon, 23 May 2022 09:21:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt2Na-003G4p-18; Mon, 23 May 2022 09:21:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 09:21:25 +0200
Message-Id: <20220523072125.776735-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_082341_665615_65E8F9B7 
X-CRM114-Status: UNSURE (   9.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] usb: usb251xb: remove duplicate status line on probe success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A successful probe results in two lines logged:

  usb251xb usb2514b0: Hub configuration was successful.
  usb251xb usb2514b0: Hub probed successfully

There is no case where the first line is printed, but not the other and
they say about the same thing anyway, so drop the latter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/misc/usb251xb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index 4871faf451ce..8d60f19e1355 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -639,8 +639,6 @@ static int usb251xb_probe(struct usb251xb *hub)
 		return err;
 	}
 
-	dev_info(dev, "Hub probed successfully\n");
-
 	return 0;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

