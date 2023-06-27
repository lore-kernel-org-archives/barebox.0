Delivery-date: Tue, 27 Jun 2023 15:41:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE8wb-005m6P-Ne
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 15:41:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE8wZ-00022L-BS
	for lore@pengutronix.de; Tue, 27 Jun 2023 15:41:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Resent-Message-Id:MIME-Version:Message-ID:Subject:Date:From:
	Resent-To:Resent-Date:Resent-From:Reply-To:To:Cc:Content-ID:
	Content-Description:Resent-Sender:Resent-Cc:In-Reply-To:References:List-Owner
	; bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=; b=MGT05+2dVM05tyaWDWOfPKgW
	7Tkx+OyyRddH5OoPU4fUlnuO0RzJGiXx9opsjFNpk5uuM9aCmdzNT9lhJn9vok1us6cxAwfAti+9u
	MRkKELcShcTE2BCXrBvElITf4dsiAzvg6pXsbJH08pksGYmRUygJ9LvP4yhtvX9RdhJXpr9bVY7rJ
	ydxVOOqySY55TXyHwwuDwzfMG6qkflN9QXCqGQp1eo8IF1Fg7FUEyHQ5IbVGUlr5a15TpoZD9tKXh
	EMLy9TaW+gr51sMW1Dnie0yJXol1jPuTY5gZ2xsoHIVQQl0pSx2pjFPiCyFRiuf6AwQztbRDnIgZF
	6/CZMnkE2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8v1-00DIUw-30;
	Tue, 27 Jun 2023 13:39:43 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8uy-00DITW-2x
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 13:39:42 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 4C17A35D358
	for <barebox@lists.infradead.org>; Tue, 27 Jun 2023 15:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1687873172;
	bh=QZSijzOJZAB5xnxKed2ilaMqg7ZyqwZGG+abBNQyHJc=;
	h=Resent-From:Resent-Date:Resent-To:From:Date:Subject;
	b=alvtmGb9MJqM/LzE6DZMpBmZLNAZuGcALwZVj0OMYNNHzn1lGxbAuKiM3VKV1j0+l
	 qyd8o/6WKV5IzmpkwA08pfB5PJIhA9YoLIHBg/kjev7CHXGV1bfUE24PM5NwtsSTR+
	 NPCnycIxbNti3F1YfcNTN6Qo1ahwTnF1dGBXdvjQ=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 294C235D371 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 15:39:32 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx306.security-mail.net (Postfix) with ESMTPS id A4ECF35D37A for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 15:39:31 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PR0P264MB3273.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:110::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Tue, 27 Jun
 2023 13:39:30 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8d8:4509:34bd:ca81]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8d8:4509:34bd:ca81%3]) with mapi id 15.20.6521.026; Tue, 27 Jun 2023
 13:39:30 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <5173.649ae693.76904.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npvUfg2/jazW/rL3uuyqPcVyQkK7JuWy9eON9I6vtsCISLNzjLeBHWj4XH0S9Hr1y4rdRIt/2y6UXRGNUeXU7Y/sVMtTFRYrClX7522DRq7++0+vu2HOxWKX7eT4ph/PFddob4g3fXq9GxAnfa4VUP7kIo0JyxPA79dM2y9ila2j1kyyCRZ972Zbdn2inciz2++V2SzVjjUfwG1H38dVra/pG9l5Q3pZnh7cM2WUjKwFv+XzqjDuIxpTliK3Gzp8EyoqX5uGn63PMO/VM0yN7Y2Bx0g/FepAUNCAqVIlQti4RyZh8296j2KyWD5xvk8f4kqzoq8gUGf3MAau3gzEaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=;
 b=ktoovYnoFvvuRJwATUZ9I3KAqY/Y+Y1wICsPdlFOU4cJFQdH3IbIu41skZsJq/eTp0Yns95z0DR0Kk1/sU0eL2IWtwlSZpcmiw2yXDl4c3xgAfXhjXtCLr9WRpdIRJv+TkRGXSdre81Ivc6aUdTrKJJBw//P2k8mna6X/6n6EWOxnFt3Sx1sZKcSsLtpRZm4mZCxaFkDa51YVcAOvoEQr/V9+7ehkNyl0UlBDBCvIHPBN4QWQzBTS8RCFIJ1WKf22PO+zJBxOIToyfzbOmsLbh4GBDQ72g/dqYChTeyq6iv/kW8E5VBum+VsK5eeAfWVo8O18DH86BU565uAWihwDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=;
 b=SS9D+ldoNLUlyfLLjAFeUMZ2ho850ZRZsdRz1pGobozSyHV8dC0zfM0b+f8xjcwlrzQA+siQPCSg/7kyUeN3Q10WHr9oT5NtWFd9iJDBW8NxGeqXbPHZbTubMI93oZRwRO3YPg7ki5cTotGqEsur3l0F9HYtnIA85hQQQCl9j/yUq4XOBdgoHhTDJIhzAjFf7IqXlwfE5cIs3g1rhuN8IPJjHh2/QODQtiRYrGLkax/ZzFcDiS/P8ftsqnTRzgBJ4/GwSAFYCk197isAHA0QF9jj5av0GM8cDKOyaZAkwuI6wlqhi9Z2bvQ4+ePsKoUjC74d8MDpGEZt5Sn6VSQteg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Resent-From: Jules Maselbas <jmaselbas@kalray.eu>
Resent-Date: Tue, 27 Jun 2023 15:39:17 +0200
resent-message-id-before-secuserve: <ZJrmhV0fAdd9SQXO@tellis.lin.mbt.kalray.eu>
Resent-To: barebox@lists.infradead.org
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 27 Jun 2023 14:44:42 +0200
X-ClientProxiedBy: LO4P123CA0632.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:294::22) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
Message-ID: <PAZP264MB3119F3C1EE3DE7D44146C9E3B127A@PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PR0P264MB3273:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a8b783b-44e7-40dd-c319-08db7713eee6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eCzDA7vQ0T9/LLE4tn9enboYD9PPEZLQGLDn1ddwvCLfLrhVydBGZcSnHluO2lYQXOK6W/eekEmmqBu91Y9QpbYnRKZeuHn0JX7Xj4kuV5oTdMJyYQMECKDxmrT4fh7G/qDRm1Y0CPpMviBGbvfgq5/YPnjf+oA9GPrA02zX5IEL051c4em5pYCmCLIHVWGu1RISrMb0IHTKZGnP8myMMDYM7z59e6ScpxERAEweSqOsleIpi05zH4oeRYqgbyjZdxUhvYi/c3X77iDvPdn/TJrKBFjHlosNp1kHUunaY1/mqTGsoYzpiSg8iKbM8sTqdON+b4i8jDIUk6pMQQKurCEBbMRqxInUsqd/H70sD0UdaZLB648vO655+0ZgvKcgOkjeuazv9fafoEqnkQiuNdhze8g3J+62KckGBL6LcS5Rece6lbvGVadPUJOrfEVTJ5LOE7HZ1f2pXOxgCHwDU1wPzFW5hze3NO1XLTyU6CmFv+HMIleTwYn4ryMY+IW3B1KzUROAmZCL4wwmakHzNDvRIAWnHjN0X4EfUX6IT3hwt62cIBPbqTKdvnTIU+9R
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(136003)(39850400004)(346002)(376002)(451199021)(109986019)(9686003)(2906002)(6666004)(7696005)(83380400001)(83170400001)(38100700002)(186003)(6506007)(42882007)(55016003)(41300700001)(478600001)(66476007)(316002)(66946007)(33656002)(66556008)(26005)(52536014)(5660300002)(8676002)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: eiXFL99WHV7h3k1yYRN8iGreuFgI1LeQtSrlSL7drlzk50qHCEuj5IsyCY7thdaBZz+bQ/Cyl3JtN9iPf7x7LkuA1HTVrZ7Ns7iSbM/o5kWYYy1mWNF35vckQ/phTApXR2VZ3WAsLeb90KIWvLs5ywMrsD5WUpY6vva4ZoX2yF0xcfvpS02pzQz/VZ4xfRJakd/n47ejGxYNvZ46b+gtsZm9Lc26Zo9EhVmPTK4kfywNEnWxk+XyryL89F5UP/C8oFKWQt6ondL2+RLk+AioM6S+K2IBw6Oaf74vyQ3e3f6yrW3MlRCq3HqZnAnmrP7qMAuKtn4UgRQVeYs6QsX/Qo+gX5TgYfB/QYuOUC9/zZsdY7WNZgyQwjvVu7hP2zowRiODJpKx5+hfm/rLGts5qfdUpMAn3Bo9nyl27aLi6dcRIKBrsqEj0HBBHlXezYMJ8j8GLG7v8WAWU7Ds8OjOLD9C4nBdmkPwmg7e4inzBzm+rwq/8esvdAeYeL2ZhpvTVmOWAEgbohv5ogcM3YjTJA3K27EABj7F/HeKNUKbDx3sPH/DVVrb/LdKzXh9y2Gaajf2uUdtzpu1DLPX+MBRUhf05XP90EOoD7t29xx5/9fvRRofsMW+OAFK5s2alMrC/YD/e9hASti0+uGE8FgJYbs0urmpM+cs1MfTSrFR1yNYFY/oFqNS3uZX0RPlLAHAFNreodbiIflF07OxsRcFJ25Ejhu7uWwYDwjjdqEDmgX78NJWu2AlfUJTIs7FDUA7EB5MO7tfJvjds7rR940Es2d4rQMV18dP2tyHuwcvpIsn3mQ3rC2idPNNsrNGw6CDdshIeWZdUbshn/z8Lpvb0HsDKZ+nRHMpCOAHzW+Rt1AUUnUp2fdkl2MyRCxVk6o/+M+3pIlUgOX952S6KXBK+rJVNKeRcReczqQSdsVzGZyxw0izZOS86kGkxl8oNHox
 wTRSuT3h8E6CVqDI7CTuAGTevY0BHOdr2lF2o7tXmHeJ4A/WwXfSog4Efu6cCOoIkDdsZLKMRBSjocQ5ulDDzl1adYsARMU5K8gTFsGRBZztGiBTbKcoOq5jpOW2m6StoojZHagkOgkvel9ERFnKi8QXaU1+6yfbCsczmRHA9piLmdfWpiegCCN8wvnK9ovw5x874X3Pfrolq1UjRLHyMhNUr87/bSlrU9XuCZ30gC1DKLww/3VTT3Q7EBQDMzCNA2UJ3rQUL4Ugcr3kjoczR4QItBzB1wJ1ryyvGDYdpF9YSap0QWMlhkNE0mqM8tQ7PEu3MD39Owz7c5/WVpT/ewRHbOwdIYrJ7Gkmmerctja8NUqJXZ7sa64+FCi54CnBDMLNLfzK7aFEH4RMgSt92lysGjTDIOeBkVSYhqMfphUhVFcfcw3Ua0PHKc2zP2CU5jboSWWQqI0B7RuWlykOfIOqTOHtcwgP6+9f8+SuBU1zmlVlUjFfnIRxOTDBZKRIf0gzkwqE3mtrKSBagJeau2JDf9IJ3i/YusVaVDSmT4qxt9qQz/E6usJb9AJsO4vTLQXZNZV/MprK/uMY48zF1olJZCEmu2lc4Sk8j/f3mVcdBQSD1Dd+oWiQ1zvCTrAAp0QfR+wzkmazmQkFy86J6A==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a8b783b-44e7-40dd-c319-08db7713eee6
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 13:39:30.5942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2QzelnTKQaHxA2jnRzX7PSjszSGJ5RBcJi2Bn6xu4z2gozizt8kg2c+kwVNHpKbMEtJSf/KrkJIDjTEtl9dyyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB3273
Resent-Message-Id: <20230627133931.A4ECF35D37A@fx306.security-mail.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_063941_162611_CD4B963C 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: gadget: dfu: Add missing get_alt callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DFU gadget use an alternate interface number to select the partition
to be worked on. Since the last update of the composite driver from Linux
the get_alt callback is now necessary for gadgets that may use an alt number
different than zero, which is the case for the DFU gadget.
Add the missing callback.

Fixes 4667c43c086 ("usb: gadget: update composite.c from Linux-6.3-rc2")

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/function/dfu.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 431480094b..4628b36b17 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -485,6 +485,20 @@ static int dfu_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 	return -EINVAL;
 }
 
+static int dfu_get_alt(struct usb_function *f, unsigned intf)
+{
+	struct file_list_entry  *fentry;
+	int i = 0;
+
+	file_list_for_each_entry(dfu_files, fentry) {
+		if (fentry == dfu_file_entry)
+			return i;
+		i++;
+	}
+
+	return -EINVAL;
+}
+
 static int dfu_status(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
@@ -830,6 +844,7 @@ static struct usb_function *dfu_alloc_func(struct usb_function_instance *fi)
 	/* descriptors are per-instance copies */
 	dfu->func.bind = dfu_bind;
 	dfu->func.set_alt = dfu_set_alt;
+	dfu->func.get_alt = dfu_get_alt;
 	dfu->func.setup = dfu_setup;
 	dfu->func.disable = dfu_disable;
 	dfu->func.unbind = dfu_unbind;
-- 
2.17.1






