Delivery-date: Mon, 31 Mar 2025 16:37:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzGGE-006bOe-0n
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 16:37:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzGGD-000791-Nb
	for lore@pengutronix.de; Mon, 31 Mar 2025 16:37:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=okfMCMtVjsPc4ptsjD5sVOxrpgN93jo+hbS7dUbWQlQ=; b=AkiLgrnbPAwlSRJhPbjCPKH4WR
	Viqk5Pg7PKjKDybhVZUPHHHjqD0pCE4yt9Px826ReZ8aYU20XZc9aEv7Hmr0Way7yWL8tZkrVFlvO
	C25FIX9021tBmko5yerm2XsIllaA+2KaattqwpLb756QwZZKXL8ugeOY6RcWrPV8OUYMFYRJ4OeNR
	ekZDchFxF7irNYtQAQlRUpw97OGRL/ONnD2v6o4N9I72h7PRNNXmbtXjXave4MAQFkLv0Pqx/f+za
	ypv3pm/ylaOBsI8mNZnHpKXY8JDAn1iRuJ2OvGyabpy/G4sX4L6HIS4JDQ+EqIXXaYieEjOglUBBj
	YxIM8Fxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzGFY-00000000a6E-416f;
	Mon, 31 Mar 2025 14:36:28 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzGCz-00000000ZHC-0tf3
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 14:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=okfMCMtVjsPc4ptsjD5sVOxrpgN93jo+hbS7dUbWQlQ=;
	b=ZEVDveyd8x/mSMh0xfEojT4z1+q73m2KcxySBtADWhM6BNxbUHkRU8aKUY5wAiCUVkGK58/QCH0L5
	 e5h5SVP7zywM9Dj/+suSQ4VZ99y1DYq1yPBQ7/KX3gX0u0grq90U4YwgNo2+hKOqPMfWU8WO1aMJnS
	 REU8r0Kp+YWlItOyUh8n2k6LTKlkopaE1b0TITTzx6P7NfBvBiR+vi+PVE6j/pd0gqdpDDwQ1zYvB1
	 uAh3CJwY6LA8dJEujA0UtVIUY67jL9Rq3Eu53drNB8ghCNDXNpE0D8y/tY9p2bt7Sf+w+4ZuMtdehV
	 GMTMtByMsb/2x04t4QtEHklGH3iy4bg==
X-MSG-ID: 26b19f96-0e3d-11f0-b160-00505681446f
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Mon, 31 Mar 2025 16:33:43 +0200
Message-ID: <20250331143343.3252321-1-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_073349_660601_883C8E9A 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: boards: protonic-imx6: Re-introduce generic boot target board string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows using a single bootable usb drive for multiple boards.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---

v2:
 - Changed generic boot target name from prti6qp to generic-imx6

 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index bbebbb8dc9..9292052d30 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -373,7 +373,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	*second_word = 0;
 
-	if (strcmp(buf, priv->name)) {
+	if (strcmp(buf, priv->name) && strcmp(buf, "generic-imx6")) {
 		dev_err(dev, "Boot target for a different board! (got: %s expected: %s)\n",
 			buf, priv->name);
 		ret = -EINVAL;
-- 
2.43.0


