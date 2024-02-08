Delivery-date: Thu, 08 Feb 2024 20:17:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rY9uE-00947U-0a
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 20:17:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rY9uE-0007kg-Sn
	for lore@pengutronix.de; Thu, 08 Feb 2024 20:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LiWpr0Q3lHkKy3UaX0uR80CJQayzOHHD8gjrJDW8Zh4=; b=hp5cEIRyMlsPsZ6dUSXqisEiAq
	BE4Rsv9jz7W0JU0+IMeAl1L2gdO+Y3vKYA/qk4VkMiicSofZySH638oVV5HpdvLBW09b21Ovg0w6a
	Cb7dLULgBDD+jPncPoqBE3EaGMqgn9502wJdj3mzirrw4L1TSHctLFGWVUll1ueAqH4oTUJQss2bQ
	WChH/SBH2XQGAJIAKPN10DnW49kglCE6Aa5fDV5VpPrNmJDsO0IhwVLdWLA06CBMkqegadUYs8Zup
	js2gVNgFMTn2UJEw8jwvoCHGuRd8luO+DTSSOz7B5Y9yY8sxI3Wq/bmf70ObO0SSPXtTxjBk7pa4T
	81GMvcJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY9tW-0000000Ejtq-3E6x;
	Thu, 08 Feb 2024 19:17:10 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY9tT-0000000Ejs6-1Adf
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 19:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1707419819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LiWpr0Q3lHkKy3UaX0uR80CJQayzOHHD8gjrJDW8Zh4=;
	b=Q/zOxV8SS/SQw9RBA4I6YEEfuNUtqs5g7Wpdl8pFUilfFCI22v3yf2qiKKxnLkEc3rdPVk
	hB6nv1DlwHfhssXQ9T3Nmv6PWC0DdnOfEirxewofe/svgBFKr2KV/G9igI1yj9lehZd66Z
	/S1KmQ4sUEuv7izUMaSB+2OPS9/66MtGLBPG83foeLyK0bJ4T9WKM9CMRf6PqjT3GCwPoz
	6VotxwfA+b70i97t/dOwjDuqHZen1R6TJV1AJsSCA9EyIaOcv0j1cAz1Iut5VIYD6Ha3t+
	dsCAnv3dzTewk3ZX8D8tcnS/cYNco/QfjJVSsynBxLX/yF53SC+y6KSyqRhrhA==
Received: from mini.my.domain (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id cee4708a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 8 Feb 2024 19:16:59 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  8 Feb 2024 20:16:25 +0100
Message-ID: <20240208191625.2455-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_111707_600689_5F3EEBDC 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: Fix heading level of TFTP windowsize section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The section title about TFTP windowsize support was at the same
heading level as the page main title.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 Documentation/filesystems/tftp.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index e88ad3dd4c..5a2910adbf 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -22,7 +22,7 @@ In addition to the TFTP filesystem implementation, barebox does also have a
 :ref:`tftp command <command_tftp>`.
 
 RFC 7440 "windowsize" support
-=============================
+-----------------------------
 
 barebox supports the tftp windowsize option for downloading files.  It
 is not implemented for uploads.
-- 
2.43.0



