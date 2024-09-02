Delivery-date: Mon, 02 Sep 2024 11:38:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl3WE-000Tfy-0x
	for lore@lore.pengutronix.de;
	Mon, 02 Sep 2024 11:38:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl3WD-0004Gd-8C
	for lore@pengutronix.de; Mon, 02 Sep 2024 11:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Message-ID:Subject:Date:MIME-Version:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Iz6KD8EoIddynycNV6k0cCCT8VKFTlYhIFRIG/Bfvs=; b=AvktIZcxCde9iZNly41wTsSNUF
	gpMj5texcNXcazXY2tJY5F1kGUs4fHGJa3+dcXGRcsriYNKapjJfDGnBuOAUgoMTOn2aQWeAEGyK1
	Gx/GkCysOE0kJUv0OH0jNYOc3VRIYfkaukPAQpOHgYb5A2mQMzcazPaEDz7BCSuoKRtQFqp8oYZPV
	L7GVymMRwKv370Ghxv1h3WlrgjNTXwgBanqJ4DuvpWdYbgXgIbB3a3Jw/gRZKHOU5NE70l/hs7YMY
	cy98FQKH/WtXiomwZcnfkWgbBmGvOz0DCSLLsOgLA9mRXIYqUJUiCcdQv4J3hRWTeTs31YhIx9BPG
	f788WD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3Ve-0000000DjbV-0ANY;
	Mon, 02 Sep 2024 09:38:06 +0000
Received: from vm594.rz.uni-osnabrueck.de ([2001:638:508:100::83ad:1234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3U3-0000000DjI6-1KDg
	for barebox@lists.infradead.org;
	Mon, 02 Sep 2024 09:36:29 +0000
Received: from vm079.rz.uni-osnabrueck.de (vm079.rz.uni-osnabrueck.de [IPv6:2001:638:508:100::83ad:1027])
	by vm594.rz.uni-osnabrueck.de (Postfix) with ESMTP id 69D0D200077
	for <barebox@lists.infradead.org>; Mon,  2 Sep 2024 11:36:11 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by vm079.rz.uni-osnabrueck.de (Postfix) with ESMTP id 8A70B20F45D
	for <barebox@lists.infradead.org>; Mon,  2 Sep 2024 11:36:11 +0200 (CEST)
From: "Florian Otte" <fotte@uni-osnabrueck.de>
To: barebox@lists.infradead.org
User-Agent: SOGoMail 5.10.0
MIME-Version: 1.0
Date: Mon, 02 Sep 2024 11:36:11 +0200
Message-ID: <a0f3-66d58700-13-45dc9e00@205549251>
X-Forward: 217.243.193.146
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_023627_535831_64775187 
X-CRM114-Status: UNSURE (   4.51  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Bufferoverflow on eMMC partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Everyone.

I tried to use all general purpose partitions on an eMMC storage device=
 and ran into some trouble. In ./include/mci.h the number of partitions=
 is limited to 6, but there might be 7 partitions. This results in a bu=
ffer overflow or access out of bound and causes a nasty bootloop when a=
ll general purpose-partitions are used. I created a simple patch and ap=
pended it to this mail.

Kind regards
fotte



