Delivery-date: Tue, 27 May 2025 08:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmZ-000lir-1z
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmZ-0003F9-3a
	for lore@pengutronix.de; Tue, 27 May 2025 08:27:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kgyv6lmxUpiV2vxWt55ItFZO1SMF2n2qIIQIzBgLWDs=; b=wvAsOj45UGL1wQHS8Ruo57mckF
	PLyStfVVkFHkZNXZWBM+lA/t0dor3CIe6zsOpDah8DOi9oeI79/SAySI25Y+5ftWKxjRsY+UG78F/
	KEDUmsFPZnsWIFPu9P3im7SpEYiWy183My4gUcJTzyBbYy4XG+UXKX8gQFKZRdf0vz7/UbCi/F9Qs
	ldWIF0aV9A4C2M67KesXosCBjbCkynxQFkQHuRIPji5UM19lm/Px0RdFJSxRHCnjz81Fgw/iwnITJ
	8U3L6ULmL95Xwtzp+1tJD2Ymrom5cKH3TMlYNaEKohEGVbz4HYO2EO4amTRLkt+j5qeAP8Za+VAHA
	jkLetEfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnmB-0000000A1zR-2JJv;
	Tue, 27 May 2025 06:27:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm6-0000000A1uq-3rxu
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:27:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-0002wn-Gh; Tue, 27 May 2025 08:26:56 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-000NA1-0z;
	Tue, 27 May 2025 08:26:56 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-00C54j-0l;
	Tue, 27 May 2025 08:26:56 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 08:26:32 +0200
Message-Id: <20250527062632.2879361-5-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527062632.2879361-1-ejo@pengutronix.de>
References: <20250527062632.2879361-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232658_993993_8B99FE7F 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] doc: user: booting-linux: fix double code-block markup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 6c8d25a96c..2c23815c9f 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -163,7 +163,7 @@ setting the ``global.boot.default`` variable to ``mmc`` and then calling
 
 Especially for development, it can be useful to override only parts of
 the images used in a boot. To do so, set ``CONFIG_BOOT_OVERRIDE=y``
-and configure the overrides as arguments to the ``boot`` command::
+and configure the overrides as arguments to the ``boot`` command:
 
 .. code-block:: sh
 
-- 
2.39.5



