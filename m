Delivery-date: Fri, 03 May 2024 12:09:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2prP-00H5Lb-0d
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:09:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2prO-0005UC-Jx
	for lore@pengutronix.de; Fri, 03 May 2024 12:09:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rPZY/DhRbD28tS2+o07nsczs9mA2FWx/R53vSWTYnmo=; b=lm7h5wroAnhRvyVe6EBIN1IZAr
	MaJLUjxoidYKVzCZhSTFTk88S5jpFAky1kOe0EUupv/MU8MJouEylGXsEzQ/3E5N5a3NJR/Ri85LL
	6IbykGvxjwlLb9z2v4Y1KozDgEUixKEC0n9FthEV9oCKxti8K/RXsP16rDUJJfyiJSAKysc/tg+MN
	xKmiaeRWlqhzeJkxEsX70Gv+qQ2ILEJemuxClZYFOxB+fnLKH/PpCdE3MCg2SwXpvaF62Ekw09ymv
	0DKZDH196tgfVISx37PnPXDfqoRhKiwwqTdgdXgJ7bAZtvKlLBprAU0P4QVDtLZc0YjWQ1qNfG8GP
	g0UaNFLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pqj-0000000FzP8-0Cxk;
	Fri, 03 May 2024 10:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pqf-0000000FzNS-2Ae8
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:09:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pqb-0005II-Tc; Fri, 03 May 2024 12:08:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pqb-00FgR5-H8; Fri, 03 May 2024 12:08:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pqb-00582B-1Q;
	Fri, 03 May 2024 12:08:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:08:56 +0200
Message-Id: <20240503100856.1222507-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_030901_572883_008C6026 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] pblimage: suppress stdout output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Any output, stdout or stderr, during normal operation looks jarring when
interleaved with Kbuild, so utilities should just be always silent on
stdout and print errors to stderr if they occur.

The pblimage tool violated this and had a stdout debug print left-over and
printed part of an error message to stdout instead of stderr. Fix both
instances.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/pblimage.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index ef09b0f96084..610d93b36800 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -258,7 +258,6 @@ static void pbl_load_image(void)
 
 		read(in_fd, mem_buf + 0x1000, image_size);
 		pbl_size = 0x1000 + image_size;
-		printf("%s imagesize: %d\n", rcwfile, image_size);
 	} else {
 		exit(EXIT_FAILURE);
 	}
@@ -419,7 +418,7 @@ int main(int argc, char *argv[])
 	if (soc_type == SOC_TYPE_INVALID) {
 		fprintf(stderr, "Invalid CPU type %s. Valid types are:\n", cputypestr);
 		for (i = 0; i < ARRAY_SIZE(socs); i++)
-			printf("  %s\n", socs[i].name);
+			fprintf(stderr, "  %s\n", socs[i].name);
 
 		exit(EXIT_FAILURE);
 	}
-- 
2.39.2



