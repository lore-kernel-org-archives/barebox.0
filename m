Delivery-date: Mon, 01 Mar 2021 17:00:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyA-0004yJ-Bo
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:00:26 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGky9-0001Nl-Hm
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:00:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=73BEkJzPIWc1QMGroM3HCHI2Kihdn+QGx9NflYAnSoU=; b=bfu8esZBE3BoWabIR1e4/G1A+T
	SggUKr7qB5jGtvTAe8ZqrGRcc+FC2NwqLbDWHp7mkYJpRqC3BcdhIBOULwc8Kv1TNMuev0nJ5OGVp
	0s3W8o4h07mY5Soe0AmMedkzhmMGg678/DzCYheEspdjNswJZt+o1I9qzD3T9F0AB3w1Lf0JCmGek
	DExGNvjEdRczwwSBYGzDJcyboCQJ6/xmq34izJ1yPP9HF27FFBXLHMaiZU0xUQNBH0nfz8K0TQSg8
	EJGE62ITd+JaSuUnBQnXCyRjNOt+2ZRyW+nM+ogG94C7qz6iEk1efkIntfq+bmW14i1wjfCDCxoZN
	S6ZsEIyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkx8-00076D-Tg; Mon, 01 Mar 2021 15:59:22 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkx2-00073R-AR
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:59:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6ABA61A5459
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQRP4EL;
 Mon, 01 Mar 2021 15:59:13 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 303C11A5453;
 Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 04AA527E0840;
 Mon,  1 Mar 2021 16:59:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 1cRTEg_yQxFx; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9D6ED27E069F;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9D6ED27E069F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614614352;
 bh=hJ8rZr0kj0k73sYICrCwd8L19QJ8rXvopvy6Xs5dVtM=;
 h=From:To:Date:Message-Id;
 b=UflPjb4m1eGrvfcPFFO6eYVJbpR5IPJKzY69lTR10wPFwAimeg9nHmqYENC1TqNmX
 FEWb77eDKdxaS+0BjFsn1XpkWsuL40X6ytRP8lHl/iNf6IscBK4nFqF/f2LQOSDJy7
 He4H9cADNvSmLDsZnsRsUr4ka1sy0BoiPdZ4yIi8=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lL_pdQil_tUw; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 883A627E0840;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 16:58:50 +0100
Message-Id: <20210301155851.12463-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301155851.12463-1-jmaselbas@kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105916_702945_7E1DDCF7 
X-CRM114-Status: UNSURE (   7.45  )
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
Subject: [PATCH 4/5] kvx: Request enough privilege to boot Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At startup barebox must take all the privileges that will be
requested by Linux.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
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

