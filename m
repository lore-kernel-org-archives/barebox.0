Delivery-date: Thu, 06 May 2021 11:30:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLH-0001Vz-C5
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLE-0008TG-2U
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSOuf2g8uCFTW3Q+YoFmrIA/pWYZxKTqgxTMFbc5Wxk=; b=MBx7T75uB1n3YeKl7UuopwVl0
	OFormpanFyB8D3hezgStOjXyxEXh8Fkm7alevFT/tPBuBfDjh9iWvMLu/pBxkDBp65teJxGZhvs0n
	HFKIMe19xgCm5fIYdOuXiy77BCGnbqQl56bB7HfqltBNqPrqqni9bgDtc4VY+XjWID/vhLuMR6IV+
	zw13Fa2fLVGEuh9JbFU+ltPcLZG6fXjJ9k01YPtypXCCt+Qpf24tna4xs9+VjlzPONsTS2GT29gP0
	5Q5+KerXBQSkxdLxcWO5W4tlmg1nbmSJfzsoNet4RbUqtgIxTVO/ioWPUDyKUG8HrWvn+iuo93Rk1
	9hYPMRYJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaK0-003ntL-39; Thu, 06 May 2021 09:29:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJi-003npf-OJ
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QKajFaerw6vXb9PTV0olpoOFkJtGLdMuL/Z3lFbz8+w=; b=buycAwaTTo+0TzbxZLNfugvl8d
 MhulS0uV6+ztt5lUXbcpu4NTaxuITSb2/2QQ63ctwQc+Hsz8Xuu6YwOk7INWLoeJkBNzi3heXvER5
 ZIbds9mDSnMmB/L5EszTlWBeXMB1KWZXZEwWRhvgopHPc2nLvK344DBz1zaes53tRRl8vBy26ib6D
 q3PTFy8TfMrbeZyn2xUNga33jfjl/VIINjtd2PYEVnuU3iOvJ3Un9So7eYxU8BLyDBY/QMu+bHdKd
 6s3qRiY6Y1MAwtABUZ/piSWdtS6i9DllUHwUSSlzZVtpOWxf8wrCHDe1yEgOuduGWEQjqYPSydaNy
 dAmFoKvQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFa-Sq
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pG-Gf; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lg-HQ; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:56 +0200
Message-Id: <20210506092901.25461-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_994305_D3C12C63 
X-CRM114-Status: GOOD (  13.04  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/17] pinctrl: Add deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds deep probe support for pinctrl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 84ac61f2d9..7e88391ff3 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -76,7 +76,7 @@ static struct pinctrl_device *find_pinctrl(struct device_node *node)
 	return NULL;
 }
 
-static int pinctrl_config_one(struct device_node *np)
+static int pinctrl_config_one(struct device_node *for_node, struct device_node *np)
 {
 	struct pinctrl_device *pdev;
 	struct device_node *pinctrl_node = np;
@@ -89,6 +89,9 @@ static int pinctrl_config_one(struct device_node *np)
 			break;
 	}
 
+	if (pinctrl_node != for_node)
+		of_device_ensure_probed(pinctrl_node);
+
 	pdev = find_pinctrl(pinctrl_node);
 	if (pdev)
 		return pdev->ops->set_state(pdev, np);
@@ -151,7 +154,7 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 			}
 
 			/* Parse the node */
-			ret = pinctrl_config_one(np_config);
+			ret = pinctrl_config_one(np, np_config);
 			if (ret < 0)
 				goto err;
 		}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

