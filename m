Delivery-date: Mon, 17 May 2021 20:56:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPl-0005VT-OM
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPk-0004O0-CB
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OGzJfZYcbSeiOvBJRgBp+8dFaMocVJ62eUe8+Kn95KI=; b=oFhSSeJKkjeSbvcaq1GP75iMx
	3Cx7fGZeouWCd8CfDawknzaJKnQT74HMWt98x3E8A+60SUf0AmEdfpZZIrIRTxTlHaoXQV/QxGFQa
	e0rCL143rjACqA+Vncw0R7YHcdI9ss5Sf6HcZtTE7Y3tmhKOQGmZO5cXophDvK5LNbT9iJhaNSRXh
	fpryexB11t/lC4XQoJF+d5qu56cVz5KD54seMpBV8amcVgv5RAbcApOHrkhnwjW/ZJbxN25DPFtSQ
	wPUHPrX0bsFdXNuyc98xQvAR11vUcA/sbTMwH65qrj2aVDTK6Shd/pokX++PpwPnc73JrwfnWGuHr
	aQSi97llA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOa-00Ftfe-AP; Mon, 17 May 2021 18:55:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNu-00FtUo-Lv
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=a/NjzSFisCeQHTMAldT09tltkCbZdrgkchHQcvxtz9s=; b=riOBS33T1Uc91aT0K8G6Cv1pe2
 Y9BGcsw2MsDs/DJWuPHxhJJjh5G8/t2jtV09x63MdpMq5t9jxNds06dRMzaup9Y0FRoBaw/QzGSCt
 lgOi+Vy/xKpnYAHx0u0bOXDJPVGbx9EfKW/E0f5fAIv++8DCAQhm80qrj1+NiR0lR61VxiD1Myzim
 w0N1wl42nNMhOk4pUoe+oncDuqmguQvZVNzxPLv6bBBHoFg10Z09dZZppoMFN6VokVR09m74G42Yy
 OhTf1vvQ8qLi2+VSz+CWejBX0DqzI2ewMmpSgetMMky5NnT2w9S70ou1bgl8JXEnBFJyOZOpggtEq
 mLCa9J2A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SW-3u
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PE-CD; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xv-DJ; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:17 +0200
Message-Id: <20210517185424.32145-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_317724_36C8C699 
X-CRM114-Status: GOOD (  12.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/15] ARM: i.MX bbu-external-nand: Do not modify image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct bbu_data::image is const, so do not modify the image, but create
a copy instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-external-nand.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index 8aa4f152a1..0f7cc51caf 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -39,7 +39,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	uint32_t num_bb = 0, bbt = 0;
 	loff_t offset = 0;
 	int block = 0, len, now, blocksize;
-	void *image = data->image;
+	void *image = NULL;
 
 	ret = stat(data->devicefile, &s);
 	if (ret)
@@ -55,6 +55,12 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	if (ret)
 		goto out;
 
+	image = memdup(data->image, data->len);
+	if (!image) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
 	blocksize = meminfo.erasesize;
 
 	size_need = data->len;
@@ -172,6 +178,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 
 out:
 	close(fd);
+	free(image);
 
 	return ret;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

