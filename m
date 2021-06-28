Delivery-date: Mon, 28 Jun 2021 08:46:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2l-0001eV-S7
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2k-0004JP-S9
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUn38BM/CIncllPfi75tCsjJ4xDIQNmBFYMpIh/jHhA=; b=KSyaSyooAycNTD
	fMEkDiCFm7thlh9NUP1rsncLjE6rAazoCcxi9pRUAMKsiiT0XjvdY/U3QvJAo8UmOpCM6SmPUpVrS
	bqyNu2+a6RU4KvLykfGSNM55DCVw+BprskSL8RXbgyeWgR5ZOUGYS/1l+vOu/1LPl3DxLgplyS8uw
	VWOhimyjpUuAK+S2B8L9E0I483Jli3TKT0FZpEbfQOuSNfLnnBxzONzWjLP2ICzQoXs+q91OGWleE
	TbLF5vtgmwZykOwV8CNkOHqe5XOfTI2zmmTpvTutmfElCa9ciha+KXeISu+VgKB+UNmwEqszBJIYC
	IPu7kvksVWbBMc19JM0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1a-0074p1-0x; Mon, 28 Jun 2021 06:45:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1N-0074if-0G
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003if-Ow; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VQ-6x; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:14 +0200
Message-Id: <20210628064517.28636-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234529_120164_23E00423 
X-CRM114-Status: UNSURE (   9.75  )
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
Subject: [PATCH 4/7] state: support deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe, drivers registered before of_populate_initcall must
themselves take care to ensure their dependencies had a chance to probe.

For barebox-state, this means the backend partition provider must be
probed. Do so by calling of_partition_ensure_probed on it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 9d04eab312eb..469ee62d4012 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -615,6 +615,10 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	}
 
 #ifdef __BAREBOX__
+	ret = of_partition_ensure_probed(partition_node);
+	if (ret)
+		goto out_release_state;
+
 	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
 #else
 	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

