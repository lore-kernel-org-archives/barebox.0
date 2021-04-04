Delivery-date: Sun, 04 Apr 2021 13:35:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12I-0002ln-MH
	for lore@lore.pengutronix.de; Sun, 04 Apr 2021 13:35:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12E-0002SD-Sg
	for lore@pengutronix.de; Sun, 04 Apr 2021 13:35:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gd1du7OcUh+/G5Ybu4PzC7xUXQ70VtkHtDsS0J9JDeM=; b=NaXUyap0Z7ab911WwzCQ4cxBlX
	5LsoOV42KjPYEdRcvduj4qUwX9OpaisWK5P/vNbASURLnUPbejNvl/W72pUga5lLtZGUexjCa2kWX
	d7yIaIFdH9yJl/2C8G+D41Jga3kJCO5sW47eSoUvIHuusq88Fft0Ntr6rS5mBnQCQdqu93TSIdBNB
	CaDIx7iTulLKyFrGjcMfNvD+OZlZemcciiYwtCyTETUaT+eoOYtZhvtymkT4/QAKwM0xexWwYEx3s
	/XtLskkdaSI1nbg022HVjfNrjq+NkZHi6Wyk5MqhGFDplrsOEZaET1QYk6BlIesd3aGDeNO5oYvyr
	v95IDx5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT0ym-00Fg2Y-Nq; Sun, 04 Apr 2021 11:31:44 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT0mE-00FfBc-5M
 for barebox@lists.infradead.org; Sun, 04 Apr 2021 11:19:41 +0000
X-Originating-IP: 83.135.94.104
Received: from geraet.fritz.box (unknown [83.135.94.104])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 76F8B1BF205;
 Sun,  4 Apr 2021 11:18:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun,  4 Apr 2021 13:18:30 +0200
Message-Id: <20210404111831.592821-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_121908_935975_B405A78A 
X-CRM114-Status: UNSURE (   8.34  )
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
Subject: [PATCH 1/2] sandbox: env: set nv.autoboot=abort to drop to shell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox on sandbox defaults to network boot, which fails either due to
missing TAP support (like not having CAP_NET_ADMIN) or because the files
couldn't be fetched.

Arguably, the most user-friendly thing is to drop to shell. Do so.
Users can still override nv.autoboot if they want to boot differently.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/env/nv/autoboot | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/sandbox/board/env/nv/autoboot

diff --git a/arch/sandbox/board/env/nv/autoboot b/arch/sandbox/board/env/nv/autoboot
new file mode 100644
index 000000000000..f7d13fd04662
--- /dev/null
+++ b/arch/sandbox/board/env/nv/autoboot
@@ -0,0 +1 @@
+abort
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

