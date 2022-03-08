Delivery-date: Tue, 08 Mar 2022 13:22:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqr-004dMr-KC
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqq-0002Wp-4I
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7mHjnCnwl8+PU17hCXDF1AUDZMod3p3BUhpCpGcpDU=; b=LkIuNwX0ZjUZUO
	l9n1Y2tZKSpFoa3MHWyKDGVFyUL3G2uM63T7RCaz1O4CDG+UjQs36rq8QfcLcK6EYBjRqvQVyN6Fu
	Rk0fiZw6CJQC8weGSVvrVUkm/F5Hj9OAuI3wF9P09EyUreRK5uXaiFbHa6Iz0lJcSIW4xMAS2VtUu
	HZUEe1QNvvBzdqMZ7CdwijnCFVZX9oNdIdHfMu7H60nEAdjGBonhbhCpZ7ZLzI18ReRNIYTpp6I8P
	TYw2u3OcKiTaS8qFwvo9JAxM5u6JzhiChz/qSgUoMcatrumuWlpTuikjJ6QUcM9u3nelKz0m2LiEy
	nFHGhzaSbeEcapRfvXAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYpd-004KQH-Rm; Tue, 08 Mar 2022 12:20:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpS-004KL0-JX
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027V-0f; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YEk-Bl; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:21 +0100
Message-Id: <20220308122028.3857376-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042038_735553_FC6480B2 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/7] ARM: i.MX6: clk updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This branch fixes some odd issues in the i.MX6 clock tree. The i.MX6Q
and i.MX6D SoC variants need a workaround for the PFDs and it turned
out we have that workaround twice: once in the clk driver and then again
in architecture code. When deep probe is enabled the order in which they
run may be changed. The difference with both workarounds is that the one
in the architecture code leaves the PFD clocks enabled and the one in
the clock driver leaves them disabled. That is still not a problem, but
our clock driver lacks the hdmi_isfr clock, so that the i.MX hdmi driver
works on a dummy clock instead. This works when the architecture
workaround runs after the one in the clk driver, but when deep probe
is enabled and the order changes then the hdmi driver finds its clock
disabled and doesn't work.

The issues are resolved in this series: The hdmi_isfr clock is added to
the clock tree and one of the duplicated workarounds is removed. There
are some other patches I came along while investigating why hdmi doesn't
work with deep probe enabled.

Sascha Hauer (7):
  clk: imx6: Add hdmi_isfr clk
  clk: imx6: fix axi_sels
  clk: imx6: Fix periph_clk2_sel and periph2_clk2_sel clocks
  clk: imx6: emi_sel clock muxing
  clk: imx6: fix cko1_sels
  clk: imx6: do pfd workaround unconditionally
  ARM: i.MX: Remove duplicate PFD workaround

 arch/arm/mach-imx/imx6.c   | 44 --------------------------------------
 drivers/clk/imx/clk-imx6.c | 37 ++++++++++++++++++++++++--------
 2 files changed, 28 insertions(+), 53 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

