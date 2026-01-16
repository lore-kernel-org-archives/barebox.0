Delivery-date: Fri, 16 Jan 2026 17:07:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMQ-00213L-2c
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMO-0005Wd-R5
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rk9gGH+PQGM5ZAmeatVv+WOR9p8hBOOpIIx92aBAS0Q=; b=M9SEKrRHBj7n4Gbz7kEdga6FQv
	REH457X9ePL0WYUnkfAK9qwrVMr85LQa3gNkH6DPIUtMb1cFUNsFNr2NdOhtkd2KcNr+NR1Nm2Y5h
	oR/v7sAsiTJzgNpKdkkIzik8e3c5dVrGYSquD8Ecwx/O0U/SiQhUAUZYxozg5rNC8IOm657+FaFLM
	6kNNG3ilCuVW4InLlCTKrZD7lM3EClJuSLf7/rCaiunAQFK3jldXVjp+hnErPch2EXXE5IycDrqvd
	Mh6iMFp/eMhlCcTrFW88q8WUl3b4H+TR3H0D5MmcWQrjk+XdyLQiOGq/txLTdKuSKepj2F6W7Qhu7
	kanrB/Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLr-0000000EQ1I-0Dcz;
	Fri, 16 Jan 2026 16:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLo-0000000EPwY-0SAV
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLl-0004sd-Hv; Fri, 16 Jan 2026 17:07:01 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:33 +0100
Message-ID: <20260116160654.3981425-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080704_147500_8CAA6157 
X-CRM114-Status: UNSURE (   8.60  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] commands: pm_domain: make command tristate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming module test will build pm_domain as module and check that
dynamically adding commands work, so prepare for that in Kconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index f94c7278e72e..297c89b4b566 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -273,7 +273,7 @@ config CMD_REGULATOR
 	  their current state.
 
 config CMD_PM_DOMAIN
-	bool
+	tristate
 	depends on PM_GENERIC_DOMAINS
 	prompt "pm_domain command"
 	help
-- 
2.47.3



