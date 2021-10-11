Delivery-date: Mon, 11 Oct 2021 21:21:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0rB-00019Z-BT
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 21:21:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0rA-0006tB-Es
	for lore@pengutronix.de; Mon, 11 Oct 2021 21:21:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wGbiSr0o2g79lDNsfxw1Uy5HgUKbeUOpP7VwbnVWN/Q=; b=HG1wjPPpN36/Em
	KfbvQMJOeUxBNdWsBk1puS6FQfwVcXxXfrfKhZEylQl7ZjtxnEBCyWUTaFIr9sHgIKTdth9QYa9Pi
	bIjkR5TmhC73eyD2c5jSyUhGSkOwYUPAnsXoCYlhlVauEDltKWCH6E7YQawXG5mBUBw5Vr01GzbVF
	7WJyiv1OvswljsDX357SAMJLef0pUv8yfdS1w4313GybUlM5G2KxeMogUyvq0n3diZzv5qlCGaGif
	edIM7xsIukH/HHH+qsHTKdKVm24G37yfH0DMnYuJLM5ZeyVGWZSWyZrEK5TIHba3mqC/sK1hyRWFf
	BoUtccmn87uwH4mwAA4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma0ps-00AU9r-Mk; Mon, 11 Oct 2021 19:19:44 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma0pn-00AU8s-9G
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 19:19:40 +0000
Received: by mail-pl1-x634.google.com with SMTP id l6so11939240plh.9
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 12:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k7bsZNvTyGmTPSI/CXirkYblA2tS2WOF4WxgEKqarEs=;
 b=1ZjNcTlAPn0ZftfJG0h64kIGARalrpfMz+BnD2oPpHHez25ecbZ0IIGZ+BeSFFQ4fd
 EOiajRouDL9mMqbqwLsR9Kz7I/3J0yf3X/GqEhpsKVPKU/ZJmRGnEbr7ftp/y81mOPsa
 Vql8ss+ecRHmPeqy2mKfiEjjtjMQTPcCrXjeolKX+wZOfIxgldz9r1rFNDHujgwEJmZd
 fBDXZ9S3ZTdsIwjbbvxPpz2ItYH2meg/G7VXCnnJsUBffhY2+abD7/QYkfD4XWbA9JAs
 hdJN9g8ADc96xrCxhTFzwYOMPhmpE+JTTrRNhEMY6vpeWF82tRhiC11J3d1bdtK7aGQ6
 OVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k7bsZNvTyGmTPSI/CXirkYblA2tS2WOF4WxgEKqarEs=;
 b=EOio3m/+rKa++qUZJv9VOyFO4ZWSnUfUuUFK/kqSM7tntyEJUkwKhz2OWzo5vTLNPt
 u9LW2m5fGWOsUq3zQbmlCpv7VJqDqBZRV+bjJDK+NYGdWJ/zrI/mEqbKxOC5ipwhi2+0
 MClqnCfgukj9fCRigAuML9p4CIKNbG7WOJdJcgIxd2rZ7rbM6LMJYYAWnnELJjw6z3dp
 Cqz9p65FfPs1ygHHkMFTfyyCMtSNDYWQONHmcBKNLPnGvwNDwI5UqCfXoJ3sbr2DPZtT
 8bHvqqGW5yLpd7OAE/9JBG8Zp0UO9p0IrDnO/Iv4+n/+dB456S1Fc/INn9UguespdoA2
 cARw==
X-Gm-Message-State: AOAM533T4IoA+zk8JgdQeEv9Xmjw4R0PGFk+P7icQv8lduxdc28eopQE
 v9x/+yrPhqzsGNLnkh3ZH+rctPqyiDStpp87
X-Google-Smtp-Source: ABdhPJxQhRbNcXc7UFXaBGCqDPSNlSMvMqllu52o9iVg8z63wtrMgABXuhAXBzCg3efPv9N5kMozhQ==
X-Received: by 2002:a17:902:ecd0:b0:13f:1469:c0f2 with SMTP id
 a16-20020a170902ecd000b0013f1469c0f2mr20333782plh.10.1633979977533; 
 Mon, 11 Oct 2021 12:19:37 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id x7sm8622877pfj.28.2021.10.11.12.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 12:19:37 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 12:19:33 -0700
Message-Id: <20211011191933.857941-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_121939_345207_E5CCFA42 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: partitions: Skip fixup for devices with no partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the device has no partitions, e.g. most EEPROM or OTP memory,
of_partition_fixup() can exit early, before trying to find the kernel dt
node and calling of_fixup_partitions().

This avoids spurious error messages when the kernel dt node doesn't
exist.  E.g., for an EEPROM in the Barebox dtb but not in the kernel
dtb, Barebox will display an error about being unable to fixup the
kernel dt node, however, if it had found the node it would just return
without doing anything since the partition list is empty, so really
there is no error.

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 drivers/of/partition.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 10081363d..18b138f00 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -256,6 +256,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	if (!cdev->device_node)
 		return -EINVAL;
 
+	if (list_empty(&cdev->partitions))
+		return 0;
+
 	name = of_get_reproducible_name(cdev->device_node);
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

