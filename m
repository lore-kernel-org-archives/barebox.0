Delivery-date: Tue, 01 Jul 2025 15:55:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWbRs-00CycR-1H
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 15:55:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWbRr-00070K-SH
	for lore@pengutronix.de; Tue, 01 Jul 2025 15:55:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yK6rE0rm6jFUujslkWhR/vfe7V8C+eBOtJlKbDn5q+M=; b=EbllKb59TL9XpzyqcROR+kJ0wH
	3NMV804c9byQ4RNhFMe2iq0LO3cT1raLOUTSPmIvVkddot/IiuOrquFFKSrW1C9swJkGmBBkYau9/
	nnNNTsgJIbJEIxY5gmUoRBS3p+vVFIV0eUOY9+rgohuu1wq1Fo76btwXNXYrH9NqtPY1aRLzYOB6J
	TlOCWP3vRVW7w6UHjj5WurzQcZ5pkamo8tKkL6lMzVOb1PkwnNS9v1lAK8DKLkNbtRrRtAoBOaHus
	TaYzJDuy03AIgEm0Oi0T48LlaaMizISk9h9I6mE3DwGMxk8kT4eKXkphghHb8rLfa7iKk8XUV4nVi
	WfLzQAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWbRC-00000005b4n-1A8H;
	Tue, 01 Jul 2025 13:54:18 +0000
Received: from mail-108-mta46.mxroute.com ([136.175.108.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWaC0-00000005L1v-0LaY
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 12:34:33 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta46.mxroute.com (ZoneMTA) with ESMTPSA id 197c5fb27fd0008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Tue, 01 Jul 2025 12:34:20 +0000
X-Zone-Loop: 813712654264a8decc76661184b2f0e8d913e5a82fc8
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=yK6rE0rm6jFUujslkWhR/vfe7V8C+eBOtJlKbDn5q+M=; b=Z
	iMbQAcfoYXMIWpfE6N5BwKISfxO7mNfPFdlXo8HsReGNnKw8imCpTv6qn5efa+WroSDHeRIdcN2Lm
	Ma2LDex5dfM/4YGa6tAkeQfhABD1bfmsgRfsoaYoUoQsxoDxmj/54q6ft4qffu9KK6iqxrvo/tiRu
	5NPzJaBRE8s73sAmlpv9soM85Biqbe2bdZTDsASWz3FCRgZyUrgnk4+5/HPXqFwWSuAJQTWnjStun
	daMaHnPrwzjUihNpk3UaQf6xTnrMuLdVw2rf/IqoW/m8SBguThjYJAokOi1juwdMlBvi4tQWYIxS2
	JhrmhODEGf6r2XRrf5ME9VQ7MCaTfte2w==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Tue,  1 Jul 2025 20:34:13 +0800
Message-Id: <20250701123413.1755385-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_053432_215255_19D98D00 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] barebox.h: correct barebox_main default comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The comment incorrectly states that barebox_main defaults to
run_shell() when a shell is enabled. In fact, it defaults to
run_init() when both shell and command support are enabled.
Update the comment to match the actual logic.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 include/barebox.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/barebox.h b/include/barebox.h
index 1b291129e9..6f3179d4bd 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -14,7 +14,7 @@ void __noreturn hang (void);
 
 /*
  * Function pointer to the main barebox function. Defaults
- * to run_shell() when a shell is enabled.
+ * to run_init() when shell and command support are enabled.
  */
 extern int (*barebox_main)(void);
 


