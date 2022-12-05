Delivery-date: Mon, 05 Dec 2022 22:13:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Ilo-00BvGN-IO
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 22:13:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Iln-0001rF-Ph
	for lore@pengutronix.de; Mon, 05 Dec 2022 22:13:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B1x51Dk4hl4vhJTl0NpIJ6edN64Ii2HRqtpqYdGQ0rc=; b=k6KhmIxUseoQTmaAVz4XKhPRWx
	1u08CATxYJe91TYo+YRn3DlJGN5uhu7bLF8SkFC2DA1eIYaJE1KPZhnQ5zElI5UiHT4iX0GsF5Uln
	BI4jBhDahbd9/FJ7BXbdR/VAeLR7aFgdSpJwQNXrwubQvEKs0y7IyiK0GUAjZqPpEsuO5esQYqyUk
	Vjpd+eBHJMItwQRBSqIIzjTwXvnkhpHyTMYiqZYk9r1zl/4SS1amt4BJ+hb5CL3+mCX5KaeBiutHK
	T9gVV0HQq6cl9zb81H8uqeaFuxhEh7gAF2cn6NmHxP4tsNmmPFUB7b2TK/V5oItl5I5q52qMnjHD5
	lmhYKOOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Ik8-00Acwo-CB; Mon, 05 Dec 2022 21:11:16 +0000
Received: from mx-relay15-hz1.antispameurope.com ([94.100.132.215])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Ik1-00Acqw-Uj
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 21:11:13 +0000
Received: from smtp.eckelmann.de ([217.19.183.80]) by mx-relay15-hz1.antispameurope.com;
 Mon, 05 Dec 2022 22:11:02 +0100
Received: from EX-SRV2.eckelmann.group (2a00:1f08:4007:e030:172:18:30:61) by
 EX-SRV1.eckelmann.group (2a00:1f08:4007:e030:172:18:30:60) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 22:10:58 +0100
Received: from DEU01-BE0-obe.outbound.protection.outlook.com
 (2a00:1f08:4007:e035:172:18:35:1a) by smtp.eckelmann.de
 (2a00:1f08:4007:e035:172:18:35:5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Mon, 5 Dec 2022 22:10:57 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ehjdUYp/QoA3LT8omTd6P4MehnY7DQ3n0Loo0rGI2ANZz63Cc72JCM2jq1xmHpsLnNwPd78jPyaQjsrOXbtOz8uvVPd/9MMoJIMpajrK6u9tUzhc6+XWfypP5CPZHXgW3jdWQjMC1z7DBm+znkkXXgINOfBRipKv/19xt1794YiOISpQPaPmdYwxhBVnmC6H7bVRd6Y5NI8OGySiHqFVzelusjsvIr726KmCoKG1P8KrzyWGL1rc9gBt2WVRW91f8aJHZ0JMLJh2nxHwldAxnenl2/hkk0WTCttvwQpKV75KTyZmKhiKnmcgGCBDpXG/LCdsC9DCdu0UZaHR+odQIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1x51Dk4hl4vhJTl0NpIJ6edN64Ii2HRqtpqYdGQ0rc=;
 b=YjvVoS+MUQzFyGUR6pAWy5wKHtOLRfSa38aBmKhbgARAdSaWFi5phwBACMKAef9VCLFNJEwRnskKHmmvORgki6lLMdcobfHO0Aguro+P69Hvyot3KpQWuqjXW55QArcgIMyo76CuClzdEEwpTMTSpRqfufk3HNHAku5tOm1eZTJpxYVFllqmXOuXZsufkPsf9aP8W7XFwgpSa55778i5cUuao0PVhWUFJFd8qVOgEhuDuvZSfQuQaMwK81fulI45Gh1UP0p3BlKz8glIPbrnMBdeUv3hp1fh+oYOhUZc2hFOF0Pr04haniOsqgrIYA+HHQhotT6mjUIOw3M8K/JgCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eckelmannde.onmicrosoft.com; s=selector1-eckelmannde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1x51Dk4hl4vhJTl0NpIJ6edN64Ii2HRqtpqYdGQ0rc=;
 b=BougkN5scrB28rp0B8J0nL8JWGTwiQnFkZv2Adi1GkbFE0sCDxKPFqi7J2v1y8WBbFwF2sNnc3ChYyo95FbnkqDZzS5bj7iTjHMrNJBMipqrHrBjkjvDgCMilRWue7gBK4ff4K6AheTeWpV//OySQ4TcY5kQqxRADwdlnqeluBA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:6e::9) by
 FR0P281MB1738.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:83::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Mon, 5 Dec 2022 21:10:56 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::5ce4:4d27:491c:555f]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::5ce4:4d27:491c:555f%6]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 21:10:56 +0000
Date: Mon, 5 Dec 2022 22:10:54 +0100
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: <barebox@lists.infradead.org>
CC: Thorsten Scherer <t.scherer@eckelmann.de>
Message-ID: <20221205211054.zi77zva7xns54kbc@NB142.eckelmann.group>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: FR0P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::10) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:6e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|FR0P281MB1738:EE_
X-MS-Office365-Filtering-Correlation-Id: e0818412-7a37-42c0-fbda-08dad70532a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Stk1pMuJ6+5thYClJ0KdYEccIVxZ7k1OGMYEVY4/ueb6ykDcx9D6YgXoqq1A3Tf49GBk5YAVRtCQnaH91KJbQYj/N154Xc0LxSgGHUKv4k4aQwiHeqcpvjM1+Ox4IXMIkIVT9mEof9repsO8v6K+elyqoVolaP+ruMMn0zyXZ0TrNgaTuPdScRgp7jnNG00QouNmS86zWCc6NuH3rRxRdImsdrNWlDYVyYiooJqxtZXi67Y07Xa+ULCuc7+uKGJL2EfBjcFqYtrnWFFKwsT8lbgvGK+kMw6jsJIJR0ibh77YidZyNjO8U8kOhyhq7DM44nzcEAhJ/e/tm0lKPxTTSv6x+SWkjqLlaw5ms1ZyRwZTKYT0OfQLYSgdGMsYMf/X0DJLN0JTr7vRXI5NnqaNFCFp0j0vdTco5gTvSBR6Y7WrgA0csFLvImQwSI6/Hq8zIuTwSLFUIN7deXAr45hsIVh1qyIyVvcFKTLW+oPl/KtqMn/1DrpVrYFFEZY8NjIG7kW5BpVSR4vpuyNWGEjWwJ2WVZiZmJ5qVw3MNXKJtq+Qh233oW3JFEiJ45dPusEYSwe3iaQM3by7ClNQJprKs+2hWutu6XiyQJicmim1w0koILk7WIxDvdLP7mu8XRUY4q6sDvxvqCJqvioF5HjmlA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(346002)(39840400004)(136003)(396003)(451199015)(38100700002)(86362001)(41300700001)(8936002)(2906002)(5660300002)(4326008)(83380400001)(66476007)(6486002)(478600001)(66946007)(316002)(6916009)(66556008)(8676002)(107886003)(1076003)(186003)(6506007)(6512007)(26005)(9686003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ja3tfI5NFLbxUSlA4IepkHkupxB3KrnhJy6Ps6CtinbmkFtQj+TEe5+ArJ9W?=
 =?us-ascii?Q?ia2qL9oAewDxdL861rkFRvnoXXgkGgfFDmgVj45caO8esh475aPD0osJBNK6?=
 =?us-ascii?Q?sstG9bImG2kejHvHit9pBK88dZ8zTaZg/SpHZoF+9nZS7hPWif3Kz2bQH9r4?=
 =?us-ascii?Q?ODT8ZEFw3vuJfdbNpGOxvDOsWsG9xUrvjV+djAbJ2BEn9ZNRpUvWDTeuwrcv?=
 =?us-ascii?Q?0m7ku9FsIvAZq7kah/tK4Z/OMzB4gU5ElyLM58anXQBijwdtN76RNsBzY1Fu?=
 =?us-ascii?Q?m+ce4bHha1UpFbhW1obpwcRpW2Ky7UNAOUnRH8l6AZqOSf1W6XeSUt8ICDh2?=
 =?us-ascii?Q?WidwhNh+wemG+m6ozbINb8LOFnrpuD2s25bfQz1Gljmu3xS5jeWRVLazbc1R?=
 =?us-ascii?Q?IzbqJ/RWJxeQRNmUWkf/FnvIEX54zBCr6imk/4TjJLjM8jndzDyPAaRLG+12?=
 =?us-ascii?Q?usiUEMV9j6CIgZk0METd5Hww2TybefpR+ORB0yz8xT7sVYDAnba3zZ3H1sg6?=
 =?us-ascii?Q?Hv7pRf9t8Qt9D3NCbR/47FJdA9rF5EQd6HVHbpavswN3XVhl1nIlnvZeOcN6?=
 =?us-ascii?Q?LYvuqC5KLTOowZITNXbL6zKtIzw2PIbAP4I7ICmMwb9wpgr0UVTexQ0Rx6Cc?=
 =?us-ascii?Q?Hyxu5UAMd81AioCu8g/VG/CQmtHKb/AnCy+C5L3wagczG+OHgSgFK55gt/S4?=
 =?us-ascii?Q?d7LV3puJpqYSCMWjeJ4+YOqjz7py4Q/PdQY9xGbKlKt6WYNCHnZc1TEJodb1?=
 =?us-ascii?Q?1Xk+NabHYgZkLbgxckWxqfXp2HY/LbaTNRka/reLbDuzkOy2h3teAgJHaLKI?=
 =?us-ascii?Q?EdEabVzwL8fWxYv/7L1xUF4aX+FLl8ohGK3qm/eJ8Ojg2xeXahQ2E9VWv67h?=
 =?us-ascii?Q?xmL3vrnDbarKbIg7ucKBHk1orVsgP4zUdeYyirJrX+0J1Qs9QnNe6Vn0Eeyd?=
 =?us-ascii?Q?VIS8vMrUJQ6m9GJHoLCaRPfHWHoaZxUWAUUh5zBIiW19WSRRAlj6kmynvBTx?=
 =?us-ascii?Q?gIV2HX+x7/1AFZF0621au0aYVc5addL72eP1vNOHqrkYSrwO0wUudqPTwgwW?=
 =?us-ascii?Q?vjzc7EHLu6slnyG2zPSOeyCI/T+7A21jxsq/w4TQ9YGDXW7OqI980LaAjNdw?=
 =?us-ascii?Q?dTgzTmeeMDSTHa2YtH1PPpoylqbo9F4jIWrKzx8SJhgl1qSJQJGni57OgqpO?=
 =?us-ascii?Q?dnnLvSnfnMMIm4nYEwcyRC3MIvYOgDL+CXZ6jZsaSUi0wV/YwZvhucXZMckL?=
 =?us-ascii?Q?5GZd8J5cI02gmaSwjwtBg7pdPxcV+efls5LjmJFvucw36QChLykz1yQQLMPt?=
 =?us-ascii?Q?mLZ9RQw2oHVUy2zGuKANNQ92NJjmLGs8bek7E0dZLWdkCY9Uhaku5WpDWgKB?=
 =?us-ascii?Q?wRh9BhUHRUAx4x+vNPcBIYMnqdaQjImTJQP9BsP110QtilO+vrX+xY08p2Lc?=
 =?us-ascii?Q?8U663w92WNs4z7xYItpdpMExjgkT/c0so+RHVPKdSRMmy1g/Aq05oj/xZrLD?=
 =?us-ascii?Q?FmW1YIsd4rnEy5EmI33PhvC7gTFUgyiBRXspGPrVwoiFkpHen+mxzdHWl12d?=
 =?us-ascii?Q?bDSTAKhfcZ1feukBKogtSBakY0cHmzlYNFkVgs5M/tkiCjOXOuonHC70N1P2?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0818412-7a37-42c0-fbda-08dad70532a4
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 21:10:56.7555
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qaHHldM1H5qfwiF71+49GJuZ7oQOpNvuEyBOccZ2rkm6efqWQmCCUZEVDM5gvLcDwzHdVmk+6FLa1pcYD1NJKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR0P281MB1738
X-cloud-security-sender: t.scherer@eckelmann.de
X-cloud-security-recipient: barebox@lists.infradead.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay15-hz1.antispameurope.com with 4B35414A061C
X-cloud-security-connect: smtp.eckelmann.de[217.19.183.80], TLS=1, IP=217.19.183.80
X-cloud-security-Digest: 7744f1f42d23232a1ab3509a55095eb8
X-cloud-security: scantime:2.053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=eckelmann.de; h=date
	:from:to:cc:subject:message-id:content-type:mime-version; s=
	hse1; bh=8FIknmak0Jijjd0u5T05F361oJmjARwDBA96OU/fOGU=; b=cXYD/g4
	t5KzJWa1BcjLybnRQ7eNYLJG6Bj+ASbw8x1K7u/a4GgxEMTkzIA/Vpu1IRF9HRec
	16VbOQQZQ0i5qzzEybcOl2nrIlMXhTDrKlZPrld0wCBNyQillSPz8ri8c+v7x7Dz
	zLRc1M8qUtwesamrFp6u//xYxk4H5oeb5WjptQxJFhqUXIalzNJ9KxjmD9TBPAZa
	FZVTflu3QopFLWBemDUNERNDh7qpl4zoGQZqyQ/lWpov8dfufzMgoa3RpEu0J88l
	Tpd8JSTy6rWRJCeWlyZWFsoLtsWNlwyBS45/Kb83fpRHBi4bK4kq5FWszLdJ3z1e
	IO2wecZoW0o4SKw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_131110_786368_58A0E467 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-104.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devicetree: bindings: Fix broken ref
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: 594d5d58af ("Documentations: devicetree: bindings: document watchdog-priority")
Fixes: 21dda946e7 ("restart: do restart-priority OF parsing in restart_handler_register")
Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
---
 Documentation/devicetree/bindings/power/restart.rst     | 2 +-
 Documentation/devicetree/bindings/watchdog/watchdog.rst | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/restart.rst b/Documentation/devicetree/bindings/power/restart.rst
index 42b87f7e9c..9a84c4f224 100644
--- a/Documentation/devicetree/bindings/power/restart.rst
+++ b/Documentation/devicetree/bindings/power/restart.rst
@@ -7,7 +7,7 @@ Optional properties:
 
 - ``restart-priority`` : Overrides the priority set by the driver. Normally,
   the device with the biggest reach should reset the system.
-  See :ref:`_system_reset` for more information.
+  See :ref:`system_reset` for more information.
 
 - ``barebox,restart-warm-bootrom`` : Restart will not cause loss to non-volatile
   registers sampled by the bootrom at startup. This is a necessary precondition
diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.rst b/Documentation/devicetree/bindings/watchdog/watchdog.rst
index 415a4520f4..753dc7e35f 100644
--- a/Documentation/devicetree/bindings/watchdog/watchdog.rst
+++ b/Documentation/devicetree/bindings/watchdog/watchdog.rst
@@ -7,4 +7,4 @@ Optional properties:
 
 - ``watchdog-priority`` : Overrides the priority set by the driver. Normally,
   the watchdog device with the biggest reach should reset the system.
-  See :ref:`_system_reset` for more information.
+  See :ref:`system_reset` for more information.
-- 
2.30.2


