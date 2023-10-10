Delivery-date: Tue, 10 Oct 2023 16:35:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpA-003BLG-PJ
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDp8-0008Uh-Oi
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mQUmzV2dwVMoutaCJirWdGzvTL36zeDKevQVHY9NCc4=; b=L++aaNBXJTlMjwtuCRcvlxCRdJ
	56AcpdfFwtyFSyvEz2zCDNrTH3F/bKOumpqbrN2QBJZMc7CjFQsTrAfVnZwCuUJuDUkkDWyxB82WF
	/0M5YGNZZhN2n2K5ialKq0AsrY5h2Dl8o7/U3BYxJDe1k0znHa8/0+lo8twvTcN6CeaTOAky470pY
	vRoG7ovjafZsgTXzQZcA9Swqchq1PlQQyt6XHuESv5fDOTu0dv7gQntmps8aXqvRxCkrYEGXoz0Ti
	cpEKq2lizIwioExj/b/s+ieJgqh7HR41Dc2I4YpPnL1LS6Iw+rn5GTo5j+XJ2Tu5j2qVUCw801lRk
	72cmIKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnr-00DZk9-1i;
	Tue, 10 Oct 2023 14:33:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnn-00DZeW-1N
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=mQUmzV2dwVMoutaCJirWdGzvTL36zeDKevQVHY9NCc4=; b=MT91GTDtwT1MDYak74yQiIdzae
	PjTwYXp0i7brQms6OkMr4MrskzE2sJb5gW1/lRlv0ORkKY8KnpTD4ZbY5NcgUJeqyiWdRZ7uMZ+GC
	9R+F3LqqTMm4ueBX/ygdBSqfxIU8YJTNZ/Zttp8zUB8THfw3jYpAXr/UrCGMPGIXtn8xP3CIGu71v
	Mk87ytUaj61Axo2FZHPWXBUSdaroTK8eyRn4t7yWQksPhB/KuhDAhjrOHPLXBbUziPJkz2yO47T/J
	CQxsY3ezlJx8vuBiXIKkZFSA6+s2yL8yeihrWHm6JQaUX5a/Mj5Mu9g8xXgqAK14g3ZBpb/h3cTsD
	Vb9fXpng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDng-00GvFy-2i
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:37 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Ox
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:11 +0200
Message-Id: <20231010143314.2031253-24-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_544128_1828D26F 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/26] scripts: imx-image: add missing close()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Close the csfbin file after we read it into buf.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 8c4cc771ee28..4a0a44b3a9b3 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -796,6 +796,8 @@ static int hab_sign(struct config_data *data, const char *csfcmds,
 
 	xread(fd, buf, s.st_size);
 
+	close(fd);
+
 	/*
 	 * For i.MX8M, write into the reserved CSF section
 	 */
-- 
2.39.2



