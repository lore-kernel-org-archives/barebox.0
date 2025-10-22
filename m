Delivery-date: Wed, 22 Oct 2025 12:45:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWLg-00AZxV-0c
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:45:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWLf-0003Ch-Jn
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:45:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nWXhV48IpfuE4kd573PlkFIkc664XK5F6pqpCi+F9n8=; b=WVfvD3XD63XAoZ9TQ2FOcaoS7P
	lvpb47Pd/WoRmeHqDhPWdaeL9eyozMMUVzbS3bJCF2QQtff72GE4+arvdLXm13LkMDi6H/XJbMCfb
	wv9F6tr9HVpobzrZT8NGtptzOkVLEFbSKu/WIuhU2y+dwl27qfThfWF6XMOURtVGAAxbQKRFkVx9m
	1xT3WIDKhjI6uWaTS+Tl0AQ8rAKJrn58HMEXZznycfqVaGXRrjlFZTWc7fqqY9CrvirBnrTf2mSng
	X2b/rXxrrwaxO3Zo29sSwySp3VHJxaE6Nh1XxmhcYJGko7e4v2qi+Tjat3XM1aYbqVVimBzOYC1uu
	MjUAdGCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWLE-00000002WtQ-2lhH;
	Wed, 22 Oct 2025 10:45:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWLC-00000002Wt1-0bY7
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:45:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBWLA-000380-Dg; Wed, 22 Oct 2025 12:45:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBWLA-004sOp-0k;
	Wed, 22 Oct 2025 12:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBWLA-00000003Y6u-0YMr;
	Wed, 22 Oct 2025 12:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Oct 2025 12:45:08 +0200
Message-ID: <20251022104509.845994-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_034514_206084_ABBC0F78 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ci: container: downgrade LLVM to v20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's currently not possible to build LLVM v21 in our Trixie container:

  Some packages could not be installed. This may mean that you have
  requested an impossible situation or if you are using the unstable
  distribution that some required packages have not yet been created
  or been moved out of Incoming.
  The following information may help to resolve the situation:

  The following packages have unmet dependencies:
   clang-21 : Depends: libstdc++-15-dev but it is not installable
              Depends: libgcc-15-dev but it is not installable
              Depends: libobjc-15-dev but it is not installable
              Recommends: llvm-21-dev but it is not going to be installed
              Recommends: clang-tools-21 but it is not going to be installed
   libllvm21 : Depends: libxml2-16 (>= 2.14.1) but it is not installable
   lldb-21 : Depends: liblldb-21 but it is not going to be installed
             Depends: libxml2-16 (>= 2.14.1) but it is not installable
             Depends: python3-lldb-21 but it is not going to be installed
  E: Unable to correct problems, you have held broken packages.
  E: The following information from --solver 3.0 may provide additional context:
     Unable to satisfy dependencies. Reached two conflicting decisions:
     1. lldb-21:amd64=1:21.1.4~++20251021083224+222fc11f2b8f-1~exp1~20251021083341.56 is selected for install
     2. lldb-21:amd64 Depends libxml2-16 (>= 2.14.1)
        but none of the choices are installable:
        [no choices]

Until resolved, downgrade to LLVM v20. We currently need this only for
libfuzzer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 2c0a20ec59da..6b4a97147c2e 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -62,7 +62,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	&& rm -rf /var/lib/apt/lists/*
 
 ENV GCC_VERSION=15.2.0
-ENV LLVM_VERSION=21
+ENV LLVM_VERSION=20
 
 RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
-- 
2.47.3



