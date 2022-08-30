Delivery-date: Tue, 30 Aug 2022 09:44:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvui-001UQQ-R0
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:44:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvug-0004KK-71
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:44:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULVrgpyDSCouyjI11thzTCMESMbn6P0Q4TPNFqSzils=; b=aNQHV3UkpXhfdkL2IGjOl7XXGx
	4e/CoV/iVWPsk8t9OCe+/g4gL2EF9MmgKpg027UeWQmOz0ce3oZfhooQoYw9e+gQKjRZbjGwLz1dx
	ZQrhsWIyuaPCaqkYyDcM6c144ksXb3StAqNFD2KKu/sthvsEloH9AikhzwrZV4ejjgj9nL9n4yzsF
	Iq2/gODkWWqh7fncE+xcTLO/wrq4GZJJDLhxF8fZTmzTae36AjMB/z8PCugaecccYkdYBIjPgkrjE
	+Ykd//q78lhDQVTJPjP5xXkjSz8AtNxCsVDCeKlvIUxHUgXMRJ8I+ju6omm4WweZInKJC+CP0+xnA
	RK2+Nozg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvt5-00Eqmu-HW; Tue, 30 Aug 2022 07:42:22 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Eoxq-1p
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:32 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cOWY993515
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845104;
	bh=ULVrgpyDSCouyjI11thzTCMESMbn6P0Q4TPNFqSzils=; l=1896;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=aQ+o9kxclI636Xj/g3Ec1R3obfKLmZ0tplXO2leQLndqe2NJdJpeIYSDMTnHlvUQf
	 8vTGVFz+JdjPIY/92fT5GS1qb77iq5OC2MNmaFsbtYq0SE559b2toqk8jcFLibKlpe
	 kn1OWisJDKyjQ9PMQTba6c3tPdt+KOdTSbZQ3ooX4y8HiR/1pb+O+OD8iVI7H9yfOM
	 BIBZnTbqq39pcch79tjWFXAj0j2LXNqfT+mvgk0vBYRw+KGO/9I1EO5ZbxeLXZhFla
	 EG9oCjN7pTyQKWPUssUIeBxq+5njjfwRKU8s+v5hVpuzZ9HWe7cB3xPzyrc4L4XW4P
	 HU7XTxGTspp2A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cM3v2895720
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:22 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 64A9404D28F; Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cKjY949569
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3r-GK;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:16 +0200
Message-Id: <20220830073816.2694734-22-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_533992_B226152C 
X-CRM114-Status: UNSURE (   9.93  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 21/21] tftp: add some documentation about windowsize support
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



