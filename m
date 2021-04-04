Delivery-date: Sun, 04 Apr 2021 13:35:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12M-0002mY-7r
	for lore@lore.pengutronix.de; Sun, 04 Apr 2021 13:35:26 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12E-0002SA-VV
	for lore@pengutronix.de; Sun, 04 Apr 2021 13:35:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2HWx788sqykyjplhaKlL70CfctuABMjO4AA0m9ckgHA=; b=an77pEcxp82qfKVkRpyxe9Daj
	xwg3SqTNo24IZUZ3isp0Zxyx5S7x/UU9eJfob3wz0dxWDYpwC9uZoOQ7dqhubad+tEgoBKHQ8qxHM
	g17g67nLkAZJCzZlZNi+cC0gV3iaf9TJQ6flfbUn8XvC8W/o9n0K6yDoFIQ7msRbMF52gSuNem5gK
	7ba/MrWkR0TlHFJleIE8f58K2QixMHWFzUbt0ALEW+3XO0f2j6I5YJ9yvTVvsSCzVmXDyYkAVekVZ
	HrLRs9L2B85fRO/g6mtDAbs44W2N5tPZ4fsulB2Q+TZxychjlk4OdqO95qaswUT1Rm3nTN2EUeFDr
	nLTVAzpDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT0yk-00Fg2P-Jd; Sun, 04 Apr 2021 11:31:42 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT0mE-00FfBw-Iv
 for barebox@lists.infradead.org; Sun, 04 Apr 2021 11:19:41 +0000
X-Originating-IP: 83.135.94.104
Received: from geraet.fritz.box (unknown [83.135.94.104])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 0FD5B1BF206;
 Sun,  4 Apr 2021 11:18:40 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun,  4 Apr 2021 13:18:31 +0200
Message-Id: <20210404111831.592821-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210404111831.592821-1-ahmad@a3f.at>
References: <20210404111831.592821-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_121908_943573_0A232052 
X-CRM114-Status: UNSURE (   6.99  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: state: reword warning about initial state errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The message didn't explicitly say it is expected behavior to not find
barebox-state on startup. Reword the message to make this clearer.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/env/init/state | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/board/env/init/state b/arch/sandbox/board/env/init/state
index 0b8e40409f97..b8a2b42a53ea 100644
--- a/arch/sandbox/board/env/init/state
+++ b/arch/sandbox/board/env/init/state
@@ -5,8 +5,9 @@ fi
 source /env/data/ansi-colors
 
 echo -e $CYAN
-echo "******************************************************************"
-echo "*** Inconsistent barebox state buckets detected on first boot ***"
-echo "***         barebox will repair them on next shutdown         ***"
-echo "*****************************************************************"
+echo "*******************************************************"
+echo "***   Inconsistent barebox state buckets detected   ***"
+echo "***         This is normal for a first boot         ***"
+echo "*** barebox will repair them on next poweroff/reset ***"
+echo "*******************************************************"
 echo -e -n $NC
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

