Delivery-date: Tue, 12 Oct 2021 03:56:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71N-0006MG-Hm
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 03:56:01 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71M-0002BC-6E
	for lore@pengutronix.de; Tue, 12 Oct 2021 03:56:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fq8LUmdRNWMLTOicKKq1/Qzg2XLpcYrOAGcppxdgpAw=; b=VZgm1GtBD7Jg8m
	n7+hwWu3z8f2ImGCGNqN57rXK9jXNPBwNepd+kFod8vtp+HpVoeqnpDZzaHRSjP44NKm/EEKyDBSe
	+DafkoPrvFgdEBsac5k66oNCZKcGFi6SOIQkQZnomj1v7XxrCiFUNHAHFrgpqlu6u0pe68FLq2GD/
	ZpgxbVfwry0Gu+ZNoTs9FxRvHeXt46LOrrky+MGKKzR7H9IGaddRMFmhDrJ2UlwpnM6LFXH7pY4eE
	B2yr80jIPAMQnoxh+rG1oo/lBembC/vOOFhSa/goUoYQzCOq90rQmri9nQ+FaahDm7Gx5aTkeYoqA
	Mgb49g+Tjhe8hI5T/Yyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma6zf-00BE3d-2a; Tue, 12 Oct 2021 01:54:15 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma6zZ-00BE2v-6S
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 01:54:10 +0000
Received: by mail-pl1-x62e.google.com with SMTP id g5so9433040plg.1
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 18:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LqAbRqc6TPBrzLVE4a4oGtSCBbPcC1bpwG7V8WH+8V4=;
 b=k/Vze3V2zCAIUlLHT84xvFWVcmzr64AufpQpasQmZ0XJ2S4kM6uen+JjpvCPS/2snM
 xUEe8BeN1FU/8+DoJP3yCpB6rB/3JrUK2mgvdydbfaItj7sdwiqJjMccS1b0SRHLCl4z
 TAuptIpFwHpz+hL6el+xx9v2Fbu81elYdo9/3gF/OxECgO41/xp2KJrcPWesWIu/klAh
 zdX31p6mG9sdYxJQi9pGRVAlZqBwXMkIk6LWD2x/yxzlqspaqnR7rU4VjFnR2nsJNscN
 6EiUcbRurHwa8EAfppsOOI+nZrsr/pBkDQWwI2tyqb246YB8AKODR1QGwVZFlMkqJ5ds
 Ylqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LqAbRqc6TPBrzLVE4a4oGtSCBbPcC1bpwG7V8WH+8V4=;
 b=FcT9eVwC/WUzJ6tDvDAJr75ssu98CMiBj+Mq0xWAjAJEJ4lZPSYhbVN141HieVhuF+
 ATUhcl6YIgzYvARcQ4cyn9uVasydA0BEGEqBch6F1fLZ76g7vUmbdlv9eseqagKevaVR
 EQRKgVlMtBBU19E6+WvNT1iXMJN88H4vyFC8DDEGg76hAUeuq7JFL5N/0iIU4F4fyPV4
 l485qfQS14dHJUVGYpp7raGvpue/To5kr1A+PbfruBA1+Dw3nN7np+Anubg996cQS0GL
 63C6K1k3ulRT7+AFW7VVWz3TJESPZJNnPL+l7XGDY/2oFIxYfoniRz3Kz5atnqCq48T6
 jAMQ==
X-Gm-Message-State: AOAM5336XBXhrTlnorBMer8iUuXWqvvPtBTBoOmyOjYU4CTNBZMBwKq4
 Xh1jeoBAYyc1E4zZXnBqLWTESZzz0vBeyDn4
X-Google-Smtp-Source: ABdhPJzsG31dLyXSUTphhMzqVe6GDjJ3a9auVtsDen/4L5yy7h2DnxuSLZVEyFvWVfzxZaZRKEJ7ig==
X-Received: by 2002:a17:903:2c2:b029:101:9c88:d928 with SMTP id
 s2-20020a17090302c2b02901019c88d928mr27497575plk.62.1634003648072; 
 Mon, 11 Oct 2021 18:54:08 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id 17sm9042509pfh.216.2021.10.11.18.54.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 18:54:07 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <Y.Bas@phytec.de>, Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 18:53:59 -0700
Message-Id: <20211012015359.933464-3-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_185409_264443_F7A25E17 
X-CRM114-Status: GOOD (  27.88  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] imx-bbu-nand-fcb: Add command to help debug FCB issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add new "fcb" command.  It can save a decoded copy of the FCB to a file,
do a hexdump of the decoded FCB, or display the FCB fields.  Or simply
read and validate the FCB.

The FCB uses a different ECC system that the rest of flash and there is
no easy way to decode it in Barebox or Linux.  The code already here
does it.

This will also set the nand0.barebox device parameters with the location
of the bootloader images as read from the FCB.

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 commands/Kconfig          |  19 ++++++
 common/imx-bbu-nand-fcb.c | 126 ++++++++++++++++++++++++++++++++++++--
 2 files changed, 139 insertions(+), 6 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 5ae3cb3dd..d3b5cd7fa 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -277,6 +277,25 @@ config CMD_SLICE
 	  command can be used to print informations about slices and also to manipulate
 	  them on the command line for debugging purposes.
 
+config CMD_IMX_NAND_FCB
+	tristate
+	prompt "iMX FCB decoding and display"
+	depends on BAREBOX_UPDATE_IMX_NAND_FCB
+	help
+	  Decode and display or save the contents of the iMX FCB.
+
+	  This will add a command named "fcb" that will decode the FCB and can
+	  save the decode data to a file or display the contents.
+
+	  The FCB is a block of data at the start of NAND flash that instructs
+	  the iMX ROM bootloader on how to find Barebox.  It uses a different
+	  ECC config than the rest of NAND flash and can't be read correctly
+	  with normal "md" commands.
+
+	  The command also saves the locations of the Barebox image in NAND
+	  from the FCB into parameters on the NAND deivce, which are available
+	  in scripts as environment variables.
+
 # end Information commands
 endmenu
 
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 76ac1d4f2..e61494930 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -7,6 +7,8 @@
 
 #include <filetype.h>
 #include <common.h>
+#include <command.h>
+#include <getopt.h>
 #include <malloc.h>
 #include <errno.h>
 #include <fcntl.h>
@@ -14,6 +16,7 @@
 #include <linux/sizes.h>
 #include <bbu.h>
 #include <fs.h>
+#include <libfile.h>
 #include <linux/mtd/mtd-abi.h>
 #include <linux/mtd/nand_mxs.h>
 #include <linux/mtd/mtd.h>
@@ -27,6 +30,9 @@
 #include <mtd/mtd-peb.h>
 #include <soc/imx/imx-nand-bcb.h>
 
+/* Name of NAND device that contains FCB */
+#define FCB_NAND_PART "nand0.barebox"
+
 #ifdef CONFIG_ARCH_IMX6
 #include <mach/imx6.h>
 static inline int fcb_is_bch_encoded(void)
@@ -387,6 +393,7 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
         return ret;
 }
 
+/* Returns size of FCB on success, negative on error */
 static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 {
 	int ret;
@@ -403,10 +410,13 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
-	if (fcb_is_bch_encoded())
+	if (fcb_is_bch_encoded()) {
 		fcb = read_fcb_bch(rawpage, 40);
-	else
+		ret = 128 * 8;
+	} else {
 		fcb = read_fcb_hamming_13_8(rawpage);
+		ret = 512;
+	}
 
 	if (IS_ERR(fcb)) {
 		pr_err("Cannot read fcb on block %d\n", num);
@@ -415,7 +425,6 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 	}
 
 	*retfcb = fcb;
-	ret = 0;
 err:
 	free(rawpage);
 
@@ -870,7 +879,7 @@ static int fcb_dbbt_check(struct mtd_info *mtd, int num, struct fcb_block *fcb)
 	int pages_per_block = mtd->erasesize / mtd->writesize;
 
 	ret = read_fcb(mtd, num, &f);
-	if (ret)
+	if (ret < 0)
 		return ret;
 
 	if (memcmp(fcb, f, sizeof(*fcb))) {
@@ -1403,7 +1412,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_arm_barebox;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = FCB_NAND_PART;
 	handler->name = name;
 	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
@@ -1480,7 +1489,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_mxs_bootstream;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = FCB_NAND_PART;
 	handler->name = name;
 	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
@@ -1492,3 +1501,108 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	return ret;
 }
 #endif
+
+#if IS_ENABLED(CONFIG_CMD_IMX_NAND_FCB)
+
+static int do_fcb(int argc, char *argv[])
+{
+	int opt;
+	int fd;
+	int ret;
+	int fcbsize;
+	struct cdev *cdev;
+	struct fcb_block *fcb;
+	bool hex = false, info = false;
+	const char *outfile = NULL;
+	unsigned int block = 0;
+
+	while ((opt = getopt(argc, argv, "xin:o:")) > 0) {
+		switch (opt) {
+		case 'x':
+			hex = true;
+			break;
+		case 'i':
+			info = true;
+			break;
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'n':
+			block = strtoull_suffix(optarg, NULL, 0);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind != argc)
+		return COMMAND_ERROR_USAGE;
+
+	cdev = cdev_by_name(FCB_NAND_PART);
+	if (!cdev) {
+		pr_err("Couldn't find FCB flash device '%s'\n", FCB_NAND_PART);
+		return -ENODEV;
+	}
+
+	ret = read_fcb(cdev->mtd, block, &fcb);
+	if (ret < 0) {
+		perror("read_fcb");
+		return ret;
+	}
+	fcbsize = ret;
+	ret = 0;
+	if (!info && !hex && !outfile)
+		printf("FCB OK (%d bytes)\n", fcbsize);
+
+	set_dev_params(cdev, fcb);
+
+	if (info) {
+		const int oldlevel = barebox_loglevel;
+
+		barebox_loglevel = MSG_DEBUG;
+		pr_debug("Decoded FCB size:           %d bytes\n", fcbsize);
+		dump_fcb(fcb);
+		barebox_loglevel = oldlevel;
+	}
+
+	if (hex)
+		memory_display(fcb, 0, fcbsize, 1, 0);
+
+	if (outfile) {
+		fd = open(outfile, O_WRONLY | O_CREAT, 0644);
+		if (fd < 0) {
+			perror("open");
+			ret = fd;
+			goto out;
+		}
+		ret = write_full(fd, fcb, fcbsize);
+		close(fd);
+		if (ret < 0) {
+			perror("write");
+			goto out;
+		}
+	}
+
+out:
+	free(fcb);
+	return ret;
+}
+
+
+BAREBOX_CMD_HELP_START(fcb)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-i", "Print information from FCB")
+BAREBOX_CMD_HELP_OPT("-x", "Display FCB data bytes")
+BAREBOX_CMD_HELP_OPT("-n BLK", "Eraseblock number to read FCB from")
+BAREBOX_CMD_HELP_OPT("-o FILE", "Write decoded FCB to file")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fcb)
+	.cmd		= do_fcb,
+	BAREBOX_CMD_DESC("i.MX FCB decoder")
+	BAREBOX_CMD_OPTS("[-ixno]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_fcb_help)
+BAREBOX_CMD_END
+
+#endif /*CONFIG_CMD_IMX_NAND_FCB*/
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

