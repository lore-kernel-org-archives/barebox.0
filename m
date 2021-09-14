Delivery-date: Tue, 14 Sep 2021 08:32:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ1z9-0007nA-Os
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 08:32:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ1z8-00088r-Qn
	for lore@pengutronix.de; Tue, 14 Sep 2021 08:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qp6ABFld98srXBp9QTU3qq8IbdIy4vUjAulpJUI5y9I=; b=zGK24j1JyCbVWy
	JzLdTslPo2mrI0ta6AlgWJfSLXvZt/bPizROqxDKIFYF2B6PMDvacF5jv7rabo6B1APiil+14Ikon
	1c6yAk+5fPtR/bxdrgtYEg4eB6NK06WczVS513sQZZryG7rN4Bwnfu8Mot8MsFJWcK+wECB1Z+3P5
	HxN1zho8i4o5d4rU1frWzP/sERT61LwC419ZbYzcP4T7iEYSFxFKQx0iq43fef3pHeXIreJDkHggG
	cmFBfvqiwRT2RKvzSIarR6pnNWN223DZKWpGI15OsdKV8bibxzs9O9u8hf7typSwNtE2wH1M3m5WW
	JpTZjG3W3vn65LWbEFDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ1xP-004HM7-6S; Tue, 14 Sep 2021 06:30:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ1xJ-004HKt-Hk
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 06:30:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ1xE-0007qH-Gw; Tue, 14 Sep 2021 08:30:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ1xC-0005SX-Tq; Tue, 14 Sep 2021 08:30:02 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ1xC-00BlOY-Mn; Tue, 14 Sep 2021 08:30:02 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 14 Sep 2021 08:30:01 +0200
Message-Id: <20210914063001.2803749-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_233009_626851_E8F3474E 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] net: dhcp: send current hostname as part of the DHCP
 request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To be able to use more advanced DHCP server configurations, for example
host name pattern matching, barebox should send some name.

With this patch, barebox will send barebox_hostname, if dhcp.hostname is
not configured.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 net/dhcp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index e701a5f71..427985eca 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -444,6 +444,7 @@ static char *global_dhcp_user_class;
 static char *global_dhcp_vendor_id;
 static char *global_dhcp_client_uuid;
 static char *global_dhcp_client_id;
+static char *global_dhcp_hostname;
 static char *global_dhcp_bootfile;
 static char *global_dhcp_oftree_file;
 static char *global_dhcp_rootpath;
@@ -482,6 +483,12 @@ int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
 		dhcp_param.client_uuid = global_dhcp_client_uuid;
 	if (!dhcp_param.client_id)
 		dhcp_param.client_id = global_dhcp_client_id;
+	if (!dhcp_param.hostname) {
+		if (global_dhcp_hostname && strlen(global_dhcp_hostname))
+			dhcp_param.hostname = global_dhcp_hostname;
+		else
+			dhcp_param.hostname = (char *)barebox_get_hostname();
+	}
 	if (!dhcp_param.option224)
 		dhcp_param.option224 = global_dhcp_option224;
 	if (!dhcp_param.retries)
@@ -636,6 +643,7 @@ static int dhcp_global_init(void)
 	globalvar_add_simple_string("dhcp.vendor_id", &global_dhcp_vendor_id);
 	globalvar_add_simple_string("dhcp.client_uuid", &global_dhcp_client_uuid);
 	globalvar_add_simple_string("dhcp.client_id", &global_dhcp_client_id);
+	globalvar_add_simple_string("dhcp.hostname", &global_dhcp_hostname);
 	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
 	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
 	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

