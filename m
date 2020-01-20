Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYVV-0000KZ-VS
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 14:58:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVT-0002mS-48
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:23 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVS-0006Dk-T0
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 20 Jan 2020 15:58:21 +0100
Message-Id: <20200120145821.22899-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
References: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 3/3] commands: bbu: add support for imd checksum
To: Barebox List <barebox@lists.infradead.org>

Add support for verifying an image by use of the imd checksum.
If the checksum that is saved in the image and the one that is
calculated over the image differ, barebox_update aborts.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/bbu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 00bec32a860a..b976b99d7c95 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -206,6 +206,10 @@ static int bbu_check_metadata(struct bbu_data *data)
 	if (ret)
 		return ret;
 
+	ret = imd_verify_crc32((void *)data->image, data->len);
+	if (ret == -EILSEQ && !(data->flags & BBU_FLAG_FORCE))
+		return ret;
+
 	return 0;
 }
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
