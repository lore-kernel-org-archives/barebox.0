Delivery-date: Mon, 21 Jul 2025 07:07:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikj-0027aZ-26
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 07:07:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udiki-0007N6-PO
	for lore@pengutronix.de; Mon, 21 Jul 2025 07:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgzzvqGgmDVIZ4G5oa7DywkAPm4uOGW6/6WOcqHspB4=; b=bYk1uhlqcjsTke
	0SYaxgAlECUVRpIyQjdNtAPh6m187DCBY5eHWJ+bZE4o4RZRqtx56Xl06rdz15pJVOTxFnmfQqjeR
	Xa+LNCFk6AGidiPmFGrjICvb2a/MZeGiVaujbFhyA/hDc6ikN9kd6BH4uVcxby3IXNVqqaqJl8uNu
	iDyGs3KgasMB5L55huquASopWfpzsuP5AqVYno8wOKBq7pZl4QbUhhqpRdvVc4R2EQOYUW2fSyQl5
	7HCiH8xyE4cQMLhdHTHGxiHyUWgYOzaeVF2kJWHy7wCjhiV8Tzy0TUccN3omYYfZB6RG8dbJjnekM
	uh9hiZN3A84GcVsnVWGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik6-0000000GEFu-1mjN;
	Mon, 21 Jul 2025 05:07:14 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik3-0000000GEEn-2XPy
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 05:07:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-60c01b983b6so8139422a12.0
        for <barebox@lists.infradead.org>; Sun, 20 Jul 2025 22:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753074430; x=1753679230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KgzzvqGgmDVIZ4G5oa7DywkAPm4uOGW6/6WOcqHspB4=;
        b=EM+1+aagotiY6lkqWnd/wgGBycrDxyUKKzUv2AWk63e7TnTQ2UP49EjkAg9NwpL+Nw
         Tc6RNbO64t2e7eyLqATGXQo3iMit57cssnRl5dnUvaAboLiIko6lfoez/CbcXSa+aJNq
         Mfe6nGv+GX7lwweZUIe6mBQSd8CWeIHLaHQBWdupTmG/VDM4FCkhxKJnmb30qoeq9t/G
         DXOVY7I0M1H2cO61UrtLcsf9u3wQVMOJ14ISLDrDIHlm4qqH40WYV6M/9wsNRCXhXrcm
         AMnbWlDs5nlr1bWBy+CgNtaKRXT9yANbWzIuFK/jRhglsqxKoNRNhQ7DCLhflkx5Zqjl
         hCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753074430; x=1753679230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KgzzvqGgmDVIZ4G5oa7DywkAPm4uOGW6/6WOcqHspB4=;
        b=tLh86gMpM3OpSDCMXzWBV64QicFRywYcYyPTLAO08oBd4dJ3zf7Zu8QKtSZcoka+Sl
         YejFB7A1V7ibSQfbcqDjJHa2vmnHH/AUBi3zDfsFuU6fD+0xGjUuuzZ0xPlE59j7X5iN
         F8/bpGPUE5l/vTBIBSn4BXATIR/ABQf6FVhbc0q3+WGamTe8t+WMBbT4227ACt7/P4GG
         MV5oKMFYyobl6R6bFejTb6f+Dy9zqayuFmqOsWflrfLD5TqSnSGq9RQSEGGEPPwCJjZa
         DXCuwzq40CKgsp+dMLFoYUUYD72QUnMXoZ+g60JXb9RoB/4DcAi/j7gEOo5DTcQw9eVr
         c+9w==
X-Gm-Message-State: AOJu0YyMjpDTdfltf2XALcC9TAQFb+l8DcYSgDCbAUljOt1U0DGvCIRB
	tHHPN1rBkeBA+UxbLgo4un7xa+fBu0PfNYWsQEmHmx9uQXTQXYwmLDK8S7k6tQ==
X-Gm-Gg: ASbGncvwXF8COUKK1pynJrZ8CJiTMA8XtKF/6mbRrf7gAJ3T6pmC/9Hsu1vNnNiKdZb
	pDKAJAEigwGeZuDO0OjQZ7tYob55Pon3H4BoVoFQ2v1Up4USkB/JkOPIo/4Bxhm0EzfZ37m1PXd
	lHGAVy9BH0PHa6Lmo8wyXK0vjd8QM4RK9OBUlp2kFBcwK3cqgstH/IKMyXc7ahrJWLX5qSm6uvh
	v1rYA5v9tC5qD9JbQIQK7AWkEyLthHLhOsahB9zu7su1FZ/vILYbNck+HngvsAPFPP++7RwCLQ4
	JUGfMdDOyzB0jk6QfOftHKofpWt+ARSe0QWdBA6avxdo3TVwifIJFQ03wxLHnYITUYoIO3rVISo
	/3u8Fg8JHWkrish+tVm2FJX3UTuifug0yXPWv5aOQwsNg23TomGJZlg==
X-Google-Smtp-Source: AGHT+IEKl1LGu9+nFvJW4hrwfk4lBtolT1Em6kJ7T0HXDaW4jRqefMd/bTs3ZxHI1XDF92bIeBqOTA==
X-Received: by 2002:a05:6402:913:b0:60c:6b2a:d170 with SMTP id 4fb4d7f45d1cf-612c0efa713mr11136859a12.13.1753074429788;
        Sun, 20 Jul 2025 22:07:09 -0700 (PDT)
Received: from cinco.. (109-252-15-179.nat.spd-mgts.ru. [109.252.15.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f5cf4esm4742135a12.32.2025.07.20.22.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 22:07:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 21 Jul 2025 08:00:45 +0300
Message-ID: <20250721050045.17310-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721050045.17310-1-antonynpavlov@gmail.com>
References: <20250721050045.17310-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_220711_647066_B279FB65 
X-CRM114-Status: UNSURE (   8.96  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] include/driver.h: drop unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/driver.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index dd50a7aa3cc..5169b959f92 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -117,13 +117,6 @@ static inline void device_rescan(struct device *dev)
 #define device_for_each_child_safe(dev, tmpdev, child) \
 	list_for_each_entry_safe(child, tmpdev, &(dev)->children, sibling)
 
-/* Iterate through the devices of a given type. if last is NULL, the
- * first device of this type is returned. Put this pointer in as
- * 'last' to get the next device. This functions returns NULL if no
- * more devices are found.
- */
-struct device *get_device_by_type(ulong type, struct device *last);
-struct device *get_device_by_id(const char *id);
 struct device *get_device_by_name(const char *name);
 
 /* Find a device by name and if not found look up by device tree path
@@ -137,8 +130,6 @@ struct device *find_device(const char *str);
  */
 int get_free_deviceid(const char *name_template);
 
-char *deviceid_from_spec_str(const char *str, char **endp);
-
 static inline const char *dev_id(const struct device *dev)
 {
 	if (!dev)
-- 
2.45.2



