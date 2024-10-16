Delivery-date: Wed, 16 Oct 2024 11:47:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10cY-0050vc-13
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:47:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10cX-0003GO-I9
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:47:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6I8gCzQo6oyt9DPVqG51XnzSXfQBWIKgNgIDhTcx36o=; b=CiAbWmvNnqr0D1QB2igPDAPOzi
	GoHcOkDPm27RYPLfqKauRdWRlcJjp+smT0sDYK7UMEZxg4bPdN4LrtsS3sZGWwpcY7+lbB4wqtcMz
	o2pC3rb4wLVF5Cr3dU0SpGkjsEKv7id7bmphPkisRsjIdvTz6Iy9+hOa75fBwyJn3y8jbDZzhv3ST
	BlhFy7yCipH8wSAljRrvVyzmnJxY3zceF7jxQFS6T7WXHJDgr44BfXyvwYXtXE/Jg1II9mlLFR8bu
	G4L7C9jeZ95jxBGM+lTwygTF92nWXIQME2btXpFG6a+r+W7t244cB2Fe9YBGLEb+QEUMRS+L8pevq
	fvV71cvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10c6-0000000BIEx-13Xa;
	Wed, 16 Oct 2024 09:46:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10W1-0000000BGkL-1aQV
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:40:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t10Vz-0002NK-Ai; Wed, 16 Oct 2024 11:40:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t10Vy-002Eoy-UV; Wed, 16 Oct 2024 11:40:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t10Vy-003x3s-2i;
	Wed, 16 Oct 2024 11:40:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:40:16 +0200
Message-Id: <20241016094016.898909-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-12-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_024025_440493_93C2C490 
X-CRM114-Status: GOOD (  10.36  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! errno: stub out perror/strerror API when built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise some compilers may complain that the result is passed directly
to printf("%s").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/errno.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/errno.h b/include/errno.h
index 9a008e375221..ea6a76a354ac 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -16,7 +16,7 @@ static inline void perror(const char *s)
 }
 static inline const char *strerror(int errnum)
 {
-	return NULL;
+	return "unknown error";
 }
 #endif
 
-- 
2.39.5



