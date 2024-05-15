Delivery-date: Wed, 15 May 2024 08:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oU-00FPZA-13
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oT-0005Kz-LF
	for lore@pengutronix.de; Wed, 15 May 2024 08:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m6fOuIk4NTRWr8gQGOhgsj21hEOewAGLy/pZCNSqW/8=; b=KU5AiD78lGQ3Iut9qmAHhM4gVq
	Nf3vySxuUN5TjNoHVJNYbUTIX3fZP0Jo5QD/YnBDXvNie+VsM2/tYTxESkWkP8uGj5omoSK1bXCWa
	bdNfY5FrgMUVB1015SmSns4abDqzH2zXiNPBPBXDnvn3knGbfbvpIdswQMeyWYfBn0AZTDezn9LbC
	vuPe4VVMil1REczUgaI5YS8Y0WTJsfFrqXF4FfVwhQx5B2JKjw1vAgEI3fPfdfzydcwPj2fm0jLsC
	v5tfdbTWKvXbHWtONsX1dLibSCIQy9EZCUCp0TBI30Qml6x8sghZwPxLl2KbEjLzK3e0DznArvIez
	n4NJz8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77o5-00000000c1j-23g1;
	Wed, 15 May 2024 06:08:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77o1-00000000c0a-3aVI
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:08:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77o0-00056o-BR; Wed, 15 May 2024 08:08:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77nz-001UGJ-VH; Wed, 15 May 2024 08:07:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77nz-00F1W3-2q;
	Wed, 15 May 2024 08:07:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 08:07:58 +0200
Message-Id: <20240515060758.3580734-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
References: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_230801_925495_DE56DBEA 
X-CRM114-Status: GOOD (  15.26  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] pblimage: ls1028a: fix handling of short reads on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer toolchains rightly complain:

  scripts/pblimage.c:259:17: error: ignoring return value of ‘read’ declared
       with attribute ‘warn_unused_result’ [-Werror=unused-result]
    259 |                 read(in_fd, mem_buf + 0x1000, image_size);

In the ls1046a case, this doesn't happen, because pbl_fget is used,
which does a number of things:

  - report warnings and exit on read errors
  - fill buffer with 0xff on short reads
  - increment pmem_buf and pbl_size by the number of bytes emitted

All of which, sound like a good idea for the ls1028a as well. Therefore,
initialize pmem_buf and pbl_size to the correct value and use pbl_fget.

This makes the code easier to follow through by making it explicit that
the image's payload is always given a 4K alignment, independent of the
size of the image header.

This change has only been build-tested.

Fixes: d5e5a65c2b64 ("pblimage: Add LS1028a support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/pblimage.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 610d93b36800..a3ed74836883 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -254,10 +254,16 @@ static void pbl_load_image(void)
 		buf32[3] = image_size;
 		buf32[4] = 0x80ff0000;
 		pbl_size += 20;
-		pmem_buf += 20;
 
-		read(in_fd, mem_buf + 0x1000, image_size);
-		pbl_size = 0x1000 + image_size;
+		if (pbl_size > 0x1000) {
+			fprintf(stderr, "Header exceeded maximum size of 4K\n");
+			exit(EXIT_FAILURE);
+		}
+
+		pmem_buf = mem_buf + 0x1000;
+		pbl_size = 0x1000;
+
+		pbl_fget(image_size, in_fd);
 	} else {
 		exit(EXIT_FAILURE);
 	}
-- 
2.39.2



