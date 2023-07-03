Delivery-date: Mon, 03 Jul 2023 11:38:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGG0h-00DLmu-LX
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 11:38:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGG0f-0006zi-DL
	for lore@pengutronix.de; Mon, 03 Jul 2023 11:38:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HrsPaEWbDOSY3npScLKnj7HQC9FTHbR/r0PRxzQoi9s=; b=lXqZAzrCcwXRcr+f6YRg0UbedB
	DqVUneJcx7CajKZz+jmFHWoWv6wnl0X5O9EFMy7cHZtvQSUCnWBknWtWJu7dhUQBrVUilYz2NT+tX
	YdhdlBT1lJhuXxU74zYyMKtEajUWuV6zAxK9WlG9LgHc/ThN0CXcQpgD4kA5vsIzspOTkWR4dMZf2
	VxTutyyhxifiwt6DM5o/C6DZ0lW3znPzLhuGKypc/msXqWfzNwyRj9xADAKzsnbRraF0hOPcX8EkS
	qy4OEkm5GA6Pb7TgFVYvG0PidLzWiRXhbo245u9oQ9F+rod857B/zUWx9zq5lQ8ICtcZyqn0Fg/Pd
	GGFFZd/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFzU-009xQE-25;
	Mon, 03 Jul 2023 09:37:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFzR-009xOL-1Z
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 09:37:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGFzN-0006nf-Qs; Mon, 03 Jul 2023 11:36:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGFzN-00Blqr-6r; Mon, 03 Jul 2023 11:36:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGFzM-008hRY-0p;
	Mon, 03 Jul 2023 11:36:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 11:36:55 +0200
Message-Id: <20230703093655.2073607-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_023701_521939_74FA5E77 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] sandbox: dts: skip reboot mode without hostfile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The stickypage hostfile won't probe if the file is missing, yet because
it's compatible to simple-mfd, its child nodes will be probed and fail
their probe, because the hostfile itself was missing.

Fix this by only probing hostfile children if the parent probe concludes
successfully.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 2 +-
 arch/sandbox/dts/sandbox.dts  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index d3fe8bcb9036..ca21703544af 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -184,7 +184,7 @@ static int hf_probe(struct device *dev)
 	of_parse_partitions(cdev, np);
 	of_partitions_register_fixup(cdev);
 
-	return 0;
+	return of_platform_populate(np, NULL, dev);
 }
 
 static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 75c633c5909f..6a0ae77d65bd 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -56,7 +56,7 @@ y {
 	};
 
 	stickypage: stickypage {
-		compatible = "barebox,hostfile", "syscon", "simple-mfd";
+		compatible = "barebox,hostfile", "syscon";
 		barebox,filename = "$build/stickypage.bin";
 		reg = <0 0 0 4096>;
 		barebox,cdev; /* no caching allowed */
-- 
2.39.2



