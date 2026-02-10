Delivery-date: Tue, 10 Feb 2026 12:51:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpmGu-0009sk-0W
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 12:51:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpmGt-0001nw-KT
	for lore@pengutronix.de; Tue, 10 Feb 2026 12:51:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DAIw/oJvZ8t12+wYK4+D/SZXC4XwXeYxK/CzLwCzWbM=; b=uAPaBkgSd+m5R1cwjw5v4ZbwBy
	TWmeik/ol3yTOOEfy4Xi4TzdV8mtbPxe7mzkhfJ7Eiz5P67DxhYquJGt4GPgcSGxVOcZNovkng9Ca
	qPK2/nnmTqo4bGmSjSksVpROUERc/SMR+hdBpKtkMc8CVv42hArHODWvawAUpSzAGOZzx2iu7jwn0
	FdHVYEGQXF8C5Mu1qOiYQYaDNQg6U3JpnYAr+vUebXqLbDlfwEQ30T9LrQrsFFRG7AoAtCvLsoLTX
	Nq6aGrk3wWMLRrLM6nicQ29h8Nj6MUKWYunxJ4O7Tr0MdTpqmSFxuQVdlEXbUuo3ADj4QQFoI63tU
	te+QgCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmGH-0000000GuAL-1gQ8;
	Tue, 10 Feb 2026 11:50:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmGE-0000000Gu9r-18LG
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 11:50:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpmGC-0001hS-GJ; Tue, 10 Feb 2026 12:50:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpmGB-0004aS-22;
	Tue, 10 Feb 2026 12:50:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpmGC-00000005ilQ-0u2E;
	Tue, 10 Feb 2026 12:50:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Feb 2026 12:50:24 +0100
Message-ID: <20260210115027.1363648-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_035030_310697_5EE499B9 
X-CRM114-Status: GOOD (  11.25  )
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
Subject: [PATCH master] ci: container: fix various breakage in container build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LLVM apt repositories can't be used at the moment without further
changes to sequoia configuration:

   Signing key on 6084F3CF814B57C1CF12EFD515CF4D18AF4F7421 is not bound:
              No binding signature at time 2025-08-09T21:49:56Z
     because: Policy rejected non-revocation signature (PositiveCertification)
              requiring second pre-image resistance
     because: SHA1 is not considered secure since 2026-02-01T00:00:00Z

Let's bump the date by four months until this is resolved.

While at it, also make sure to use -y to answer possible upgrade prompts
and do an apt-get update before the second install as well as we delete
the cache in-between.

I briefly considered using the prebuilt LLVM toolchains on kernel.org,
but they do not work for our purposes:

  /usr/bin/ld: have you installed the static version of the
    clang_rt.fuzzer_no_main-x86_64 library ?

[1]: https://github.com/llvm/llvm-project/issues/153385#issuecomment-3239875987

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index 8b0c37a6b20a..6e4515f7d582 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -10,7 +10,7 @@ LABEL Description="This image is for building and testing barebox inside a conta
 ENV DEBIAN_FRONTEND=noninteractive
 
 # Update and install things from apt now
-RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recommends \
+RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
 	bison \
 	build-essential \
 	coreutils \
@@ -64,8 +64,12 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
 ENV GCC_VERSION=15.2.0
 ENV LLVM_VERSION=20
 
-RUN apt-get install -y --no-install-recommends lsb-release gnupg \
+RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
+	&& mkdir -p /etc/crypto-policies/back-ends/ \
+	&& sed 's/\(sha1\.second_preimage_resistance = \)2026-02-01/\12026-06-01/' \
+	    < /usr/share/apt/default-sequoia.config \
+	    > /etc/crypto-policies/back-ends/apt-sequoia.config \
 	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
 	&& apt-get remove -y lsb-release gnupg \
 	&& apt-get autoremove -y --purge \
-- 
2.47.3



