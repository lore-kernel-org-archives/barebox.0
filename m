Delivery-date: Mon, 24 Jan 2022 16:20:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18d-00C18q-Lc
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 16:20:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18b-0000tX-C0
	for lore@pengutronix.de; Mon, 24 Jan 2022 16:20:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVp3oxyXUNVDASjwYdyV14RLR2eQPZ3QghUr/Zt13p4=; b=uVPBLndF/voW0G
	AY7rDB7+7g8FVbwHr1fNwyL9GdnCmaI9jgf7Zb0X1A62gmep0PTfk6q7QHHfVGfbRLHmzGUuG4HdF
	TtOjBSDSzFjq+gBC+a0CKmne9H4/h1vSG0Cr3JkYHY7masx73h5B5sY/7Y9Y8bP+AHfpd0DYZkdUA
	CsevPPjZZj3CJxb0ZmehdVgDnHktAAOFa3ClbCsi/F6hZsQcCLORV49Uj2gdlsTmJOw2xh6yib/wI
	OynGkTfzt5nUvGgraU/Ze0sfYoKYDAOPJwvKvyDh0KoJQ2IeM0mSnkEP02zfRZ4+EOBJ6MFOPISDn
	OCgFeHSkv+Li0iQKu+pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC179-003o5k-Nl; Mon, 24 Jan 2022 15:18:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC172-003o3b-Ae
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 15:18:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-0000Zl-T4; Mon, 24 Jan 2022 16:18:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-00Du7C-A4; Mon, 24 Jan 2022 16:18:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Jan 2022 16:18:26 +0100
Message-Id: <20220124151827.3313412-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
References: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_071832_420643_D56C6ECE 
X-CRM114-Status: UNSURE (   9.97  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] Documentation: boards: openrisc: fix wrong header format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Build warns that line is too short. Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/openrisc.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
index 34586b4a76b3..17b0aef4a6ad 100644
--- a/Documentation/boards/openrisc.rst
+++ b/Documentation/boards/openrisc.rst
@@ -22,7 +22,7 @@ Example of downloading and installing a toolchain::
   $ export PATH=$PATH:$PWD/or1k-elf/bin
 
 Running OpenRISC barebox on qemu
-------------------------------
+--------------------------------
 
 Running barebox on qemu is similar to running linux on qemu see more details on
 the qemu wiki site at https://wiki.qemu.org/Documentation/Platforms/OpenRISC
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

