Delivery-date: Mon, 01 Mar 2021 17:00:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGky4-0004xv-76
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:00:20 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGky3-0001MH-Eq
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:00:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TWSxdMRKIpU1/42dSmQ59LaNn89DQLbO6yY04XwOBeQ=; b=qcLQEJ9QP/5IkHGyJwJvqf3W/W
	HY+YLBs36R5qgGisNqy9iJXxBo7y2DdF6OVUd/Nm/8riR3lDXxUnz6oHq7nhqI1mHYlsMC7+ugfP3
	Bi/rPCGnG0+On01+08bTM4jg/Vm+JHwAoV38f+EiPLwHPhC/R0OSgO7T/ii6AJtvqqfqcnIwVwGjC
	nm+EvYJtFRPcSXCwxgYChe8+ttRDVwEplE4EKiEmDPazl299hWiIP7X5neGtoyq7R7VKt/K2hcApn
	ldVMvu0Dl7MvcZa03cS3+vo+74kbltYjmSPgAcQlz76e6T1U7z/HF8ucLgNdOhcObYXIkHLgSjOan
	Yi1XkaDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkx6-00075X-Hd; Mon, 01 Mar 2021 15:59:20 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkx2-00073P-AS
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:59:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 74FA41A545C
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQRP4F2;
 Mon, 01 Mar 2021 15:59:13 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 3F34E1A5451;
 Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 13F1C27E084F;
 Mon,  1 Mar 2021 16:59:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id HfvCXuB6a8qV; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id ABFD727E0847;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu ABFD727E0847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614614352;
 bh=F3lYuIf/urVlCNVCflVRGXiHaTC1MDA220Y4BeOs+x0=;
 h=From:To:Date:Message-Id;
 b=nwKsgBfHBpwEks2BBRaHFWYLTQVGmzMPqz+slb5KWaVNohIUgldJO8Y7syzjIbjC7
 Lr9eNKsHZ2uP3sDsf6iZMzGT7tRBKZXQzMN1UKNOJURNuus/s77h8tU2WGDWH2PCu0
 2w0t56XQmaZi8EtvbOQb/81EkFMba0Mx1exykgMU=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8EAjV-bHDxMN; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8E1F427E0680;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 16:58:51 +0100
Message-Id: <20210301155851.12463-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301155851.12463-1-jmaselbas@kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105916_673181_8A7444BA 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] kvx: lib: dtb: Remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Local variables `root` and `ret` are not used anymore, remove them.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/lib/dtb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/kvx/lib/dtb.c b/arch/kvx/lib/dtb.c
index 54ffddaf0..09898017c 100644
--- a/arch/kvx/lib/dtb.c
+++ b/arch/kvx/lib/dtb.c
@@ -9,9 +9,6 @@
 
 static int of_kvx_init(void)
 {
-	int ret;
-	struct device_node *root;
-
 	barebox_register_fdt(boot_dtb);
 
 	return 0;
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

