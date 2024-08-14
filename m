Delivery-date: Wed, 14 Aug 2024 11:25:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFd-009UQj-2l
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:25:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFc-00076h-Vn
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GNCyQnJvfzRt3VjEtsZ4rEiwoxj+cPso6GnruchT9H0=; b=2LcZOuJZHvowPHl88emguIz0sQ
	dYclDZj1hZMAm9MMg8Xa2K4cC/kVPdWOV5/8Ok60UAW8RHexsEBC522AsSmbqjOSifD+5pt2EOVli
	SftVlLneJaYDyCEiEmkHdQLxlGLbgStt1Ud5sZOD1R/HNvWxnmI82reAowY4lln8GmeAy5XZdJI9W
	lfkgfQtTjTzMgwiY+11DKCaf7EEI+KVcXS2Ay0LOE3iF9YAiy2E8N94Z4CJre3iNTn+H9fB3BjhJz
	rG71gssak47jccbDAZF04BmrjQjsbV2XugbPc7WvxDWeZ92rDpmBnQ0DZD1w63G+lT16V9v9sa0ih
	NHBe/vng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF9-00000006MtH-0FbK;
	Wed, 14 Aug 2024 09:24:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF6-00000006Ms8-0oII
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GNCyQnJvfzRt3VjEtsZ4rEiwoxj+cPso6GnruchT9H0=; b=rXZ4OPjPlAEpK8b/nahBcV26fu
	FBq2vEOWxxaiCbvXVlWG6z5dWKr43taLP/xNlIgcy8mYxRiTIKEbz3n0xT8eIRUgs9Go1p5NvYsdH
	YD+9ircXQvk8SJsljdU8+iUvkZ5IVwiDwB5UTNfncCyf6UNQVrSFcSmrVs8ZknXNB2cd02U0HFt7Y
	2Es20VUq/0g0NcjDjE5tHQdDIdojWQeW7BdmwIXIQHxLg/qBv5lQy+v0PHNGZahitjNHTFNBmgajB
	Ms5LCqs4kvQibLDmMjQZki5z6loXWJHzuDx7KvkZ63gTwHh4pHzV6X+58L0oq+Gz2zFs+Izim6riu
	hKL7bjLg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Ld-0GfS
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-0006sb-Ul; Wed, 14 Aug 2024 11:24:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMn-HP; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1S;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:21 +0200
Message-Id: <20240814092424.39878-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_536574_57FC7182 
X-CRM114-Status: UNSURE (   9.86  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/6] filetype: fix else clause indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clangd notes the unexpected indentation in the file, so remove that
stray space.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index db65d1ece25a..3690d4ae077c 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -189,7 +189,7 @@ int is_fat_boot_sector(const void *sect)
 			 */
 			if (slot == 1 && is_fat_with_no_mbr(sect))
 				return 1;
-			 else
+			else
 				return -EINVAL;
 		}
 	}
-- 
2.39.2



