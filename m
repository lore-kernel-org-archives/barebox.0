Delivery-date: Sat, 17 Apr 2021 23:17:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXsKE-0003hu-RX
	for lore@lore.pengutronix.de; Sat, 17 Apr 2021 23:17:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXsKD-0006gT-Tk
	for lore@pengutronix.de; Sat, 17 Apr 2021 23:17:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XMuergsrUjCzJvyKChGw0YEEN5bGQky8lQyngf1byyY=; b=Yc7gG49HC7FNjcEkhuc/hBSWvL
	RtKbdSshjdwQpMMlRjGlNCvnqAsrxxIIxi3tjudkNnvMYWdmgyNhgxmURvByqhPAjFtO6TgTGMFpR
	LRf0ceaWN2gLduhyOcjXmNu3FRrrDiRfSoYPsVgQU8fAl9HajTWOvJyFCm0aZuhzrdoeH7cI6JySW
	N6cVvklt1P20U9EtF5tnxExL3d2S1txzuhGkqISGuORBg5KP0wVewNOAFJ7TpTLQndvNR/P0tu/BI
	vp4o2f/nLut0a6dY/EqC07VmIV9wOb6Fc+2la3JqLF2bw606s95Zxdr+bLzRy/cD3jwtBZ7qnRHne
	pOPG2Urg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXsHJ-006HCE-Cz; Sat, 17 Apr 2021 21:14:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXsH1-006HBf-1Q
 for barebox@desiato.infradead.org; Sat, 17 Apr 2021 21:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JHwNWXVwiGV695LQtLT+zERVRHeGBjZdgSBda+86f4M=; b=2BgvUoqFd4d6lVgtmtqCfzc5sO
 gJUw35ROJgMhKe/pa/9D3PCbNj7btxlvkTgUpz0xIcB65zdLZkQUA7D/fDZ87lcOdsaKBd3zbc6pj
 xhP4/TPA1/LmrMrj+tI6gbR5hM65PCWg2J3Z7B1Ewv2jLO6tUwlRm4Qr2Izt6P2qI44fSyHhZVSdt
 W1aPjDOWKEaTA+bI1d8idgDeTs1WfAFtqPiyqwcFtctU8t1X72HIDutz6MmOxHvz4pRg++kcPApE/
 O14vmbT+CpMEQe14I2s7P6oT7lDm7IMioNuLHkad86oayb5ymevFQSVBXko62No6xaWacxSTe9IQK
 2TuGBmwg==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXsGv-00ABpV-QP
 for barebox@lists.infradead.org; Sat, 17 Apr 2021 21:14:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 82E351AA2C2
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 21:14:32 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNM8NNTU
 for barebox@lists.infradead.org;
 Sat, 17 Apr 2021 21:14:32 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 5FE071AA2C1
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 21:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5F36D27E0673
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 23:14:32 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id xk3U1EQ9ueDP; Sat, 17 Apr 2021 23:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0DCF327E062F;
 Sat, 17 Apr 2021 23:14:32 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0DCF327E062F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618694072;
 bh=JHwNWXVwiGV695LQtLT+zERVRHeGBjZdgSBda+86f4M=;
 h=From:To:Date:Message-Id;
 b=CfGU5s22eFly39aDs8+zrET4G6ib4fzhjix/EzT+LNmKenqPQSknRU5cP8nSm0iS0
 BMQsa5qVsg8voAmL7+BT2GtyTAweKfdRZ7B3DQ9VFiw33q/2p0PEeSfR4YFpda0WnO
 wP06yfqU07It5DOopz6QjFp0EX+7ds2N3GCAB9zU=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GzwdY6Mo7SBR; Sat, 17 Apr 2021 23:14:31 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id E53CA27E05B1;
 Sat, 17 Apr 2021 23:14:31 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 17 Apr 2021 23:14:19 +0200
Message-Id: <20210417211419.26883-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_141434_025670_544A0F8D 
X-CRM114-Status: UNSURE (   6.44  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: kvx: Fix broken link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The link to toolchain releases was missing a part

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 Documentation/boards/kvx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/kvx.rst b/Documentation/boards/kvx.rst
index 2641b002a..0a1a6f7dd 100644
--- a/Documentation/boards/kvx.rst
+++ b/Documentation/boards/kvx.rst
@@ -93,6 +93,6 @@ message appearing on the serial console.
 
 .. rubric:: References
 
-.. [#f1] `Toolchain releases <https://github.com/build-scripts/releases>`_
+.. [#f1] `Toolchain releases <https://github.com/kalray/build-scripts/releases>`_
 .. [#f2] `Build scripts <https://github.com/kalray/build-scripts/>`_
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

