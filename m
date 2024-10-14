Delivery-date: Mon, 14 Oct 2024 15:30:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9F-004H31-0q
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9D-0003Dx-8N
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zq66Z1YoFMt6Z8QOdi6Z13BhQEIRBs2afGPqRNAy364=; b=YLIXROnQ2Fzus4mnkk/qijVp6C
	5sHbwqVlENi4syG3Y7agzp9CLIfuy/gwD93PAaXOMWXr/rpHgkZZSB/ED8iluuTrvOpNnqIrbMSRH
	bNGl3zWJD0aSYL+apq64eAtFBIuEVgEB11BgCxIpqpqzsEhpiy+0AT3g+j5OfapxN2Sy8LIkOO3NM
	EPFjF3mEArexVg4upUDQw3GIbQTfVXpVu1W/38sZaMFEtYgGEWGXE3NA6o7FMBzvdRl5RuVD6Fzjb
	Goo7KQPzL+dYtpoJShSJoyOgrO6dL71Oay0ALv6U11fyHXq/Z1YuTmNd60QOjHHW/0xmaUaZ9EVBH
	uZJca6LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8h-00000005HZ8-2Lgr;
	Mon, 14 Oct 2024 13:29:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb6-00000004zLO-3aK3
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zq66Z1YoFMt6Z8QOdi6Z13BhQEIRBs2afGPqRNAy364=; b=l3tVJqrVV16UzAtifcVp4lvD+M
	FbOFbnHKksIp86j2gKQf5wtvJP1+H2GYHiMxnPYiFaI9zLy+OY8X2J0eEH6a3Zg6AO8CY02NN57M6
	f3He4FgFTtRMLWjsHGxvp/fRGFNYfGpfoNxeFeMwzmorRXyrrg7kORPoAKXX2smcVz6/LpX1SbUpU
	7O9KFM85XcF9ts3UIXGdjJKPJHb0BouVOJ8Cw192QIvhKVU90yRUT7rJbiQTJ07MOKPeB/AwxkWWO
	t86aXX0lpEXenEa3IXIDL0ftLAmocI/ZNjCBll9eoWvoM+WrSlqffllAnqIdqatb3zJDsv8nnLpEr
	FQnSKfng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl9-1MmF
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001CW-R6; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUk-CM; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0y;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:36 +0200
Message-Id: <20241014115040.2843121-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_612105_F9BC0980 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/12] commands: add macro to simplify defining one shot commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For development, it can be nice to just be able to call a function as-is
from the command line. Add a helper to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/command.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/command.h b/include/command.h
index 26e06077b071..ae8821969c60 100644
--- a/include/command.h
+++ b/include/command.h
@@ -119,4 +119,19 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 int register_command(struct command *);
 
+#define DEFINE_SIMPLE_COMMAND(func) \
+	struct string_list; \
+	int empty_complete(struct string_list *sl, char *instr); \
+	static int do_simple_command_##func(int argc, char *argv[]) \
+	{ \
+		func(); \
+		return 0; \
+	} \
+	BAREBOX_CMD_START(func) \
+		.cmd		= do_simple_command_##func, \
+		BAREBOX_CMD_DESC("call " # func "()") \
+		BAREBOX_CMD_GROUP(CMD_GRP_INFO) \
+		BAREBOX_CMD_COMPLETE(empty_complete) \
+	BAREBOX_CMD_END
+
 #endif	/* __COMMAND_H */
-- 
2.39.5



