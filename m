Delivery-date: Tue, 28 Jun 2022 08:21:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o64bW-00HVtb-4E
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 08:21:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o64bX-0001eo-UX
	for lore@pengutronix.de; Tue, 28 Jun 2022 08:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qVNxh+UWgNMe/dI6y8gLSuOf6DXyOyxZz3wAWQumZbs=; b=Yl/16YC4sE3ZimMtLfwjVsPQlJ
	CFUAnTHCrgOK/b5otV1ISmlDXeFkCwhZ2SkG4mqy9asL3j2nGMiOdCL7cs0oU8Eq3SA6ACZ13/qI8
	CLh+DRgRbouVWnlwFQeekTf8N2o7abKGcVKgs29kY+3vkxhSAoSO19WOzK7c0FIyXAbDkktluPAGU
	pvKNgD2IJBvE8EGFda2YctTrZjo5lwl6Uw3H0VmnyneErwOpNueDJ/qqPyjEpcOFFjsCDyXyQ4IKE
	cDXzkD22RQCR8F9Sq2CJajOujRV1ABXA/nvZTupCuOVqqI/a/bvdDTAWwlgAhzNPk38wPCPexxicJ
	O13R18Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o64Zx-004fhZ-EF; Tue, 28 Jun 2022 06:20:05 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o64Zn-004fdK-Kp
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 06:19:56 +0000
Received: by mail-lf1-x136.google.com with SMTP id a2so20489027lfg.5
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 23:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qVNxh+UWgNMe/dI6y8gLSuOf6DXyOyxZz3wAWQumZbs=;
        b=ZvbmVnSX1z2kCGMzjaoZzJ3uyjpoptLrdfVcJAyFK+gvQcheFaGfMvgcUT4EKA8XjD
         tQrHfN6ndyCsMTENO+W5Pk6IS3+dsTtbApDG9dR/E/krWNQfi7+3+SOXuVdcpBt2+d5d
         RA3T+rqm8UJxU68tYfnZ3yvPb1lQgkzepTbaYKko9O0pQlh7X2oSBpQ/acwQby9VUoBo
         50k9ophR1I1MDvheq+atAx03PC9QxTO7yFtBcV4af/yWlkgQCYsG/opd37lUorASsi13
         JKm4pxhm8ce+GbY/+TLzyNhKfE2Up8i1p1r6sWmLLU/1YnqVZ3/x0gN4v+GlgFx4pgiO
         9gEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qVNxh+UWgNMe/dI6y8gLSuOf6DXyOyxZz3wAWQumZbs=;
        b=ejt93tvqP+PuLJhuoj5oYtStuh2EJytG8VB1UX7lvN7tGh83gtQwpxiIAXUYsikNZd
         amaV3xy/xs0t7DCDFTFRP1YX243ZrhPMDBW3Q/ydqPlTpQ6+lw9/xGJi3SuyABiKtLnT
         1i5JsbmVIgsnHhHknKq2d82nM2PVggu1Se40Wi9tTe0SUpzdhqe4ZJgWOwbuVA2KJPpU
         P0TwHUUGElaQSR5MsJJj3RJAS4GvHulspBfhDmyfkR5DEQM6GM1uuDMwlIpjRdOXL6Ns
         AwFZ4Qfo3Arfzs9bwnvJ/kRNTZARjfDFDlBaK3VyQfMbGK4a8reSogYPLkIs/uJqPFFL
         Qydg==
X-Gm-Message-State: AJIora+838dCbCf2HuzZAg3wZ41GYMo5QsjwxLWzHJHOF/jYvOvab4jb
	0qFBXs0j6VI5LDkI3NDkzBq4xTND/b8=
X-Google-Smtp-Source: AGRyM1v/qOE4sbINKpH26e2/gZuv6napIy1eHZ7B9WG9keWldOqAWF487HIUXDrx2tQhkvMLEIVkBw==
X-Received: by 2002:a05:6512:128d:b0:481:3378:61c1 with SMTP id u13-20020a056512128d00b00481337861c1mr563921lfs.51.1656397189045;
        Mon, 27 Jun 2022 23:19:49 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id b14-20020a056512070e00b00480a75d54a3sm1739014lfs.72.2022.06.27.23.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 23:19:48 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 28 Jun 2022 09:19:40 +0300
Message-Id: <20220628061941.24199-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220628061941.24199-1-eagle.alexander923@gmail.com>
References: <20220628061941.24199-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_231955_722573_1F0B6BD4 
X-CRM114-Status: UNSURE (   9.67  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] drivers: firmware: arm-scmi: Use core_platform_driver() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/firmware/arm_scmi/driver.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index ef3d76b3f4..ad91a60e0c 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1252,6 +1252,7 @@ static struct driver_d scmi_driver = {
 	.of_compatible = scmi_of_match,
 	.probe = scmi_probe,
 };
+core_platform_driver(scmi_driver);
 
 static int __init scmi_bus_driver_init(void)
 {
@@ -1267,12 +1268,6 @@ static int __init scmi_bus_driver_init(void)
 }
 pure_initcall(scmi_bus_driver_init);
 
-static int __init scmi_platform_driver_init(void)
-{
-	return platform_driver_register(&scmi_driver);
-}
-core_initcall(scmi_platform_driver_init);
-
 MODULE_ALIAS("platform: arm-scmi");
 MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
 MODULE_DESCRIPTION("ARM SCMI protocol driver");
-- 
2.32.0



