Delivery-date: Fri, 12 Dec 2025 17:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nK-00Aj88-2a
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nK-00027m-Aa
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SD6nXLqwaVvaKMtDLKVYFouiXrapsXa/iYSBzSJHmLg=; b=BDto9lWtvXmGFS
	RyY0+y5SAvKj50O+AbW4zy5dvu8AJ0xB4sZk5MMCt4JREo40rjDOkjGMTfnM/HOLuw+g7MSG+ik6O
	cE2w35ORFjzWxEWf7j4J8lrwtFJwTYsiDO4/8yE+QcLImZDcUT6KOKwhxFbQjsM5ks8hXo5SIXMmc
	y7ccQvWOcHu3OnNOr4TulS1njWz61KpGyW5nAAO3NguGc76sjFPjSQPkk+gF1l7Zhte/hempZcJXQ
	IDTcJc6gkJmcBaVA7RnW4lUCX7G3ituzJ12vHlzp3U8UrvAtgo+MwTpW85c+JSeX4g61Hp+ubdBe9
	6g/75oZ3jb918fVQRJMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5mo-00000000ocx-2MdM;
	Fri, 12 Dec 2025 16:14:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5ml-00000000obo-3vG5
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mk-0001tB-18; Fri, 12 Dec 2025 17:14:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-005K65-2f;
	Fri, 12 Dec 2025 17:14:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-000000072e4-31Uo;
	Fri, 12 Dec 2025 17:14:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 12 Dec 2025 17:12:52 +0100
Message-ID: <20251212161424.1627626-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
References: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_081428_230606_AE482B0A 
X-CRM114-Status: UNSURE (   8.83  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 4/5] boot: try builtin and removable media before net for boot.default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); Unknown failure

This is the same sequence to automatically probe the environment, so it
makes sense that the automatic boot order would follow.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add Sascha's R-b
---
 common/boot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index 07bd288df29d..14525d31ae2d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -137,6 +137,8 @@ static int init_boot(void)
 	if (!global_boot_default)
 		global_boot_default = xstrdup(
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "bootsource ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.builtin ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.removable ")
 			"net"
 		);
 
-- 
2.47.3



