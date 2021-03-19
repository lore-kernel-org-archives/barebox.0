Delivery-date: Fri, 19 Mar 2021 19:27:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqG-0007rI-7Q
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 19:27:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqF-0000Hn-Ga
	for lore@pengutronix.de; Fri, 19 Mar 2021 19:27:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R0+FHIuLgiLizddaNOkl+SbAYvBlu5GaBa8mZ+wjFHI=; b=po/JaXrvlrlKyv58sra8tegfT
	Kfzz6mkhwuXxwehwDjziPKncN7bxvtown2doEvOv/CkIS46+f5CYDX8nb1gafiAaVXyYjGaahEY+r
	imtndRpU2J1Yyu3MBusy8RRqeA8KSNaw+w8Q/vDFKMdiMhvNQobC/lL5DX913a+zKPEmtPJHKE8kZ
	wtjfj8Q/1a3ttZ/3k1JrteRKvVnaZwXb1stCkCTfoH5+DkpGd27Jaz3LAoFmkblVYQlLezd3ogu9Q
	DroWpZQyPaVU7mFKWyZHCQbXXiLNDMSDxweeu2ZMV9Y9O4jqo7tOPQMMpaYoH5bnZlN5xdqd1UQ5S
	2Tmx91V2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNJpH-007wAD-J5; Fri, 19 Mar 2021 18:26:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJpC-007w9L-Kg
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 18:26:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp4-00007F-7K; Fri, 19 Mar 2021 19:26:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp3-0001Nx-Vb; Fri, 19 Mar 2021 19:26:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Mar 2021 19:26:08 +0100
Message-Id: <20210319182608.5054-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319182608.5054-1-a.fatoum@pengutronix.de>
References: <20210319182608.5054-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_182618_737563_205A2604 
X-CRM114-Status: UNSURE (   9.87  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] common: shell: select dependency GLOB for
 SHELL_SIMPLE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both CONFIG_SHELL_HUSH and CONFIG_SHELL_SIMPLE will call run_init, which
already uses glob to collect the init scripts to run. select GLOB to
make sure that these scripts are executed. If there is a use case for
a shell configuration without glob support to save on size, this should
be realized by a new Kconfig symbol to disable the init scripts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 8abd47a7569a..342817bbcbb4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -413,6 +413,7 @@ choice
 		select PARAMETER
 		select BINFMT
 		select STDDEV
+		select GLOB
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
@@ -424,6 +425,7 @@ choice
 		select PARAMETER
 		select STDDEV
 		select CMD_SETENV
+		select GLOB
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

