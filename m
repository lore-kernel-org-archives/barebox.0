Delivery-date: Tue, 11 Jul 2023 11:12:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QQ-006zZl-8L
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 11:12:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QN-0006yK-7F
	for lore@pengutronix.de; Tue, 11 Jul 2023 11:12:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wci9jPyR11hfL/Zu/d6jmyADUIILaVPEPG+oRqUiezI=; b=ayHApGSueWO1FrAXOq13yNTePb
	ppMCYBu/sDwNXvR3sHtWoScWZz7ysaTonBzeO8HmNPH0DzMH4ydn6tlpVLJvn83D7JR2jQHOdcdhf
	cDaHZh54tbQr5Clzo0rcBJTKY4Ng/tqaKgZN++44Igaa4R31xCAL+V9/He+a1Y++Iwc2e/z5kPBGr
	uMwLSMyA30cwCRFy0/l1vdyJ1CaJRS98+LVf6u3jekJqUwKyD4GipErkCTleD9cPT6oDjm/JuoF5F
	D2LCtc5xTN5doKlmsXHGFGG5PZ9ny8EqR4QZUR3BSDPlfe07OHqq4V9P+Fb3Y6Gdh5ghPDt8MpIsp
	vFyOqPFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PG-00EFAz-2v;
	Tue, 11 Jul 2023 09:11:38 +0000
Received: from mxout.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PD-00EF9s-3D
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 09:11:37 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id E060C30F7DA
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689066694;
	bh=SVqQnk/TlVrW+AGmALnrugdGTZqZRGK+z7vDgfid88k=;
	h=From:To:Cc:Subject:Date;
	b=3tPcbLbHB8IvG9pD00sLtdw+34SPqGtJxer9Y6zSAnlMLgDj8LhVXqzQKOmJQcgPg
	 VBi5YhzlpOWm8GL/vKmabDh+Mfs51oH9XZ6f3/E1KV6Nyx+jpBcwqiUwKcthx0n0mD
	 NRZLDMZWz8Gvu/oqpcx4R0jWT6S6/Y1v5wMuW20I=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id B1E6D30EEB2 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:33 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01lp0102.outbound.protection.outlook.com [104.47.24.102]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 12DCA30F5C0 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:33 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR0P264MB2027.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:169::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 09:11:32 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398%4]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 09:11:31 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <10b1b.64ad1cc5.117b0.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5KEF07pGkj9a3/Sg0rnCWLwxOm19WakBISOrHFd2KpF31FqSOFN+GlE077fg8oXorPULWQf3HOU1Ysc31TcfJ8YnaVylbPj7lOmakWFDoTaTS6+jhP6k7OuPKFdH4+Kg4Lrn/l7FZLBuUYL71ZR04cgmgvxw8g1AnGgv+GRRfgMOx5VtDzj8C/NfRuTJthkWVZtWXoP3e/+c+NmKzTe4SfGMlzqGvZBIu3KHKc6QCxdx+HDnZT5WY0sXfhXokZ2av51Ywhq91/tl9ckZheVpI1NJN7+YULOPXvUcCoR+fBDM4/AqhdVe1+b2nG2T9shYf2yLuNZ+xdL0WPvtijJCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wci9jPyR11hfL/Zu/d6jmyADUIILaVPEPG+oRqUiezI=;
 b=AnHYOOLhoWKhB19iJNeqybly9G9otfkKPgHzTn46q127gRXA1qvQIf+14FZGDoBQ6XvqASLbDQCsHk1rplunO2mkfRTKpK7+x8Jiu9YGIwmFG6HysZDc0V3V/xVAg3Q2ioqXkZ11viJEe2ziC1Gj3bevJcIINfrHsGXwb+u0LWytpx+m0St7SviffvVE6O2D3Qsz8ivsaNYiBta2KXjjZ9MwFqf3X/U1jad8YrnpgIqg5PMjPN0ggOlNbtZpUtQ2wCis0fs9WMZT9rKAuU/TjFiD6dSefHWcgu2oH1Iynoh+PJXjiyImM5zsBeqmTvow6BDZsJy5B/8KK3MoncX4Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wci9jPyR11hfL/Zu/d6jmyADUIILaVPEPG+oRqUiezI=;
 b=cb/CZIHegmyf49ocJ4MZWrqUtckh60sTpB+fhhxhNOqX+Cg7pYnN7Hf2YsIBs5bcEZNSp8fBScZvAAJmbL1ugtJzYHmTCRAjmfLET7lcZfWMD1kPUEfmPwIxg/gqtslF9AcvEvbH7OYfU96J0Jvx7SEoxXLoID1CO21vIthCQynXkrkE5ZBYp4YkvK4uH+hIt/GILXJjATIA9W8Unr9WaPGoWksvp6mv6ErnlyTPktQsJe+gZuZF0Cu9OVMknxA3yYCUT+Q8xqFFgO/ktLIPKXc5foccR7PHcLnMk3osd+pCdc2Xnv1z2u0c1hlF2ZHQoCnjt02S9ZqtCIa6GfXlxg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Jul 2023 11:11:21 +0200
Message-ID: <20230711091123.19111-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: LO2P265CA0406.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::34) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR0P264MB2027:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d0e2c81-f97d-4ea0-7ba1-08db81eed15a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PO2KZv0LHD3DIAZUQQ3ZE2wLgx3JixEvuFr2ZOdJv9v4O95uYUhwXqLaWFzH7esKBbnVAqHIUVV6rCwHUssbNpiTpBVglNb8xMDg+VO4/nsCgXT9ydinCiRUKZZy1s0L0YcPMbqKKwFslgImL6AW+TfGCDFHBwfw72IMci6m9ZKyppbmoG9G+u4SB11/wy11KC8izJqq6zDETkX5a/bwIHbb0IeR43B38bFY+De9AiKB8RJ1C4ER2R9SMvBRwNIr0LhcXVerekcAKKGksP0A0jMxFaBNzvAkc2oIrhg1yNMbKVU3AWlbwHwcPPc7ZvoFy6gwZKOChxXxuSazld8vWa9fUXVxPH2NZcjuadzfqeI+c+BbFwkwiem0YcmX0sxfJlgLAkRcd7JIbNoFy1Vwo6pBDNyTCjy/YRr/JoaSGDspXSzDyC5HboMGqCEhx2u44C1Tf6eFGqF+yfO73HerKptV/c5MORoizGqsEBqV3+hagJu5vUoOyAwPTX6eyQLL79wA/7PYhvYjiLuqpR/qZAi5uPXeqV/nhVlFRi4JhaQ68AXzQGR6NqfL5gQlPR38RIwO33dT0jzQVtvh4O9/oY36PYcYo96usC6FVUcN72/d5JlK/TmhgGPfpJ2uzc2j
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(376002)(136003)(346002)(396003)(366004)(451199021)(42882007)(186003)(6506007)(26005)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(478600001)(4744005)(66556008)(316002)(2906002)(5660300002)(8676002)(66476007)(66946007)(8936002)(6666004)(6486002)(52116002)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: rSoWrIlzQXFVrAb3E14lqAuu76IoS7gE2wj9S+COFWSA6KpBrYxPTZeju7cEVfs0MszK7teUoun7e6hYFhtn+f5jIX8WPNn/KSwi7tXblW4TiF6BGryhVp3KjzU7E4oUvL61nL66iepK7YInw9Gi8aXSlh1AYyvd+ncKIc/2qOfqcHp7q3+t7xrTNSb3NNc8QINKHwu9Nxc8EUxdbrAxaAgufl7LLISLKzfWZ7O+PFHci5JKjHpZYwSOrlEytb+IwFqGpAvGBh6HI8Ly+FbwpzlflY/rEvAU7witADYcEsgAYsWYqeC5Dbmruhz1ASnDTVmzlMQbph9X9nGCUn6jj2MNLMTYw1o1OvLtaC2WJM9Mz2Y6nkfiCv1Xci/60xHYTj4YT3u6k/DuTj2jzy3Tuk41RnwzMFqqY7wYS7ZvsuOt8McNchKxFRBEg+nqi27Qq2JzeXrjvnX/yL7T9kPe3eZEDCR4ufADevtSl2BJ/gUxMKQh5ZfTQ0rTcqF4v5ZFrmkw103JJq6VXtF23+xSgUz+uz4MRteknskhN8XAdzDJYFF1a4AedBLdM0rSHGQq458ZfzjKcCEZsdtq2TTP9CcM97K87QGKJM7eh6aelTWsm/TeA7w8J8fWLkcalO1IVNQuZCk94wTJgxDAeqAyOMhDBijvm0qEbOdH26yV/90q+9TfWbvkzf6IeqnsweoBMl41zLy0gwbIRb4AmmAqVMdrNK06zJodXFP1h8zc/YdSlI01OcfCmjEznYJ8pWQQbTyypBCEZkrgPn2m7LKRlnbO7HpEAM6r4qYyIkMGF5FSpuE8a2mZK5DAr3sDzYcJP/ZPQOARY+8E/2/bhUbI3HouN+rdKqzlVgvHRdb+ZF5TIIb1Ng5f5AAP7z564fRibIqLR1IQalLh2CA0a7UnLGsFDsSPedWOkjjr3LgqMRh08n2bUNSISoXTuLwwO4Lp
 ZvMA7iXA5jFXxmxDT5Y8uMXcweywPl4Kn+1JlUZuWN06G22NuV4z5azsNEIJ4wUntf7/7iXwJeas5CP8ZEHZOW3A7NB4cgEoA+cYNQXfz04f1OmfvkizOPMWqbqWIlQk70v1FADqeRFLuQ2ftnJy5nT0Zwu5GhZq+CqCVNXLyQVHwZkffTTudmiAxwMvisZBCgNZZH8cvWlg7wCvGeVjcgC/Fjn3cODZiknNmCLaZ3gieaG7huSSg9NQzBKiMdxsQNASJ4n4DHdoY7+eZxEzOR97+G3z6UHiei0e9zOlcbUWmTdyAiYiYNceX1fxzRdEv9Ci5nisy6zkq10IQ+fgmA2ZV7KugBacGhIBoGfN9oK/Yxb39UbMEBv7qV71qiVa51NszuyXCvrDaxv+R4DxtKv+T7yze7HjZXcsuzFnPd18yrUleRptmLysr4TBErOpOX/985Cf77GBKx5qMeRz4l5Pr0t3xq3IPgV6F7Va+z4g30K+/X+k1OmgL4jSz28f84zY/ixgPwslkPsla158vu2VatSit7pq9KCqiMS+apjodPMPksmZjVWKBoXIscPSsTaabSLX1rShkw+c7nwFLyswuu4dXNV/mn6NZHYhg9Vbq5w7ZsS3obM01dhdwndF
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0e2c81-f97d-4ea0-7ba1-08db81eed15a
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:11:31.9175
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7VR5FSOJFCk1siisAd7SOyEJr7ins4WxlUOqNrTPkutmZgQGESUFI2qtyF0X6/KI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2027
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_021136_177323_8D2BCB50 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] soc: kvx: Rename function to match global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The global variable "kvx_serial" has been renamed to "kvx_mppa_id".
Do the same with the function name that sets this global variable.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/soc/kvx/kvx_socinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 8cac8899d2..fc7ba1c1b9 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -81,7 +81,7 @@ static int base38_decode(char *s, u64 val, int nb_char)
 	return 0;
 }
 
-static int kvx_read_serial(struct device_node *socinfo)
+static int kvx_read_mppa_id(struct device_node *socinfo)
 {
 	char lot_id[LOT_ID_STR_LEN + 1] = "";
 	char com_ap;
-- 
2.17.1







