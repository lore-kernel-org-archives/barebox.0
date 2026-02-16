Delivery-date: Mon, 16 Feb 2026 09:42:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBV-002G1b-0L
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:42:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBV-0000sL-6g
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:42:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iL2D0rbXFdqOWSiEFwhwW26gfZs4AC8WVIdaltOkyQs=; b=AnSs0BfC3xiGmFzec7WJh+79Eo
	HZVs1uY7CtByCBQ6TtNFijpCjnQgbjU5wcCBQ6y3evCGhfTA+LQgpJNg8NaB8qHG88RMyR/h1lrii
	MVjae2JOCdA+ET+V+NXRFbQcrXSl5/P8FIYqVu+Cx398CWGQO+4gOcspab961b+TS6M9XmBTTTU66
	vOidf3shwXVKMdgEb+2Rvw06ju5EvoiwwOCLCyXzqC14b0PvltYDJQVRl4DUK7W7/dm7DqT1xeCS4
	O6kMAGbh2YJxA567LIuW/EtPHv7aP4RIMwCPZk7PUGEdaBrYa6ztroaNrSOeaJ+u2EVARY37ZZ2PK
	as+oem0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruB6-00000006AVy-0cMC;
	Mon, 16 Feb 2026 08:42:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruAr-00000006APQ-0eL2
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:41:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000dr-FP; Mon, 16 Feb 2026 09:41:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAn-0012BU-2o;
	Mon, 16 Feb 2026 09:41:43 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000000EsaY-0VuH;
	Mon, 16 Feb 2026 09:41:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:41:37 +0100
Message-ID: <20260216084142.3546363-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
References: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004157_861386_E578D47A 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/4] FIT: fix potential underflow of stack array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a bounds check on depth before decrementing to prevent
stack underflow when a malformed FDT has END_NODE before BEGIN_NODE.

Reported-by: clang-analyzer 19.1.7
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 104a01b73658..a5d0a189f27c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -153,6 +153,8 @@ static int fit_digest(struct fit_handle *handle, struct digest *digest,
 		case FDT_END_NODE:
 			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
 
+			if (depth < 0)
+				return -ESPIPE;
 			include = want;
 			want = stack[depth--];
 			while (end > path && *--end != '/')
-- 
2.47.3



