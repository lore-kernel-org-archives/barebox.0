Delivery-date: Fri, 07 Nov 2025 13:01:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9u-00GHrU-0q
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 13:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9t-0007iT-NY
	for lore@pengutronix.de; Fri, 07 Nov 2025 13:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qVHvVSkiZYCKyQE/USt8gUxRiGITQ+jgdVZaN99jUjU=; b=z6pCv6hn4QsFqdaZDcvBsmvL8s
	VZLtohS4S9jTZ28XT/xj0R0z4+rjX1tf8q3tBpxlalfpFTdwTcCyTIGcvMqxh8Vn3gl7b1rcloPJu
	u0IEEn1dIhm5MnlWOur99qlqspc92OIXpi71xtBzRgcKiElpLjUCAe0Tq31AQeZZ2E3+i0YhvEkpQ
	+QVzoO5Ym+aJz76AjdT6AJgpWht4Kw1LISUlCdt3rKY8nV+Sn1WeS8ltk2Eeyhv1mB03qRtLxxRgB
	8RMNw/MyHkAlb31p+Tuh6ZAk+TtO+uduD2MBVZNQ2nd/bwRbZ1TABog5O78+eqNIS/Xyf8y8BDjBI
	fE0fMg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9N-0000000HG7f-2nOF;
	Fri, 07 Nov 2025 12:01:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9J-0000000HG6D-1KQn
	for barebox@bombadil.infradead.org;
	Fri, 07 Nov 2025 12:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qVHvVSkiZYCKyQE/USt8gUxRiGITQ+jgdVZaN99jUjU=; b=gWzUZLI09Qdh+ODi7rgGRVzoTz
	oBsggz0Wj/pDlVxWr2FnpMgbPX43aL0dN0oNsPw+oFiLdSLjuGZoFkjHaf1jY3OZLmBLM+yXPl1b3
	UJ/xxMzG4xlirq6f0RHCDExVWWQP7kTi6dex4FwwkH7mx60kwGmocL7vj5bY9cxslmlTe68jXQ835
	eQdLIRc6QbMafYWTSJC2YqSUcRKjbYbedXdLVKopJZByllzqxyj4PU/XG1C/uTm3KX89/JksRgKQM
	qUXy0y3gIva4QGdcQ1XgFwy82/gRaRNiKjKvaI4ly02EVwk/a/nZGUkURUmKKQcPrOTgVVkItwc9s
	5p7vN58g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKHY-00000006LIs-2UhE
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 11:05:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-0007KB-E7; Fri, 07 Nov 2025 13:00:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-007WR3-0d;
	Fri, 07 Nov 2025 13:00:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-00000000sNa-2Jqn;
	Fri, 07 Nov 2025 13:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 13:00:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-memleaks-v1-2-c7b74a2ae9db@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
In-Reply-To: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762516853; l=711;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9ddKqTJxQTdwvi5Iw7goR+F9PuhN1cwx+dNQJO0gAi4=;
 b=sJBrNl72OEWJ1jOEo+d7rplrt/jGTK/dEmlxO2h8ha7zAtMBB8CFOC077GLYDUG3x99jC3wNI
 SWj3bk2+zgRDhNN2CSY0bMX4LAY48NeMe0CWDcac4jTIlteKIpwchPo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_110529_013872_4B0B9F45 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] of: free of_fixup in of_unregister_fixup()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fixup is allocated in of_register_fixup(), so must be freed in
of_unregister_fixup().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/oftree.c b/common/oftree.c
index c22793de89fb43f3e9a6c2b0905cbf271fd7cb2b..2bf1a63e491540100839e234f891aef597fae0e0 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -383,6 +383,7 @@ int of_unregister_fixup(int (*fixup)(struct device_node *, void *),
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
 		if (of_fixup->fixup == fixup && of_fixup->context == context) {
 			list_del(&of_fixup->list);
+			free(of_fixup);
 			return 0;
 		}
 	}

-- 
2.47.3



