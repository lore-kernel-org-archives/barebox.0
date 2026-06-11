Delivery-date: Thu, 11 Jun 2026 23:22:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmrT-004psQ-1S
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 23:22:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmrS-0005uJ-SY
	for lore@pengutronix.de; Thu, 11 Jun 2026 23:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TncOYqUc+Ow6MIN6A9ZVyjT99iD3CqxRXny2jKMavB8=; b=1/SQ4dO5Q6gsLfibEaBtcypc/z
	BocjryIJfnFc5kB6F7i/qKSlkMf53kJgpjM7B69jF0DCQentqPYKnPo6R5yi1eXAFJqG4FmvYE9+L
	R69ugdnaOhpsxWUs6iHgAvCmbrNpxivTkpicvHv+4KVvvn6kt410aOAwVhVH0w/nDtFsUsFX/MLKV
	aA5K7SgqDsvF95wO/2+zEqRGTajdkw4JfcWcjSRHpCNEOPG2O0uGNdzxiUurL3tJgO+uFaHEdXPaU
	BbvkPRz6V9F8/KrFr2l++aJc5e4bTWlNzFfaIzKFP+ETVcU3DgWy/sV2wBdVWCHU2hnTLOXwN5THJ
	sIv9nJJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmqT-0000000A5WD-3JzQ;
	Thu, 11 Jun 2026 21:21:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmqR-0000000A5Vm-253R
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 21:21:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXmqP-0005fA-JL; Thu, 11 Jun 2026 23:21:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Jun 2026 23:21:39 +0200
Message-ID: <20260611212144.4102824-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611211425.4090757-3-a.fatoum@barebox.org>
References: <20260611211425.4090757-3-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_142147_531178_682EFCA1 
X-CRM114-Status: UNSURE (   7.26  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: stm32mp: enable useful options for the LXA Fairy Tux2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: stm32mp: enable resize command

The Debian CDROM installer resizes the terminal and rebooting into
barebox may fix the viewport at a smaller size than what the terminal
has.

Enable the resize command to allow users to make use of the full
terminal width again easily.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/stm32mp_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index dab6dee6635d..e1aef7c86fc0 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -74,6 +74,7 @@ CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
+CONFIG_CMD_RESIZE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
-- 
2.47.3



