Delivery-date: Thu, 15 Jun 2023 14:32:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9m9U-007zoa-2I
	for lore@lore.pengutronix.de; Thu, 15 Jun 2023 14:32:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9m9R-00089t-9b
	for lore@pengutronix.de; Thu, 15 Jun 2023 14:32:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J8L4rEm13VlTaFaQAbq4EuUUCUYAR8WwQuhRagyN4kg=; b=gaD2IrhRhYAXAEhPSisNIb4YcZ
	GyihmVUkGZxG2Bd8/iNqO6DKcVFDtTsYjKw18TR8jnfoG5MuNLdvcOs+IKYIwHvs355hoc6uOOjjb
	D9ESF4xKMm5Kmnz9737TW2v6omn3oWBGvjMOphREHDaZLTmVyo9CbLMwgVI5XWXwZ90HEkT/fBRGE
	SZpq96Mpi5DKRTxM6EugiRFoAjoH9ep4lp5HvNXhd2fCZXn9bHN6JH7DgBXN1aqZkTIcCqzzHkau3
	mTOY4qIYsp3qlktEhqZd/DYIFb9kS0+AtcfmgRXnWvMPQqHYr/cMV8C1bqN7guIV1RksBsyd5zhwj
	GgX2/mZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9m85-00EtNO-1m;
	Thu, 15 Jun 2023 12:31:09 +0000
Received: from smtp84.iad3a.emailsrvr.com ([173.203.187.84])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9m7z-00EtMI-34
	for barebox@lists.infradead.org;
	Thu, 15 Jun 2023 12:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686832258;
	bh=pHAcPCSrj+XSjJbFiTUSx/B5KgsSurO2inCt3ocLTsI=;
	h=From:To:Subject:Date:From;
	b=F60hYsJfvyB6qjA0joWj6zwXEd5x6O5GB/UlEULqIhDDoilPiH1h70g2xcK5fG+vQ
	 gF23/zGJn+vmArsWayRjpBHddmw91anOdJNr03Vn7ZjD3xw3gFgc0weP5sWK+urINr
	 AOJQo7N8iJu6LS/7qAF0T8rWa9avzdqN9qtysyNQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp19.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id B9E5F4DB1;
	Thu, 15 Jun 2023 08:30:57 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Thu, 15 Jun 2023 13:30:20 +0100
Message-Id: <20230615123020.25927-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: 531d3f02-49f7-449c-832c-1909b24e8c20-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_053104_153363_0E557589 
X-CRM114-Status: GOOD (  11.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: socfpga_import_preloader: Use SDK-supplied Python
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Change `generate_spl()` to use the `python` bundled with the SDK (SoC
EDS) instead of using `python2.7`.  In version 20.1 of SoC EDS, the
`iswgen.py` script was updated to work with Python 3.8 and no longer
works with Python 2.7, leading to an error similar to this when
generating the SPL:

```
Generating file: /tmp/tmp.0xSiyYqAU2//sdram//sdram_config.h...
Traceback (most recent call last):
  File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/iswgen.py", line 63, in <module>
    hps = hps.HPSGrokker(inputDir, outputDir)
  File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 54, in __init__
    self.createFilesFromHPS()
  File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 546, in createFilesFromHPS
    self.handleHPSPeripheralsNode(childNode)
  File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 413, in handleHPSPeripheralsNode
    self.pinmuxHeaderBuffer.write("#define " + name + ' ' + '(' + str(used) + ')' + '\n')
TypeError: unicode argument expected, got 'str'
```

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 scripts/socfpga_import_preloader | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index bd54e1b913..a555c9174b 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -112,7 +112,10 @@ copy_source() {
 }
 
 generate_spl() {
-	python2.7 ${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py -i ${handoff} -o ${splroot}/
+	USE_SOCEDS_PYTHON=1 SOCEDS_DESTROY_PATH=1 \
+		${embeddedsw}/embedded/embedded_command_shell.sh python \
+		${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py \
+		-i ${handoff} -o ${splroot}/
 }
 
 if [ -z $splroot ] || [ -z $boardroot ] || [ -z $handoff ]; then
-- 
2.39.2



