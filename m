Delivery-date: Fri, 05 Mar 2021 21:02:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIGeJ-0003AI-9M
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 21:02:11 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIGeI-0002eo-DQ
	for lore@pengutronix.de; Fri, 05 Mar 2021 21:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qIN0NLy2AH5NvypJwZxxx0QyTO60LXEotCCoHvYw5o8=; b=YjpZvglnCIfmakbfokzPFHS+ZT
	v7IUXSAddfibwnIogWbuXa/KMjf/PV2R3frY2eGOMQEkx46wcB49lakC3IArPAtrhjG3FpgS2zTLQ
	+DIJNii9LXnikmLTNjthJdMzK2CkY3dLuVC0gNlxy8ZV/FgMV+28g9gfEx40jSUNbZt7UFH9diMSh
	HlcNk3M5MxXOBsSZjakkt/Bfyh03MYcHVU0PNivP0vl30rWcqX820k4IxdCFY5uiNrCNde+ZWU1y8
	jMz5hB+cH35ghsEmgF6Z1blPt+4qxq/L8iDETtDSdjFgqr5dGfjIOWaFydUXSWsX4t+dKINbrbp8I
	Q4zmdPig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIGcp-00GGvR-Fw; Fri, 05 Mar 2021 20:00:39 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIGcf-00GGuK-CT
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 20:00:31 +0000
Received: from blala.de (localhost [127.0.0.1])
 by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 125K4OuT000972; Fri, 5 Mar 2021 20:04:24 GMT
Received: (from akurz@localhost)
 by blala.de (8.15.2/8.15.2/Submit) id 125K4Oi1000971;
 Fri, 5 Mar 2021 20:04:24 GMT
From: Alexander Kurz <akurz@blala.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>
Date: Fri,  5 Mar 2021 20:04:22 +0000
Message-Id: <20210305200422.927-1-user@vserver64>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_200029_694530_41231680 
X-CRM114-Status: UNSURE (   8.62  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: imx-image: fix iMX35 header generation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Alexander Kurz <akurz@blala.de>

Two header copies exist in the iMX35 image.
When writing the barebox_header, also write it to the second copy.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-image.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index f5e89d07a..6cbee1d9b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -984,8 +984,11 @@ int main(int argc, char *argv[])
 		xwrite(outfd, buf, header_len);
 	}
 
-	if (add_barebox_header)
+	if (add_barebox_header) {
 		pwrite(outfd, bb_header, sizeof_bb_header, 0);
+		if (data.cpu_type == IMX_CPU_IMX35)
+			pwrite(outfd, bb_header, sizeof_bb_header, header_len);
+	}
 
 	xwrite(outfd, infile, insize);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

