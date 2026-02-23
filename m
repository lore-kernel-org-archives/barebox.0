Delivery-date: Mon, 23 Feb 2026 12:35:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-004odb-19
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:35:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-0000Wl-Mh
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RZzVDUZdXOt2AmbHdb/dBDfuHEjjqTe5PGSafBH0COM=; b=xhE7Uxln1m+bIE7Y4S/7uILbQz
	O3lmkG7BZy0cakSiKEj3B7JYNTYdyyiSDvysXpj6BvI/L6KpWXV5YbdpQOC9NiAeXwQfOAHSbbFrt
	rHFJulRd1dBRX+XXwY6tJ34L+CZCJ3BHA4RI1DDeZlXv7VSKw0DmgZcj0kr4JERzly20E/sSXKjcm
	oM9u+sJ/i2fwSWX2pcu5ARv447h7DZvz8z9d7IiXPjZbxbyQCVXKk/+euF5wvMAhQy5zfKHv+iv/L
	aIo3y+0LxEQ/XJeeb6gA1TFQJirj3OwEZzyZxgUtx3d1Ay4ea3s3g8Nr7KtHu6+x3XLkyZawZhp/0
	nSX+Ybyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDa-00000000CAa-2pTy;
	Mon, 23 Feb 2026 11:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDX-00000000C8I-0zPs
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:35:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUDV-0000JU-LX; Mon, 23 Feb 2026 12:35:09 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Feb 2026 12:31:33 +0100
Message-ID: <20260223113446.638135-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223113446.638135-1-a.fatoum@barebox.org>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033511_296621_EC29F987 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] MAKEALL: devel mode: abort if no positional config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devel mode is supposed to make it easy to get started with a particular
config that's built into build/, so let's also expect a single config to
have been specified.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 MAKEALL | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAKEALL b/MAKEALL
index 001b46a14726..c36aed625820 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -391,6 +391,10 @@ fi
 
 if [ $# -eq 0 ]
 then
+	if [ "$DEVEL" = "1" ]; then
+		echo "DEVEL mode build requires specifying the config as positional argument"
+		exit 1
+	fi
 	if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
 	then
 		do_build_all
-- 
2.47.3



