Delivery-date: Tue, 25 Mar 2025 17:54:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7XP-0045bS-2D
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 17:54:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7XO-0005sh-J3
	for lore@pengutronix.de; Tue, 25 Mar 2025 17:54:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fkFjKBIHL/uJ/RbVrGvpHBm/iH370jEekzr2xLwxY2E=; b=AWo+kSydD8H/hj98zyleNpvk+l
	kFLaga3TDbxNNOLS+sCxDg2ySkWTvKa+3G1/ZQnU8nIw+DJpH4VOf1msc8K9PhFAmvYgs5r9EjMmM
	xMvHik9qLl7IHGl7eyhGoLtELdx2QmqJoW5GHz3krlGXi/VUs+GHm1sb1/z0iEcKZgD3kP1SQ9npV
	VF0cXlJRtoySSCw8osQE85PM1FB6DGWEBgf/1NHaNp8Q/Qpt/UvAFfJQ2DnwFvHQzwbI8cqyHaJpl
	TWpv1YS1lo53ZWr9jbzxIoBGp3TihvuwL0HIZ63EzE31Y6lW0xOYXRvNrhtUxM0s2Zqz3yL930+/G
	w/zQcdbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7X7-00000006XpT-1Cpn;
	Tue, 25 Mar 2025 16:53:45 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6au-00000006ORp-0Nv0
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fkFjKBIHL/uJ/RbVrGvpHBm/iH370jEekzr2xLwxY2E=;
	b=a6bBO3SpxfzsfFUaw/KempeHKcvjOzw7Z7cRF+6rRrDKZreE3aFcruETyVZWbQyJyb3Jti
	J4BDIlM8rZw6xltZZ1ZfaCj85q8EYqznzt0KRNJBVhaYUYYsEfc4RQpnldz1iMQzq+IA+w
	F6dk4zXgI+REGxpy3pgc1sMS0w+BR/dKg1zvFk6IVOb4G7XHYHBKT/2veLdxRO1C7ECR6i
	FAcFYqCAroyNqu9aFq70SIAH9EHs3JKWAepbbzoAT0UNOkZarEmUrmvegSyVD0m297ckiR
	af2iTCJynCMGcAxhUtovrTnCkIOZEqrB+oVz/AFuDNSG8FEhDgOTOGAn2f/1JQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id a47df1b6 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:53:34 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:53:26 +0100
Message-ID: <20250325155327.31981-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_085336_419069_347F58E3 
X-CRM114-Status: UNSURE (   8.02  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] vsprintf: fix missing break when printing %pJP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the format `%pJP` was introduced the new switch case didn't had a
break at the end, it was last case in the switch. However subsequent
commit didn't add a break either, creating a potential fallthrough.
Add the missing break.

Fixes: 107eeef8f2 ("vsprintf: add support for printing MAC addresses")
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 lib/vsprintf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index f553662ce8..0656ba3620 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -561,6 +561,7 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 	case 'J':
 		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
 			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
+		break;
         case 'M':
 		/* Colon separated: 00:01:02:03:04:05 */
 		return mac_address_string(buf, end, ptr, field_width, precision, flags, fmt);
-- 
2.48.1



