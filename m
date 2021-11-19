Delivery-date: Fri, 19 Nov 2021 14:08:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo3co-0007iV-3n
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 14:08:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo3cj-0001xM-LG
	for lore@pengutronix.de; Fri, 19 Nov 2021 14:08:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTxocfrTn3i9Hr1Zlh1+BoaXrw6d/Q9cl046rzhvl4o=; b=J+X4snBnFyoexQ
	0n7XD3cDHyCuEEPA2NaG2BGMWxoEo/TqP84L9dvsMv4pH/9Xbkyqd1bw1VIvJTVLDQ4MwE8g7yu+X
	kXFQ40SlPlnw5RCuBttDdj1aAHyBHeP/Mvoe5rwN3UdDFDtRRhvdPK6FHAmQaI1hzNXCNnARtiyCo
	AfEsDlr2+GH0jzYfkozcyPSUfTtvM5uajBHL3tFr54RazM0HIUXidPC0ZKE3vcD8FXz6ZIm92CQ/J
	SPr8TkH7bJBqHD6pYvpbZTnUPPHom0zF5dKBHtjgOC0gl179niURdYhtH8WdMir1wwYSuVGqmOFL4
	KazJPsfAD1GUIodrt1PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo3bA-00ARIX-1l; Fri, 19 Nov 2021 13:06:36 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo3b4-00ARH3-B7
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 13:06:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q11Gp+jfs9ae962QfC07CpGthxcEuE6pRL2dtow+y1s=; b=IPGNhuS6gOwumsCfV+LO6DkDwk
 gnT148gxtoED9+HpzPcVlt1bzmyXZeKa5RNHbJecuERCKNxjq6da7INKq1NeOfHgRqrk3LIVQvErC
 PU2B2T1Yhy7IHW1foHDh4Jy3he264jmFbY/KmnZ2fOa9/+WYtAXZev0Qvjnz1OTlBSlmhRt7LbFDX
 /H0o/Ow1pIPTklGgDpqi+x/T7ns50yDroc9JJ3VfQrQnC8iIFUbTuYNINQbKntZkAMxKHhxjCDHgj
 ixqGCGHlJqCNcCiQ8Xx7gP1q1tzs7ElrfRSlSDZniVb1jlrFAH6fxzmWsh2ktebjrilcQ0cmwlR6n
 FoIMhggA==;
Received: from [89.212.21.243] (port=56938 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo3ax-00EYaJ-EI
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 14:06:23 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 14:06:23 +0100
Message-Id: <20211119130623.1948659-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
References: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_050630_728445_4A2F396F 
X-CRM114-Status: UNSURE (   5.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix memory leak of propname.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 drivers/regulator/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 097f7d779..c5cb9ee34 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -231,8 +231,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	}
 
 	ret = of_device_ensure_probed(node);
-	if (ret)
-		return ERR_PTR(ret);
+	if (ret) {
+		ri = ERR_PTR(ret);
+		goto out;
+	}
 
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

