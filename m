Delivery-date: Tue, 17 Oct 2023 21:20:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qspcE-00C6oc-DP
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 21:20:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qspcD-0005Nl-5K
	for lore@pengutronix.de; Tue, 17 Oct 2023 21:20:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TecqJKCUuzZTz424G6yp36w/YYGi3X0gcRG4GEzj/W4=; b=3h3AcudX3nDL2Uf4NS16Vne+zo
	cUWr8tZpVL+sq/uHV7ml+FAUjIWmp3wr3akgnyrz46jxnJz5iFUwjspx0Qly1vZW+kcB/ebb71Nu1
	KoYYYHdi3CGYZ8wHavXeXTvh7SKHwnUz395LUO6N2iVd9WId69QFkAIxwQuUAb20DlENpNdnFGk94
	D28OiAkTdnISskVyh3o8gZEW6l/L8VWyst9IwtByU2cspqDdV3/ARWtj5uvI15Liqnt9FGOrESERv
	t9UYwYWBfQKP8Fpj+7WS9QH+Vqcq9BdlqsKyR8tosScnNduWnv8ufnKGNpoO8h4TPK6PwzZvgEZ7C
	HWGvkkSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qspao-00D4Zm-0K;
	Tue, 17 Oct 2023 19:19:02 +0000
Received: from mail-am6eur05on2060b.outbound.protection.outlook.com ([2a01:111:f400:7e1b::60b] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qspak-00D4To-0I
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 19:18:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jouUqHHf8e5uLhBgd2N4FzL6fKGW3qyVIZXoxXBQgg96K+GPZWo6xrycKN/T0+sLLeuB0k6QHSbKdfXHXOmdPChuiISq0iMReSNmfj9LGkvVE6aQB6XyhFoITFqpdF4v2SOVDgfGN9Tri/AOkJCZfM5gnq+7wHxLcvVFab6OZ8H/+QIX+sVvHT95X9So3Uz63qI2hTfWRXUNIlrpCVOjb72GRLxJ7zM26RVZAI3LXjRuCmYnaGtIP+bQpk3wHhM+9bKMJUi0Xy+B8PhsSx6x7zV3oPIIM2Y2STjscJqsVvVBQUaYqnH8xFcu7/XSWJ28wWL4kNbq/LD1SO7+9f8Vjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TecqJKCUuzZTz424G6yp36w/YYGi3X0gcRG4GEzj/W4=;
 b=A49GrJ8l5qhMuyZS5V7wLcCpa++2Sz5L6k6YSSLUKterzSpVCHXROb6o5BcSmzoMl57JSH1udVsaS4spftMYT1DuyHK+6uOH3uD6cegB5RtiXo0Dg5g8yTE9tjPS+N+w85C7uug3uQqN8SVCKfQ/ru8aSM139JQ4KhsdOXeczAR4/RVm3AUixlOElI/CNTSqfkBW29Rf4fbp+u04SpYUvH8DrRItowC9qBLS3/Un0Sti4EpwAR3vds9vWyJGi9mm64uUaw9pDJAeFtlcUzdQkFYaGILAvVa9Ut/8wGP6tcijREWUPy2qXSGXYcCT/SE/a/2ndYRDcuWOBPYTLaZz+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TecqJKCUuzZTz424G6yp36w/YYGi3X0gcRG4GEzj/W4=;
 b=WODUjpOWNOEurmspp6pSpmgavd8RD4FP17t12PTDOgXa2nOTiql02zIv96HGz4SinmqMFLxpt6v8IxA5XhEPepIh5zQizjMArMfEs1aiz9O3qKTHDMYbIrDMCXf30leIwNX5ykCTV23qcNc2MUnHMs9lVpFh9hgsiFcXSTEP9QY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by DB9P251MB0812.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:394::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Tue, 17 Oct
 2023 19:18:46 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::ba2b:f72d:8ac5:b2c1]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::ba2b:f72d:8ac5:b2c1%7]) with mapi id 15.20.6863.047; Tue, 17 Oct 2023
 19:18:45 +0000
From: Christian Melki <christian.melki@t2data.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 21:18:33 +0200
Message-Id: <20231017191833.1092768-1-christian.melki@t2data.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVYP280CA0028.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:f9::10) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P251MB0618:EE_|DB9P251MB0812:EE_
X-MS-Office365-Filtering-Correlation-Id: 558e23fd-51cb-4d23-cb3c-08dbcf45e21b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y9nQVwfvVmgrrAXZd6uJ+NjTzpoD9k+RpXX9kZjfo1SC9UFupeboaniYK3ijJiR0TtEA/1XmzsqOYJB+1aV5rJAuaZlYq+mvAiKhcLJ7/cydzwdU9MuPG9ZhaHyKGBNtZKOi7dO3z+KbDnv9dCpiPODg26q8K5rAG5TqdzvfNCkjPen+K45nTwW0XCuoH9fcn3ePhbiddMPABMLxrK6SdfY3W2gTIK7uzwntcxgxmdOLnI5P9kSyC1JTUsFgOjhsVU8YAiBGisPHCwJ+eZ5cZmtsmkCf/vDcKlaFBRHLeN9uXqlgzISHrX4XAPpOMtPhCY7+sQGhzaFLsoWHU8OO0OG0iXNCKFUT7EOyhDG7rzoVb4NrwQvE+HJUiEo0uM4RW2T4A87UqgnLmHqH8kLNrZHFGIGe1QshVgscFuoggw/DTJoqTptPXBIlGRFdI+RGnV24eXJ3HLt5+bDplYAaNmsTRu3yAKzd3gVoVziKE+U1+6/TeWCBNXaQmjQtspI7IMYTpvvy4QIy63onU1QidRdFfDAk9nhnx8Yn5H9Adc5FF+5IxdWqdroGHZkHuHyk6/KvEDwWIz5iKUISFMTkb19wv+J+5fb8z/e66BHEROF8WIn/DGr3yOCh18J3gPJU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(396003)(366004)(39830400003)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(6512007)(6506007)(52116002)(38350700005)(2616005)(26005)(1076003)(6486002)(6666004)(66899024)(478600001)(36756003)(5660300002)(41300700001)(2906002)(86362001)(38100700002)(8936002)(44832011)(8676002)(66556008)(66946007)(316002)(6916009)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O5i/ipU637Q2X9dGZPVbcgD+treeM3B9ljqQGwJiCU1dVxie6DgU5g3jswC/?=
 =?us-ascii?Q?8X52Z3zvWFA1q06s+Z/N3ArWB/xhIRFisdQ/r564sw2HXh3PLkaxWkxHgyfO?=
 =?us-ascii?Q?XRGerpdWGaN+sF2CYIQvEKBfF8wmmJYL/aO3Ajid/yuRiKnDOMRukzWV2YA+?=
 =?us-ascii?Q?M/8zybTriS69qpjmb8IeCerNLoUIw2AwxOtFrKwigbg6ZCVV59TwUGC5XZ88?=
 =?us-ascii?Q?qfAXW2mq0Za3S8sNRw4rTlldxIpi52FyqfjvtJn6/Q81w+knXE8f3zOGyeFy?=
 =?us-ascii?Q?l3Q0J1UGXeRyOqFv28nGoeOdIuHwqQAxNDJKR0tgdl5Oo5Dfzd/2DPv0nbRi?=
 =?us-ascii?Q?jzvp1a4slxPGJaQBoFIYtK7oevNmRpwGSbh078qjN6J4UZG/bTabcc6VDm+q?=
 =?us-ascii?Q?zODK4d6fVtIBUh4lc+HcxvckJbBBb2oC/g0+GkAN2HoIrZjEfVAim38AA1TZ?=
 =?us-ascii?Q?Cork0Md5B6cM7zB2v6YbJgOzGs0q+6kduJpQPx3NHNHHiey3rr2Zma99c2u6?=
 =?us-ascii?Q?u7ecIEwLTdKOZz4ypDRtddX+B85UYbq3EOjWMNUBhQUm5i5ZX0HwtNUrAU56?=
 =?us-ascii?Q?T979uodFOnNHsPwLoWyZwPrq2fmcDFFJRUy8i4EkFXBkMDIQuZZ+WWCsPPYK?=
 =?us-ascii?Q?alqgjaPNCjwuC+SIbPXXuZwcZV8kPofARrqhv5O7KK5TaRhJta7J9PKKtQyY?=
 =?us-ascii?Q?PLOHtwbyJMLJifjhNyoX8VLIZr68p6pDTJ7kjrAPX+R+oHVY1dxYFwTR946x?=
 =?us-ascii?Q?urf+ilulzTPjFNdzRibr3/umpSgQY72pqH+q1gL2HiBcNXuMoICdM2ZP9EIQ?=
 =?us-ascii?Q?/03SLU29Dlbxo5mpz1jKbjVQhD/eamA0/7T5XCYRTOg1AEmsIBIOojd8lKo7?=
 =?us-ascii?Q?co1mSAR7SO/Yq26g2utE4yJC4GV/IenehVWdkfo05Us6KyQFdoSjTNzVJv/P?=
 =?us-ascii?Q?kT/5zVOZ5DvVMzznmCcz1j0qmbMEkp8Q8FA1O28f3ZQyFBUh1oeCwFPJ/cCZ?=
 =?us-ascii?Q?1l0t3YrlCNqm98WgitBa8ZLqR+yYPgYDKeXgzBJh2Z7iq5ThNtr1hzXTPhRi?=
 =?us-ascii?Q?qvnasr2j9pdprqMwq8WHCQ9yfOrxh62IvLwh7uhzkF47HaDPtEoTwqLAIGJv?=
 =?us-ascii?Q?W+TnQKRCc5ZSx+5rw84wbyUMu3snFvG4VWsHjmuTEf1ci6UYuNBzVE+hqvo5?=
 =?us-ascii?Q?7BOur3z1XkQOmCCImZf4V2/iAvgatLat6A8j1Qx94irpdt6ACUzr07jdKYpy?=
 =?us-ascii?Q?Iz+sHOLHLKRUd8FcX+U5B801WThUjDq0CjcUJZfmHci6WxS4ytv6AtDQRsEw?=
 =?us-ascii?Q?CAyUXozbUVNshtf9FhfbAgvlYn/nw1A3MfFsYx8wkbscQS2jB2GvgbGItXwM?=
 =?us-ascii?Q?iMlIkluQXzbaOtRkP7nZjgIsizFBA3pYYgPA2WkZc8GShzoEJibrC/46H0Dy?=
 =?us-ascii?Q?Y2JSTB9QQt3qorthzuN4wOyvi7maZPCSeQ9bki0bxh4qhqhVV/slYllq+MXW?=
 =?us-ascii?Q?qruG/drxyy21LXYpoelxgywAfWgrdyZB6r+GUhAhpRgkUVylNs0vYqTyP21Z?=
 =?us-ascii?Q?uQuzKx+lw3U0Qj8IKb6EmffAhojOO9pc/w9W+q3SA+dj1H1Xolp50ptp0dsI?=
 =?us-ascii?Q?bA=3D=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 558e23fd-51cb-4d23-cb3c-08dbcf45e21b
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 19:18:45.8200
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+Ua2H/CKkMf9T/m6r5wWHL3Q/9u6MlHKuFsRz8PajSfa+VVY35YKwpHfJ1nW9VhdYUFXaKqjetPMbBPALWLgHDYSY/7YLAa+M9bP6gkfQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P251MB0812
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_121858_217918_FE39D203 
X-CRM114-Status: UNSURE (   6.97  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] machine_id: Add getter of machine id hashables.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the possibility for reusing the registered
hashables for other functions beside machine id
and the truncated sha1 it offers.

Signed-off-by: Christian Melki <christian.melki@t2data.com>
---
 common/machine_id.c  | 5 +++++
 include/machine_id.h | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/common/machine_id.c b/common/machine_id.c
index 8c273b9349..f0b148fb9b 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -16,6 +16,11 @@
 static void *__machine_id_hashable;
 static size_t __machine_id_hashable_length;
 
+const void *machine_id_get_hashable(size_t *len)
+{
+	*len = __machine_id_hashable_length;
+	return __machine_id_hashable;
+}
 
 void machine_id_set_hashable(const void *hashable, size_t len)
 {
diff --git a/include/machine_id.h b/include/machine_id.h
index e30bbada1a..9699e7f207 100644
--- a/include/machine_id.h
+++ b/include/machine_id.h
@@ -5,10 +5,17 @@
 
 #if IS_ENABLED(CONFIG_MACHINE_ID)
 
+const void *machine_id_get_hashable(size_t *len);
+
 void machine_id_set_hashable(const void *hashable, size_t len);
 
 #else
 
+static inline const void *machine_id_get_hashable(size_t *len)
+{
+	return NULL;
+}
+
 static inline void machine_id_set_hashable(const void *hashable, size_t len)
 {
 }
-- 
2.34.1



