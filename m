Delivery-date: Mon, 27 Mar 2023 10:50:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgiYB-00GJXB-1G
	for lore@lore.pengutronix.de; Mon, 27 Mar 2023 10:50:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgiYA-00074Q-W1
	for lore@pengutronix.de; Mon, 27 Mar 2023 10:49:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=owAG3ua2b4ZSRu6sbT0bPd1fZedhqBmDWfw6a1MV9Po=; b=dr9yaK/mbP6ch/rq6dPQZbUI7A
	wcU8mdKjBC98JW12gQ0A/X9gPQSGsZB2Ym26PG/tEs65uwcU9FZEn0sDmvbkJPNFM6CkXyzn11lwE
	6McmkHzWPUXN3YGL5p56CgABsmj9nwNiS80icVveAFmS+5K+lWAKfk8CzTuAkKA8XsgjYc6TzxAGi
	1TSvK7HA84JzGlyk1mn3QbpiELGl3/YAZwM0XcNRM17P6LWGdUDCpMzwufZzBGpB8wmHXUHwZs9t1
	jfYr0Bs3iUls9SijTOvx/siVV2zFpKhvQR5GRFcDQaLkLfNNubfy9yicuzHQXRatROjlZef8oHfCG
	C8cuSIwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiWr-00ALdq-0Z;
	Mon, 27 Mar 2023 08:48:37 +0000
Received: from mickerik.phytec.de ([91.26.50.163])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiWn-00ALcF-3A
	for barebox@lists.infradead.org;
	Mon, 27 Mar 2023 08:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1679906907; x=1682498907;
	h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=69cez9wpkJfAYMERJ1Fm6pucahRV0ZQb+rCxhfx5OmU=;
	b=qZKpI9QUubWD3ikmarWDlA/RZgXDCN5PHmJc3yFVmWA2+Bake3GtchNF8/zBGCQx
	CJMDk4XShotYyd1LV3o5XRYv42RZMz1KrV1MRZRNYsaN6A7tKH7cX65ywmfEVfvz
	Q4b9H/IdURGn/VMg8c7TL/qBCTcU2WYWmen0brS96vw=;
X-AuditID: ac14000a-923ff70000007ecb-1f-6421585b9178
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 6F.3C.32459.B5851246; Mon, 27 Mar 2023 10:48:27 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2023032710482723-456114 ;
          Mon, 27 Mar 2023 10:48:27 +0200 
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Mar 2023 10:48:27 +0200
Message-Id: <20230327084827.1854478-1-a.schwarzkopf@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2023 10:48:27,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2023 10:48:27
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrFJMWRmVeSWpSXmKPExsWyRpJBRDc6QjHF4NkiJYsTi/uZHRg9Ni+p
	D2CM4rJJSc3JLEst0rdL4Mr4cL2DqeAFR8XHq6fZGxg/sHUxcnJICJhI/O1ZwtLFyMUhJLCN
	UWLznLtQznlGif6VM5hAqtgEjCRub10MZosIyEvM3d/GCmILC9hIbJ3dxg5iswioShx4uBIs
	zitgJ/H1yydWiA3yEjMvfWeHiAtKnJz5BGyBhMAVRokFfZehzhCSOL34LDOIzSygLbFs4Wvm
	CYy8s5D0zEKSWsDItIpRKDczOTu1KDNbryCjsiQ1WS8ldRMjKDxEGLh2MPbN8TjEyMTBeIhR
	goNZSYR3s7diihBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHe+z1MiUIC6YklqdmpqQWpRTBZJg5O
	qQbG7g7N7tLZ57R0C7P1tSzyvGrcTC98Pdubv4LdYF/ppaVVJwVe7819uH9ysexuqV/VURsP
	+/1zLvnyYVP9Z/5d+q+dO761/j7tsuJVjsi2Q3NKbKRa23n8rPM3LBCuKluxkK+u8n/q3OeX
	2Lh8E6u6rj719g85Uynq/uj35FvbLix6W3q1KjVZiaU4I9FQi7moOBEA6ur2lf0BAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_014834_481905_01834E26 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: imx: Ignore ';' and '\n' in quotes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current behaviour treats semicolons the same as end of line.
This breaks when they are found inside quoted strings, as is the
case for PKCS#11 URIs for example.

Ignore newlines and semicolons in quotes when parsing commands.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 scripts/imx/imx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 87560ad27d..fac0556308 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -675,6 +675,7 @@ static char *readcmd(struct config=5Fdata *data, FILE *=
f)
 	static char *buf;
 	char *str;
 	ssize=5Ft ret;
+	int inquotes =3D 0;
=20
 	if (!buf) {
 		buf =3D malloc(4096);
@@ -689,8 +690,9 @@ static char *readcmd(struct config=5Fdata *data, FILE *=
f)
 		ret =3D fread(str, 1, 1, f);
 		if (!ret)
 			return strlen(buf) ? buf : NULL;
-
-		if (*str =3D=3D '\n' || *str =3D=3D ';') {
+		if (*str =3D=3D '"') {
+			inquotes =3D !inquotes;
+		} else if ((*str =3D=3D '\n' || *str =3D=3D ';') && !inquotes) {
 			*str =3D 0;
 			return buf;
 		}
--=20
2.40.0



