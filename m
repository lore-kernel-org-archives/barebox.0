Delivery-date: Wed, 04 May 2022 15:16:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEry-001g4Y-Aw
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:16:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErw-0001Z0-9c
	for lore@pengutronix.de; Wed, 04 May 2022 15:16:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lcb/IjW71ZkSvi2cC32wCALTtDFC691g7k0aifj6Ct4=; b=lLACy64gGf8Cou
	UekCNdOQJ5RHm/QQsBVTKZ/1jHvjo3FSQuv2A7y6MDzSAAswWhps7gwUiOPJeOl6xyeUpS6/eErum
	jLUupsCJxjSGFzKgSZze/A61d5RU2F31MW04unXZn6SyC6wRnuVgm1Zi5OjBPL72OgP4p9CoR80ID
	JIlrTHKO7Q8sPsX0pO87XndaqpZJ3G2HL4wNJdB45n0OOE92h1bs+suYbp3OzYbwh866D97krWFVa
	SPW346yOIca0CDnt8HYDIFshJiBqxFv6p1mDNOV1hg2a/IMaUoMzc1up6wKm8kunXz+vAijWPd1fw
	w5oOIZSyBembh+YvJ1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEqU-00Ayvv-Ib; Wed, 04 May 2022 13:15:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00AybG-Ll
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-00010Z-4E; Wed, 04 May 2022 15:14:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000Jqc-PC; Wed, 04 May 2022 15:14:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEi8-MA; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:15 +0200
Message-Id: <20220504131416.3869736-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_815327_E05C5A4F 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/8] rsa: Turn error messages into debug messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 6d23ecb11c..e97e5192ab 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -342,27 +342,27 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 	PS_end = T_offset - 1;
 	if (buf[PS_end] != 0x00) {
-		pr_err(" = -EBADMSG [EM[T-1] == %02u]\n", buf[PS_end]);
+		pr_debug(" = -EBADMSG [EM[T-1] == %02u]\n", buf[PS_end]);
 		ret = -EBADMSG;
 		goto out_free_digest;
 	}
 
 	for (i = 2; i < PS_end; i++) {
 		if (buf[i] != 0xff) {
-			pr_err(" = -EBADMSG [EM[PS%x] == %02u]\n", i - 2, buf[i]);
+			pr_debug(" = -EBADMSG [EM[PS%x] == %02u]\n", i - 2, buf[i]);
 			ret = -EBADMSG;
 			goto out_free_digest;
 		}
 	}
 
 	if (memcmp(asn1_template, buf + T_offset, asn1_size) != 0) {
-		pr_err(" = -EBADMSG [EM[T] ASN.1 mismatch]\n");
+		pr_debug(" = -EBADMSG [EM[T] ASN.1 mismatch]\n");
 		ret = -EBADMSG;
 		goto out_free_digest;
 	}
 
 	if (memcmp(hash, buf + T_offset + asn1_size, digest_length(d)) != 0) {
-		pr_err(" = -EKEYREJECTED [EM[T] hash mismatch]\n");
+		pr_debug(" = -EKEYREJECTED [EM[T] hash mismatch]\n");
 		ret = -EKEYREJECTED;
 		goto out_free_digest;
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

