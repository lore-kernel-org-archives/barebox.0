Delivery-date: Fri, 08 Sep 2023 13:32:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZjC-008AtX-5S
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 13:32:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZj9-0006qc-TK
	for lore@pengutronix.de; Fri, 08 Sep 2023 13:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TYa1hJOgfeCVUh0odKgd8rnCkTxnZZ++S3glqx26kvw=; b=vxBFq1Q56Qvb8WneNUJicp5rzT
	7EpkeZd6vYIQjEHS5YMbtBe5yQT9JvK38sSBduZ+TBB2mVIhKFE/joOgCFXwx9/f2DR+ghE2rvX1f
	J5Vxh5JNT6Qo1l+msMiWsP4yMqoa8tNkwuVZ5M6vUa9uEaoVM22Uh2QEU6a55NTqxmE92fBQNw4ts
	L2jDFwZ9D9m3QpS2Q2qXijwcVEYWMkiZ0SfIxQB37oS880JGx8Oac/bptDQcmpZJKKKsK4g8pslAF
	hByN0cR2/RCI6CEKfaGSBAqct3J5VqW4Ne7BUYRHLj03kV36YitZVzzcadXES7Lsv9o91lbJy50N7
	Z+HGwMZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeZhs-00DgDO-28;
	Fri, 08 Sep 2023 11:31:24 +0000
Received: from mail-db3eur04on060d.outbound.protection.outlook.com ([2a01:111:f400:fe0c::60d] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYY3-00DT96-1J
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 10:17:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnPPlCOHtkiiQuhe0E+q433bzv/9iGP0/J4ZOeZbqb+f6RCTdvywoy04nnjEgLMj6SMHAJWILagXHXV1CdQKFRVgBIoCzr9zQrlHU66jIreERRIkdpnGblXqoWRpjBYOKy1IQ34+D3vew2u0qRnbJFwCynQymD2oo5pT6dW2TN+h6HYyd26hkO6/e0ZonptQF75vfTQLkykzMhnS+trSaiiqaRdhmi2g8y+z6WRQpMais5dlELi8imoejb2FgBTNHutKaqA2nvcryqfIl2mq3IglXvv4WthI6PcrAN6eewS8MQL9Rw+/ajNoujlFXX7flytELmIkBnpE52tEuedbug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYa1hJOgfeCVUh0odKgd8rnCkTxnZZ++S3glqx26kvw=;
 b=GB7rtTuWJU9Y/asnQWXO/ygKJTTTA/ZpxtWMu8lpENSWRypW544xaOdg1HjIkGsTeSjJ50Z498F4Nakvv65rrTJ8TLCPbB542ThpcPF3TbBUMBGmm4NKWlv81dY5tLsoCDvlIEisUy5xwgdN/7LFS2IJ7HNQ0ab7dgXd46nS5qH4lSWaf91nP/jNlsdcQhD+7x1YmHeQCQb2+FWmTVF0PW2r2PQ3DC3DweBH0Hr8veDVXi0bxAyuRsJBm4tLS9O9M8z+V1gMD2aTfgJrNlxgll9u7fJ/cFmG5iApoEEZVWviL6iPSTNoqv0++dUKP71/1P+bwRlhWuU7y9d+Cur2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TYa1hJOgfeCVUh0odKgd8rnCkTxnZZ++S3glqx26kvw=;
 b=nkHfFQFzrkMIc1nQafby+nA/HUxzlsRx6sJfIObEf98FtDvMOiIPcEhTQ5iahpsDhDP6DMplzfM3Wfd2AHl23PuRRJRZdL1Ib2H6Lj1jpQjYHpNlWAhbxrRBP05ah814Q1gIR2NMTEMooxsmh/+1mt4GSjz8XeeruIGTXKkKLto=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by PR3PR08MB5801.eurprd08.prod.outlook.com (2603:10a6:102:81::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 10:17:00 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 10:16:59 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 08 Sep 2023 12:16:49 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230908-bugfix-i2c-rockchip-v1-4-f8235d811f6b@wolfvision.net>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694168217; l=943;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=J/iRbrEPhrz1rYENl32AUk45ektL1FD2H2zw0CrRSYk=;
 b=S6l7W7h+UGKyQbCA9E/AZfisVSvCIlcLAwNCACw/9cZm9fg2YpxCl5tZ7S6MFnPEMJSL6CRS2
 5Aorvz7JyoqAwRHuxjQ12tT4mZorHsgQ1eRO6/aw0tU/BB8qyfcrkEp
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1PR0102CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::43) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|PR3PR08MB5801:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fe87dd3-d0da-488d-20f9-08dbb054bc82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d7P9D1teEe5Eydz0a9sHdlMXS7NYk05HXH4s+RhxAOa+EHZVgoDcJQtWU0NS09EaxAQwhkYiXo5dPRDEKDZ5T5o01Rj6vCv8goEJMFz9jSuWZLBCNmN8AHVl9SyvviNVfFECZB8cGNCYoM+Kw1cuj9CNXjBZDBC0HCvKsZyoTqAZXI20aO7Su+YBcOlJ03jxQUW+dYoVxv6SSkofvE9TX41Ve/IYBmLvleb6gdTaG5gSK/qhkYf4GRjMvr68RBQl/hkRcvOTBfOemXfKM7Bh2BPmLxxLiR30CyGzuRYs7f8/zRrYtDQYfLNFHY39o9z28hqkicsTpzTTYfg/jYuWqMeC+kL+lFKvPh+KFJc6DfV1mYS5CcL59dDDSgULW250mTfXIEaEwl7uE9y3Ks1TyEa1MuBRT633fy3ZEXhmB7KARqClm73ErOCgceS43cMq+XiPmhp8jg7l1ECvJL/rE/b28bQMU4jsOlEujQsWGYN8Jz1g90VaF0NdsqqyrCWwg+c1fpFTVqOXjGL1NmzON74nrrwjlpetIpnGYtYrWI+849ilWXWnXyFVrb5SSpMaStNJnW8saWie1RtBLJQvdE2cEbvkObVL012ujz1VR0M+iNlGmQMWY7YfWw6GfNE/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(39850400004)(376002)(136003)(396003)(186009)(451199024)(1800799009)(52116002)(6666004)(6486002)(6506007)(6512007)(83380400001)(478600001)(4744005)(2616005)(26005)(2906002)(66476007)(44832011)(66556008)(6916009)(66946007)(316002)(5660300002)(41300700001)(8676002)(4326008)(8936002)(107886003)(86362001)(36756003)(38100700002)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejBmQlR0Q3dueVdiWDAwemFFWHhQY1IvOElXa2EvVlBOMDIvR1hKRFl4YXJW?=
 =?utf-8?B?dW1rRUs4K2pDcFZMaDFYMjJnUjZTY0hrbDIxeGREMjF2NGEvL1d6VDA4Y2N0?=
 =?utf-8?B?Wi9JV3hablhOYWcwNTZPLzRYZm9Kbm9lZWRsK0hiYitFQkhha00rZHIwVG5s?=
 =?utf-8?B?NlZYZCtIUlRxM0NVK0xVdjZuY2d6RVVNK0NUV1V1dDhQeTRXRm9ZK3hjY3Nn?=
 =?utf-8?B?bFZKRGxWOC84QzkxeERjOHVHa2IrVzlBZThSZ2hkRUxBRFFpakFDc2N2cHZH?=
 =?utf-8?B?aFJSVkVhcmZkRXRvSE5Ed0ljUHYzLy9IeXBYTGFKSFVQNE83Sy80R2lFd0pm?=
 =?utf-8?B?VzFFQTA1aXVLR0ptbVJPeGJtWkIyYkpVWGxmcVRXdTA2RzJobDJWbDZHTGdL?=
 =?utf-8?B?dVhGVlo4am9GUFhjcWhXbUNpejZ3d3R3NXB5WS9hWUdERlBkaXBkdEZUVWxZ?=
 =?utf-8?B?MldrV0lOK3NqcTE4a3hUR2VkeU5VaytMMmFqaWx4alN4czlnQkxIeXRlQ0xF?=
 =?utf-8?B?ZGJVUSthRkVlWWl5c25Fa2lPRjBJOEpEc0hQbWx6T0s3YUVUQ1pWcVlISkJY?=
 =?utf-8?B?akFzZWVVMFh0bk1ydnlYbEluRjZ4RW84TmhEMXhpWlloWG5PSEJVOGdlZUNE?=
 =?utf-8?B?SENpVDVtZXBkVUVESmEzUXNHMVB1c1hROGFLTkhaeWR3clA4NmZSdlFqSTc3?=
 =?utf-8?B?cm5ZVXUwODVzakx2VHIrQXlDMTh2Uzk0L28vTm5xeGJsMWtUd3hPVXZaL2JB?=
 =?utf-8?B?emhRVVp1dlBwMmdSYW8zZ2hBQTJ6cWRmWjRwMWdDZU1yajhHQnpBUVZvRG9T?=
 =?utf-8?B?VHVTZlI2cWZ0ajVuYWNpeWg0M0hWREpRZm9IOVhQeHRON1I2UDVrdFhqbTRS?=
 =?utf-8?B?dG1jU1BkMUQ5QTJ3ZHZwckczbHQ4bkNkNFRtS1kzQ1hxdmlrS0VmVzgwNkE0?=
 =?utf-8?B?eVNxR1QxdEpQODdheXF3aXMzTEh5anZCcUNWajI2Q1hnZ0laTURyeFRMQlNZ?=
 =?utf-8?B?UHpCOHJRQ3FoZG1weHBkQkNGWmZWbHlZZ0N1RjZqb1YxaXdVQldqQXo2T0dz?=
 =?utf-8?B?RVlwZVBJa3Y3OHRVQ3BKZmI4a1ZORVBnK0FPVTFUZEViR1lSamVMSXdFbDFq?=
 =?utf-8?B?RHYyeGJmblJ0MWd5a1c3Rk9OUEhVK1VjdDZjZnJ1T3AyMlVGUU1ZankyM2ph?=
 =?utf-8?B?UEdtVTk1bjRWeGlBQXFKcE1UZ0VHQnk3YTRDWDI5UEQ3UWFvYTZITi9YMDhX?=
 =?utf-8?B?UWg1TWFPQmdBRy9RVlRoK2piZE40Mm9XcTVJVHRnMXdTRW9mSCs0NS9TUmdw?=
 =?utf-8?B?L3dIZFBYclJhNXNGQUdwQzBvUTNFUXl2KytkRjZsU3ZUMVp6N3hFbWJrcGVV?=
 =?utf-8?B?bTdjVXlWYkFCWlFLWlhXZ3V0Sk9MclE2MnR6Tm5KQmo5SjQ4SW1rUUZ1WU9x?=
 =?utf-8?B?T3FHZlhUTDNjQjRNVjJtdWMwYVdFemphWjR0QlM2ZThjdUtWVHhwT0FWbEdC?=
 =?utf-8?B?VFZLNEpHOThMQXYxVmhBcHJkbFB2b2xNTXZZY3VBd0l4UmU2S0liQzBjS2FL?=
 =?utf-8?B?bDdyRUpTQXdRdlhtdExwMjd5Q0NSblBiRGxYUkV5bHRKTm5HR1J5TWpLcmlk?=
 =?utf-8?B?ZnpWOUoyR3NKRFdzOGZNSXVLSC9WZGk5OHhFQnJMaTQwS28yR1lYdE1VOGRE?=
 =?utf-8?B?a2treHlJT2l6c2lTWTBEZHhjS3Ezb2lMZkxRVWhlemIwZXBqMVdPb0NwRktw?=
 =?utf-8?B?VkhvbzFuZm15RHBTNEZqMGMrek5CYnl5cHlXVjZ3RlMzS1VMVWUzRmNlMnBL?=
 =?utf-8?B?d2ZHaFRMaFpXcWFpYkdrMVZLZXFzazZBMU93SUsvcG9mVHB2cTBoaCt1UmNE?=
 =?utf-8?B?YmcxaExmVHBmeVhBQzhsVER4ZE1Fbm1TL00vNFZ1Vzd0eTFPMGorQVYrMUJa?=
 =?utf-8?B?dzJMWVJFakpnbzR6Wm1OWS9kM2RtMWpibC9lMUg5R0xkUmFxZXo4WmFibUR4?=
 =?utf-8?B?SzNXWk04Q1JKVnZiQTJSZW9sMUtFY0pXTlRTQjFMNmlqTFRMWHoweDFkQWR2?=
 =?utf-8?B?cDlXY1JCY29DK2VaVjcvdGJGRk0wN3p6N0kvOTVxUnIxM0llS25ncXJqakt4?=
 =?utf-8?B?NUhnVmVNbTdCYjRuY0UrUFA2bWxVYnJwZzBHNWpqWnBMdW1CR0NLY2p0MWZm?=
 =?utf-8?Q?IlMfDajLqX2Cz50k+FDlicY=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fe87dd3-d0da-488d-20f9-08dbb054bc82
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 10:16:59.0367
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TXfSs9PD1s4485/v/PzJniSjuLun9Bo4vrbABAs1YeYQwkvoSpeOw/kxfT3iEVXAEllDtrBrf/dhG2uRjAHF1SZgOZ34GjttYmfzJcPvnUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_031711_463869_D0DD216E 
X-CRM114-Status: UNSURE (   9.03  )
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
X-Spam-Status: No, score=-104.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] net: ksz9477: propagate phy write error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Return -EINVAL in case of an address error, otherwise propagate error code.

Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
---
 drivers/net/ksz9477.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index d664b7cf01..0310e0260a 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -48,14 +48,12 @@ static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,
 
 	/* No real PHY after this. */
 	if (addr >= priv->phy_port_cnt)
-		return 0;
+		return -EINVAL;
 
 	/* No gigabit support.  Do not write to this register. */
 	if (!(priv->features & GBIT_SUPPORT) && reg == MII_CTRL1000)
 		return 0;
-	ksz_pwrite16(priv, addr, 0x100 + (reg << 1), val);
-
-	return 0;
+	return ksz_pwrite16(priv, addr, 0x100 + (reg << 1), val);
 }
 
 static int ksz9477_switch_detect(struct ksz_switch *priv)

-- 
2.37.2



