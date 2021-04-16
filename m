Delivery-date: Fri, 16 Apr 2021 11:34:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXKrT-00015B-9k
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:34:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXKrS-0003Gz-Et
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QpO5hvAJI+vDI02KsnKDiWRQ2Jdw+UDCETKN7+H4JnU=; b=L5NzUDUft0Px2qrJbAYz6R6lDx
	wsd/Lu5w6eu72er/kvSPUtYshAcrBP7PsIL08CxLC1ujSDpRfgFFyRg6ebJ41MwJSBpo7UXqvFMOj
	mzfhz/K2Dw9jlSSeU4lYSX7X8FK6U6prxm58DHKUjdS9/DFmFRMEhPHgI+CxACs8PPf7kytQgLWFq
	cmGeg7fyoCv1rRlABi2wqJ91jKb3IUs3Tq4QEHMfBYTJ4Ag+FD+huO9IdhRa4ACjOlMuNjr/txdVn
	Kou35oinI12U42wPwkHEC0sgu7lBgEvir6qFWXlElKH1y9llKRa7eNm01ACUSTVplNA+SqgpBAcS1
	8zCD/Ugw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXKmq-001YH6-Ic; Fri, 16 Apr 2021 09:29:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXKYX-001VQV-Dv
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ArEhhZqXtbZIQp7vpPIP3DIgC/uwVmATYgasna9vTFM=; b=UCSHtw7zXbdqJTgIp8Ls2rAlYA
 S/bSvWmRgkSW+MtoHNmvhr9zynY9IgKvaic4nLES8owkgHwxijs9L5ItJtKgcbtVnbdYA+9LxFUYN
 SToKRb9k1vUoFISt3VMy/tKOnVea6kN6i34X+SpXDVzUT06PF8AFfb/Yxiy81J/TUHFJd6XnvpObG
 rMx8Ey2ec/IJu/HdR4/b/P04gEI6kJ83bQBndVy7cJLeoVPHQ93qAFDMbGGkKmAv/q6hupRlQWav6
 kmVZNVzGB/TWdvYjQSahtis4Ua/8tbk0Kgx3BYX1zmCyEAz8ORL2z2uEqeXcCWwe8//dK++IV3zA4
 mwjgstWA==;
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXKYQ-009EWl-Nk
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:14:28 +0000
Received: by mail-lj1-x22a.google.com with SMTP id a1so30296155ljp.2
 for <barebox@lists.infradead.org>; Fri, 16 Apr 2021 02:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ArEhhZqXtbZIQp7vpPIP3DIgC/uwVmATYgasna9vTFM=;
 b=eHqtLTQz7Xjc7Z3hnd2Fvcf6Ex8O4Tzm9YACJVTIpkG+ecq8ix9axEaNW5AFOA7QEb
 GpKzlizmSvzDpbrjegcCURk5VnP129a9VPJ37U6raYvGMyQziAzn2mj1s2z1js8KMnYo
 e5NPVL5R4AgZXHYFEwf1cSAUttqGtp0wsYCV9ZQIvfzM2q4rrvBMLWfBDuOJ8GtafXC2
 Rk7axRMi0kdr16mOL5ioywQS7Iv8RqKz/x4rwhq2kevxd9QJG1KjV7s/55NaoNdQt83S
 uiPlSjTfHH+ge1P4PiHOqcf1PekFaX470LvSpe1mm9iHAH+mIc6kXPxayH8TMqV6rAFH
 22+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ArEhhZqXtbZIQp7vpPIP3DIgC/uwVmATYgasna9vTFM=;
 b=Cdr/zKovoW5WL1PLolLn6e2t7etRxZSfUVOqwjGkgixioki5pWKkIdapE3rzml+g41
 Jyj+JsqYnySbdrI1OUuO0+NfkaHSEgZYVcNFNZEPF73x9xNW6lj/C+oqNTbnokp/FJtN
 8h94LERHJmM4qp59Hu5ix0fyT/FiRFjpjaTqMln7Y1ZAR3PLLnYyeKinblJCwXJrH1DL
 7ckK5bJFWH9NZmYbD/hTXHNPQFmGwUQjksJo2r42/HhUc5Rd/p1tLh7V6J2URibr3ubx
 fLeiC/W61TmGCb1kLl5UsaRUgEp/r/yRgIVQMkNR+Do8QNETePjk2+fXishcmpzv6WJZ
 EJYQ==
X-Gm-Message-State: AOAM533ZluoYv9akbdKMZtJwIxwa0TQqbJl/QNKbA3Iug0YrAQubZtsc
 3hk11v1mypv60UBP1w1sK41FuxT8KAjY2g==
X-Google-Smtp-Source: ABdhPJz0EhA8bYJ5akHCbqm5/cr/nBkOTWZyW63LsKjWLP9Hh7ODe0YFzXDeW7SCiHrKe20Q4vLedw==
X-Received: by 2002:a2e:9908:: with SMTP id v8mr2076254lji.460.1618564460354; 
 Fri, 16 Apr 2021 02:14:20 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id p12sm941446lfg.104.2021.04.16.02.14.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 02:14:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 16 Apr 2021 12:14:04 +0300
Message-Id: <20210416091404.92251-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_021422_790716_87BFC8F0 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts/spdxcheck.py: Use Python 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Based on this linux kernel commit:

> commit d0259c42abff51b586496a0594933e394efefbc5
> Author: Bert Vermeulen <bert@biot.com>
> Date:   Thu Jan 21 09:54:12 2021 +0100
>
>    spdxcheck.py: Use Python 3
>
>    Python 2.x has been officially EOL'ed for some time, and in any case
>    the git module for it is hard to come by.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 4 ++--
 scripts/spdxcheck.py  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index b8bd4e1a59..36e3d768f3 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -885,10 +885,10 @@ sub is_maintained_obsolete {
 sub is_SPDX_License_valid {
 	my ($license) = @_;
 
-	return 1 if (!$tree || which("python") eq "" || !(-e "$root/scripts/spdxcheck.py") || !(-e "$root/.git"));
+	return 1 if (!$tree || which("python3") eq "" || !(-e "$root/scripts/spdxcheck.py") || !(-e "$root/.git"));
 
 	my $root_path = abs_path($root);
-	my $status = `cd "$root_path"; echo "$license" | python scripts/spdxcheck.py -`;
+	my $status = `cd "$root_path"; echo "$license" | python3 scripts/spdxcheck.py -`;
 	return 0 if ($status ne "");
 	return 1;
 }
diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index 6374e078a5..0f81337394 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 # Copyright Thomas Gleixner <tglx@linutronix.de>
 
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

