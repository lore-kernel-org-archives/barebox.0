Delivery-date: Tue, 27 Jun 2023 16:39:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE9r3-005otc-Tl
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 16:39:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE9r1-0001Bc-AU
	for lore@pengutronix.de; Tue, 27 Jun 2023 16:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Resent-Message-Id:MIME-Version:Message-ID:Subject:Date:From:
	Resent-To:Resent-Date:Resent-From:Reply-To:To:Cc:Content-ID:
	Content-Description:Resent-Sender:Resent-Cc:In-Reply-To:References:List-Owner
	; bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=; b=NV1xp1V9wdl8Bhts5OWFrRHM
	T+bJNpK+Rr7OEKw/2jx6pwkJvLoE82Df/ee3Asjo3fxEGFmtmmPO0TA3DiCT5HxSpTJ8emKFDjEJ3
	JIdquMjEwIeZQQdKAhWkajDU9xVKzoxw3nGmtoyw2ZnmP4cVkPVnzjmuX84PoeTBtuL0+U7pnL8SE
	/NAwX627loSvEyviNSE/V+hShNK1ovTScMk0TSewC+AhlRGMWIv/DCkm91itZDvtIF68x+jlzPaPQ
	ZnW7OAOoOVBwnkeh/oHcYCmKRoRbRPnklk4Y4vBIy03H0oDKaTdRqNdlEcdHLWqLn7Virz485hLbJ
	WEqyKuzC+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE9pd-00DOSS-2x;
	Tue, 27 Jun 2023 14:38:13 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145] helo=smtpout130.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE9pY-00DOQo-2V
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 14:38:11 +0000
Received: from localhost (fx405.security-mail.net [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id C5C06335E68
	for <barebox@lists.infradead.org>; Tue, 27 Jun 2023 16:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1687876685;
	bh=QZSijzOJZAB5xnxKed2ilaMqg7ZyqwZGG+abBNQyHJc=;
	h=Resent-From:Resent-Date:Resent-To:From:Date:Subject;
	b=0HW2+hkKpVgodeToUedvY5EJQ0CaqM7Lz7tYIOaP1ZS9xRWWdfrKyYi6t+AU2hQ/P
	 lGfr4lD/j3wO5Fj1bKpokxwBt0YvWHrigEP9BVRcL6Mt+UiGyOt4C3jBsjgkL42KRo
	 VO1E0EPcnjGWn2VGYgno5/KAJzNWDmt8YRZo3LK0=
Received: from fx405 (fx405.security-mail.net [127.0.0.1]) by
 fx405.security-mail.net (Postfix) with ESMTP id 9318A335DE0 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 16:38:05 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01lp0107.outbound.protection.outlook.com [104.47.24.107]) by
 fx405.security-mail.net (Postfix) with ESMTPS id E673A335CA6 for
 <barebox@lists.infradead.org>; Tue, 27 Jun 2023 16:38:04 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PAZP264MB3215.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f4::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Tue, 27 Jun
 2023 14:38:04 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8d8:4509:34bd:ca81]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8d8:4509:34bd:ca81%3]) with mapi id 15.20.6521.026; Tue, 27 Jun 2023
 14:38:04 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <130b5.649af44c.e422a.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LroqNGIU9idmXENWeG717Rcf4iggLcn9NSdJEKIPu/y8c1TuHeCDl7p59oubAL4BymHvahgDzuTSpYac1buzCtnahhDogYCHMD5A+rv6CELPNPJpFLP1AeasNi6KJeoNqbFTBER74YtcpvjI6K+9WqcutjbPdZmGtqKos//ILkNKm8PCV2eNc8X9QNFH/RFlT+/XxowPUxoL2LRXmQE70zXBoFfOUvsDeB9L6LWcPC8jyLt8/4RFqdt9+AQdMC/Dc28e/sWzN2hTLF0Ku8DjDwl1ZTOE/I4ZL/MSnk2c/do9BRXIrIwIrj+MkkOCjN2ENckPykTVb0fJl6ZUiXvRAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=;
 b=PFNkum9NdwRdsvNPczkm8o3zoM6LM3U7GS9bB5GFzcCn57bbtifD3qPKcGrLezgW29cotKOLwWVYKxJ12L6MPwHFx0iH3fkRfomaKdfr7B9SYfHa8/qxDl5pk5XCEWcjagODB2DXceq3kPcnNGOEq4+TPoablaj0zn9NuQ2XLfGnwrTAAndpF0hcb1AGM3dY6FW7ibTa67lGZKHUKH2gatziFODqE7cuPj4sTf1PlM+Y96OfMCaBgMmPJ/JsVA9e6TKjJr49u/OK3lA70LOTlF4lXZnABKwDQkTRKR1AicyGrSU6i8udgSJpjE4Iwz4u8hbghXUDF3h0dA/HqlW88A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1QidojNN76ACHqgGLcuTIGBdRYDBHLybTnbKMMpZqi4=;
 b=PjIpgQyn/imqRV3D3fbhAe/fYz5zRJnchqZChByJxBJKQM3deTqv9qDgjpRRWhb3W2Pl9avxDdFPz7ovKoiXeILeLcU8AGLouB+spbBV3aVETLOat/I1kHYinTBHzi7kqjfsh211cW2J5Us4FPCKcss7py2duHLG9Pp0tbaq+FsKntW8ARP9VkJf1CmoutE1GbRAg71nEa3wQNyCvJHwLg0rGOdz5VG4whXdHPygO/NtgBTuC4Pxuk5BKDW6GRLmr0aY6H4uvUBlU71eLsjP0y96G9xV95ihAjMq3kR+7FQwV2Z7P1ZbkPZql9kqkxpMQdgjM5M95CqYp5fqy6DxdA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Resent-From: Jules Maselbas <jmaselbas@kalray.eu>
Resent-Date: Tue, 27 Jun 2023 16:37:51 +0200
resent-message-id-before-secuserve: <ZJr0P0PAypus8XYW@tellis.lin.mbt.kalray.eu>
Resent-To: barebox@lists.infradead.org
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 27 Jun 2023 14:44:42 +0200
X-ClientProxiedBy: LO4P123CA0455.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::10) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
Message-ID: <PAZP264MB31191088F091FE3F1B2A066BB127A@PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PAZP264MB3215:EE_
X-MS-Office365-Filtering-Correlation-Id: 01f3e1d7-60f7-4499-8afb-08db771c1d94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vYKAVHAPkKLvRyi8DYD6j3sQ+VRDyLxw1ag+zGUqKEiKQ1thy1nOkF3JSv3/Lzz3ZfpEXabwSs1sG7aPz8h9Q7BWEt8LPTjrjkwNs1Z1aI6aj+s+fHgysXKuvFOvM6KCi7QMSaYQC63u2QXE5cCqXm+2huvFtI/sZ+i2f7WlOlnFtlHP9Y3GkOf7MKl32xDCAHdLfvjL1s8xhzpUPpUZyZC2J2yGs2L+VwFSpzpF/Z2UjFKA0Lxj0ZymhXVO/1g9inKRs+F0LPkpZPKeqkkbiANgJcreegiMAndpscIn84d2VZW6m19lA85JnL50rIOIqFQ8uBoC534otwDLpnanjjrvR0sIlL5DwL+YMyoim7f0/Bbu8L9ydED0BRvxEKmoejlj7lOjs+x0HFlh1KkhVlIz7zJkV3BxoxVmM4FkexHWfUf3G0sAHFgYyA/ci0VhzMLCZiHlWu0q9a5Lhy16lezsvo5A2FC1Baz4SE+dpROffjcU3G2ovQSc8+V5B2RrER5xR+dqei0vseJyvDMzjEoL0Jm6GSURVmempx4KV6mxrI+Ac0QwwOkkEg4rUMGW
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(109986019)(451199021)(8676002)(8936002)(66946007)(55016003)(66556008)(316002)(66476007)(9686003)(186003)(6506007)(26005)(42882007)(7696005)(6666004)(41300700001)(2906002)(5660300002)(52536014)(478600001)(83170400001)(38100700002)(33656002)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 7Eitg2bcqo1PY7Xs+DPlfQXEZHMW28/Pf/4sk4kAFGJoP3zivkxRw+K5O3NzEQPlR+4olafgtyakiPWqw4yQdjByfC/6anMyF4pBmPSkETfGv28vqiqZDk9vIxN4iGLEecTY9n6FgGdlkFYvfFQrHK02Y1z7olwJNuh+Z9KIzcXTqsqJT29AiNFP81P8MP33kDSE7QjOemn/+p1EPGULJEB1kU1kJTgzOBD4xH3XU4gKvk6BPbJ7b7rjMkDpYOs1CZ0MM1pBLrAdsFPrmbn6E6fmlK0Ob09Yu43xCeCIGY/mKAqiVedt3DfMRusFy7jBeXV3+Z0lwmAXHknQWsjyl7ORKE8/QxDFyaSRCgfV3hgA/n2mqLVK5woH/Jf/HNbhAQhae9ztMdNybX2vKbkdN0cAN/RNOWZr2xBxkHhwzCULhHu/rSIMWTR2hEnrf9oPfRUaoOA6Q3xkqUtkzZwPFSteZJ52LJwqLw+2DHb+qg4vL54QOPaS3pELto+ga/VM7OOGIO1a8giXeCbuxq5WTvdO7Cw3rGiasYfDvEpDDBzcCdl0smYc6RS7rOGf2aaRcjJWlPR4ZmHaoCU1B0I0PC73zL4/du2JPMDQETdOQ9ijrgqRW+K9jM/FT47OJBvdkKD6+LuSgwt8Jt/9Zszc3ltqk9+dbdpuAuoMtgFDFolL9tKASmXAG5CvuGi09TwN32U9dRe155v0BJhrtX94tTtLU7I6TEveqsQLMLrIewG62RzO+UTBEsJqr0aqT71pYBpT+NNNuqu9X3NPufNFN+9+6hSxYSOFugww7oIkgdrMvwrFYKFMMO6g4h5ecotaE5aCENQMp/ExtL0B/36QnpSVLN7hAHPpj9t9q8nc07iopQX7VcN4ApceZ9mbf1s5dixOkpJneN1i2yljzevP20kBtEzBnCis+1XXQd1hZGHnQUaFFaehWe4W+OU4oOwu
 H4bc/fpPm1w5jFqUmjTHgYH0NmyYY8S9Im+J/lBui9chJJtTSETS4DhHNYUrCnkaZ/sAr97nEzMx//lXOEDZnu1XmvJzgm8sfJ9mYpBnM/9mqO+CHk//WfW2XRgLKXqiSUzGTgvFyRq9dJ9+YgT0FUKM6DQrWbbK2NOgKPy9pRCzQB2GQfu85ZGdZ0Y1c9UqxC7sPoaZm7+t6F5Jv2RPUQiyPF+FZsJ978wiDmOU5hb42jRuQA30flJxzVyW8CUfYXOoDRWYZ9R1bUX7Yma51DwXE0rZsFxqMYvEgYRN3wx7jsxTR3dh6C2E2EV4DrhEVcwn/4ENF5LyU3REIsiLYEwx1FGwUbVAsfM6yXTL2Q5DNa5RdIESU/0V9JkauDobJtnSU9wcYRqYBkoDyshOci9MHAOdImxHSP3CAwskGJnDEZdNPUYDOTTh/dGKvsz/wGEJLffS+flvp3l5QordO7FeCYS/YXWtZ2dA7hP2rnnvoTrMSpQRFgMKc+sm2raAI1VH0Wr+kqO1gi2kDnSHh4uXuqa/lf2DDtslkaanOVrmr3mBFmjkdAefi5uzAcjzt475EjTq5RFIKAclywMRbsR0noPTJjueEYIVh+G+p3IqTxQ99DdY591CTVVTlPIg/vWiIK3ud3oeB1WKKfL6CA==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f3e1d7-60f7-4499-8afb-08db771c1d94
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 14:38:04.2996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k4/fN7uMQauYpTwQyZcYTWuWNxJsCRdOLnBNBmS2HBlq8j8C5yCHmbjr6WkEJYmdZBbN5lnvLqNNojLxVvrRxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB3215
Resent-Message-Id: <20230627143804.E673A335CA6@fx405.security-mail.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_073808_954244_782DE1F0 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RESEND] usb: gadget: dfu: Add missing get_alt callback
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






