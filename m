Delivery-date: Fri, 12 Apr 2024 18:30:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJmu-009DR3-24
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 18:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJmu-0008El-6w
	for lore@pengutronix.de; Fri, 12 Apr 2024 18:30:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5Wwfk1oJwtR3brIV41vGNC7m4OpuXJR335z6RuG5fPI=; b=bG4VFFYvoblP6w7uSwXewjkrR9
	h2AeOM6VxzhkkFVXgNIfIVwfgAZAXa2oCYm407Efz4JME8O6C9j0ihqKOaBKBcHTRnSSx4VFlNkgL
	P5RFHkiOVzKTrSsMmbJJX4ane7x326o+lAT/mD2R6sPr5AvWAEZGVWq5/Y51CkHPN5Z43ARqzhufZ
	AOLQ/J8Bl93Cvo0AjuSF1OWk8QkrkAWZJivnCGoOBQfqnwWPJ2h10yt5Od9OMu+qBeb6uCLRKiLr/
	ViEGh23Yy99SuiCdtC3SD7JULzw7viaxx8t0ztZFfOSc3p8xbgm33c1Y3c19xxRL9w/TcuRaXQIa4
	jLZcGe9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJmV-00000000VNg-0xLp;
	Fri, 12 Apr 2024 16:29:39 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJmR-00000000VLh-3GRh
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 16:29:37 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43CGTUJu479295
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Fri, 12 Apr 2024 18:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1712939370;
	bh=5Wwfk1oJwtR3brIV41vGNC7m4OpuXJR335z6RuG5fPI=; l=1033;
	h=From:To:Cc:Subject:Date;
	b=TzwHiJbNT9/0nEAZCu8a8b25xCAPuAidtCweQ58DjuxWfPdDoo3RL1oNQNdW57DeN
	 QuiPLWYDF+GQ3SCZra8sO7OWC1BRtATaZmVZgLOqaqw7T6QYhZXmm7m05cXC+r2tx0
	 4zKA9l6akO8ZjzUMPtAWu9qdkCQwSaK5JPzHNK5ZhkjyjoZFBNjfMA1I3bnpv7YJ/p
	 MnKRBFRK9fN+ZvJ/t/Iebhoi2qgrcKI9DlweMmF1tEeVM3u83O1XA1Y5Odoh4xMY2r
	 Ux6dJ1sgm2QTgMRkprxbg8dhg5pF6EKZspPNCyBghQ6lF9m6QcY2Phc202TNnwXdQm
	 Iiu8Nx0nrpssg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 43CGTSGU598843
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Fri, 12 Apr 2024 18:29:28 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id TB40X39VW5; Fri, 12 Apr 2024 18:29:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43CGTRNQ466537
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 12 Apr 2024 18:29:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1rvJmJ-00000001C4s-1pqC;
	Fri, 12 Apr 2024 18:29:27 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Fri, 12 Apr 2024 18:29:25 +0200
Message-ID: <20240412162925.284747-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 66196167b121c496daa9749b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_092936_026438_0488CF6C 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-105.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] of: do not acccess 'prop->value' directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Use of_property_get_value() accessor.  Else, wrong results are
returned when working with fit images.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/of/base.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b22959dabebf..9bd0cdaac2ad 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -853,7 +853,7 @@ int of_property_count_elems_of_size(const struct device_node *np,
 
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	if (!of_property_get_value(prop))
 		return -ENODATA;
 
 	if (prop->length % elem_size != 0) {
@@ -2009,9 +2009,9 @@ int of_property_read_string_helper(const struct device_node *np,
 
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	p = of_property_get_value(prop);
+	if (!p)
 		return -ENODATA;
-	p = prop->value;
 	end = p + prop->length;
 
 	for (i = 0; p < end && (!out_strs || i < skip + sz); i++, p += l) {
-- 
2.44.0



