Delivery-date: Mon, 05 Jan 2026 16:14:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmHd-001Yw9-0q
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 16:14:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmHc-0002ID-Nb
	for lore@pengutronix.de; Mon, 05 Jan 2026 16:14:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CdVZhYqESjBUcDO0uVV9Elj5QupRtp1iL/NhWZ0hgK0=; b=r1T4B9UrjZ3ChIKwMZcsVFpW62
	ArjAvA3NTVKgzKG0BWWi+ezL8go+bg/Y/1o7/E+7plmfAggnXBn6FpnF1nHIX9EGRj2CbWL3TFzeF
	k72ORqKdNl1gjAZdZd9B8CGQ/zoQmCy5E/8alTFiw2oEJgYNbzI/UVJnaAtKxni9tdHaTcYpoARlC
	AWCsfijDUS/aakj6G6VbGhhC1oVmctwmllCAQJfIyCe1EMIsfICAFkb+SvGy+D0SDhNr5Ib/SFkZI
	og2auaGfwBVT0Q3lU3EGSxTiH9nO8SgKhoLlx/21RTW758rb60Vp+qTGEf1pqNG1i9zyfKbH5ltkL
	z7EWu6yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmH6-0000000Bb24-3YYf;
	Mon, 05 Jan 2026 15:13:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmH4-0000000Bb1j-04l2
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 15:13:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmGv-0002C8-PD; Mon, 05 Jan 2026 16:13:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmGv-009C8e-1v;
	Mon, 05 Jan 2026 16:13:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmGw-00000000MrG-0lLL;
	Mon, 05 Jan 2026 16:13:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 16:13:14 +0100
Message-ID: <20260105151328.87837-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_071338_054131_A7DD5E5A 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: container.sh: explicitly pass build dir as volume
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For cases, where KBUILD_OUTPUT/LG_BUILDDIR may be a symlink, processes
running inside the container may not have the necessary permissions to
follow it.

Fix this by calling realpath on it and explicitly registering it as
volume.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/container.sh | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/scripts/container.sh b/scripts/container.sh
index 90c3a1d0accd..5375fdd91d39 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -41,6 +41,15 @@ if [ "$(realpath --no-symlinks $PWD)" != "$pwd_real" ]; then
 	volumes="$volumes -v $pwd_real:$pwd_real:z"
 fi
 
+if [ -n "$KBUILD_OUTPUT" ]; then
+	KBUILD_OUTPUT=$(realpath $KBUILD_OUTPUT)
+	volumes="$volumes -v $KBUILD_OUTPUT:$KBUILD_OUTPUT:z"
+fi
+if [ -n "$LG_BUILDDIR" ] && [ "$KBUILD_OUTPUT" != "$LG_BUILDDIR" ]; then
+	LG_BUILDDIR=$(realpath $LG_BUILDDIR)
+	volumes="$volumes -v $LG_BUILDDIR:$LG_BUILDDIR:z"
+fi
+
 exec podman run -it $volumes --rm \
 	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
 	-e KBUILD_OUTPUT -e LG_BUILDDIR $env \
-- 
2.47.3



