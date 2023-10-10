Delivery-date: Tue, 10 Oct 2023 16:35:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpP-003BPV-29
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpL-0000H5-SB
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WFU77D5LAHeArOKsspWiuYjWF98TChsQJB5Fwj9ODF0=; b=ST/ylfglUuxcL1f4gkxrVRM00I
	i8GMRjks8oXJv1mroH/GSXVr0+f+ZsvPBfHP/Iy448yAuNrrFEffy5ftkd22b+CrJpt6P2mVo8RxE
	sig56Vn+OyCdH0GIt1IxL4TBhI8W43sKz38K31M9YncL3tYkTQRzI41GrwEMNEZkkxAjZrLiwurzD
	hPF0q2ct45XV8gNhFgaETZcoSgNuX9TFit2NPBO17NrKpEsATEZLjxD/W0/KoXPMmGStAIebLOr7C
	NdUdQ3eCkAI/AA/aG89trHCek7u2rkZ5SJd7MUoX8XifnarXiTqvaYBj+E6TR/TYm9HTvOlTC/QUA
	2REHl2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDo0-00DZwy-0J;
	Tue, 10 Oct 2023 14:33:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnt-00DZnF-1E
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=WFU77D5LAHeArOKsspWiuYjWF98TChsQJB5Fwj9ODF0=; b=MzGICYNY96ac2BpVkYMF8PNRfz
	GacUhEtITc7io2iJFCzjcP1ZOn2/2Ibobaa232E2J6RgG6MKbvQooIJNFYjhPqsnNnecJMPnYS1kU
	v0/AyfLuLyW92eTFX6UkYD+82g8hiEcftp9v/wtPktnhZ+98p3yKLwnuT5s+/Rco4/vJn4tl47ftv
	CexJZhoGBuYlmezLOSOHUX8eHH2yUnmeqd/HWYOWy2/UeehFOROgAafceIdTnX0tOElxqFyWbEsKh
	/tGtgtIDBJPjPweKnrZtnpYaUnThcQ5+agUvmW3GdZcaXfKei0tqSwPaWsVVpDukUa5djU7K/ddOD
	gPpI6E9A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvG2-0P
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Gi
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:03 +0200
Message-Id: <20231010143314.2031253-16-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_747593_0A2F1055 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/26] scripts: imx: force flexspi and hab option order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Force the order to ensure that the hab options are parsed after the
flexspi options. This is important since we need to know which memory
regions need to be verified and/or en-/decrypted and with the flexspi
support a 2nd header is added in between the first header and the
barebox pbl binary.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index e3169bace6a6..32488455b7a8 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -614,6 +614,12 @@ static int do_flexspi_ivtofs(struct config_data *data, int argc, char *argv[])
 	if (argc < 2)
 		return -EINVAL;
 
+	if (data->csf) {
+		fprintf(stderr, "#include <mach/imx/flexspi-imx8m*-cfg.h> must be placed in front "
+				"of #include <mach/imx/habv4-imx8-gencsf.h>\n");
+		return -EINVAL;
+	}
+
 	data->image_flexspi_ivt_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
@@ -624,6 +630,12 @@ static int do_flexspi_fcfbofs(struct config_data *data, int argc, char *argv[])
 	if (argc < 2)
 		return -EINVAL;
 
+	if (data->csf) {
+		fprintf(stderr, "#include <mach/imx/flexspi-imx8m*-cfg.h> must be placed in front "
+				"of #include <mach/imx/habv4-imx8-gencsf.h>\n");
+		return -EINVAL;
+	}
+
 	data->image_flexspi_fcfb_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
-- 
2.39.2



