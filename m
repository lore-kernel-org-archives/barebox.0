Delivery-date: Wed, 09 Apr 2025 16:40:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbh-00ARpA-1h
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbf-0003Jf-Q4
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/WHiO82gHZ/Oo5HiwXWN8cg/xKOBZtWPf/QU8v5Nyjw=; b=piV8j4ehV8aopfGuA6z0DjR0Vx
	/j9s2ytqJhL0B6Tb9OuGS2eIG90aRN3bSIgWvSKoiNCW3FWDDtlmqzPQgSbJBvajXzKyWvpZ3N2/t
	jhYQCRhW+e4Jm4w6uZ77mNbG10tkJKR11XjNggTmr1vMOabLrCGuqEvzGEOB65SDZX/UxeUEmUelX
	VLTxkp+TJ6SrOMBsbmPySloFOKA3sgyt4Vq+UwLcozo+3rugjvEYiDqsuEW540ovac4fPTBXWPHHy
	29qLyRuPPmMpqSVxWvM0+osrcfVmfRvFGTMQMKD68QuAskUOAXKTRbq5wWRaEZEm+ynElii0rFdaG
	CBjY3PAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbF-00000007UuR-2rGV;
	Wed, 09 Apr 2025 14:40:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzv-00000007NbO-3eDv
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004q8-JK; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-004702-1F;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-0x;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:29 +0200
Message-Id: <20250409140134.2079552-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070147_903381_DBA68E59 
X-CRM114-Status: UNSURE (   7.89  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] fip: add struct fip_image_desc::private_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by FIP consumer code, add a private data field that can be
assigned as the consumer wishes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fiptool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/fiptool.h b/include/fiptool.h
index 73b0fbe3983a..1b70824a8694 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -23,6 +23,7 @@ struct fip_image_desc {
 	char              *cmdline_name;
 	int                action;
 	char              *action_arg;
+	void              *private_data;
 	struct fip_image  *image;
 	struct list_head  list;
 };
-- 
2.39.5



