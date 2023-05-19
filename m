Delivery-date: Fri, 19 May 2023 12:02:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwg-006XqS-Kd
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:02:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwe-0004OS-3I
	for lore@pengutronix.de; Fri, 19 May 2023 12:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkUHGOl32bDOaVzsx0oIqL3+UFJuiVGXY9j7f0jz5gI=; b=LOiWXnf+lMkL82IPXCdOlu4pQY
	HtT7y6LUeIymSlSBwmyuRHOiJlSjQFJsQ1w1CCXZkeVXOJpE0zNwkbCs+aQlennf3l1tOeUgWd7/V
	pNnI+J06i/QgWQTZVa+LgbvTwTpZgKbe6hvtvUQ8xUiqITnn4yxUafHzxTNV0An/nEmvOrtFcLQic
	jQZjtVsUhioAADUgHAsgP69OyFL99erSZJwqJBYzOpDjh5KM2NUgY3SzhK38FMt1AOP6wviY8kMbW
	vK38BCNeI2G3ChmhQ8E6jKwSLUC2CuLmRs8HJ/6oN8ddfX9NarIRPcDWBO0ClJ/CSY1N4lydCTOyG
	RZ2GfVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvS-00Fp08-2A;
	Fri, 19 May 2023 10:01:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvP-00Foxl-0r
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:01:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvL-0003qU-1F; Fri, 19 May 2023 12:01:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvK-001HU4-Aj; Fri, 19 May 2023 12:01:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvJ-009vVJ-7s; Fri, 19 May 2023 12:01:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 12:01:15 +0200
Message-Id: <20230519100120.2365970-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_030127_322718_D7086348 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/6] treewide: don't mix goto labels and statements on same line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Coding style across the project is not to indent goto labels and
to not mix them with code on the same line. Let's fix the few outliers
that are there.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/state/state.c             | 12 ++++++++----
 common/state/state_variables.c   |  9 ++++++---
 drivers/usb/gadget/udc/fsl_udc.c |  3 ++-
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index cabe285fbdf3..040835702b66 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -333,8 +333,10 @@ static int state_convert_node_variable(struct state *state,
 		goto out;
 
 	return 0;
- out_free:free(name);
- out:	return ret;
+out_free:
+	free(name);
+out:
+	return ret;
 }
 
 struct device_node *state_to_node(struct state *state,
@@ -361,7 +363,8 @@ struct device_node *state_to_node(struct state *state,
 	}
 
 	return root;
- out:	of_delete_node(root);
+out:
+	of_delete_node(root);
 	return ERR_PTR(ret);
 }
 
@@ -561,7 +564,8 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 
 	return 0;
 
- out:	of_delete_node(new_node);
+out:
+	of_delete_node(new_node);
 	return ret;
 }
 
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index cb85f3a92602..77946206cd02 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -263,7 +263,8 @@ static struct state_variable *state_enum32_create(struct state *state,
 	}
 
 	return &enum32->var;
- out:	for (i--; i >= 0; i--)
+out:
+	for (i--; i >= 0; i--)
 		free((char *)enum32->names[i]);
 	free(enum32->names);
 	free(enum32);
@@ -329,7 +330,8 @@ static struct state_variable *state_mac_create(struct state *state,
 	}
 
 	return &mac->var;
- out:	free(mac);
+out:
+	free(mac);
 	return ERR_PTR(ret);
 }
 
@@ -444,7 +446,8 @@ static struct state_variable *state_string_create(struct state *state,
 	}
 
 	return &string->var;
- out:	free(string);
+out:
+	free(string);
 	return ERR_PTR(ret);
 }
 
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 6a1d4304df1e..81e051a073c0 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -980,7 +980,8 @@ static int fsl_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 	done(ep, req, -ECONNRESET);
 
 	/* Enable EP */
-out:	epctrl = readl(&dr_regs->endptctrl[ep_num]);
+out:
+	epctrl = readl(&dr_regs->endptctrl[ep_num]);
 	if (ep_is_in(ep))
 		epctrl |= EPCTRL_TX_ENABLE;
 	else
-- 
2.39.2



