Delivery-date: Tue, 30 Aug 2022 09:42:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtV-001UMf-Sx
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:42:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtS-0003pf-2p
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JWrg8jxCFTNerkQDDkVJIcTuRWwBt/lE7puzRBFr+B8=; b=dBRQsed36moZLVwZebT97mjXb5
	MTjJU6fi7XaT5IIi7TSdpwjD977xQBlf7QRljsV1D+tRqmCeNW/hnHzb8bdpxZrbwAUOXb5Q/sw/x
	7+knuT70RIhOIDUXlqcdtASwqERinJxcYHh7MAFExn8TDAUn9VUzOQEYyBY0CPXWJgWXESlFmE2Rl
	9zbd+PG1YjaCj+gSISJvj2j503WBtJ+EOrhiFH1Rxt1aBUwP0pwap+SnbXNRWJl1qDi9licNscQC+
	Ina5PbGBU4NTeH7hCTlxePIXy3lq0zmCQqXr0OIzJkBXr3CcsLL+a7hm1jIwVNub3HlZ1tnalQQDH
	B7qCdYXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvrp-00EqFm-Vf; Tue, 30 Aug 2022 07:41:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqH-00EpRy-QJ
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=JWrg8jxCFTNerkQDDkVJIcTuRWwBt/lE7puzRBFr+B8=; b=DBPNs4I1lGaXjdkYBexpnUNnjq
	/tNwFMKHRea81/8rjf6K+lPMvNQF4yU6b1GyhQQrAXDqki68NGL8jjedmhQjknZn2llXUS+5NEpFk
	fRyzHEUvNjUStdtUZbAJtocBO9NsuWrdPSIY97gjQk9DEECmgpGfzRke00WkRk0s2DW9BcJd3c4/6
	Wq2JEdC7RVTKQuD02/PIFroO/1CGzsyhFL3BPwPR0RUp+KS7LHzUwkpCImTxxASYUckPOdr9okzYc
	ps98Tc9Iqy4ZWP9i9T1QNH41I2WMwN+6BhwLvEW2GNL32xCX+uvzJM9gQQTL+mwwGOrgctDZ5IYUg
	Ri3kuGag==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m61-6o
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:24 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cfqK806709
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845121;
	bh=JWrg8jxCFTNerkQDDkVJIcTuRWwBt/lE7puzRBFr+B8=; l=1224;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=tVccDgLZKjc0HZ0BcgPqH0XSHF/+AKs6yvJfmPzepEJy0wB2pjqnRzMBwGYbZPhMP
	 iFDXzSjhMn0DIvnZeA2iXhGmtTUamIkz3V5yh76vbRS2n3FUTwzb+tkJr0+/StKncf
	 uAdM/ZivoFVa3r4T7RepP9JRRdSpFXbUPxGEUYX0xHNXlEU/DStFaFGN/ZDioXub4B
	 lbBIn9Iz6Ic5wORznFpLj3fny7kD/can572WQ1lv9Ba5/M+TwP6cCQ2+93utaMaXWD
	 zapbVrw8rpGh8bQmXeMktpvu6BW6F8L8w5YAOIgaUf2+5V4lduhuwZcULRajKCuaah
	 ITiKon3TPSDfQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQwT2895745
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 50976E0DC8D; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cK4i772611
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ30-0j;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:03 +0200
Message-Id: <20220830073816.2694734-9-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_171379_300B51A9 
X-CRM114-Status: GOOD (  11.47  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 08/21] tftp: remove sanity check of first block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With tftp window size support in the next patches, the first received
block might be !=1 (e.g. when it was reordered or dropped).  There could
be checked whether it is in the first window, but the corresponding
sanity check can be dropped completely:

- OACK logic verifies that we speak with a tftp server (which always
  sends block #1 as the first one).  Diagnostic will help only with non
  rfc 2743 servers (which are probably very rare resp. non existing
  nowadays)

- the code some lines later handles this case already

Remove the check and simplify things.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 264841f24407..51cb1109d2ff 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -321,14 +321,6 @@ static void tftp_recv(struct file_priv *priv,
 			priv->state = STATE_RDATA;
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
-
-			if (priv->block != 1) {	/* Assertion */
-				pr_err("error: First block is not block 1 (%d)\n",
-					priv->block);
-				priv->err = -EINVAL;
-				priv->state = STATE_DONE;
-				break;
-			}
 		}
 
 		if (priv->block == priv->last_block)
-- 
2.37.2



