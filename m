Delivery-date: Mon, 19 Sep 2022 13:42:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAa-009Y9W-J0
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAY-0001SS-N4
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W6uP0jCYQAhxHLgwDT/Xd83C4ppVk9dXbrksqY7Z+Tg=; b=oq4+v3kqcRF+QP45SDCANHrKjN
	eeSAj/KI96xPlSZPuR1/S7S6bN8uO9bSyT5vaY4akgAd+7w03152rkSbI2Zls3mwHVFTj2nlKaKMh
	smFTSM2azOCGih67kkvAaLtNmjxzXVxJoWPXdKW3Pok2FKoBxqPsEB6nHtgqUrge9GpGshaMVkktr
	3CrkW77LaDpZrZoS8ANUkg306ejIuWQomNWe3hKopVU0XQnkqJtffvmsk+O/w4ah2m4v6kUFlHItf
	T+p9PjgCih2yt05HUqIJpyodoGZQgM8O/6qC2rnmeyR/gxCme4gPLOSVoeooWKo4ksTPwrSACI9YN
	L/XA4eNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8H-00BXrb-Qe; Mon, 19 Sep 2022 11:40:14 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8B-00BXou-7x
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEP/89dNqHSO1sFz7zruOlTDOOVGo6TmLJjmyx/KGOutv9MLX7Qpq3vCRRHJuwe5X1uzuFZcEVw6I/lZRBY5za8OCWvyS21fv00L+ta5QHHPsiQyePkolx3ce4p/gfiFv8IxkoALnEDSs9aM2T6jk9IAs7fuACg8qmNDjG2HZst3fFa3DOPt3TSq6DnP4y3weq7s2ev3VU4jehgjIVAqLaD5+j1fDiYTyYJXoSxZfhTI+65JVv/OabDAh3TickgJdJ9sG71iROcIGXtuuDsWSn4Hu5FVXO5niOZZyMMu+X9WTfOb10EYXmcoN0wKC4tNS3ew5nrejZrKv1+5E8RmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6uP0jCYQAhxHLgwDT/Xd83C4ppVk9dXbrksqY7Z+Tg=;
 b=PgYr0A1BJeK1XwDL3Im+zGRtLWE8kaBfqTKxU/7FBEojo7/inYYqhdVYJlD+UK502TM9Cm3HE46j9nZF6iq5YkJV8vDlmrBFQcXc0UsO9HUnUKOoiw8wq8ipo6W9hh+lbJYbe1EDHzgI+nH1lUYOlTpVPvSGwJLr0vW+gZvzXAknTKT0/bWVtFjgyoG75x3Hjf4q9xpryf0fuUEzUzkXxUI8BdvPdfFjPdkFIliBsnbszLLtxWmbrhWCXJL3edbLB8TUaQf2bTVn7/AsV0e1YeT7jLrCNVyZ2U2X+qb6nIX3MPlg2aLerUvBcv7gj57xeQcIRHq0xBhXOCBfYl2UQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W6uP0jCYQAhxHLgwDT/Xd83C4ppVk9dXbrksqY7Z+Tg=;
 b=XBpoGFgMK/PCWlgpmqx2zA8X9c7+EXdNFaGppz9bXxRg/1nAJCATEfwRCrJW57y5AsCT9kS561ZxoTXspC2MGfAvcBub20sVEL7kFifhWOF75dIseUGQyKGpqNNp2oTAqfGbgih4PY9wHd2pBA5DYimTnsmxHGP4idI9kfFLvEk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:02 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:02 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:43 +0200
Message-Id: <20220919113948.991245-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919113948.991245-1-michael.riesch@wolfvision.net>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: b587bf6c-fe24-480a-1f2c-08da9a33b041
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	SdtvPhJBVWF9RwVeerZ7B4hDKHndK7sJQTTbcc8wt4lnPw0omHn6KFCh14/u4sLlFbL+rTab1klK4Akc9hoRtC+M/jPbW+1CIERpcD8YOv6CuJnldWOmnmRg7ZRYuyEBfteKaou2wFq08ZPEfIV54mERh5yEWoT5I30Zilj+K9fb1r8P79aHupJWZV+5zhGnfb/28Dq5OGD0eec3XawxP4LmvH5f0I9kHuqliSmGRzYkCqgZ7cnp7rrhFmT8VLD8GUK0gUvXeW/OmJChUttIwxaW1dNcHl5yOjtxoElMxOkvSE2GZUQBN8nOOyZG1o/jS+NlCAtZL32SxaWgFYbF6+Ne0FNVTjzjI1vooIRCsMqBCzjpy9BYhAdCTf+/ltg1S55B1JuHHQ2ZzEEbZV/wx5rdFaG7R1rEaemDYUKX3A/KQbuAXB7/w/FHqXH1IDeIYTjHnaJyXtgN9Qwj20IZA+0ZtA4KN14uhwMS4NN7gdr8YigAQBVADmKRotTmthaTJXrJ9a32PtSyei/pFfMjoLHZPBC5chm1oPe23TBPYNWg7fh3ChcMNUqjtQp4ZJUQwJ0kiCwze4Klg86GClsXMWt7ELGtGLVIBj4DdbmbV4MJAV5hN8WEtxb4jrSanoGkEe0CbqCcjwFCG3Zc7HOOYokYs4dFq/VD4EzimTHIZXl70FiQ1lzWQFjYN45psxgFM9NW5uaKb/rGvQoECZKiVg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(6666004)(66946007)(8676002)(41300700001)(4744005)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?tSncshSdnj0118V5zrhhF+4/IpeET6eTxHaT795NGi+tDgzX0vwzeAlWxddC?=
 =?us-ascii?Q?Ky7N62ARKytUis42h588m4jyzMT1adnALtY9TFGs2uag6EnZ1c5bFaLH0XIx?=
 =?us-ascii?Q?h2ZxkGK081oviEkIwXq5nX6zHxKOYTOwVIrtn+k56jg6DM6z14DoE0RBy92U?=
 =?us-ascii?Q?UbYcypAVEmP3u5ztQkVbJJYULEUW+vhAeRL9avCdR8T/nXh/bdY+6FXK+lqM?=
 =?us-ascii?Q?FvkbsIoZdXJYgSgvcQ7AsEQdNkTb5fKSVZ8tnzJ/iVkafcCYJplvyBPoq7/J?=
 =?us-ascii?Q?lStooclLe3eaio8RWI7mjRnHZwGygM3cZtwp7utkb6Tvzd9+sSFqGc2ZN8fv?=
 =?us-ascii?Q?KttkuJQcWarEgz7CPAhEZYa+fA/uyWgSNJe+IlGzMxULKcWnc6x9T9tbv6OS?=
 =?us-ascii?Q?hlukPPCKFdmwMJr5DH9uQ4F7bRFzclduG2KLa2IDFjzE8nJq5jAnaYxRZoZH?=
 =?us-ascii?Q?xDzPXlE74xArqb1l1dNJ5k3ETqI0085T/mkYlF/VEfXEK0s2sh7MsHdUrgFE?=
 =?us-ascii?Q?IOKWlq7UndTdQoOFEP6SVttnUuUuI3tCACwCYhG3Tt2tjB3lbrnDZ/7i8rAN?=
 =?us-ascii?Q?fUe4UIsKDECrewF4qNp5KTkjIWBRV60Z1RMnb+8CnwnIo2XQVaknaOvwlPY1?=
 =?us-ascii?Q?PVquUExnhpORpmLD93yM6q8EMd+ubNOZRKQnZ19TLVOcjEohG6Dp6iJrRiQO?=
 =?us-ascii?Q?+FkQyr4EgCbj9hfqbUcmgv/93s/H6xTYceB/sRIfE6pML23JsrrFk45w5euD?=
 =?us-ascii?Q?N/qGQgPe2/GcAFP3YUpQ/8TsOb1fvaWhI06GAJBSjS0pObNYXk1x8/3e5rFA?=
 =?us-ascii?Q?IeJPqPc2zfZkEloaZPBdcSP2rYxarmdMFYbH/gzJ05kVYxeknGrale7heAOt?=
 =?us-ascii?Q?hRY8fKlzbBCTHaXqAc2VMDP8dhYo8ZdYDoUPMekiFGcwwsqEuylnumABsT74?=
 =?us-ascii?Q?AZMNQ5AHTvj2NMNe3CazjzTdFPzEE65CIciRyB9PAlxVXSDtUHl5D7xIpkhC?=
 =?us-ascii?Q?QqhKnMojnRi/teCdMGjfKEr5Z2zbIhcPZxCBs5Hgz1A5wgBTKiVlOUYMpvne?=
 =?us-ascii?Q?Ks6Qp9zswsbHSI/k/Oq7Z9BkshIYjm5hu8Drjx8WvFE9InBtg0dhhZJL7IT/?=
 =?us-ascii?Q?FahTA5fKQ2DZEd46GCnxAu9UyX6D7iamwJ/QieEjAHIf/mNPhtWAJJaUdnXz?=
 =?us-ascii?Q?jg5T8Unj0TtRDbjiNXx77LlTpxijIWfwHT5hAthxo3YwXVEPwW5OyurF4sn7?=
 =?us-ascii?Q?PEeH7cs9kuIQEzR6jbZiLKJv/AFA7w7njtagog83ccLCKLC9RRL8FDGRjtVl?=
 =?us-ascii?Q?vuxAzOG5d9IsS2LUG89CweNwhW4OoPfd4joDZLJkMVCewYy2TNsdtsfsQjLr?=
 =?us-ascii?Q?iXYiubsQK6EjSB+WXC6rCdTFMYIrGC1FagrMtpRKbOKxiBUT4pYIys0ZuCc0?=
 =?us-ascii?Q?+es+ca3MK6kHqM5ghS3V4Eyz96FFLSk4/1Y1y6JvnqOecyWJvh2lfnZDL/1T?=
 =?us-ascii?Q?ala8rKsSRngacOUPKg5wA/9R8FGtf6pbPjF5a0IfOFuWwNFcXUhRXlkNslrF?=
 =?us-ascii?Q?Fv3YjT6vy/HZu10+BkI/iIqYnW03r4lYPnzWRxTF7s/Kp7cZm1h7FBAxCp7t?=
 =?us-ascii?Q?sRaXUNs5ejJPL7re6VwdcG4nSQhhCtiXeypej2i6YibZhMRYywhkeuV2+SHi?=
 =?us-ascii?Q?WhUO5W6MkqEXbwDmmpubli/fT8Q=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b587bf6c-fe24-480a-1f2c-08da9a33b041
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:01.8820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rxpq4QoO+4Q1pwlK99oVHNi81LUo3sU6TIeaKcHfSqBEh0HYMuCaFrB8Xffsw1a5GGfbgEaGECDSugC6SBIqOxa8z/YNjx6dmIXNZcvZ2UM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044007_331159_31782431 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] arm: rockchip_v8_defconfig: enable io domain driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The IO domain driver is required on RK356x boards to configure
the IO domains correctly. Enable this driver in the defconfig.
Since the corresponding voltages are usually supplied by the
RK80x companion PMIC, enable the RK808 driver as well.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/configs/rockchip_v8_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 7fba31ddc3..d673f7f788 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -139,3 +139,7 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_I2C_RK3X=y
+CONFIG_MFD_RK808=y
+CONFIG_REGULATOR_RK808=y
+CONFIG_ROCKCHIP_IODOMAIN=y
-- 
2.30.2



