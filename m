Delivery-date: Thu, 10 Feb 2022 14:48:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nI9oa-00BqCl-3M
	for lore@lore.pengutronix.de; Thu, 10 Feb 2022 14:48:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nI9oY-0004jj-Ne
	for lore@pengutronix.de; Thu, 10 Feb 2022 14:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YIYvRc/eOBDQfLyHBTp11mW8QVnqX7TpdxjEZipTkuI=; b=hWux1TnAdb9LfP
	lUeOXFdajt6jG5Q8jdnXtMEwJ0J2q7277+Ty3GE55ilWlVPSV0wFRJwX+gE9n8qu7FWZMIQ08MSD3
	v9zpjxBj3uAD5DcyErREHHkUkHGvPNe4IOJieGJ5AXMoEDBJNjTqbeF7awdyUQkHo6uk1P2/2dFZy
	4i4NQLJJ8G757rhr/GompWdw2QtFSPq7U7H5WalshEyvjkfqonHIgSB2nec30/Mw0DhHdXcy7Pkpc
	M0RVWg2LpnncVw0FHvH59xy5dCohBYihJrHHcX8UIpisDW3ieN401e3a0OM1bc5rf3VKkHb3DrVBl
	y49RTS57RPiPae8aZQ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI9my-003x3H-8x; Thu, 10 Feb 2022 13:47:12 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI9mi-003wyL-Tq
 for barebox@lists.infradead.org; Thu, 10 Feb 2022 13:47:00 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 13so10541415lfp.7
 for <barebox@lists.infradead.org>; Thu, 10 Feb 2022 05:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uSPzrwjmRNh5Jjou6BmBekdDZZJS68e3dIdZ1wEYIH8=;
 b=jP3ybAmFGIJlozbpYnqxD0JlRhGQpme09l0qpUchs5cSxDd1qAMK/3Quh4baNZYbKq
 rzffOck8NOlYNWIS2FoovF2Rew3nTK/M+VzgsWWpfngS8x03x0RvZgfjQk8pySv/8O7i
 LSV7HTXiHDs4YeNBWnl5OMuXtWRqKSBERna/x91MmgIwQcOSmxy+04D48kChsYblyIQW
 KMyMFE2lgK3Q5XeePySHWsu7ObV4YbGwBo9j1kKlpu2mXY9j+F9jMpMLZ4Lh8B2xlGPu
 2e7kmBswNvxd6C+5OCw0MIqfnIbIdyPFCy+DLUXIuorH5CJt1vlK47kEtiZc7NeCtT1D
 5Vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uSPzrwjmRNh5Jjou6BmBekdDZZJS68e3dIdZ1wEYIH8=;
 b=gQrWU5AgHOTv2PP26kBPIC7vD4xvANKNQK+n5iovI++qnBVkmT3QENlAt+cy2dYXuZ
 btmN3SUzjBHb8eb8h85IkPOgTZUCH2mvx/I7SrFLN8JLkSTmkcBRJk76t2QTDho/Mhy1
 xhjJ8m0RGgdJLyN+ajx3yKcZONL+Av8qheQkhxpO0mgt+wiHKZKVEeles8Q8ANMI0j6+
 vuCXXW/ZdgQ6D6W1sS7QFoPj+lNCN+/PHR8OIelAtTfMRZsPKUerKcmOVK6yDfAwQala
 yuUssLsKw4LP+Nof6N8XXkvOvdvoXb851NLhX3Zhnef1YrlUAwTqDFeA5gQw9f5TqBah
 nECw==
X-Gm-Message-State: AOAM532rAf12ttTJramZtKAczDNbZa4CZ7OcP9HteYCNkeoE44oDTWIA
 nIfzop1LBdG41ConawIgN0X+NnAEfTI=
X-Google-Smtp-Source: ABdhPJwOmYn+6WE2Hj48v34RKX6qBcnPSabOCuHkaS2qF74BfN3xQ4OPpmYLDUbSNgGh69rrBlNvbw==
X-Received: by 2002:a05:6512:3e0b:: with SMTP id
 i11mr5294013lfv.510.1644500813954; 
 Thu, 10 Feb 2022 05:46:53 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h13sm2799561lfv.100.2022.02.10.05.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 05:46:53 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 10 Feb 2022 16:46:39 +0300
Message-Id: <20220210134639.341801-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_054656_994568_745F823E 
X-CRM114-Status: UNSURE (   9.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] imd: add optional endianness= parameter for bi-endian systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MIPS architecture supports both little- and big-endian modes.
It's handy to have means to determine endianness of barebox
image. This patch adds necessary record into imd block.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig       |  6 ++++++
 common/imd-barebox.c | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 667b0a1e79..f8d99bd48c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -730,6 +730,12 @@ config IMD
 	select CRC32
 	bool "barebox metadata support"
 
+config IMD_ENDIANNESS
+	bool "add endianness record to metadata"
+	depends on IMD
+	depends on SYS_SUPPORTS_LITTLE_ENDIAN && SYS_SUPPORTS_BIG_ENDIAN
+	default y
+
 choice
 	prompt "console support"
 	default CONSOLE_FULL
diff --git a/common/imd-barebox.c b/common/imd-barebox.c
index e11fdca845..7877c8de39 100644
--- a/common/imd-barebox.c
+++ b/common/imd-barebox.c
@@ -23,6 +23,16 @@ __BAREBOX_IMD_SECTION(.barebox_imd_end) = {
 	.type = cpu_to_le32(IMD_TYPE_END),
 };
 
+#ifdef CONFIG_IMD_ENDIANNESS
+#ifdef CONFIG_CPU_LITTLE_ENDIAN
+#define IMD_ENDIANNESS "little"
+#else
+#define IMD_ENDIANNESS "big"
+#endif
+BAREBOX_IMD_TAG_STRING(imd_endianness_tag, IMD_TYPE_PARAMETER,
+			"endianness=" IMD_ENDIANNESS, 1);
+#endif /* CONFIG_IMD_ENDIANNESS */
+
 BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
 BAREBOX_IMD_TAG_STRING(imd_release_tag, IMD_TYPE_RELEASE, UTS_RELEASE, 1);
 BAREBOX_IMD_TAG_STRING(imd_buildsystem_version_tag, IMD_TYPE_BUILDSYSTEM, BUILDSYSTEM_VERSION, 1);
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

