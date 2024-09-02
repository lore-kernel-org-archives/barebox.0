Delivery-date: Mon, 02 Sep 2024 11:38:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl3WG-000TgJ-1w
	for lore@lore.pengutronix.de;
	Mon, 02 Sep 2024 11:38:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl3WF-0004JX-Gd
	for lore@pengutronix.de; Mon, 02 Sep 2024 11:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:
	MIME-Version:To:Date:Content-Type:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FRz6GcPyJfhc2Hf3zCZzjsT3bvZABj5VD/44fJeHb5w=; b=WYNfMejz4AMnv6yLpCkDN0IktC
	OCC+pw6LedgKNPM9tkbtmS0sTrxvVd9xUd6/XBxG/cpILyDJg5BwC1MeWTPLo/w/ybC1ABcgMcCWE
	7HenUf1bZ5a1TNBAr7a+BHcBMfz+9HM/AW40Dgda4vSfQef+e9IXAh4Ilydw1nWjElmuy1k5ek9RW
	dmlqaL6Neo4Dotq1AXzuQpcwGlq+x07lBqxNAezlMXNIX0nSuGPuUK2wxlR9XprBxlUij35voNZR1
	0p8ksJimicW+S/F7nisFpeBiK1P8SjOE5aFIbaXUGozBObe7MhswDJSePIhEMSAOqZ50+X+ytTvJR
	aKAXS4aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3Ve-0000000Djc4-47IS;
	Mon, 02 Sep 2024 09:38:06 +0000
Received: from vm593.rz.uni-osnabrueck.de ([131.173.17.199])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3VX-0000000Djab-1Ffw
	for barebox@lists.infradead.org;
	Mon, 02 Sep 2024 09:38:00 +0000
Received: from vm079.rz.uni-osnabrueck.de (vm079.rz.uni-osnabrueck.de [131.173.16.39])
	by vm593.rz.uni-osnabrueck.de (Postfix) with ESMTP id AE13E202D67
	for <barebox@lists.infradead.org>; Mon,  2 Sep 2024 11:37:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by vm079.rz.uni-osnabrueck.de (Postfix) with ESMTP id 9122B20F45D
	for <barebox@lists.infradead.org>; Mon,  2 Sep 2024 11:37:56 +0200 (CEST)
From: "Florian Otte" <fotte@uni-osnabrueck.de>
Content-Type: multipart/mixed; boundary="----=_=-_OpenGroupware_org_NGMime-40855-1725269876.463860-4------"
X-Forward: 217.243.193.146
Date: Mon, 02 Sep 2024 11:37:56 +0200
To: barebox@lists.infradead.org
MIME-Version: 1.0
Message-ID: <9f97-66d58780-19-542e2c00@140924414>
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_023759_526424_2A506A7C 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Bufferoverflow on eMMC partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

------=_=-_OpenGroupware_org_NGMime-40855-1725269876.463860-4------
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Length: 498

Hi Everyone.

I tried to use all general purpose partitions on an eMMC storage device=
 and ran into some trouble. In ./include/mci.h the number of partitions=
 is limited to 6, but there might be 7 partitions. This results in a bu=
ffer overflow or access out of bound and causes a nasty bootloop when a=
ll general purpose-partitions are used. I created a simple patch and ap=
pended it to this mail.

Kind regards
fotte

[Edit]: Sorry. Clicked the wrong button to fast. Now with Attachment.

------=_=-_OpenGroupware_org_NGMime-40855-1725269876.463860-4------
Content-Type: text/plain
Content-Disposition: attachment; filename="0001-FIX-buffer-overflow-on-MCI-partition-enumeration.patch"
Content-Transfer-Encoding: quoted-printable
Content-Length: 1111

>From 0bae0df23bbc4a9e98f1bcac6c6fbe0c3b21bc78 Mon Sep 17 00:00:00 2001
From: Florian Otte <fotte@uos.de>
Date: Mon, 2 Sep 2024 11:27:47 +0200
Subject: [PATCH] FIX: buffer overflow on MCI-partition enumeration

Memory for up to 6 partitions is reserved, however there can be up to 7
partitions on an mci storage (e.g. emmc). A user partition two boot par=
titions
and up to four general pupose partitions.
---
 include/mci.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 3bf1455a40..cd01e2f992 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -600,7 +600,10 @@ struct mci=5Fhost {
=20
 #define MMC=5FNUM=5FBOOT=5FPARTITION	2
 #define MMC=5FNUM=5FGP=5FPARTITION	4
-#define MMC=5FNUM=5FPHY=5FPARTITION	6
+#define MMC=5FNUM=5FUSER=5FPARTITION	1
+#define MMC=5FNUM=5FPHY=5FPARTITION	(MMC=5FNUM=5FBOOT=5FPARTITION + \
+                                 MMC=5FNUM=5FGP=5FPARTITION + \
+                                 MMC=5FNUM=5FUSER=5FPARTITION)
=20
 struct mci=5Fpart {
 	struct block=5Fdevice	blk;		/**< the blockdevice for the card */
--=20
2.39.2



------=_=-_OpenGroupware_org_NGMime-40855-1725269876.463860-4--------



