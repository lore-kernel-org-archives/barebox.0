Delivery-date: Mon, 04 Mar 2024 20:05:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcm-008dBr-1B
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcl-0000Tv-5x
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4oAZh53tcsrSoOggxpuQjZU0mrvZLww67glbpgWA4Ow=; b=VX4ErtqtcMT5RanE5+nCKu2/pO
	d4sIC+qjdcGHI1O8tN0y2oMl7JoqKn/PK/8Pakm7BB+7v8tCXUvmBklQ3JopJpfToL+TeHAzHJZdg
	3Hqa1UM0gUTpEeSqL+iQCe9lenI3iX4FSFCuG3RrIR3Z/MZlB8PIluA/ng1X6QMoGFsCT5QUJvrTB
	TkoneHKsW2At5hL7ZB5o4RyeAtuI6O41eqTk/m52k8N9/B7/ahR9c9j5dfpJUSmVckV2kF/4mnNbs
	gwgehZWeoCgxsYWZmIVNWjDRSq9BKjlFcOdpCT4I/ZnJ1u9Nc1zC14kI3YDdcDTIEdDRNuvSvlhUQ
	ggDHE+nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcA-0000000AJi6-2bbj;
	Mon, 04 Mar 2024 19:04:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-0000000AIRd-3ZyB
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4oAZh53tcsrSoOggxpuQjZU0mrvZLww67glbpgWA4Ow=; b=PiCTpu/usFchivZeUIIBu4VgY7
	1c/bKevh3AbefSoMm3K9BDpklu3MgF8rxJy3hNNMLVxI2wkTxTKoZsisx79YWwty9gRUtMNcP+CLb
	7djj6elgn5kvbb9exZ7jeZKAzwuT8oy9y0e64DHQwIXF+aTdhhLiFGRhFPNxEPBPW0HcTBuUghVj6
	tw2Hg5TXmjv9ipfZe2uiKwmqDwMHKk6oOMz75Q1KJBsmZ5rsuBDVr9MlyLMUvTgCijeDTKLZ2fbvf
	tHVQb2+FhHXSLQY6QrO3dIeKv70nq8lqrz7lFB2FiBWVDnZqPjSjorw8X34cz3vXPthiFxrrE/uc/
	1znIEZEg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaI-000000051vc-3qCg
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006F7-CG; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLd-Rb; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-1l;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:18 +0100
Message-Id: <20240304190038.3486881-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190247_093660_68C4E4DE 
X-CRM114-Status: UNSURE (   9.86  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 033/113] fs: always check path_init for errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have three calls to path_init, but Only one of them checks the returned
pointer value for errors. This didn't hurt so far, because the function
always succeeded, but a follow-up commit will cause it to fail in some
circumstances, so prepare for that by duly checking the return value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index be0b38d8bc30..c034f2cb9a0d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2324,6 +2324,8 @@ static int filename_lookup(struct filename *name, unsigned flags,
 	set_nameidata(&nd, name);
 
 	s = path_init(&nd, flags);
+	if (IS_ERR(s))
+		return PTR_ERR(s);
 
 	while (!(err = link_path_walk(s, &nd)) && ((err = lookup_last(&nd)) > 0)) {
 		s = trailing_symlink(&nd);
@@ -2529,6 +2531,8 @@ int open(const char *pathname, int flags, ...)
 	set_nameidata(&nd, filename);
 
 	s = path_init(&nd, LOOKUP_FOLLOW);
+	if (IS_ERR(s))
+		return PTR_ERR(s);
 
 	while (1) {
 		error = link_path_walk(s, &nd);
-- 
2.39.2



