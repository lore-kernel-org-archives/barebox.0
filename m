Delivery-date: Tue, 22 Jul 2025 16:31:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueE1c-002aYA-24
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 16:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueE1c-00045Z-1K
	for lore@pengutronix.de; Tue, 22 Jul 2025 16:31:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xFydvnCHcy7Wo+dmOd9lxkZOge5GJborDRXhdGYKhrU=; b=drNy4J3UGl5fmAEwXUKnyhBlGc
	fePeNu/aTQ8YoQS6JCZcQSzu+2bw9up6Ckn39LBZDPq0EHpZNjPqdTud0CFGz5gHKyPKH/7ri+HX0
	dXlA3HoE0fJ9XDo5q78mfYfgrZBtfYbOVIcLfg0ZIyHTiDYBXmGbB11r4L2f2XapI8GWmqoaYKlgE
	2JI6lNnMzMHVU08MWR+uHK6rreoeQThCoto958XdgS4Q6SS55mm6knrQehoCaxE47ocffFH+0GGBn
	6Sz3+XMgSDCDFjXgH1kgW6uEA+2mQiUyNmCgCRSl8NcXfHatRrv6wHYlFWRCCyat9T/maxWlQ0Os0
	+LZrLGaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueE0s-00000002iC6-396s;
	Tue, 22 Jul 2025 14:30:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDcf-00000002dTV-2Z1B
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 14:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueDcd-0003on-Mt; Tue, 22 Jul 2025 16:05:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueDcd-009jqM-1O;
	Tue, 22 Jul 2025 16:05:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueDcc-00E3La-2e;
	Tue, 22 Jul 2025 16:05:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Andrei Lalaev <andrey.lalaev@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jul 2025 16:05:34 +0200
Message-Id: <20250722140534.3349443-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_070537_650698_29053D98 
X-CRM114-Status: GOOD (  10.17  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] fastboot: populate is-logical:$partition variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Uwe reports on IRC that fastboot tries to read some default variables
that barebox doesn't define, which triggers host-side error output:

  ERROR: fastboot: no such variable: is-logical:kernel

Flashing didn't seem impacted though.

Referring to the documentation[1], is-logical is related to a number of
commands that create/delete/resize logical partitions.

We have support for modifying partition tables in barebox, but we don't expose
it over Fastboot. Until we do, let's report all partitions as physical
partitions, which is the default value.

This issue has always existed, but only became apparent once we started
returning an error for non-existent variables.

[1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#237

Fixes: dd377c937f8b ("common: fastboot: send FAIL if variable does not exist")
Fixes: 3d5080aae90d ("USB: gadget: Add Android fastboot support")
Reported-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Uwe, can you give this a test?
---
 common/fastboot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index 4d16e3997279..603391de7739 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -178,6 +178,8 @@ static int fastboot_add_partition_variables(struct fastboot *fb, struct list_hea
 	fb_setvar(var, "%08zx", size);
 	var = fb_addvar(fb, list, "partition-type:%s", fentry->name);
 	fb_setvar(var, "%s", type);
+	var = fb_addvar(fb, list, "is-logical:%s", fentry->name);
+	fb_setvar(var, "%s", "no");
 
 	return ret;
 }
-- 
2.39.5



