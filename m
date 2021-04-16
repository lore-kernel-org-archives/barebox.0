Delivery-date: Fri, 16 Apr 2021 11:57:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEG-00017K-Cv
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:57:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEF-0006Ke-Ed
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:57:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSOuf2g8uCFTW3Q+YoFmrIA/pWYZxKTqgxTMFbc5Wxk=; b=punpagCrWToj23nh4Vp/9TaqX
	PubTuGjU6M9QHzskPYgvEhyT6R5RirYxMC5/3pwVdhRyQ7gSllk9kH39x4BtBtqpusLjFX38FcHMl
	qyMPwAKpLyS1H7kxtjGbDKx8TtR8hSX4nNOGW1FWEHSQzdixmvpqV5Fo82bPTz9myqptvIdIXAITC
	bwDM/YVXkWQ8KVzc26q1TEy5Xgc3RhyXEG4Qq4fOrE1mpdSlVfQEJRwqwJzd4kJ87xyYgTy4cTb61
	0SgmU2LoFn54PMUUI7XuH1U6MdrG7iSAz9TCrLaDHeAHNQAb05Jtd1NGrPOZaJNRZvPsb+hAv4zHa
	4aGlOHz2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLD2-001dot-U4; Fri, 16 Apr 2021 09:56:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7K-001cUR-Gm
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QKajFaerw6vXb9PTV0olpoOFkJtGLdMuL/Z3lFbz8+w=; b=OpC565ABO9wEMxUo8UH+wjoFEc
 qVlKp/b+BxQI21lEaopeAZd99cXazpMtLm0S47J9MCDhEGIABtoGGOkOKymi9XVl4G75xnJYeNAuZ
 TTTNq8VvuxV4iX25G/CfdPzhQddx3oI0YfvA1nyCQhCJWbPZ9Rx66ZDeOfMe7sWIy6KfzFRdLUZv+
 PsPy8J08Pl93/ooXDfmQo2Eg8tsXv6xLuyJCD/XuLxx2/f9bupVQhfwP/mKw5QBHya7OvkAcec3X0
 TXlJe5vw6P7SzRdzUx8Rq7KCkNL27XqVTASMZOnp5EsYmOi91h0/rXFnWwWPEx8RZYArIXQtvIjI3
 TodpJ2Xw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7H-009FwK-L4
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051R-80; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001Ds-Tu; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:38 +0200
Message-Id: <20210416094943.3648-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025023_705509_D4252299 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

