Delivery-date: Tue, 28 Mar 2023 10:02:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4HZ-00HNTh-W5
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 10:02:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4HZ-0004hr-9v
	for lore@pengutronix.de; Tue, 28 Mar 2023 10:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5szmc6fGAgD7jufX/Tvz4Rfu/d42jyogBkHdS6eUFmA=; b=uyfxwC/a1ztVlvL379YjtnZEes
	Kfkdr5CW6Sqrw1bXRBIj+aqlsasA6j3KdeMB0RtlQLZ3XNrgMdG1NMyUK8WQ6FThmR1V/s1ynDCfd
	QXb/Qg9j0nhyfTnw4wB+Z3bRzF4tcYXgMkSoghGbCjtZYsMMZxTWPnbRd2o4Yd5WWWKo9Z6x5VxAR
	V31IX+L9uop9YUqHxcKu9bwfLdMdu5fzDANeUCP3RBHKRaMBxC2jE/m4Fc+2VWIbgyIEG2G6pkaY/
	zgsO4Z+8Lt3eG5vxhNob8OsMlS2u1slBbtHk03zI3JLkpN/knBHZM7o2U9DH9sDWZyC2Ek9HdwQq0
	Lp1Wr4xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4GM-00DXzI-1i;
	Tue, 28 Mar 2023 08:01:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4GI-00DXyB-10
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 08:01:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4GG-0004NT-Mi; Tue, 28 Mar 2023 10:00:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4GG-0001MT-Dg; Tue, 28 Mar 2023 10:00:56 +0200
Date: Tue, 28 Mar 2023 10:00:56 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230328080056.GI19113@pengutronix.de>
References: <20230327060652.2055761-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230327060652.2055761-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_010058_371874_13AC79F2 
X-CRM114-Status: GOOD (  23.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: improve CONFIG_DEFAULT_COMPRESSION_*
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 27, 2023 at 08:06:52AM +0200, Ahmad Fatoum wrote:
> This option is only relevant to non-PBL configurations and the
> description is a bit confusing, because the default environment
> is the only in-barebox binary this option compressed.
> 
> Use "built-in environment" instead of "in-barebox binaries" or "default
> environment" to make this clearer.
> 

I wonder if we should make the whole thing invisible when there
is only one choice left, like below.

I don't know if there are some places which still need a
CONFIG_DEFAULT_COMPRESSION_NONE then. From a quick compilation of
imx_v7_defconfig it doesn't seem so, but I don't really know.

----------------------------------8<------------------------------

>From 2a463e109d06f62cd6c46339a19c45d5ec7bed96 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Mar 2023 09:56:32 +0200
Subject: [PATCH] common: Make CONFIG_DEFAULT_COMPRESSION_* invisible when not
 needed

With PBL images DEFAULT_COMPRESSION_NONE is the only option left. Make
the whole choice invisible in that case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 57fe5f7886..644829c595 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -862,9 +862,10 @@ config DEFAULT_ENVIRONMENT
 	  the environment found in the environment sector is invalid or when
 	  CONFIG_ENV_HANDLING is not enabled.
 
+if !PBL_IMAGE
+
 choice
 	prompt "default compression for in-barebox binaries"
-	default DEFAULT_COMPRESSION_NONE if PBL_IMAGE
 	default DEFAULT_COMPRESSION_LZO if LZO_DECOMPRESS
 	default DEFAULT_COMPRESSION_XZ if XZ_DECOMPRESS
 	default DEFAULT_COMPRESSION_GZIP if ZLIB
@@ -878,29 +879,31 @@ choice
 
 config DEFAULT_COMPRESSION_GZIP
 	bool "gzip"
-	depends on !PBL_IMAGE && ZLIB
+	depends on ZLIB
 
 config DEFAULT_COMPRESSION_BZIP2
 	bool "bzip2"
-	depends on !PBL_IMAGE && BZLIB
+	depends on BZLIB
 
 config DEFAULT_COMPRESSION_LZO
 	bool "lzo"
-	depends on !PBL_IMAGE && LZO_DECOMPRESS
+	depends on LZO_DECOMPRESS
 
 config DEFAULT_COMPRESSION_LZ4
 	bool "lz4"
-	depends on !PBL_IMAGE && LZ4_DECOMPRESS
+	depends on LZ4_DECOMPRESS
 
 config DEFAULT_COMPRESSION_XZ
 	bool "xz"
-	depends on !PBL_IMAGE && XZ_DECOMPRESS
+	depends on XZ_DECOMPRESS
 
 config DEFAULT_COMPRESSION_NONE
 	bool "no compression"
 
 endchoice
 
+endif
+
 config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	bool "Generic environment template"
 	depends on DEFAULT_ENVIRONMENT
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


