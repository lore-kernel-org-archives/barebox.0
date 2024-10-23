Delivery-date: Wed, 23 Oct 2024 11:16:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XTv-007p2t-1R
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 11:16:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3XTu-000529-MM
	for lore@pengutronix.de; Wed, 23 Oct 2024 11:16:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ayz0NjL5UAiY+ha6G4LwcnR0oYK4Asw94BvGxY19oGg=; b=wMt7GrfsC30O9OzW32Obzd++cb
	mzSANIUSuYmnOkW3fOf3UddRbBQxt5oVm3+tKy5SIXFT9rOHhRYUG2drrp62MuIpyuY65DLQHDDLY
	ufwGT2eMgcs2dXJjK/kRcFzbk3WOwGbzafnzUH/VMsvohZ3WOL2Q+mepDhQGQ0ylNpjghFIeSwZ8M
	0zv5j/6Z/XiaX1v2Zeyz116i1xNaPP7YBp6UeI6RyZvIxBx0IIk9cxFNOdb9+3b2Z5zxTh/ncRnM8
	OCS0aCMxaq8McwNqmVmx5jRLbFVe1MU5vB06Ct0hpwOxJsM794CIGUVjC0bPwLTTrZf6+1FxSwL8y
	/bF6CoSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3XTK-0000000DkSp-3rTd;
	Wed, 23 Oct 2024 09:16:06 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3XF2-0000000DgV1-32hx
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 09:01:22 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id 81B283D851B
	for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 11:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729674076;
	bh=MhBrXJxXGM2pjmdkLv0pcZ8/1siCFLX5iGOfBlMOZ4U=;
	h=From:To:Cc:Subject:Date;
	b=bcCtmcTrYxhxyVfY7GnreB02xk/x/KiXDYzcwjdr9nQbn8cvauWFafrv06gfSmSU/
	 cLSrsiRbDZNG6mxdT1YnFslvw4TQohfHupP2pJasN2Jvux/UM72CWqYQfd21wV1kiW
	 B+7uy6f5YwfYRKEXQ1ehMYbzFIysxi8hEolsh9pA=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 622D83D813C for <barebox@lists.infradead.org>; Wed,
 23 Oct 2024 11:01:15 +0200 (CEST)
Received: from PAUP264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17011030.outbound.protection.outlook.com
 [40.93.76.30]) by fx302.security-mail.net (Postfix) with ESMTPS id
 8ED833D82F2 for <barebox@lists.infradead.org>; Wed, 23 Oct 2024 11:01:14
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by PR1P264MB1837.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1b5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 09:01:11 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8069.027; Wed, 23 Oct
 2024 09:01:11 +0000
X-Secumail-id: <5209.6718bb5a.8cfbf.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qck453cY5WYABkGsY+4CdQrkVOe5h0vZx9EuUgbNGEFwTX9/aVlkZUZmPsBLWWdqNbfUvmb5g+1R2xFXxOBQU6oaU11McgJwhdb6/HZiKdIfKd/soEcvU38G2V4SxT+sVgQNQZnf/O7qIWYSSe+pT/UV9xCHhH+8RTo0itCl9xJ/En2czBX8fClGS+bhSgbJTkMjDbpuea8EwUuUGK894zmRo6ie4YLKYRs8g8Fb20gio+a8NuTyRav7WBmyAXywoD4EaVikwgaPderwMfePjnNTlHlAkXcAaiAUmrRdU7p71kECVHQiXmONcd/EHBA8prOQLHFOcfFOLS7RNY1hUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ayz0NjL5UAiY+ha6G4LwcnR0oYK4Asw94BvGxY19oGg=;
 b=ehovU4XUFmkPSpb7yu0If0cBiv1WfvPxrGXR6uyHeFIpiu3aWD+Q6cuJHKdzgP4vra1TxTnMiPHGkI4kInS2NIy3xXkF0PBkbVkHgspE3ne/oyMMiqOgt9aMJHdCIw28aEnblKVyatcIOZWjApubnBDUX+Yac3kEQ0G5FEAt1+/EKaB4PXblL/Get/mecKO0ho5i9znfNFR/LHNoO6y6ZsJ8ugNKmKUMb6M/iLeQQZ17dR7WuWF8kjr//x9CyreB7SpP39HRIqPbqNX+tLpYG8oMhFliZ7AwFw4Mslf8YHThW7PQSZ9O1f11B54/LD5FHx85xrCQRNM1VOi/Yp4jzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayz0NjL5UAiY+ha6G4LwcnR0oYK4Asw94BvGxY19oGg=;
 b=FejwXzMCHeAk4NCwfjaLEO+6RfsGiKkvXX6g1NnAFgLUB3uo7QDpGLRD7aV2ZW4WTDYhhrvslo2p4qcDXeEUwmhnKypxp+jngoAdBnQSst0/mnHFQIGId9Kj8W//OkjH10glDlfxNtAWbPSuEz88CDTICefPSQJnGpKdcRGTT2imD/Gkb+jBQMFuN9QFzW0dvM//y5ka+WzeSuEN0ehQB8cRR0VOsVO578rLHAW/Lb3O8F29Wax1EJBcJvM3bQ0CUOHUaX3zsHVgzJnPUsud1bwSFY8F+aRX4eVDbxL/ZG8VXdcZet4vaWmRVTMLJXLAi55YMDmrPIQ4drhq/d6teA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Louis Morhet
 <lmorhet@kalrayinc.com>, Julian Vetter <jvetter@kalrayinc.com>
Date: Wed, 23 Oct 2024 11:00:52 +0200
Message-ID: <20241023090052.1596583-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR04CA0043.eurprd04.prod.outlook.com
 (2603:10a6:208:1::20) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|PR1P264MB1837:EE_
X-MS-Office365-Filtering-Correlation-Id: 4283a278-04b2-46c1-2968-08dcf3413dc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: Ly1qMtBKc0O87EX8c70EaY4oZr57CybCPOiQJJ8KmkbRz7dVCGbS2s71Psq2nkwvmzFbYcjDvxyM9J8i8aVWUWz54WXpdHLXdCBV38I2xCmkUlAoMLRqBTLhf0TYhAoXxEQBVIfohTXXoX9+EI17XTwTAx+ily3g2J/1g5uNMhw6iYpYKqXO6OYAMCvFV2D6a20oEL2FPHLvQgGdN7uSQgmN9A4WFbEwLtSVBahlYaRIuRIdTnsvRlT8X75e0KmPtWTDU4KEz46SMwmJvB5TQNZJiOwM7hCtoWL9V5MhfIUzsgRVmFeG/i7ElNocdggLrndSwV663iLfGJUmGY8muR5KWRNI2+VOZTR4CP0ttOOAdz/7vBFLzvB1rtu20cOpnTdMUhHVft3IAro5TgTF4df1FPi9yKyGrqqrRqJyS2PxLPlrR8HZvTuSM6Ip0OXVdykcF5QKbk/Dj/8XTjFBLejhEnexisD7jQhxUw0PQ5+PzWhp+A2cgNmu3nYSzBpipgZ7GN65FqlYPSRiVQSU0f8sIJhrA8SRs4OelxCsAGK4nXMOPufxnUnNsl/YQnIkz+2yDl/tQmvAf3VeW0rQPdbYKVHgOBIxkWsB47HjvNZImDcsChsftecRMHrfvkjFFxL6JfLRu4iBOluhv9gG8A7v3WkUv801SNH2lVH1/Q02FYKa6OVdIE4OYn0GOdYXWJgCGbsz/RXgwRB74P/koMGSdnW4LSG+VzxL7ln7m1W8wNo6z8v6MSd9sOYOO2erOITPp3Yax1zt1nwy4WEEAE8sghGc48S8EYUKUcFXO9g8BGy9lb6ISpIjirrih4a7OoOY/204ZvUqZqa2EhLTsjYDoW4XLkJql7OK7/PnLRNFVe0SylUpW+PO13WKTEgtkCgYjolEYpap63UKRMYPYwAkfYbGjiWUeMhLCnxFIcpaIXT6CPSO0zEQMj/t5d5oKwG
 pziyW8RLA6kg6AujSoDl9A+4Fd2nK3qo2UYrs63GCrBZcvyCh3dLTAs7RRun6SI+3NPkfKeiwO4LvSOYUkgX0HESB/vKcIK/FPMACN9G/8MIQxhwr+e6fHIPzdFSPgm8FxKN+wNMB+g74eRXPwA13WbVwwk16jdPbrnZJcCaWAdNhvDUAQxXHx0ong5sdfZrFdRkQTn4drQkaUw1uiXjn4eO15QJwNJIeadbHXYPhY8RbaapIYVlYzY4WnGXLt9QqglTk9dtDQJjb+31+b37Vv6hBZW4ln9XXvZcfzojqW+NPMm08i1UyukmmhWAlGMqTmvmfm1qa6RkxdvYxMKTQmiRexAr5puE6fdL1uHa97p672zpU8lvBb/6BtnNK5lGG6X5kdbENBuUb9xiBIPTqDweTdi/20itGddvrNuo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: cNitmBSCPoatgvM/YPdsfMnw+r2Z2rRCvzpDea275VZQa03tmQ5vea/NhYg5TNPxbT+A4AEeCBysJtSH4y7sfj83AIXt303Qup09gaWASX7y4a7hzJenqmxSDGdZ25EvOirAfhCtKxGW5iwgoYrQJwNN3vw/GLWooq0J+4EOxHNjWrrt9RMefKqC9/8/vs3WJTBfuZMyIOEF3xIH3FZzejvI8IkDOlopkwEEO72cE4+FoQsHUoa+bIXV70TxyR7yD+NI/uzwVBuShk4UpciXkiKyuSImGs1sCbgHFNLjQU7guKHCFK8CPwd25yILSvJkNCGODBrl2JEa62SsG8ZcLMLh/9lLvnLEwwd5eKIvC6ok8+JziokOtk/8WPT2mUz0g39udS4kPlAC/UKHP+tLuKz4PS7+0Z2FyK3FTfyUeVp1Px3olyt4EV0b6Q5o0Km62tsCvXPf9yRwkwqOzq5IXj5910GpKdB88ftW0oehrjlOn2239BnIbUnngcWR0hIq3tYYvmMA9g8gRDWB/Jcq6MbKW3UKRCe7SpN7NxYgXTEJgMYz0sXAEjymiRMzHAxN91hc/hkCHO3gnBKKlqMQfmjJEz1fV3Lj1+GAktNRDC26GTmXAxEQz54oV5VcuUNZZyJp18Eaz+PBN2TBzjSU1bxGKosewxfAudNWeAx5uR315bArvNdLGZ3gvokeH6famfW2c+qB7xLw5M9zMIP0iPwTQvrwmQ9I/UE0v/b3k69tFW70bB+KWzJOz4r4SEYIJ/Mz+8P86wBjzI7JTI1qLcCMaiS8trrFhqNEMYUel/rFWLu6ePIO579xfywz3rqFITtOu5lnpb71t3ePfhcbLxUaxlq+hKJKQ5rPa+1fgwRfJvDqqriHAQhPKAnHsVeAZySoVClnwcrzUhPD1z0T8BrFjLbgBYbtYWHlTZO0cHtaTq6pMwLjslpWk+MbKPpY
 4q10lm6XTOZUWLWT6roRJdl4eaBYqZcYBPCWgQrqhov9G0xL6tP/62C4recp8jVv2hwM3w1V2y8Fa0UkRo/TkehcOWm4bQjdzjbAnJIRoaWoe4p9V3vVJvkPcD1xGtFDKhwGCt5+okPi0l1pWGg20pb1Wc1G6zrGspY4ylkHEP/d9OX9yHF9RwaA0RxOltwgNyNr6nDuw/0XhJDQcabq8pvHXilTxkxOgfjbX7jXCbsFdivcHcm0DsJZ2Mt9aBZG0X9XWYbG9ltN3tfm6B/4jNB0UNAvp4hSrGye8Wow6W9PzZAf7oP+h+3kWC/dVDq3Pin6rrUkhoeT3GwkUXjKSa3l1ZmlneHq8NEGt5Poy+OLg0qDWxAYuAlhVia6kvT528oZMuZMJ9tkTB7M9VTCunoT7XZGmId8/JPCF/TX2AhfhEZ84xAai4qOG/QBdKLHjxpp/gkHq5ApAXpWYA0RC8+pcpZRIBN4DcOk8xMHJWuW2JDbr9Yps8+GcQIxNNrl0kvY3LuGWlfueDCg98nmTJZe0dAEGjUnn4OoszefrSA4vGfB7aI60ZKrUccW59pC8f2hbDCMcpFUBZvIu6fhHM58OvGNXlfcsgJqAMMmUZZZcEK5Y0N4mq6qcxo3N0Hdci3owqNfAKKbE/5ARsKodQ==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4283a278-04b2-46c1-2968-08dcf3413dc0
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 09:01:11.5592
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9gl0t6TBp2HKSNMFA3S3lnepe6zkCPkmPLJpEQZEzuqfnlSEPCEilkUJThnn3Cqhtm8V3+G2KfRbWdAwwfd+vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1837
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_020120_932310_F0436668 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] kvx: socinfo: Fix mppa ID read from fuses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Louis Morhet <lmorhet@kalrayinc.com>

On kv3-2 the traceability registers order has been fixed. So, the
reversing of 64 Bit register reads can be skipped on kv3-2.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 drivers/soc/kvx/kvx_socinfo.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 5f28f08bfb..4b193ebac9 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -22,7 +22,7 @@
 
 #define LOT_ID_STR_LEN	8
 
-#define EWS_LOT_ID_MASK		0x1ffffffffffULL
+#define EWS_LOT_ID_MASK		0x3ffffffffffULL
 #define EWS_WAFER_ID_SHIFT	42
 #define EWS_WAFER_ID_MASK	0x1fULL
 
@@ -70,8 +70,8 @@ static void kvx_soc_info_read_revision(void)
 static int base38_decode(char *s, u64 val, int nb_char)
 {
 	int i;
-	const char *alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_?";
-	const int base = strlen(alphabet);
+	const char alphabet[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_";
+	const int base = sizeof(alphabet);
 
 	if (s == NULL)
 		return -1;
@@ -102,7 +102,10 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	}
 
 	ews_val = *cell_val64;
+#ifdef CONFIG_ARCH_COOLIDGE_V1
+	/* On kv3-1, 32b regs on traceability are written in reverse order */
 	ews_val = (ews_val >> 32) | (ews_val << 32);
+#endif
 	wafer_id = (ews_val >> EWS_WAFER_ID_SHIFT) & EWS_WAFER_ID_MASK;
 	base38_decode(lot_id, ews_val & EWS_LOT_ID_MASK, LOT_ID_STR_LEN);
 	free(cell_val64);
@@ -118,8 +121,7 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	base38_decode(&com_ap, (ft_val >> FT_COM_AP_SHIFT) & FT_COM_AP_MASK, 1);
 	free(cell_val32);
 
-	kvx_mppa_id = basprintf("%sA-%d%c-%03d", lot_id, wafer_id, com_ap,
-			       device_id);
+	kvx_mppa_id = basprintf("%sA-%dE-%03d", lot_id, wafer_id, device_id);
 
 	globalvar_add_simple_string("kvx.mppa_id", &kvx_mppa_id);
 
-- 
2.34.1







