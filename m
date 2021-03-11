Delivery-date: Thu, 11 Mar 2021 11:33:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKIco-0002rg-Va
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 11:33:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKIco-0004hV-8x
	for lore@pengutronix.de; Thu, 11 Mar 2021 11:33:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ACbJnpruqjINNpLxJSuJyVOrRjJcM5A3KIIrC220aBs=; b=gb0P3rC876mcz5sIXp3vH1hqHe
	lJxJW9MmLXBdgODKoTgE0JMcjEGf8+L0HqfsC3BHxnEir4pauKRFaA1VmmyREmFvVctRlaDkgkPK9
	e5VhP4aYDS9xpQTJHEQIt2iN8OgdsK6XwxFqWsf6jetweTegvsguda8teM6V8c9l1EnBkv/NmoyeP
	07q00u2qAer7GhqfIKcWjwamhTEmsaPqmf3Wm3z9vKxbXvFMPxgH+L5YB/4VVLGq1vpbx1RaUvcEm
	MZuMsmg6/wg6vGrX4jwEUJFdgWVnTA3jyuRh3c0bEcbgqI1AEDThhELCrh1hIJevVcx1lgjlkKdcW
	ZBHj7aTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKIbt-008q1Q-Qd; Thu, 11 Mar 2021 10:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKIbo-008q11-Kr
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 10:32:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKIbn-0004e9-9t; Thu, 11 Mar 2021 11:31:59 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKIbn-0000M4-0m; Thu, 11 Mar 2021 11:31:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Mar 2021 11:31:57 +0100
Message-Id: <20210311103157.897-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_103200_774102_FD77942D 
X-CRM114-Status: UNSURE (   7.71  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] param: drop unused left-over struct members
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both seem to be a copy-paste left-over from the int param. They are
unused anywhere, so it's safe to just drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/parameter.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 1f768ab65ede..adc3c7cdea70 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -749,7 +749,6 @@ struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
 struct param_ip {
 	struct param_d param;
 	IPaddr_t *ip;
-	const char *format;
 	int (*set)(struct param_d *p, void *priv);
 	int (*get)(struct param_d *p, void *priv);
 };
@@ -828,7 +827,6 @@ struct param_mac {
 	struct param_d param;
 	char *mac;
 	u8 mac_str[sizeof("xx:xx:xx:xx:xx:xx")];
-	const char *format;
 	int (*set)(struct param_d *p, void *priv);
 	int (*get)(struct param_d *p, void *priv);
 };
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

