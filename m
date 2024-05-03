Delivery-date: Fri, 03 May 2024 12:33:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qDu-00H7kv-0m
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:33:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qDt-00019K-LS
	for lore@pengutronix.de; Fri, 03 May 2024 12:33:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Flvu9vNOqubVyoH77aQ+bm9z27PpsQWJzwgVos60sC4=; b=I93Q1N1qKAbyZWNKwGhaE5uOHF
	EiTiCq23RcUzWuj33dBxUlztgjxU37Di4SlXQNnLeeBpCFUph4NNAJ3B46lnuP/6MSzDsMBdvH5Gm
	Jxcu/Xv3acKZ7V+YpAfZppBQEEHOj7EG24MyPTjZj8CJBadWG4J7tJEEfeCgZfY35FZI5d8HJ6kei
	LOB9eAf2ueqaHGNNUbeM160EAHDLz4HBXpwwelv1toG4y9+0f1dPyUDh+rEh8Iq9Qy9oMBO1fSQga
	8Oxf6o0lOkHnZ6irQgCf8Kma0rDkRwAyDLSmXaguNUPquX6iQEIcxdhHWzJoTY6fHMmUNgpPr3nWl
	TglxYl4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDV-0000000G3n2-3S8y;
	Fri, 03 May 2024 10:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDR-0000000G3lL-2jje
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:32:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDQ-0000yg-5n; Fri, 03 May 2024 12:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-00FgUT-PK; Fri, 03 May 2024 12:32:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-005jqG-2E;
	Fri, 03 May 2024 12:32:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:32:30 +0200
Message-Id: <20240503103230.1367842-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
References: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033233_722915_0EBC53EB 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ci: test: remove generation of dummy firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Generating dummy firmware for images that are not only built, but also
runtime tested doesn't make sense. Either the firmware is required for
proper operation (which isn't the case for any platform we currently
test) or it isn't, in which case enabling it could hide errors during
build.

The added benefit here is that we now test e.g. multi_v8_defconfig the
same way that a user with a new checkout would: Using the defconfig and
without any generated firmware.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 514122ebf886..6eb38cc03e6b 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -55,8 +55,6 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        ./test/generate-dummy-fw.sh
-
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
                 -k test/kconfig/disable_target_tools.kconf ${{matrix.defconfig}}
 
-- 
2.39.2



