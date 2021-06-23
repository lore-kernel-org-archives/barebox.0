Delivery-date: Wed, 23 Jun 2021 09:54:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi5-0007q6-UL
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 09:54:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi4-0000oy-MY
	for lore@pengutronix.de; Wed, 23 Jun 2021 09:54:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTBGKUi9cGUe+fvo5uAgIjOIw54qMnvb3JEq4pWu5ps=; b=uQOG/yJQ91p4s2
	MdKxkzE6dxii+5K3qg3y77bH3ETZMj3CAG+HR662q3VWl7mr7EqDTbYjpSnr6IiuAoIVKrq6YImsD
	EZMBJ0o083HX27Hoh88QlraUezZdKjaaJkuyf+wgkpjYd69zTlJrVAIpWSg925oWEJPD7tAGofE00
	PC4iqTeIeit0CXll9GrP/iIIYW6NYEcpm7YzqbZzKJ46ALyxiGlnbLNPhwNY3FWiCsc3ajyY8PANP
	VxZkfu0aVoIiNTmZQ8+ek2CysRyb7mG1xKsvnND7k7RjqfyKYQlRu10Y+NponBuBLZTAbKeR2WYSE
	PyVp32nBW7jHYorsOEuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxgT-009rrr-SI; Wed, 23 Jun 2021 07:52:30 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxgO-009rqp-IN
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 07:52:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+YvoieCQugxceu3iNdhbUoVUifFWj/llLMPw4YYjD9xYziRbsBA84oM7Oo6TnKz4XDWKFvdNj5JIZIqvwTnBe8j4YcJkgmSMxI/SUJrIewVLuCVxk1RiuwLRi4kZw+G1P1cQTL9lXI/6MEbHaN0HWlVlyTSrquUMLCTm4SnzNj7wB/+3ytqZuC5v2TYjlsEwulvsWlXVnKN01yKW52NKWXibwlhzfaKv3XPMQvPAdj4zN2rAlvZjxjwAPN746svulfoSCsfxRNPcb9oorz5OwJqXQNlyVnXPT6GPXmSZVY3Eqkt6rzvljQnwhQdAUxown6DFn57O7QUlJYAz+lpXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eTgBswW4MALsCNAysQL950KEGgRQo4PX9shTFww234=;
 b=Bf+Ei2go0DO/TMk0m23Eybs7ZgSrAbERIJDqVyQhNzV1ro/DmelWeIMN60lXKMn/ox3wQicSu3ojceFZmOfF5Aq1S6rXbcXnoWhNMNGZKSBm0KipqHXWcWxTYHnJfcSGb7teo1fW4HAeEXjOk/DY34pLl2wk5g7yc4V/l9OJ3aW9PYIXM9hK+27gQ7DNeAhCjCsAhVejGbv3/mWNF+OEs2GLF/7uIxoyZLHK+N6Ih3U8G2XashRorHID23y50Jd4+u5aJAjc2wePdpkTjDe5Gbc/0GD6M1DIlFSDQJkeCW9NwiMZB983C9HQBxRpKeS1Ab8MyL2GuUe4tso1XjopaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eTgBswW4MALsCNAysQL950KEGgRQo4PX9shTFww234=;
 b=D6g9Hbq1ke57YdkRVD4Ejt75n//bSyyR0tUUslb3SosOO8n/IVmGA138cSYpqBObQfT6FqUjahrWncbCHFlhHzVa7jF5hAQBkaEZUFLOJDFIVA+km/vcqYnKAr9CM4tvqjR8tVq78bM/Ph/SKC8Kp7fUbphhqZrMHOuY4p85B00=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6028.eurprd08.prod.outlook.com (2603:10a6:10:208::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 23 Jun
 2021 07:52:18 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 07:52:18 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 23 Jun 2021 09:51:59 +0200
Message-Id: <20210623075201.5328-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0802CA0020.eurprd08.prod.outlook.com (2603:10a6:800:aa::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19 via Frontend
 Transport; Wed, 23 Jun 2021 07:52:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76eee1c5-e2ed-40ee-f1ad-08d9361bd2ea
X-MS-TrafficTypeDiagnostic: DBBPR08MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB6028925EBF52D06B3BD147CCF2089@DBBPR08MB6028.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cGqreFQb0eXghFnwjdkVRHw9+ODOD5OgFJiOzMsrAIVZtmWPafX6OdsXy0j862EMC3c0bDhQ1K6m4DYGXtaeZe5lngtMTSMEEzzwKxsBaQmGoFubFygNDuSGjsKwLiv/e1Ve+cIUhxeerbfVPum9srh3hULPHa1XJpHteBVA9b7+4RKPQfBAMlpfqlCvFOdLl7dfslns3GmAXK9vxccY3ShqosmV1TuNFtMKJM7/fXCXPY+n5xT8lpVWOruPXQip+AsQHVKRIP5nV9dA+fY4cMuVX/cYTPoRpA90TxR/7qPfcUy6pJFsXKqW9YewkfxzrKA5ZaX395NhDFnCExmAR3Iquw/0IK/SHlvi7N9ptaIcaBxrKMM8L4kDDKGt0hhba4pvmNPalviP7IKr/p/xbpNfBdslj/MCFDigL3vEyGvCPVotwtCv6w6pzr1f9U5y0PfPI7jAFOO35RnCEghiCLn33DVSlcTBY2nAt3AMyntXfeGm0XVgep7dV0t93DqMK6pR6R19BbWxjltDPif8WBBNqpzBw9KPp33an1E1un9qH+ZdlzzJpxz4kWuxnR8zzIrNOpUcWkQiDpuQLu36FUQWyaRcCgDo085Gutl2gSTj2/dTAF+FocNWCRGp6wcmntN7H2yjwq7CkDljK98LCUdlQDfoqGzqodBOdXgTK+Hsij49RGwR7u3KYinwTUu/ItsbE8Ie/HkldL2ghupVFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39840400004)(136003)(376002)(366004)(396003)(2616005)(186003)(16526019)(316002)(1076003)(6666004)(5660300002)(52116002)(36756003)(8676002)(26005)(6506007)(4744005)(956004)(4326008)(107886003)(44832011)(2906002)(66556008)(66946007)(478600001)(6512007)(38100700002)(38350700002)(86362001)(8936002)(6486002)(6916009)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eNDa15xEI5nOwVc2+6mHbUM+XiYraxgLhSDzH/lN5cWLiLQZ3Zzsbuz9woqH?=
 =?us-ascii?Q?/WZTbT4FH/Xs6K2ybVqaQ44jQWedktVBEbqGSXz/3LdVeDu1IcF4Jq5f2o0H?=
 =?us-ascii?Q?2XYY2tklPSrd/jWOaLbNusZn1KlgJjFEiHvKme6m+OthCYOvGJRGzenpQF34?=
 =?us-ascii?Q?mZomhwcH/fEbWjYWBgbstLi/tEEs3N3n1tZpIREs1mTFW/4/mn+3XfXQuOM5?=
 =?us-ascii?Q?G6J06vZGnU+ZE7M4a5BC0Rxu3fImTnJR5LCxiKNC6f483vlqqg5XiH4Oq08b?=
 =?us-ascii?Q?JxxzuCbtzK5wyWFYjaNMgXj/zdycUEJsi1DK4lPJlnh1QuvU9VTLi89ER2wV?=
 =?us-ascii?Q?55sUXsfJPgHWzxXZjvRhcgZgWymxFUJUdEKFgrorNh6IVNC+tI+MwS4dp62R?=
 =?us-ascii?Q?WWHWmt0nQFB4teBohnLcqTYfHR4SLjZx+T3gvBW2ATiKpCMaZ7//Hswa5cC2?=
 =?us-ascii?Q?6Op7CXEX6BwMX+AxccHASYyQyPDe8l0i1YNchkf0Js6vypI26RKpw+lbEXba?=
 =?us-ascii?Q?DYW85wgSMMlE8Tnn75ZnmZZ7PM3Twg18mpmHG3QGQeL4bWc6pflLk/d4vTE8?=
 =?us-ascii?Q?nKTh2MTs0B9tPc0u5eKe0d65h4TEzv+tEkZc6+yjQOAguofmbe/QPlkfvlfJ?=
 =?us-ascii?Q?OyQyW1ZtDAMuMFIs87kKozljdBpfaHW9fLvpDr4NUHfCVmjy4eLPk1MJuxxG?=
 =?us-ascii?Q?HZeNBmjKgMjA0yoDDVr49y6w+2vTkKLEN1bUg85pn9/3PIxHLVscAz1vixMX?=
 =?us-ascii?Q?YYjpzKNiTEwIOQA0A19lVgqGeGgVqLWFzGFBBRIAGpHy9gkNbU0cKRSPBnTj?=
 =?us-ascii?Q?itwyDBRixFF3a9wSudaw2nVlhMSMRNG8g7n5yanIUU2WKHuHvtHuBthcOZz2?=
 =?us-ascii?Q?wV1eAkawnJFjf9CHs7vpkV/JPGc6zcuRLhYt5AP3kYs6R95bnpOaccYCVg2h?=
 =?us-ascii?Q?EW/DMcI+CS1+fEYhDIzwnnhT+Sv+KjG11SzCzx/85NUCHjhGYg1syuCQO737?=
 =?us-ascii?Q?GaxZp7Ea2XJS9PQjcdjfonZVFexFu14mh71bkPZqYJhB57e6LyK19f7hc3q9?=
 =?us-ascii?Q?73R4M3Kb8CgYbxqnlH++uKBzZn/KqO9IGLhuav/RC41Stzqo5f+SPwtT6C3t?=
 =?us-ascii?Q?NC1SJcZaTPTWxQMN3P8FlOUY8Huwjy/TEslwT23tsq4GeJJmQrcYRMaPOSPE?=
 =?us-ascii?Q?xk2hTWWUGGvr0PtEauC+Qt6yB0KiCVFvepXWjEm8V4M0QmwJtktw7Z8FjKsp?=
 =?us-ascii?Q?X4EZQKsI/V+ROMv3tiPKfokBR7QJZNzKvzTqEwvI3DQ7WsmTByYjc+Vbq2VY?=
 =?us-ascii?Q?iJw8ZJfbdy2+LTEWR60jn9lz?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 76eee1c5-e2ed-40ee-f1ad-08d9361bd2ea
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 07:52:18.1784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v6RRx7JI2h0JDHsfneQX+gNzVZY+4s7Upd5/1BMPVW+DwmRJZKa9DExPLp36DkjwckMxW+6IMlEfiX6hFr0NWNxJjWaZT+KiwYlSPA9V/ho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_005224_708247_C62A47CA 
X-CRM114-Status: UNSURE (   7.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/2] add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Michael Riesch (2):
  aiodev: add driver for Rockchip SARADC
  arm: rk3568-evb1: add support for Rockchip SARADC

 arch/arm/dts/rk3568-evb1-v10.dts |   5 +
 arch/arm/dts/rk3568.dtsi         |  12 ++
 drivers/aiodev/Kconfig           |   7 ++
 drivers/aiodev/Makefile          |   1 +
 drivers/aiodev/rockchip_saradc.c | 206 +++++++++++++++++++++++++++++++
 5 files changed, 231 insertions(+)
 create mode 100644 drivers/aiodev/rockchip_saradc.c

--
2.20.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

