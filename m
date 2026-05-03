Delivery-date: Sun, 03 May 2026 10:31:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEt-000Trx-0i
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:31:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEr-0002yt-Ug
	for lore@pengutronix.de; Sun, 03 May 2026 10:31:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EGckB8bN8WkPneFvwk4FfH9y7jMA0dRsjZbJ+fgQPxw=; b=YNrn4/W8qsAw7QVSve07W3tQGM
	4UwvvnFdg9uSAyWj/Nf59BdJoMD8s8UZoDXfkUFqlu6OxWjIRfT/9LT8OKg/dSeLzvTkGqk9qZG50
	qcWs3XW9ZvmuTPyCu0LmqTpa6qMV6WbnQdckef2gsP4GEc06a6YOFU3RPo5yM0b5fYEEm+9Jiku7s
	3ivvtcbiYIPR4NpdA4UsLSLOHaLijTBUin8+UDlPl4ljD9opFvSacKFMOMctgbNgtvsPEtjkrgPjl
	4Cj292tKdiigwr6yTJX/yYOLz0VmsUhjWiWp9e0BDmPzCmWc9gXttp0GacEnYs4vfaiAq4fjHdzwO
	xzgPNFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSEU-0000000AdKC-2l8X;
	Sun, 03 May 2026 08:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSES-0000000AdJH-3Qks
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:31:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSER-0002qu-1x; Sun, 03 May 2026 10:31:19 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:30:04 +0200
Message-ID: <20260503083115.2763213-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_013120_882415_092E8077 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] netconsole: terminate netcat background process on exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We ship no ncb utility and Debian doesn't package it, so the fallback
path with netcat is what everyone is going to hit.

Drop the ncb branches and make sure to actually kill the netcat process
and not only the subshell that spawned it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/netconsole | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/scripts/netconsole b/scripts/netconsole
index c8109bb09569..7ab81a3a9191 100755
--- a/scripts/netconsole
+++ b/scripts/netconsole
@@ -34,26 +34,27 @@ for nc in netcat nc ; do
 	type ${nc} >/dev/null 2>&1 && break
 done
 
-trap "stty icanon echo intr ^C" 0 2 3 5 10 13 15
+cleanup() {
+	if [ -n "${listener_pid}" ] ; then
+		# The listener subshell is its own process group leader (see set -m
+		# below); kill the whole group so the netcat child dies with it.
+		kill -- -${listener_pid} 2>/dev/null
+		wait ${listener_pid} 2>/dev/null
+	fi
+	stty icanon echo intr ^C
+}
+trap cleanup EXIT INT QUIT TERM HUP
+
 echo "NOTE: the interrupt signal (normally ^C) has been remapped to ^T"
 
 stty -icanon -echo intr ^T
+set -m
 (
-if type ncb 2>/dev/null ; then
-	# see if ncb is in $PATH
-	exec ncb ${port}
-
-elif [ -x ${0%/*}/ncb ] ; then
-	# maybe it's in the same dir as the netconsole script
-	exec ${0%/*}/ncb ${port}
-
-else
-	# blah, just use regular netcat
 	while ${nc} -u -l -p ${port} < /dev/null ; do
 		:
 	done
-fi
 ) &
-pid=$!
+listener_pid=$!
+set +m
+
 ${nc} -u ${ip} ${port}
-kill ${pid} 2>/dev/null
-- 
2.47.3



