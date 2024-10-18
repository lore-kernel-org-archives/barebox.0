Delivery-date: Fri, 18 Oct 2024 13:47:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRy-005s1Z-1v
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 13:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRy-0004Iw-4w
	for lore@pengutronix.de; Fri, 18 Oct 2024 13:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FJltpMVaONSpLnB4X4nnWtj2g9Xni5u7oIaEbQ0E57M=; b=t7mIaB6RVg5cvidQDYjk4s3MOT
	16+FohydBJw3zTuQt98p+Y8GqoSyRa5YhMpx25eVL3d6HiIdSkiJLDBo8/qLwkBAgyPpFNTe1DogP
	4YNyRo1v/zPoL/sOYD4yhCd1mMtIffH18d+IK1vJNMBnDfnggf2QFnL58J4zBJ04c7eJ86wIuEYJK
	iugf4qBSy+AkV3fUxLkqpdWmqw9Txzc9KD2AIFqUWU1pcxvEbxo1x/69OLhphIja1o0zxBoXqQz4w
	Dajkj7dDGJ0FQqEGHX+7buhpdLFVr0QqWFh8jBmIBHULSfc5A5scjZdfBr8KdjMrwUHUQgFZMZx/k
	O5EnVeRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRI-00000000e7M-2Dx8;
	Fri, 18 Oct 2024 11:46:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRD-00000000e4W-1DCn
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 11:46:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 496725C58C3;
	Fri, 18 Oct 2024 11:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 615BDC4CED9;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729251993;
	bh=DwB4qhKEGaH5UaxcTDX1tQ/vNnewSgLF/1z4q0oLQpU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=sn13ygmr2SxhNaJcC5S8j8N6ILr7zq1/eRHnsUg2RreX6oJIHF7o0HS4LhDNMapO4
	 RDhQjo9K0sNUQ8jriIWGDV3b3RD4xFpoinUGztrG9S38dLwqgssKTU06zFmDPvv8lM
	 xHmc4Bxe2FDQ/OmhMYPRQ9g6e++YMJmY4sSnFTb2s2XnzbwRgA7D26DbGfpfq+tasU
	 Ho4nsxTnzbR9PORnGgIVPPPO3I1063hii4YEm2myVceEsj6sng11gzfa9Fzo6FZTr8
	 nYtaRcztloQVPebzMtkl34ovoFvXqLPk6bv8/nublZGQ9J6HxFW7l++jKdIz1W23G8
	 OPq+SHfeau2bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE1D2FFF8;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 14:45:54 +0300
Message-Id: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHJKEmcC/3WMQQrCMBBFr1JmbaQTUhtceQ8pEpOxHbBNmUhQS
 u5u7N7l+5/3NkgkTAnOzQZCmRPHpYI+NOAnt4ykOFQG3WqDLfaKRKKk24PflJRFbWzfdXd7MlC
 VVWg/qnEdKk+cXlE+ez3jb/0TyqhQGW8COu1rNFzG2fHz6OMMQynlC4ho4F6oAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729251992; l=527;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=DwB4qhKEGaH5UaxcTDX1tQ/vNnewSgLF/1z4q0oLQpU=;
 b=YBYhsUqIJ7FENNqcmhBIy9c5AG47+ACGE1VVpmGymH+Ps8Kim459vabIjvMbjDJhhpqajWTW/
 t/j1OaRXQw3CFHsHX0BuOnGfbb8UZV9QtVptEnKu7mbicwHsMewyqTX
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_044635_418931_8D202EE0 
X-CRM114-Status: UNSURE (   5.81  )
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
Reply-To: abdelrahmanyossef12@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
Abdelrahman Youssef (2):
      include: Include <linux/math.h> to resolve implicit declaration of do_div()
      common: buffer access out-of-bounds

 common/filetype.c     | 8 ++++----
 include/linux/ktime.h | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)
---
base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
change-id: 20241017-errors_fixes-81248755b864

Best regards,
-- 
Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>




