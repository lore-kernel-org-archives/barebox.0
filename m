Delivery-date: Mon, 10 Oct 2022 08:06:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlw5-0033Qp-Co
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:06:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlw3-000814-9k
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:06:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E1HDknOkKzZyEIOpPBCXYAiw/tIWLLL2eURT66O0S7k=; b=PnG3SNfggA0qgqDLTy2YrVNoE8
	VoDd6j9nzqrzn1RjR+Nxnko/o3zZzKuFjrIDNumS8I6dqn3v8f1dQ8PrccKSLrm3+Mob0660tz918
	x24bjsc7LI5IB9BVt9NPwn3mJsAJmN0278E/TaPsTCJ1uzU95UAzzrtx//LxmoSGTKQlIwQT79Wci
	8eXu6bft5hCR1bbYiK/nh0vedRpJFQYz+yns6ZR11QXU1R5nlu8EitUdJSvsnHhR5AtxDBiTtoWO/
	O88pZNFjBY6Ck+tKxo4sStp22aoCHgxd6TsXwmBalo6uLWwaJ0iJvnIIFN8V+VSPLCwe/mm6Lk2NF
	MGFBGveg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohluc-00H95X-NQ; Mon, 10 Oct 2022 06:05:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohluY-00H94P-9q
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:05:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohluU-0007ef-Nf; Mon, 10 Oct 2022 08:05:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohluU-000d8e-1V; Mon, 10 Oct 2022 08:05:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohluT-008jhm-DN; Mon, 10 Oct 2022 08:05:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:05:04 +0200
Message-Id: <20221010060504.2082266-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230510_357788_6F571782 
X-CRM114-Status: UNSURE (   8.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] test: emulate.pl: fix support for multiple block devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Block devices on QEMU command line need a unique id. The id factors in
$i, which we failed to increment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/emulate.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/emulate.pl b/test/emulate.pl
index 77b751a329b3..b5e2188b86dd 100755
--- a/test/emulate.pl
+++ b/test/emulate.pl
@@ -253,6 +253,8 @@ sub emulate {
 		} else {
 		    die "--blk unsupported for target\n";
 		}
+
+		$i++;
 	    }
 
 	    # note that barebox doesn't yet support multiple virtio consoles
-- 
2.30.2



