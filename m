Delivery-date: Fri, 14 Mar 2025 23:45:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttDmN-00EBt3-2q
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 23:45:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttDmM-0000cX-My
	for lore@pengutronix.de; Fri, 14 Mar 2025 23:45:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QAw5XCccJNU2gaCCPo/qHGZ9OrCj/63122/eM4uG/Go=; b=Y0G2q7O5xpGAj9uEesDBCXnpMl
	LKa8rCyDZ7BPMHqN5oT3BwsNa8xbD7O3xYv/l7H0BXK/5biFMWHWt6EmrhIYrxIefb/i4VXJlKfIt
	SFlGAJP2CKmEp2wwOgIV/TMwaV9SxbptopbmvuexsOblQg2KVJsXJtKcszbVES61k28lmKLiPwoT8
	328ehGW9uFCjS9GbNwqU2m28+wX4iL3Ry9pwwkBYvz0jRVfnXe0yz6z4/PiLcbas1l2ksnQFDz4ya
	S7U5NabwPSwd6AxX7VTB/6oVI/5lhB8DmOCww19JziPKHJhCx5QlMiHRfLGLgM02jxdHTTPVm+2lv
	S0vK58Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDlp-0000000FSVX-3duN;
	Fri, 14 Mar 2025 22:44:49 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDlm-0000000FSV1-0le8
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 22:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741992284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QAw5XCccJNU2gaCCPo/qHGZ9OrCj/63122/eM4uG/Go=;
	b=Mz7gDC+AY0VWtztsFJSqGodHaFMzu0oeu8C1EP0ktE9oO/wfrJabyOAucEBLCI3JWD6xeO
	h8EyV1dnGLLTHcGa2+AELR9n0W/YMTb6PlZMU620Q6o/xtG0P4MDTcndCeg26RroCM6H/m
	EmWfW+Uk2NI7vDZyl88wB7E21siam/Zy/+Y2XIGAwNo1F5K0JCKA0lRDY3oudDqKEI1gjp
	S6Xd068eCintSLQ46Ut5VVV3EysHOg8DKdL7zRlHYpKh9Xg0jmMeiAMdk4835qXQ6aLefc
	4at5Z4Hh1B44AykL29WSTzuCp5kGDWLlWEB8WC6rUO929sAESZSFtWoy97nb5w==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id babedb0c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 23:44:44 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 23:44:39 +0100
Message-ID: <20250314224439.30069-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_154446_518354_03286144 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: sunxi-mmc: do not log error message on EINVAL error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the function sdxc_send_cmd: logging the error could use the
uninitialized variable `why`, this can be the case when the
sunxi_mmc_send_cmd function returns very early with the -EINVAL
error code. This doesnt needs to be logged.
Also add a default value for the variable.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mci/sunxi-mmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sunxi-mmc.c b/drivers/mci/sunxi-mmc.c
index a19abbe55d..376ef2c0a9 100644
--- a/drivers/mci/sunxi-mmc.c
+++ b/drivers/mci/sunxi-mmc.c
@@ -24,11 +24,11 @@ static int sdxc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 {
 	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
 	struct device *dev = mci->hw_dev;
-	const char *why;
+	const char *why = "";
 	int ret;
 
 	ret = sunxi_mmc_send_cmd(host, cmd, data, &why);
-	if (ret && ret != -ETIMEDOUT)
+	if (ret && ret != -ETIMEDOUT && ret != -EINVAL)
 		dev_err(dev, "error %s CMD%d (%d)\n", why, cmd->cmdidx, ret);
 	if (ret == -ETIMEDOUT)
 		mdelay(1);
-- 
2.48.1



