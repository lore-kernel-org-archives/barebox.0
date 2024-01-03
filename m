Delivery-date: Wed, 03 Jan 2024 20:17:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL6jk-002SiF-2a
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL6jj-0003el-MV
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:17:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YscId6TVIV2hKwjM+QdP/4DPQKIr6CIKJicRA3u0SUs=; b=hJEe2PgXvynJmk57AZ9H4dgGEd
	HUaLl+RGrAfjlkJ9yv5pP8Lg8vTJwhYXDzY5CE1d0lcJPZTeGYv5i7tModEMrKk32fRT4Lf0IaeLq
	bMjqL94qElImlwZz09aph9os3AloLxzJ7QXlK7VpdU68AeBaILZnmvNxRh+V9AtlLjLr0hHVn04V2
	HQUjbakX0SAUUULUsDMJTEnKP9yUvyMJBI78heAPH/tSsHxjIXX3c5NOtg3/FqZ6MNe0d8kQHfq9e
	GjuxA1T4azDH5zSdzDGH0oVm7590o1dPsWmzybbfp2sN6/boilJ8Wbidw1fmwJb90k+qdgxnwzHQj
	8Oxtd+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL6iR-00BsfR-0K;
	Wed, 03 Jan 2024 19:15:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kU-00Be9v-0S
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YscId6TVIV2hKwjM+QdP/4DPQKIr6CIKJicRA3u0SUs=; b=Tw/jyw+2xoBRVxgd4FG9UgfyNc
	btpXneV7lb/R88BneLUtFKtoLpbmloHw4FJR/yGQB2DbJjjiU5wXnNcy9JiNx3lluv5wtbG1ilkgb
	ldj3Ag1mSrckpmO2a5hDp0TdolRhc2R+wqwgCxzh1eLRPR8aS8WfIyaRFezwNoMtp1f/eGr8lxtpe
	xyNPvjlHnvGog2RkOvNJkChxTFjUDMLpYP7EiKJr9+SoHE3IRoox/QsmRr1jWyr5MIbS9lekwIx4J
	XSHCVjNyBMaoWs9zd854erWjUAl+cX1RugUcK1UPIWcFYx4s3kxpdYbqKS5aRvj1JJBSjtS3Mads0
	GTClNywg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k3-005dTB-1q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-0004fI-L8; Wed, 03 Jan 2024 19:13:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-000App-7O; Wed, 03 Jan 2024 19:13:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-0T;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:24 +0100
Message-Id: <20240103181312.409668-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_181343_814815_011B2D3E 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 004/112] vsprintf: guard against NULL in UUID %pU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make %pU more useful for debugging, have it handle NULL gracefully.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 7d943706ddea..ea092c06d3d6 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -309,6 +309,10 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 	const u8 *index = be;
 	bool uc = false;
 
+	/* If addr == NULL output the string '<NULL>' */
+	if (!addr)
+		return string(buf, end, NULL, field_width, precision, flags);
+
 	switch (*(++fmt)) {
 	case 'L':
 		uc = true;		/* fall-through */
-- 
2.39.2



