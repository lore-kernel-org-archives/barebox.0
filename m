Delivery-date: Wed, 03 Jan 2024 20:46:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ce-002V33-0v
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cd-00047b-86
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kml82ynhCSSGQAmEczHuL1mNBuuzt9XEI+Pj0uDLs68=; b=Pw4/UDq9uovROFu3lTPO2h6u7A
	lvL34XOONjeiC2T2JfdmCtTGmG3vhNrn4zT27TUNDni/a+bTPCXjyPgCAB6I57eO6SGUzGG4LuVlr
	3S53dpQdTCKwL8sjn9N8BpU8uhKp3Hlk4J18wt3QqrSWp6j3vV/GT3+cpqAOTdKHNBxxe4E9BRXD9
	w48fW483sH9RE2//CpgyWMWX+UWT3wxwRK4XA+iDigN1y8IqfO2swLtyxy2b6bKs+XR4v1ubG2tA8
	Oj5EiV53FtwuWVhffjM1ZJ2MCYiqWiVRkdsRFYZbo4pd5KmOuk6X+NjX3YaOJis8Wpz+VGsBXhs2n
	VPhzDiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BU-00Bw6S-2k;
	Wed, 03 Jan 2024 19:45:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1F-2G
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001OG-IN; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000AsI-5f; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-2g;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:24 +0100
Message-Id: <20240103181312.409668-65-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_745539_D4822192 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 064/112] boarddata: add barebox_boarddata_is_machine helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In a later commit, the same barebox binary may be used either as EFI payload
or as EFI loader being initialized from the device tree. The
difference will be the barebox_boarddata, so add a helper for checking
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/boarddata.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/boarddata.h b/include/boarddata.h
index 68ad0d146495..8c048fd957b4 100644
--- a/include/boarddata.h
+++ b/include/boarddata.h
@@ -38,4 +38,12 @@ static inline struct barebox_boarddata *boarddata_create(void *adr, u32 machine)
 
 const struct barebox_boarddata *barebox_get_boarddata(void);
 
+static inline bool barebox_boarddata_is_machine(const struct barebox_boarddata *bd,
+						u32 machine)
+{
+	if (!bd || bd->magic != BAREBOX_BOARDDATA_MAGIC)
+		return false;
+	return bd->machine == machine;
+}
+
 #endif	/* _BAREBOX_BOARDDATA_H_ */
-- 
2.39.2



