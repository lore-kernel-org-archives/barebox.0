Delivery-date: Wed, 28 May 2025 14:19:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl3-001BXP-2e
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl3-0000bw-6w
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y5SX4zSDgcO9OhozK+3B+2o3i9n1Jw1fEiTci/+dIK4=; b=onq0xJmW6XY1uYLQRiEX0hvDbL
	nU1hq/P2XkcRiPKTiAHGmPQa7wAOyZgylXg8+NiD7BmxGw5y6K94GEAJ0hNf1avlru1etkt+wYiTI
	xN5Up9WxwJDqwzdliN8PxfOWuUzza9MklohWwBHcTBdHi1LEaALKbD4QpKmL3buFbKqEZ0puU6If5
	GjzD7sEigRj0Q1asKc41GFisNPG3BgZiMIEtlzUHIy7f2/KXNiTqE2Ff22gEexw/f99B8I/s1vvZq
	GBNAhO51rNMXxpLAhS5rKfXJ9cuWtfR7dvIuHc+qkWCRwj89rf4XxqeLglZcJtqOykT+nGgKfkVHV
	LZs4py+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFki-0000000D5Pw-2hR7;
	Wed, 28 May 2025 12:19:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY1-0000000Cvyc-0nYW
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y5SX4zSDgcO9OhozK+3B+2o3i9n1Jw1fEiTci/+dIK4=; b=Ph2uqOV4UedV9WOfqkyb8CjCSs
	JLPLgHi0rSLFghrH7TbOlRCg/hYzDKw4I4l5C6Ec5VkD+aD9x5O9hTEvhghvGDQ+3SM7eqefG4tVC
	UnKvg7q73y81NTFGrWOVEQQ3afmwCwdP7cID9gftLfZuSR/ymdHb9+mYb8zrGuqu0zmJPxWbzLjDc
	XqHZl0baizooE57HOL8u5cDtB4BZy1jxtvDNsYmmdCaq2UCnxbHLoMVsScDJMgfpf0VWVU9YWji45
	5EG9bVaiM8jPY3oiLLytt+AruX8KkbDB/dgcu5+Lfmr4FZKmFZLfHZDzXVFylJHHis6USjTunlPwd
	PCN53Ajg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDo-3Ohy
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001pb-N8; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zh9-1R;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-18;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:42 +0200
Message-Id: <20250528105046.3270397-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120208_881936_7B185A07 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] filetype: add new file type for 0-sized files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have commands and functionality like the boot code that so far
accepted either an optional argument or substituted a default in its
place if it's missing. One example is the device tree used during boot,
which is transparently replaced by the barebox internal device tree when
none was specified. To allow forcing a device-tree free boot, /dev/null
can be used in future and code can just check for filetype_empty.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 3 ++-
 include/filetype.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index a79c8ea77e45..a7bbd8f48534 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -28,6 +28,7 @@ struct filetype_str {
 
 static const struct filetype_str filetype_str[] = {
 	[filetype_unknown] = { "unknown", "unknown" },
+	[filetype_empty] = { "empty", "empty" },
 	[filetype_arm_zimage] = { "ARM Linux zImage", "arm-zimage" },
 	[filetype_lzo_compressed] = { "LZO compressed", "lzo" },
 	[filetype_lz4_compressed] = { "LZ4 compressed", "lz4" },
@@ -510,7 +511,7 @@ int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype
 	if (ret < 0)
 		goto err_out;
 
-	*type = detect(buf, ret);
+	*type = ret ? detect(buf, ret) : filetype_empty;
 
 	ret = 0;
 err_out:
diff --git a/include/filetype.h b/include/filetype.h
index 5d652f952f5b..e699815975d0 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -11,6 +11,7 @@
  */
 enum filetype {
 	filetype_unknown,
+	filetype_empty,
 	filetype_arm_zimage,
 	filetype_lzo_compressed,
 	filetype_lz4_compressed,
-- 
2.39.5



