Delivery-date: Mon, 19 Jun 2023 11:48:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBUZ-00D2ne-Ra
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:48:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBUX-0000mj-Gg
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:48:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TSVXOuhOOhGmpl6Gn3O175QZ/8U2As0IGLOFxqPaPbE=; b=3ojz6pF9zrmK2HMb8hKA8kIj/8
	VU6sREB02ZA4kIpaLJla0I23qymxpc56Jw4DyjT8duL84iciBHxsmCKoORBdW4hTvcQSJOv9g4H1T
	Rxd9ghtPeNWQ7g9AYAFhs8LDNhMDwTJ5d8sGRwAwfufoHcq493jJ5fqS9WziYyZ78bI1woojIcaXf
	UUbXVO50aU5Szx9AS7VmzhtxDR7GJLomCgFUQr5y1uvAFIwFsmj2FNq1cKwQn0D7FcyxdZFdA822z
	LnQTWUjzXx6cQD2rO0LCHjZGqb1Lg5o9BwlmMwg69wYIAtPfaxHFsS2EqtpD/PmnaAFXGRzQsTjaC
	OQB5fyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBTR-0084DJ-0j;
	Mon, 19 Jun 2023 09:47:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBTO-0084CR-2O
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:46:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTN-0000WU-HH; Mon, 19 Jun 2023 11:46:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTM-008Tae-Sm; Mon, 19 Jun 2023 11:46:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTM-00HSnU-27;
	Mon, 19 Jun 2023 11:46:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:46:56 +0200
Message-Id: <20230619094656.4160042-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_024658_778204_5AE846DD 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: container.sh: reexport KBUILD_OUTPUT LG_BUILDDIR envvars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These variables are evaluted by pytest to find the location of the
barebox build directory, so pass them along to the container for easier
use. Example usage:

  export LG_BUILDDIR=build-x86
  scripts/container.sh ./MAKEALL -a x86  -O $LG_BUILDDIR efi_defconfig
  scripts/container.sh pytest --lg-env test/x86/efi_defconfig.yaml test/py

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/container.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/container.sh b/scripts/container.sh
index eb1e87b59baa..fa5810fb464e 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -35,5 +35,6 @@ pwd_real=$(realpath $PWD)
 
 exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
 	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
+	-e KBUILD_OUTPUT -e LG_BUILDDIR \
 	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
 	-- "$CONTAINER" "${@:-/bin/bash}"
-- 
2.39.2



