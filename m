Delivery-date: Tue, 30 Aug 2022 09:49:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSw0A-001UfE-1b
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:49:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSw06-0005wg-W8
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:49:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bTNLKCk50rzHI3xxHk72lTqp7ooMY7y4cumV2oc2svU=; b=0k87uSUBQU7d7WpctV2uyLX7ku
	WKJRfS3+H6cyxdeur9H582AtE8zhRBbWcLw0lqRsOUH3ToUhTJ5pafToxCBEicWlJCpc62LDmGwhO
	0IG4wG8skfO/Axrg1HEx4poWVxa/iLFbnvacGu9lgHGQ+IS/BXW45SNxQX34Uo8b9sb5XbIXx457g
	cckiPilQr+4Krovq1TqDs6AURpLvdbwCFZSiDLsIBlJgpCQbg4+GqhEgdMC7x710NWsfaP5F/rNoC
	gA022q/RULn9o+DQVNya4e87nBEvkIekPwALQAVqK5EsKWIOvnjh+o5CUQMp7hwFXpLO+Xl5sw/BL
	YEvlxyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvyC-00EtOD-CG; Tue, 30 Aug 2022 07:47:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqV-00Epce-16
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=bTNLKCk50rzHI3xxHk72lTqp7ooMY7y4cumV2oc2svU=; b=Z8m7ivorPZtwxYcZj02l6zIh36
	gxKfoR7zzK8OIlXKNu/5qlfOLhiahPrBd++HJ9vjFCkTodt82nfn5KG1io6AV+5KJu4rykeHCH1Gt
	LeIbl5T4h6AjhuYYgPNHESRNLgntfMgiNZpjSRROdeVY29dhWvyf5txJn5PEbx2AxuF7VEz8YfmLe
	VEwAC+kuRcw8/CPXIN46vHL4wQZid/QTUWkCQ1weJeMwNrCrDA/ogHf5p6OpmRejQ4BjoRgEO3nM9
	kJeWvABLQE4GJeZrUF2hEKnqvZil0rO7kn3IAOTLSxL6EsEbBBWYgF62SDWYiggl7HMvX/ZQA5VLk
	fpl/Bejw==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqR-007m6H-5D
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:36 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cZTD806688
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845115;
	bh=bTNLKCk50rzHI3xxHk72lTqp7ooMY7y4cumV2oc2svU=; l=655;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mMuIadf4PrlCnkd/lKYmLB7C0b84DCh4NnVa7WZRWRem6LQJIp9L/ziCFENUDJjzM
	 L16qJvAb2u3RhXO5YwRyRmD/eD8D/Pl32GsjbMrY74V/lnIDyOu3QljoY2Kdk8BdLC
	 ZQsWdSgdaaG5WlihDICGIV8Udm2zVw8qfo8YttJVm3cDyYrvPbzMpxxv0DNhVyiwZG
	 nc9krHfCZLgQAIG5UTuK3UsThvxGcaIHsDUcuNmAWPDuTppVoDytbJbg8P8oixRh4g
	 I4FHW4WkEQk4pGBMzjy9WsnjsU2E/RRdQfOBmusvx/c5oOrZHxp6vje576pgHIa/Hx
	 rIYPo3T9QYOMA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQWM1001088
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 8589A26303A; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKvA772617
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3L-7u;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:08 +0200
Message-Id: <20220830073816.2694734-14-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083935_393901_21620C02 
X-CRM114-Status: UNSURE (   9.48  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 13/21] tftp: reduce block size on lookup requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save some bytes on network traffic by reducing the server response for
lookup requests.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 7181c58d1083..16e57daaef37 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -151,7 +151,9 @@ static int tftp_send(struct file_priv *priv)
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
 				'\0',	/* "blksize" */
-				TFTP_MTU_SIZE);
+				/* use only a minimal blksize for getattr
+				   operations, */
+				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
 		pkt++;
 
 		if (!priv->push)
-- 
2.37.2



