Delivery-date: Fri, 05 Mar 2021 19:42:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPe-00035G-QV
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 19:42:58 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPe-0002YH-17
	for lore@pengutronix.de; Fri, 05 Mar 2021 19:42:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXBWXnP53jn9h5QN28mylYqNy4kF+Q6/M2bCAl6OG7I=; b=UE1k++OhQtk5DrnP9kGGDyEKte
	Un0KnRwwfIXdRT8v4r8FtFG4TniUuhX/NI3W8K4FaJTkoQt75lw/fKfGJiZM0RjUO7Smn5GeBqUes
	6LZ2vnfcNiUTjbmyn9VkBL7hfGh1evARFrnIBT/Gg7rxF0MpMPGw8ZlzIDlwQIxOVolULZP4bo5xO
	9E3hdIz3a2bClFc8Wuz53iBlYcWMgJKC8jlaMqyiGyGrsKnryLKAF/X0raThPg8cKwRTQ6G28iZFx
	5bDrG03jVNRFBVjaMIZ+QYi8qaLpKp1yAS8JiwojUpjcdSsYIhEXDLHjNXpOASR4P0DgCCEnOi429
	GFUeMcnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFOa-00G0sI-DE; Fri, 05 Mar 2021 18:41:52 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFOM-00G0pE-5W
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 18:41:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id E3CAF1A5731
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 18:41:37 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLWN9DZ4;
 Fri, 05 Mar 2021 18:41:37 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id B9E7B1A5726;
 Fri,  5 Mar 2021 18:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 93CB627E0732;
 Fri,  5 Mar 2021 19:41:37 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id v8tSST3FUfwg; Fri,  5 Mar 2021 19:41:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3FD4F27E07D8;
 Fri,  5 Mar 2021 19:41:37 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3FD4F27E07D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614969697;
 bh=sHjU4vktUR4S6zjgaOGor+XpIzwBq2WV3j5aIV8jieI=;
 h=From:To:Date:Message-Id;
 b=QGrQY4vJ4EenE2xNAtHO+bVY5D+nxScNY7QDeMREEx7xMA2zYSJPPWzv/qu5tU9jq
 z7cQS6qNfZqJXJTUE31u8JgXpmzy1C9A4zjj9RIByXR62jM7UnYuTIBFYrp7YP+3sn
 /hoBOrNjDkCDBMwwKeuDUCOfGnOF5sVqLFlSai+o=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bVZbGpZ_32Vo; Fri,  5 Mar 2021 19:41:37 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 2ABBC27E0732;
 Fri,  5 Mar 2021 19:41:37 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri,  5 Mar 2021 19:33:26 +0100
Message-Id: <20210305183327.29753-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210305183327.29753-1-jmaselbas@kalray.eu>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_184139_547086_B6D401A8 
X-CRM114-Status: UNSURE (   6.71  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] kvx: Request enough privilege to boot Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At startup barebox must take all the privileges that will be
requested by Linux.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes v1 -> v2: nothing
---
 arch/kvx/cpu/start.S             |  4 ++++
 arch/kvx/include/asm/privilege.h | 16 ++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
index d90272c71..a647e8a51 100644
--- a/arch/kvx/cpu/start.S
+++ b/arch/kvx/cpu/start.S
@@ -115,6 +115,10 @@ ENDPROC(kvx_start)
 	wfxl $psow = $r21 ;\
 	;; ;\
 	wfxm $psow = $r22 ;\
+	;; ;\
+	make $r21 = DO_WFXL_VALUE_##__pl ;\
+	;; ;\
+	wfxl $dow = $r21 ;\
 	;;
 
 /**
diff --git a/arch/kvx/include/asm/privilege.h b/arch/kvx/include/asm/privilege.h
index 36b9ade49..f183b24d4 100644
--- a/arch/kvx/include/asm/privilege.h
+++ b/arch/kvx/include/asm/privilege.h
@@ -113,6 +113,21 @@
 #define ITO_WFXM_VALUE_PL_CUR_PLUS_1	ITO_WFXM_VALUE(PL_CUR_PLUS_1)
 #define ITO_WFXM_VALUE_PL_CUR		ITO_WFXM_VALUE(PL_CUR)
 
+/**
+ * Debug Owner configuration
+ */
+
+#define DO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(DO, __field, __pl)
+
+#define DO_WFXL_VALUE(__pl) (DO_WFXL_OWN(B0, __pl) | \
+			     DO_WFXL_OWN(B1, __pl) | \
+			     DO_WFXL_OWN(W0, __pl) | \
+			     DO_WFXL_OWN(W1, __pl))
+
+#define DO_WFXL_VALUE_PL_CUR_PLUS_1     DO_WFXL_VALUE(PL_CUR_PLUS_1)
+#define DO_WFXL_VALUE_PL_CUR            DO_WFXL_VALUE(PL_CUR)
+
 /**
  * Misc owner configuration
  */
@@ -160,6 +175,7 @@
 					 PSO_WFXL_OWN(IE, __pl) | \
 					 PSO_WFXL_OWN(HLE, __pl) | \
 					 PSO_WFXL_OWN(SRE, __pl) | \
+					 PSO_WFXL_OWN(DAUS, __pl) | \
 					 PSO_WFXL_OWN(ICE, __pl) | \
 					 PSO_WFXL_OWN(USE, __pl) | \
 					 PSO_WFXL_OWN(DCE, __pl) | \
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

