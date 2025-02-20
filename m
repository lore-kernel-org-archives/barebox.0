Delivery-date: Thu, 20 Feb 2025 17:41:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl9cO-004mLZ-1b
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 17:41:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl9cN-00064s-18
	for lore@pengutronix.de; Thu, 20 Feb 2025 17:41:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-Id:To:Subject:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ueu9Urw/+QqhF8uePqkEz0JYvM6emnZmfiCfhlsaRps=; b=fgzLJSC+ZZX90Hbr9ikROvnz7Y
	Z5oiXjess5hnKsg5h3174nxBIsH/6rW0gzNFxa3hr93rkIWsXqMSn0IW17cjg1qz0X7QyVSJ6Lyc1
	0bNXdkcQ9PMJ3RX8CHws5TMC7Tm756TQ7O/Uza4u0vIfd43iY7WStjG7p+fIzkDDE9hIQe1QhkuHa
	CfLvkE2vB/jA6JwrjL4iX0QwwYxFOUkdxHNfbzej3KTu0bhf/rdr2wFRG5iIAt2BdbdvbLr2vzT1d
	jaMn5BotyYmvEprTlkTjwcIC/JAdGNObk2F/wMVxLT7fnzan5DzC0vTM6HjphoIo8Kx3ctb6s6kML
	800X9b6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9bf-00000001uw5-1Eeq;
	Thu, 20 Feb 2025 16:40:59 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9bc-00000001uv9-30hA
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 16:40:57 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-38f325dd9e6so621948f8f.1
        for <barebox@lists.infradead.org>; Thu, 20 Feb 2025 08:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740069655; x=1740674455; darn=lists.infradead.org;
        h=mime-version:message-id:to:subject:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ueu9Urw/+QqhF8uePqkEz0JYvM6emnZmfiCfhlsaRps=;
        b=M4350Q+ytawBmtIVr7SE4f5wdk6lbm8JXNlAxkAU5XPast0RTB/Ey2/wXdJoNkh5dU
         FDoWqIaWwE3Uv5vfOK7w+TRBt6+v4iAkiXM9ypuTTDrJYAin3PBANiyhW1B5/5wS8+qb
         n0tT50nLn/tDWtd2lvCvfM0qQhHckGNUon+IBcGpQZXnYUPBA3laGIRgs2p8CylGkIZ3
         iYs2w4XE9q5ZAC4qqpvc+3TBTET0u+34FqZ8X/0T0keKWjrGLmUWjadTU3KviuGdWTiY
         oqQpkxwDoDzDjXYXJKGvSQA3EJ4rUVHa/uXXiSKOkFpIXt/dPuNUk8qhB8sd9R0cxM81
         dUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740069655; x=1740674455;
        h=mime-version:message-id:to:subject:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ueu9Urw/+QqhF8uePqkEz0JYvM6emnZmfiCfhlsaRps=;
        b=viHXzBQGrurylzPupW4IwPjxB/gkB5LPbfGgowsf/ZUKri0GGrGO7hc6x6lJXSwgaW
         zCd/IDQXXEsbcAmyvgW7U7hM2ZyBVxOaDTi7ZRYQS0YXimNTwG95vGl3j94I+czPSF3B
         qfBmNQ5Ci/DCS7Hb5KjjIX1fVTHEFt14/N/dXmZwon4zyJCYW3//Qrv4S7sMu7I833jZ
         8Q5nz18vAV+Mhp05+mqJXNxuEG7e8d18fVCRrML3IHIo6DAaaYnzDRwCiRpuMaUVe5Z6
         0E3qtsPC1UgKm9wBmPqujoZydtz0v2uiIBlpJtIm3WqIBj3NyuKPjdS2HG+2njIHVCQV
         Z/iQ==
X-Gm-Message-State: AOJu0YwtlfIvIsprVVa3wbbPum1C832gZrBxIUWuYuBgM0vTerUH3Zmj
	J3gWolDAgXDgV1aISjZyhMjDizYiJr97rKGBhyQlepM5JZmD1PsVezv+Ag==
X-Gm-Gg: ASbGncvbP+p4zHfd/RDVXX/tz6dtkFE1dzC0aLs+wcRtujX6bnbx3UDVjHHeO2Si3n5
	/MBfSRjpmxBa8PMCCzHUvdcsYJQf9FtdpCDzPBXGqdZvmTkDLG1N/vI33eLJi9QVLLXHUGVLw9l
	OPeabV6CiW8VGMcubCszZWGeYfvjz6t2lJIFnZ2KagI+Xfty/RqLzZhB+RkpQVV6yYgcCyaAUfk
	uA8IrMyzNRTrl0mrCjRdkEFIjkSLSp/gi7bHgfQ0QnhbynLgpEjJliVIKOffrJwwme3IdVCAkNQ
	IG5I1o1jrB5Gd77v3ss+0xCrl/gzbNb6Q4vu7ZK3l5H4NtuWTaOMIgo=
X-Google-Smtp-Source: AGHT+IFsI8li+Zcvkv3YJ+6JHXnafUxClRjhRW6OBoC92ZqVvURVBkvz6M+AJA6I9Df2AZYPy93PcQ==
X-Received: by 2002:a05:6000:178a:b0:38d:d8fb:e90f with SMTP id ffacd0b85a97d-38f58795868mr7464138f8f.24.1740069654829;
        Thu, 20 Feb 2025 08:40:54 -0800 (PST)
Received: from [192.168.47.169] (93-44-40-74.ip95.fastwebnet.it. [93.44.40.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d5e92sm21393395f8f.66.2025.02.20.08.40.54
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 08:40:54 -0800 (PST)
Date: Thu, 20 Feb 2025 18:39:55 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <J2TZRS.AUAITN7RW0RJ1@gmail.com>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_084056_748716_A0283FA0 
X-CRM114-Status: GOOD (  12.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device file was hardcoded to "nand0.barebox".
This patch harmonize the signature of

imx6_bbu_nand_register_handler()
imx7_bbu_nand_register_handler()
imx28_bbu_nand_register_handler()

with the other bbu register functions in order to take
the devicefile as parameter.

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 common/imx-bbu-nand-fcb.c | 23 ++++++++++++++++-------
 include/bbu.h | 18 ++++++++++++------
 2 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index d0261140cf..0d17a7bf6a 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1219,6 +1219,7 @@ static int imx_bbu_nand_update(struct bbu_handler 
*handler, struct bbu_data *dat
  int used = 0;
  int fw_orig_len = 0;
  int used_refresh = 0, unused_refresh = 0;
+ const char *devname = handler->devicefile;

  if (data->image) {
   filetype = file_detect_type(data->image, data->len);
@@ -1230,7 +1231,12 @@ static int imx_bbu_nand_update(struct 
bbu_handler *handler, struct bbu_data *dat
    return -EINVAL;
  }

- bcb_cdev = cdev_by_name(handler->devicefile);
+ /* Support both boot /dev/nand0.barebox and boot nand0.barebox */
+ devname += str_has_prefix(devname, "/dev/");
+
+ device_detect_by_name(devname);
+
+ bcb_cdev = cdev_by_name(devname);
  if (!bcb_cdev) {
   pr_err("%s: No FCB device!\n", __func__);
   return -ENODEV;
@@ -1432,7 +1438,8 @@ static void imx6_fcb_create(struct 
imx_nand_fcb_bbu_handler *imx_handler,
  fcb->MetadataBytes = 10;
 }

-int imx6_bbu_nand_register_handler(const char *name, unsigned long 
flags)
+int imx6_bbu_nand_register_handler(const char *name,
+ const char *devicefile, unsigned long flags)
 {
  struct imx_nand_fcb_bbu_handler *imx_handler;
  struct bbu_handler *handler;
@@ -1451,7 +1458,7 @@ int imx6_bbu_nand_register_handler(const char 
*name, unsigned long flags)
  }

  handler = &imx_handler->handler;
- handler->devicefile = "nand0.barebox";
+ handler->devicefile = devicefile;
  handler->name = name;
  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
  handler->handler = imx_bbu_nand_update;
@@ -1526,7 +1533,8 @@ static void imx28_fcb_create(struct 
imx_nand_fcb_bbu_handler *imx_handler,
  fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
 }

-int imx28_bbu_nand_register_handler(const char *name, unsigned long 
flags)
+int imx28_bbu_nand_register_handler(const char *name,
+ const char *devicefile, unsigned long flags)
 {
  struct imx_nand_fcb_bbu_handler *imx_handler;
  struct bbu_handler *handler;
@@ -1540,7 +1548,7 @@ int imx28_bbu_nand_register_handler(const char 
*name, unsigned long flags)
  imx_handler->filetype = filetype_mxs_bootstream;

  handler = &imx_handler->handler;
- handler->devicefile = "nand0.barebox";
+ handler->devicefile = devicefile;
  handler->name = name;
  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
  handler->handler = imx_bbu_nand_update;
@@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info *mtd, 
int block, struct fcb_block *fcb
  return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
 }

-int imx7_bbu_nand_register_handler(const char *name, unsigned long 
flags)
+int imx7_bbu_nand_register_handler(const char *name
+ const char *devicefile, unsigned long flags)
 {
  struct imx_nand_fcb_bbu_handler *imx_handler;
  struct bbu_handler *handler;
@@ -1612,7 +1621,7 @@ int imx7_bbu_nand_register_handler(const char 
*name, unsigned long flags)
  imx_handler->filetype = filetype_arm_barebox;

  handler = &imx_handler->handler;
- handler->devicefile = "nand0.barebox";
+ handler->devicefile = devicefile;
  handler->name = name;
  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
  handler->handler = imx_bbu_nand_update;
diff --git a/include/bbu.h b/include/bbu.h
index 5105d2ac70..087d3ee827 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -98,19 +98,25 @@ static inline int 
bbu_mmcboot_register_handler(const char *name,
 #endif

 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
-int imx6_bbu_nand_register_handler(const char *name, unsigned long 
flags);
-int imx7_bbu_nand_register_handler(const char *name, unsigned long 
flags);
-int imx28_bbu_nand_register_handler(const char *name, unsigned long 
flags);
+int imx6_bbu_nand_register_handler(const char *name, const char 
*devicefile, unsigned long flags);
+int imx7_bbu_nand_register_handler(const char *name, const char 
*devicefile, unsigned long flags);
+int imx28_bbu_nand_register_handler(const char *name, const char 
*devicefile, unsigned long flags);
 #else
-static inline int imx6_bbu_nand_register_handler(const char *name, 
unsigned long flags)
+static inline int imx6_bbu_nand_register_handler(const char *name,
+ const char *devicefile,
+ unsigned long flags)
 {
  return -ENOSYS;
 }
-static inline int imx7_bbu_nand_register_handler(const char *name, 
unsigned long flags)
+static inline int imx7_bbu_nand_register_handler(const char *name,
+ const char *devicefile,
+ unsigned long flags)
 {
  return -ENOSYS;
 }
-static inline int imx28_bbu_nand_register_handler(const char *name, 
unsigned long flags)
+static inline int imx28_bbu_nand_register_handler(const char *name,
+ const char *devicefile,
+ unsigned long flags)
 {
  return -ENOSYS;
 }
-- 
2.25.1





