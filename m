Delivery-date: Fri, 30 Apr 2021 15:31:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTF8-00050D-7t
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTF5-00074H-GZ
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6pjD1fs5ZID1tqr03Zofr+Y0cry7Q+4boDJi1sRrkQA=; b=HWz1X7YZu3DdBv8nU3n/0uh9/
	vTAMuOW5bgBCZ3eCWm+YjBapkdWbdPn7blCkxqTsHACgKwnDniwHANZ/rb41ZaBmDszCi5kxbZtEs
	POAAkI+GyB+vQ2NvpIly0/2AMmak5vt51EEb8iipA464IdJTVsvUcNPAGwWAdLZW0qOS91zA8X9/D
	mm0EM4rkNbH9EkpS/uzfD4YphuiulEGDQMLXoYD6bVPIz9tCclsA9hEu9XgJK4MHgrZDsO4zZjdaz
	dA79w2DLNTvT2r2rpKznCyXDsUdSoebeTigadRZQytDGlWsDbdoHiBqJEBkPIZdlhSBWvccohie4P
	wOpllTZCQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTED-007ujG-6n; Fri, 30 Apr 2021 13:30:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDa-007uZ5-V0
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=tgdD22jw1eOEjyqKrT0s0gmZa2mWkRoeW5z/HAPL+Xo=; b=J3Io1Vc216puxOkUeBkVyW0tLw
 GpYLiDvC7+XpgHTCp4+UfQGJldgTLIblJk5i44nSMAaelAR7hIcAg9hHuGY6eMpyyddxHeuMrdMqi
 uC94kl/nXKhaczORkH1yWLqkyY8Ms9b02TgAj6J6i+5AlIa1mWYBgK5HqPNVLjlMj6Jbxt3hvild8
 EXqBbMlZ07x7Y+twtWkmoPJxPRp6ALrQuyVqLV/vIdiKckcaGp7lXl1bTaq8gtytEFexdT+DGw0Mw
 Brx5FH6vRuRDnbJKf4wPHmPQfTfRm5rCNiKSYnYtxFlU5HFxfdablrOvCMW6iB8GMlAmPES+ijIj+
 as6gqONg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDX-001PJX-FQ
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069s-5O; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003rI-3e; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:41 +0200
Message-Id: <20210430132949.14617-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_063003_538077_4F1794CD 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/15] fastboot: handle ill-named partitions gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Users can configure a partition name of bbu-something that would
conflict at fastboot init time with a barebox update "something"
handler. Current behavior is to silently ignore all remaining
barebox update handlers.

It would be better to complain loudly and to skip only the entries
actually conflicting. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index a394d07e28df..c8576a8d97c3 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -158,10 +158,12 @@ static int fastboot_add_bbu_variables(struct bbu_handler *handler, void *ctx)
 	name = basprintf("bbu-%s", handler->name);
 
 	ret = file_list_add_entry(fb->files, name, handler->devicefile, 0);
+	if (ret)
+		pr_warn("duplicate partition name %s\n", name);
 
 	free(name);
 
-	return ret;
+	return 0;
 }
 
 int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

