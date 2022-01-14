Delivery-date: Fri, 14 Jan 2022 17:56:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsW-002DPY-T0
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:56:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsV-0005CP-38
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:56:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoqzOlrZib15dN+Nkj53hibj7w8oC5Z0JYdVnb4FiYg=; b=OCdPySCri7k1od
	5aiCFQaUA1QxbcElagaPSJUp/WdP5nrTK7SOSYm5sPnU4SVya/yThKnjs+dT7Sp97qNxDK3Yxt+Yp
	qsJBGkVdcvT33Q0fdE+LpoOsK+FRu+kj7ZjUI/ptQqZtSy55HJZE8/ZlzWLtDgAqZHlJ8vzTT9i5Z
	rlAJLmnvnO8b9E0JwjV4c//JGEEMK3ItOGp5pJjkfRv5uKYHg7iTlqON/0Hl3iesMTSk8atZG+F8G
	4Mmpr/Lbd9vH7Gr7ppThBYIVU1NmSPlm9nvTxV7wuC/nnw2KdKaTbfyVsRBWTLfruGNtiLfmJYF6m
	1CVTOKKIkuyw6eikyEmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8PrK-009ryp-3d; Fri, 14 Jan 2022 16:55:26 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Pr2-009rrt-E2
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:55:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 80C2A1B7B0A0
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179298;
 bh=UxXjI3kle5CiMv6YcVbR1FjWFukBBWBHr3VhRxrtQts=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AElMqU6gQULykjc0l7HdPjYjIaNC/eH9Igm6UPtrhxnj4npmJ66CNCmBz1oUvl9LR
 9KokOId1SRCldAkMuvlsjjC0qFGi/oZea2idY5kuB10IKncQ9Ol02hurwtEUqrLB4G
 YvCvJJ+wPkgIrnYiXDr8g77GpHEi6VMD1kqbXy0Y=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 380201B7B073;
 Fri, 14 Jan 2022 17:54:58 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <e9ba.61e1aae1.e3157.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id E39441B7B076;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id C576D27E0341;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id AC70F27E03AE;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu AC70F27E03AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179297;
 bh=VWJdfiGU4YS/eDy0Hsdw1EG6MO7/2XnJnqXEvwboZ2A=;
 h=From:To:Date:Message-Id;
 b=HcSI8lqYVloAfwr+ClORrK98KAMeYTR0sxC8oFs3n1rvLCgRJ5N451QmMpEPcoW5D
 tks0mEqw4nltQUENVDjjN7o0NckuwaqCnFm2OBzQsj3tpASesScsDgB+TuBIcOPMvH
 FMGXKSg0meAgrnSkDkgJjvdK5j2lUP+SDXecNQ8k=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id G3n7wzcxBSCS; Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 95E4A27E0341;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:54:53 +0100
Message-Id: <20220114165456.10542-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085508_661138_9A3535BF 
X-CRM114-Status: GOOD (  10.57  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] drivers: add soc hierarchy properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <cleger@kalray.eu>

We will add kvx driver in this folder to create a proper hierarchy.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/Kconfig     | 2 +-
 drivers/soc/Kconfig | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)
 create mode 100644 drivers/soc/Kconfig

diff --git a/drivers/Kconfig b/drivers/Kconfig
index dbdf3c06f5..d66714af9a 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -42,7 +42,7 @@ source "drivers/fpga/Kconfig"
 source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
-source "drivers/soc/imx/Kconfig"
+source "drivers/soc/Kconfig"
 source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
new file mode 100644
index 0000000000..d78f13f3f8
--- /dev/null
+++ b/drivers/soc/Kconfig
@@ -0,0 +1,5 @@
+menu "SoC drivers"
+
+source "drivers/soc/imx/Kconfig"
+
+endmenu
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

