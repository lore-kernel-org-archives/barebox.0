Delivery-date: Sun, 28 Aug 2022 16:05:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIv0-00D8Hl-TX
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuu-0002R7-ML
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULVrgpyDSCouyjI11thzTCMESMbn6P0Q4TPNFqSzils=; b=viOGweWUSIutT53mT4Bf/Fiw0J
	vHqCZ9jOoEhivc9lS8ByaNKEpRXbKl9c0oUWlNlChCHea0eWEabYnGrmw1kYJHpkyvZupxLncf/Ah
	ymnqF5vl4NknFxKUYmYfErt3ar98yqJ4DliAqzOvqYF3bb7mynYQaS/ElMLFBseRUIGRI+Fitlobl
	7g0RFaobdqDVJ0KrzCvBXAGH4x3cNT0236fGb+vE2a697SQQTTDiNNTI/836Dgt+LSr0nbdTPpwhi
	hG1sXKRUdy2RmFYWnqSmqeqxXSgpc0uJ273kdnRZj/JlHJscppqO1Q7KEPYPPuGzKudRHYQjOm41t
	1boiYjkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItP-00HKMr-Mu; Sun, 28 Aug 2022 14:04:05 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsz-00HJni-4c
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:39 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2pAa789826
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695371;
	bh=ULVrgpyDSCouyjI11thzTCMESMbn6P0Q4TPNFqSzils=; l=1896;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=sDTD8TEQqrHP93fa6nJaQcKTn5UT9qX57u0kp16DxAUaGRYoWUQIqWWuQnNcVbI4v
	 a58i/oJDZJGtn+bwzCnlg/uD5j7wAVlNhKIS7geVfGkfmQLnYJv6mqr+ZM+b/ZWhha
	 e9NePQryJEdC8hFNRxBRor4M6fUF0MM1OMofhPOwULPfPSqZForPHL5wak4gmPQVfX
	 U4Al+zjUUB3k4YVfJm0WnUfhhYEK214A8AjQvqP9kAcdEbxS++hdDPDewbBiJoyvs2
	 4hvAHhbnfB8XKrZN9ruLxw09KdzPmSL4uU+v486yWXQeCfXN0ofGLbxtnPHRC8HEb0
	 ybSrk13oPTEeA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2fxg980529
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:43 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4A0D789D2F2; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2bVa756482
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7p-GF;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:31 +0200
Message-Id: <20220828140231.930643-9-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070337_816470_F57C393D 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] tftp: add some documentation about windowsize support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 Documentation/filesystems/tftp.rst | 38 ++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index a292765e2511..8929213d3c4a 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -20,3 +20,41 @@ Example:
 
 In addition to the TFTP filesystem implementation, barebox does also have a
 :ref:`tftp command <command_tftp>`.
+
+RFC 7440 "windowsize" support
+=============================
+
+barebox supports the tftp windowsize option for downloading files.  It
+is not implemented for uploads.
+
+Generally, this option greatly improves the download speed (factors
+4-30 are not uncommon).  But choosing a too large windowsize can have
+the opposite effect.  Performance depends on:
+
+ - the network infrastructure: when the tftp server sends files with
+   1Gb/s but there are components in the network (switches or the
+   target nic) which support only 100 Mb/s, packets will be dropped.
+
+   The lower the internal buffers of the bottleneck components, the
+   lower the optimal window size.
+
+   In practice (iMX8MP on a Netgear GS108Ev3 with a port configured to
+   100 Mb/s) it had to be reduced to
+
+   .. code-block:: console
+     global tftp.windowsize=26
+
+   for example.
+
+ - the target network driver: datagrams from server will arive faster
+   than they can be processed and must be buffered internally.  For
+   example, the `fec-imx` driver reserves place for
+
+   .. code-block:: c
+     #define FEC_RBD_NUM		64
+
+   packets before they are dropped
+
+ - partially the workload: copying downloaded files to ram will be
+   faster than burning them into flash.  Latter can consume internal
+   buffers quicker so that windowsize might be reduced
-- 
2.37.2



