Delivery-date: Fri, 12 Mar 2021 16:23:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKjd0-0004rT-3w
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 16:23:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKjcz-0006GH-Db
	for lore@pengutronix.de; Fri, 12 Mar 2021 16:23:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EgtRE1SHkETQj/zDaJaLN7IzZZf/vRQB9GTJFk0uD9Q=; b=VK9blJtN7a7wSx2UVH3dDmJh21
	dzahvXqHPUE2IJa8AZs+CKnZUCC+KRCLpqBG6XkE39L9HgzbdRgSwk7LwJ4WmoqnZeFPpH1aO1+J5
	4rHYQYv1jiYdVvUsWeYIfkIwqDZ1t7pwpcvr/iI+iiqRjxV7cIY9d4crBR/fHMgQVk6yEEq3G55y0
	UKrIi5f/yjhi9SrMNTubXEuC33vRNUyfTV27Syi+NJ23tjPWW/zX+iWycDLNdVW5FvHqZOX7cCMFb
	VRAM8Y78i2es0xRx+I+cWQrmBd48V/aBxDvJfKS5GGYb/cQo69tm7XNoejp74xIyXYXUVAmagteDs
	sWcoSqPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKjcC-00BmKv-6x; Fri, 12 Mar 2021 15:22:12 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKjc4-00BmJX-Kd
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 15:22:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 8556A1A3DA7
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 15:22:03 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6G7P5R
 for barebox@lists.infradead.org;
 Fri, 12 Mar 2021 15:22:03 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 47CE21A3DA3
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 15:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1814527E0512
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:22:03 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id TRIjfHKjn5qd; Fri, 12 Mar 2021 16:22:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8A9E627E04CC;
 Fri, 12 Mar 2021 16:22:01 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8A9E627E04CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615562521;
 bh=6giYpTNFHzsYFjOAhAl4hQBg2w+8VWPwpDW+8B57IyY=;
 h=From:To:Date:Message-Id;
 b=lM4wDKYvQcHyP3cQkDHYeBfHqw41uYMVblhTqbphLbcPgv8FRz9Y8zKVFEee2thoZ
 HteYUAnmiyN1vwpWSMB83R4pDjC2N1i4yfYCeOzleh1z/I/hWVvjGjXAwEY4hBCpmf
 atMw6Sdx5NOBE4MucRiULu4uotwYKIX37QK2+PLE=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kWJXy4dOdlsA; Fri, 12 Mar 2021 16:22:01 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6FCD927E02DD;
 Fri, 12 Mar 2021 16:22:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 12 Mar 2021 16:21:45 +0100
Message-Id: <20210312152145.2761-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_152204_945911_301B4B9D 
X-CRM114-Status: UNSURE (   6.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC PATCH] reset: Remove WARN_ON when CONFIG_RESET_CONTROLLER=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
I am using dwc2 but my platform doesn't has CONFIG_RESET_CONTROLLER enabled,
when booting barebox I got this kind of message:
WARNING: at barebox/include/linux/reset.h:54/device_reset_us()!

Not sure if removing all the WARN_ON is a good idea... asking for insight.
---
 include/linux/reset.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index 4a92a177b..a166fe1cf 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -21,43 +21,36 @@ int __must_check device_reset_us(struct device_d *dev, int us);
 
 static inline int reset_control_reset(struct reset_control *rstc)
 {
-	WARN_ON(1);
 	return 0;
 }
 
 static inline int reset_control_assert(struct reset_control *rstc)
 {
-	WARN_ON(1);
 	return 0;
 }
 
 static inline int reset_control_deassert(struct reset_control *rstc)
 {
-	WARN_ON(1);
 	return 0;
 }
 
 static inline struct reset_control *
 reset_control_get(struct device_d *dev, const char *id)
 {
-	WARN_ON(1);
 	return NULL;
 }
 
 static inline void reset_control_put(struct reset_control *rstc)
 {
-	WARN_ON(1);
 }
 
 static inline int device_reset_us(struct device_d *dev, int us)
 {
-	WARN_ON(1);
 	return 0;
 }
 
 static inline int device_reset(struct device_d *dev)
 {
-	WARN_ON(1);
 	return 0;
 }
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

