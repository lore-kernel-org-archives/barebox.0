Delivery-date: Mon, 23 Feb 2026 12:35:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-004oe6-2B
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:35:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-0000Ws-Vj
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hv9gy7Jf/UZRlxwgc/PibM8WoK0cgh98wLkd+SoNi7Q=; b=aI9ZHwAw3qDr78N6f9r5zMvlbS
	AuUWepVPzjlxiZXwHa3Q7YTN1fCYzOj7XCvPmdTbcdhf+3k5Rim+QUkjOB6CIs+D0abncivO8V81K
	JXeag9P1N1Du23a5Y1usXvGdT8AsMJc8fihVrZk5q+NTIdTtVkJKH87mUC6YfJxS7aDd5iJVC8TVI
	ba6IImP58wpLxTLQ98RPs/bg1ldnL4Rq4MGm5ihQB1alylnMSfmzlqGOCOaYkiB3hs6UYcop81/Je
	LGOWoTiNirmJENLyDl57K0ki66qscJuTOVOvNA4vtsWxKzs/5bSFsFvOmHsQ9ulY3sgii0m11iR3t
	oaRx1Gcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDa-00000000CAQ-1I2e;
	Mon, 23 Feb 2026 11:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDW-00000000C8G-45nC
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:35:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUDV-0000JU-81; Mon, 23 Feb 2026 12:35:09 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Feb 2026 12:31:32 +0100
Message-ID: <20260223113446.638135-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223113446.638135-1-a.fatoum@barebox.org>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033511_009968_67343283 
X-CRM114-Status: UNSURE (   7.36  )
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
Subject: [PATCH 1/4] MAKEALL: early exit if config specified, but no arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The behavior of MAKEALL to just build all configs and ignore the
specified config is confusing, so add a check guarding against this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 MAKEALL | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAKEALL b/MAKEALL
index 1e6d0c97b868..001b46a14726 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -461,6 +461,12 @@ else
 				echo "Skipping test due to failed build"
 			fi
 		else
+			if [ ! "${ARCH}" ]; then
+				echo "ARCH must be specified via the -a option or environment"
+				usage
+				exit 1
+			fi
+
 			do_build_defconfig ${ARCH} $config
 		fi
 	done
-- 
2.47.3



