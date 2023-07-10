Delivery-date: Mon, 10 Jul 2023 19:25:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudb-0060bW-KW
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudZ-0001Is-1e
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OMF0mTObNbYMxbgHe7v+VOicjcX3RkPL1WeXydxv2ng=; b=GJ4iDgm+ejIys4jFBzHkcOY1xN
	8izjkNLOKrh7XBXita50IoXkTV7gvCVPVixUPCEpnkErrkpDrmHLtU1l34fHmb0WRyUU5yk+5v3xo
	JSUBHEUmAK5/av2MRZvpqhBJBo9NLhra2+86coVtRRTWxAHXEno8C2VG7dzjYXofFuymgc70CQ1MW
	++3EPt94oWndYYGKnXSLGYu825TE4gxUxA8aopl5PT7tU8U/8jB/uwC134Ah6ZKcuWB2uG7GmSIaZ
	dugUS1N6HfUkIHqgYlZ15Su6bN3HHoWG9q0+R3aoFMGisdrs9AwkKUqkHrvkkXMSoTMFnNslYzna/
	nhe34dOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucC-00CL3W-1Y;
	Mon, 10 Jul 2023 17:24:00 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIuc8-00CL1T-2u
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:23:58 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 1970E349607
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009835;
	bh=R3g/7HJsPtRHW6y2uY3OUqMCj9+O9q2XEZVOgq4I14s=;
	h=From:To:Cc:Subject:Date;
	b=0Ed4iWxZxLnmGCZ9y9dGf24XikAuszdcbs0KahKxD4vw6KX+Ft+QefqEuZtf4Tp5n
	 KiPVmRmf+MVQgL2XUvlOkU4iJgm6AD842LXtbAxNW5LjsJZ3ISXlNJZTmyGaDZsBor
	 76GvcUWcjDb5TYDP5dsyvkX40CJEwMX4jEclxbGM=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id D76A634958C for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:54 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 0B6B83494F5 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:54 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:53 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:52 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3eaa.95dd.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2HmgzmCghIqZbOaEhPyLt95LvCHOEDU/ZxwebWlyB+A+6HJjcQmxU7kAn4jeyPIpms1Eck5d3ibGjJXKAnzT98FZuUs3C0ACkrasQN03r/QLhf0j7IbAOM0sBPx34zMuxTM/oUsnrHgJKwWXlvOoy2QHav2nT1lZphjPL9A4ey7EwmPeGVmy/Lu6DnS/ACb6kMl2dA16Rdt0RiBuSpq0cpiLuvNu1aiArPUFZ635q3zXoK9Pr9RKEegeG4vKZ1kM2Wiy6fZkSKH/GllS66t0jEQ0AxmBBq7o3+GlIuvCjiKYGeu/C4k15x8ju9MEq4PCw/OnNdT4cZHkaZmUI2gng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMF0mTObNbYMxbgHe7v+VOicjcX3RkPL1WeXydxv2ng=;
 b=iyOca3/jVleOVgxADRWiXSz+93Q6z7tyN0q+7qIOqWeE0oDLmjFQ3SFlyl5rBmZ8RdHlLrI99LCGlhGF+nv44w3HtAW4WFQAeUUVjhKP2Q6cQOL6lGqWjqfdsdddQGv6ead1vHpUhZFYcL9I8dAviS55+Ii7TLFBRk0o56LtNLSzT4o8MGfjsjK5D3iCI3wSImodeOmP70/ykgG2DKIKU2T+0S6ojODVl/t/iefdMdExeMXerlcsrm2+qvMQbI7cYEvLSPf1z18kO2SSRmCm/TbQWlJ0z0flBwkX1gvb5oXhcz6qVVfKUTqgLnDvM2J25w+TLOuJ0aciX46KHqJKVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMF0mTObNbYMxbgHe7v+VOicjcX3RkPL1WeXydxv2ng=;
 b=4CoO8PDjP9z7r/ZuzbonEzwevRj3iB7vLxRoGnonWrLUw9u+3yVNUXUO9P6IS2I5GN/w772bMfPH1NLUSHsfXLBrEA4vdPIDj8f9axVtydWS8hbvehjKGYg0dDw85+IGawjkzGy+LF4Uv8vMtDffWibU7WT/xMcTn6yTEZEsKTrZksrDp78harEiYL35sT4Z3RpC4QmJkZzP/dQZonp9bU+PLKK8k3WUtShO/2YYJrloG67cQopArEt+Fy0LW69WxnrUCD4saVlnTFnYY5D8+DOr5I7I7qKO9Csrgo6ugYiYkElnW5sdd8D+YCDw2dTTrffi1OJyjHd3OVs1L+QU7g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:28 +0200
Message-ID: <20230710172335.26701-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: LNXP265CA0065.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::29) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|PAZP264MB2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 513b141f-f03f-473d-c896-08db816a6ec2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0WvmizAzqgtlF0DV3VUP1AfToCa+oFoim8FMxRXQ1YgXRSfwfOqGTx6xLiJHrdRsIETyhzAMmfU/omfF3r6vR3xYr90iqDMlT4v2Td+HJyYdXlqq7/NeKC48ziuqmfBb4HJJek7yUWTJoDTvsjmmVq375TKQvAo8IJj2WXFhkoyDh6jVccIHq7XI+HUhTPjSEKr5gahVhN34Q3LhbtiT0o5i9jooaAoOIRVlnhMY9eH/2dQQeQ7cA9ejllDG8x6OnnZo3AHcJG74/TVPRnDyhUAs/3We5dX9qNtE4duQbHlE8p42EG0myEADHt106LjGjQ6i2/Gpc0CxckQagXSgO6B5MZHaaaT8SZWgGXTv78pssffiuGISVgPqkWMlIb3QQGZHMSqj9cMnhxOYAVei3TIOGqTIERvmnRgZko3Oy8fHEB2xkAxkx91dmXL/UoG6226k/LphWOIBbNxv1Rpxfr59nKpvCMHlxh2BAuB1l2HvZ6qiAbY7a8qpT2QRPlzeYme+5Tyg/FHV3E4gJZ0UBVJfMaC3ztcRI1h96JDpAPL8YQuBQiwUOx0wSV/CTQQWDRGls8uA9ZTjWbK6rfd+4hOk3LAK0C257swtgJIQNhHuD2WVDAjpKU2cn+RrJIna
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(41300700001)(4326008)(6916009)(4744005)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: FvUzf1+9vsP/Vp3xL+mEc7sUbdUCJpFD61xGnBXTCw1TLJIQ7NQlYjY4N6K5tsuzMJsx1dqV40HnDjhEUlp+s5h3evbFToLo3qh9UD8sMf0BO8dtHAOPGhlePqtBAEaZdT7Wab7uooxI8ksxb8Lge4f50x2OzySWUNiUY6odzRarmHVt+F03CSxQACMeyeepKvEtEq2HqS4iyL/wIB7RIdrjuG+YvXfPPXaSEqiT327IzdW5fIZbFdX1YpqrI+fpj3/Jyy3BvrntT9i4FS7LqRFIkOmuF1pMnkSnriA3d2ND/MoiUBxAUe5BS+rBXgYlvw6NCeyi8/jryW60a/uhbDP5aljEk3dHpHeHVc5Lc12Yv/ZjTZEgguKldUSq4+qgXlIXdA3n2QDrS2hxz6xGVVZkavEGJJL27zpzzjnLRrLeIlq59L2owSiH3unLWAW4IOjE+MI76a0kFE5WVhehF6adizPY6iW1BAIyiiBSeRaT5vD7jL3bX3YpAMSAu1oOnQDOynLTbddG9FqXX18tpjSoLMENzV1wd3XoGZfcWcXGbAh5I4bY9rT0oKHAgbY/T6p1r6r8WckTJ58Q8p1UOtvQWD3ob/npwe8Gx+EQYGVUiGbNiHb8NzfdoRngcqIYAyU3MfMfTw5QK9Yw6id3AxdCpDgqfrCYK+Tnp3GWcvPCFGLxFZXhJJEPF3j5a0Q9pqjyKpUph6GBrY3kPYoXUMBkicfEqQMweIc94pQ2taITpQ+p6FvtPGOUGGdOW9VL5kclYpKXv8zhgMqzr4l+deNEXiCBAg5jjoqq3wuHFoxcFKHi3ekiz3AOO9303/Y7EIw0PkT6Qifdj0q5Gu0xVAo8r4yWUJju2jMCIf3WdEKxG2iozUd2uWEDAEwK7ZU0GT7aG+o+ShNKiRwj4SWZOCT0WlUUn7Ar0gwqD2IsL4UiAcphrcRlZlgvbZkDyWDI
 iuAIhhPCZjx5q7VFeI175JhRpdTiT/DySF/IPYjRILFOSwu6OSZASiglgb9z06Ft86jST0sUPM72mtXPdmeTTvcUj1HN8xCwJM8a3Y0bTDHBJ25H127245w+egjEOeGJfEBCgFaqFp2e2VqT98tlrq776L4oYU4aWa6xRoiLPQtgHequ0SIKRtHqVgGpfa3eRNuxpj/8fdaCd3ysiJpDDPg3tr+b2Z5qGb167Ie+8BQtdHzWiBhAeFgR0FtEZQJmIfb/Oa8uljXzD1qoPucPYq/y340+DrT598JDkT/Ei5LyjawjnDXlWgABqsJSHq61dDu9vbvFrHyXJ8w2AgAATMyoMgjv5FfMFtDO7aLpSsViAAiO47YN5oIq6QGfO4bAsawf02CfU9uGYazoPz/I7cT2hR4y6cXa3ymH8JCtfR3E8JXQtGnafxe0dJPESbO7Mg5BmH5C29elT+MQMdT8i1oM7O+jbHulkPefQ5hGesPpR+dQSz1ji3/uPwFoFdLt3jdJW+eMzbea4L1am9tp7F7XRLEkhuVRlZlsjMKPihaUxx9Ruy52FsGGnSaoumaK3DGwdBQ9LzRE5tBZP3DWU7dH7Ybs15wy5v4FxSRIGcU=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 513b141f-f03f-473d-c896-08db816a6ec2
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:52.9178
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/Ee0ZzSKXr/VLDUOYmYTr6lPpOAnvPPs+gjGCeoh5qiOWV161x5ej6Px7k57czX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102357_072821_2DADA09A 
X-CRM114-Status: UNSURE (   7.03  )
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
Subject: [PATCH 1/8] mci: sdhci: Set 8-bit host caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the mci::host_cap MMC_CAP_8_BIT_DATA if supported by the hardware.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 635884e2a2..f6deea4020 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -568,6 +568,9 @@ int sdhci_setup_host(struct sdhci *host)
 	if (host->caps & SDHCI_CAN_DO_HISPD)
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
 
+	if (host->caps & SDHCI_CAN_DO_8BIT)
+		mci->host_caps |= MMC_CAP_8_BIT_DATA;
+
 	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
 
 	return 0;
-- 
2.17.1







