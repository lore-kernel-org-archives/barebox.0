Delivery-date: Fri, 14 Feb 2025 11:01:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWB-002DiM-0X
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:01:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisW9-0005qY-Ua
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZAFnc1VFGQ4kTEImymaodE8s4zqqB7FppKqJOku4jk4=; b=TXQyzwUbyFk7KugQwgFH9MWnmE
	GO2erz6yqIFu/ml0iKyOtMVgmBS/O6eUbCHfv+T9N4TJlGga7XYC6wDZ6UWWOYC2t2u21klaiiuFz
	L1At5OJnlaKslgMu4p4+PodPFdNJDrL2hjLvHo6DXA/urBlDuVa1/sGwrGZUsrcy6z+8BSFgsf8XZ
	wyG0zmrz1KFL5kiB9m66RR5A7+4na0uob/YvExC9nbOynWAIUMaxCFRDu8O+vUZWDfCtBOBySjwOZ
	Lrk06o6RSFW3EJeT/YtSRu3l7KtEaPoJDV38TU7/UNLLAKBzpNH8rnDu4Y8jMuxi1WB8If3fSa2R+
	D4zjr+jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisVm-0000000EQKt-1mgs;
	Fri, 14 Feb 2025 10:01:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisOn-0000000EOrl-01G1
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 09:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ZAFnc1VFGQ4kTEImymaodE8s4zqqB7FppKqJOku4jk4=; b=Qa07D84HJUsk/10U9O8pGJIWW7
	UeZaTc1q+K8N4F5GEsXh/ZsqL4fSkRrpUFaVdoD3IVdeFsCsjFIxGxwE2SpiIMeuFLz+DDUV+z5HX
	6NN40U8aP604qao2yLXnI/cgupwFDLOXu1Ph5Cs4NUjflGHYmbbkIf0TeKjyPLLB0WkQY/VUIjSu8
	TvHcD3Jrjp17DV+PbqWouVjSOPc+E4IVTFONoEt2zDfenO1DhZHgZd2d8HvnA3x9a4hNWo6qlHHY7
	5UMoO/qogmzYZQUflNzz9RWP791TFbJ/J2jMsJYNjy/zcZqHoqu0jDfpVZX1q52X/IKiI0V/+sjhn
	4HVFRhjw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisOk-00000001Dte-0DY2
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 09:54:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisOj-0003uD-AX; Fri, 14 Feb 2025 10:54:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisOj-000tam-0S;
	Fri, 14 Feb 2025 10:54:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisOj-00By5n-0A;
	Fri, 14 Feb 2025 10:54:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 10:54:12 +0100
Message-Id: <20250214095412.2852561-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_095414_237078_56714A13 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] boot: omit menu freeing loop when CONFIG_MENU is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While free() can handle NULL pointers, it's better to not even call
free() when we know at compile-time that the pointers are NULL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index f6ac4779cc33..ced3b3a3477c 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -50,13 +50,14 @@ void bootentries_free(struct bootentries *bootentries)
 		be->release(be);
 	}
 
-	if (bootentries->menu) {
+	if (IS_ENABLED(CONFIG_MENU) && bootentries->menu) {
 		int i;
 		for (i = 0; i < bootentries->menu->display_lines; i++)
 			free_const(bootentries->menu->display[i]);
 		free_const(bootentries->menu->display);
+		free(bootentries->menu);
 	}
-	free(bootentries->menu);
+
 	free(bootentries);
 }
 
-- 
2.39.5



