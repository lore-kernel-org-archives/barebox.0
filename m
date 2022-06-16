Delivery-date: Thu, 16 Jun 2022 14:52:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1ozG-003tMb-0u
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 14:52:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1ozF-000718-RV
	for lore@pengutronix.de; Thu, 16 Jun 2022 14:52:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tc8AoM1/KoxtWGYel06WuJBLP5toRNfZ5pzj1HvwNFY=; b=vxRmjL4MzE+2E/lFB2/AsJWN3D
	bI7hse5LE86u779StYeBuj3bMvQKm++hnVnfrxbUBjf8u6anZ3Kd9PkaGGhvydY2o7FHMWP5uwriC
	UbXx0NwiB4iQFvzYb6jqghAWjVsqyUtDHUti69oQUgTrm8KKJYuOag8EI/PRU774Sn7dlQypaGHVe
	q6wjQBs+PxjvwHmIxJ5O+K4RHx41VnrYr/QlTgjTNDKMTln4o9/DLfC75pahQgtNVDUyoOLS9jw8P
	ksCl1j0SUiHISjeGtjamcra9zQBnPhmDMQVrIeNWB/Mt9kuQtxFco+hhZte6Fz14UYFnrGlpGQFJj
	84J3Fnfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1oxZ-002LVf-M5; Thu, 16 Jun 2022 12:50:53 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1oxU-002LU1-DR
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 12:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=Tc8AoM1/KoxtWGYel06WuJBLP5toRNfZ5pzj1HvwNFY=;
	b=kmo+z/lMCAe4yYW9ijDzCygkcyl5NTzM8ejXgeZ7zGl3rYgXRhxpWPGrIGMqfAhnRSfELNodtYVJv
	 zuWQ26iO3nbJmnFxcqUV0HoAbHv8QTsVAODE35GnSa+5HrrbvVVdzvJ3i4O735rz0KU3DjRpdCFeEB
	 +6QEqfxl99457yp25rPB89UaBK27LQYlRMDkn1yB4g9jdLs+y5BetVTv1Qhy+cWUywXYKYn30RqvdW
	 v/VkM7qQZVLT2d3nx1yWvzJRwck/ASX/S9Biho0S3V0ot+gI64Qvjb3KnovDF7FqCoWnu3c9ih/pgO
	 MoIDYCiNUANkl4OoMTnWwS2niTzOvaQ==
X-MSG-ID: ebcfb807-ed72-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Thu, 16 Jun 2022 14:50:40 +0200
Message-Id: <20220616125040.212193-1-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_055048_921140_DE40DC94 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] lib: parameter: Free previous string value in param_string_set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When the parameter has no set function the previous (saved_value) is not
freed up on completion.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 lib/parameter.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index adc3c7cdea..fe7e7b1ba4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -262,8 +262,10 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	value_new = strim(value_new);
 	*ps->value = value_new;
 
-	if (!ps->set)
+	if (!ps->set) {
+		free(value_save);
 		return 0;
+	}
 
 	ret = ps->set(p, p->driver_priv);
 	if (ret) {
-- 
2.34.1



