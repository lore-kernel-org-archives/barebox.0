Delivery-date: Mon, 22 May 2023 15:43:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p7-009hUG-7g
	for lore@lore.pengutronix.de; Mon, 22 May 2023 15:43:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p4-00074H-J5
	for lore@pengutronix.de; Mon, 22 May 2023 15:43:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bCE4POhGp5/6uNpKbpTOP14Vd5VoGQ5E62rmIHOhx10=; b=poI9uNZxpka1g28P/vef4yu5pS
	Wm9WkyYLFJkq0oLu60K+ogVTLMR3tnoPvLvMK4fYGXAjbGimPtAzDUcsKhxiVU0DU7s8BOQ7BOvYX
	H9L1rGqgf00jVz/xWZtOSkAngspq2ezZY06yTovUou7JjOKuk8KmI7SsdfU+j23mhwklqp3jixZ/5
	SVNywkeiUU0G2U8qJZ/nT/axTJkCj3R7sFcUj8w05trcMxFtSTCPoxNVcXM4k5Mqx0m92C02Xouq3
	IH/i65cKKUaNi1F7C0nCJHC0XENO6m0KjgeDQ/Bl2r9I0uifFnzxkU03TFWN9Il1A9JcThd4i7uzH
	4BVyUJHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q15np-006hU9-1E;
	Mon, 22 May 2023 13:42:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q15nm-006hSf-1P
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 13:42:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ni-0006tO-BX; Mon, 22 May 2023 15:42:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15nh-0021LE-NE; Mon, 22 May 2023 15:42:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ng-00AkOm-Tj; Mon, 22 May 2023 15:42:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 15:42:08 +0200
Message-Id: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_064218_471118_A0386779 
X-CRM114-Status: GOOD (  11.49  )
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
Subject: [PATCH master 1/3] .clangd: black-list -mabi=lp64 to enable LSP for 64-bit ARM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clangd invoked via Language Server Protocol chokes on -mabi=lp64, which
we use for ARM64 build. We should eventually fix that by having barebox
itself compile with clang, but till then, let's drop a .clangd file that
instructs clangd to ignore this unsupported option. Pointers and longs
are still 64-bit, presumably because that's the default AArch64 ABI.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clangd | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 .clangd

diff --git a/.clangd b/.clangd
new file mode 100644
index 000000000000..58e83cd2871a
--- /dev/null
+++ b/.clangd
@@ -0,0 +1,2 @@
+CompileFlags:
+  Remove: -mabi=lp64
-- 
2.39.2



