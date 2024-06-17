Delivery-date: Mon, 17 Jun 2024 16:09:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJD3L-007cPD-03
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 16:09:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJD3K-0006g3-EQ
	for lore@pengutronix.de; Mon, 17 Jun 2024 16:09:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u2TF+srHbKAYiekuGwx/64IPSK4eh/hBiVx3r6whs7g=; b=utevwZ5P3tW487Pr30lIjSFpUn
	KPBOG+CUqSxFee8PiX6+vTOJcxS6QubpChKKjgD6uvLFN8KRMleeP8srmNvyYXSZc/Jm1Wty1pGg2
	ky16iYAlrSnNQIMgjZ3cnvWZb50tLfxZcDOYQlTD3UjGL+n2LoqXcgbCPrteCj6jnUMWxmhYgPRFx
	S5Sg9tCoVeeEd/2Qvqyb/oBtkJ/unFWFuz7TFZK5d2JLdoseirvHZcqFb1Nnv72mEIQH2BF0fbszV
	5nTAlxSwoSawaGo5xZtC/3oYpqqdN/WmO3QkC5JGEIqneb+AobwZuvHBgzXDdfKliUx/9zTty4VaP
	9SfZa0Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJD2n-0000000B4sW-32cQ;
	Mon, 17 Jun 2024 14:09:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJD2j-0000000B4qU-1W0m
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 14:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJD2h-0006Zq-97; Mon, 17 Jun 2024 16:09:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJD2g-002zzS-Sj; Mon, 17 Jun 2024 16:09:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJD2g-008YDa-2Y;
	Mon, 17 Jun 2024 16:09:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de,
	str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2024 16:09:06 +0200
Message-Id: <20240617140906.2038133-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_070909_418204_8D10465B 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] scripts: container.sh: map to UID/GUID 1000 in container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The script was inadvertently assuming that the ID of the user executing
it is 1000. This is not necessarily the case for the host system, but we
know it's the case inside the container. Thus map the user account
outside the container to 1000/1000 within the container.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/container.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/container.sh b/scripts/container.sh
index 6bfb070692f5..1a68f0a5fe01 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -40,5 +40,5 @@ fi
 exec podman run -it $volumes --rm \
 	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
 	-e KBUILD_OUTPUT -e LG_BUILDDIR \
-	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
+	-e KCONFIG_ADD -w "$PWD" --userns=keep-id:uid=1000,gid=1000 \
 	-- "$CONTAINER" "${@:-/bin/bash}"
-- 
2.39.2



