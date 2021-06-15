Delivery-date: Tue, 15 Jun 2021 21:25:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltEh2-0004xu-NY
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 21:25:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltEh1-0007fR-M6
	for lore@pengutronix.de; Tue, 15 Jun 2021 21:25:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gh2oH57OOhlsJTxeBMLLTuItN7mZgWp0UTc9IX2rFMY=; b=dvFFAtmJ8cEnQ4
	Uw3E6dVMqYa4k+i9RlQSHcIbqM63gOuTFUa5myXIUmwH3HZmiZTtX6mhZ3MmGhq6Us0NOLmaI9pcF
	5Ddef2hgdHk7feSViJTHlhGbwpM+flLuBji2aIBuNDKkZn64kUoH1W41Pht1btjs59nOvND2Mx0pZ
	J+euR7nRwjhiMA3Bm6vJuBWKXH95f13BNfNwhLtd88Xa0x6oCVn25dSWhIdtiBQTK1BJS9hMo6x4q
	uDEmpw4RtrMlhBAH8xvSn8DocZ+h0LJTzd+ikAxCDQvrPKekeK9i8kOy57Sl9msUGKqsGnPwKaxjQ
	jd1y7HnSdnd+yrmw+Y+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEfc-002PZE-0f; Tue, 15 Jun 2021 19:24:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Bp-000ByJ-Dh
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=gWQmmW0Ady/lVI5UR+sGzvbMkD4DPVCcUVjtGxDsEP4=; b=l54eBJM1Q66krKBX9W821JuuvY
 nyKKRXARo6REV02G9ppZ26a8MgqK2gKUkBHTKMhjdVS/Q/Ue2RZ2Ezrpq4IcZzwLM8l1pCDcBimcj
 6W+IDGp76m4t12NVGRvIpvoobcc+YmVnvk0q0Ex6kjJ2pnBXC4VPEXjWsNNsW4Go6Wm+rwM4JLYrq
 EXnp+n488xcDMXWv+RHSKXfBMeftvR80m0lY2SG2Qoq+Wuee1g7imN3KO2Wyoh8NOuCcNcvdBx8yx
 bccddtBPHTK6BbiW9xwKgbK8LChTdOX5N7KkN9MmZwg4irdh+vm4LKRXV+Ecg5IHfkiETV+CeDpFr
 jGp3LT4g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt8xo-007uq3-2J
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:18:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt8xu-0007rZ-DJ; Tue, 15 Jun 2021 15:18:50 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt8xu-0004Zz-3X; Tue, 15 Jun 2021 15:18:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 15:18:49 +0200
Message-Id: <20210615131849.17418-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_141850_974002_1EF9792E 
X-CRM114-Status: GOOD (  11.37  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Add clk_round_rate command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_round_rate returns the rate a clk rate will result to if called
clk_set_rate on it with that rate. Add a command for it as it comes
in handy sometimes for testing and debugging purposes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/commands/clk.c b/commands/clk.c
index 649a0a7cb2..2e21e9df58 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -82,6 +82,38 @@ BAREBOX_CMD_START(clk_set_rate)
 	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
+static int do_clk_round_rate(int argc, char *argv[])
+{
+	struct clk *clk;
+	unsigned long rate;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	clk = clk_lookup(argv[1]);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	rate = simple_strtoul(argv[2], NULL, 0);
+
+	printf("%ld\n", clk_round_rate(clk, rate));
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(clk_round_rate)
+BAREBOX_CMD_HELP_TEXT("Set clock CLK to RATE")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_round_rate)
+	.cmd		= do_clk_round_rate,
+	BAREBOX_CMD_DESC("set a clocks rate")
+	BAREBOX_CMD_OPTS("CLK HZ")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_clk_round_rate_help)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
+BAREBOX_CMD_END
+
 static int do_clk_get_rate(int argc, char *argv[])
 {
 	int opt;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

