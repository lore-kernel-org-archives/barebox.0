Delivery-date: Mon, 05 Sep 2022 13:33:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVALk-007RNm-0W
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 13:33:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVALj-0005vQ-AH
	for lore@pengutronix.de; Mon, 05 Sep 2022 13:33:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O6Gb5QQeo3f/oAyHvAlG0MjEMrsDvfZIKXpcw5A4A6g=; b=lrDcHvPPtruuPqnLoKA+QJ1ql/
	9kiMhvSOP2Lb4tGxMkKOeaFyoftyWEW7MiaQbbeom1BB9UAWGv38huAXa8G6fn3lLoews6ySbv4E5
	6ps16qBDx0ovUw/Z3Ho3jxD54ls4rRkZIx0i9r5ZtEhH5h0bHjIsksjYUpGygfG4ZH2LDclpwh6YB
	0PD0ExKL+8JfHfUaexjjaDzM0oTO85958GmVhardgsArPJrKW1NUWjibXIXBlD5uTm2qOl+kuOHL4
	iuTuKbL86lqaxxwBLYE7dIfNVsPm1y+CQizB7Zyaz864zhi6pABD9btcRQEYsj11NQtnndd854Syc
	A8NqBGsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVAJG-001IfC-34; Mon, 05 Sep 2022 11:30:34 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV95l-00HULF-Qt
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 10:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=O6Gb5QQeo3f/oAyHvAlG0MjEMrsDvfZIKXpcw5A4A6g=; b=PuuoFHfG/3s08M8vWmYqDiK5I8
	NXcCjOgRuDXmS822drB0knRfd6wECeaXR0DhPcLKqeXrNY+GnJoDSSaspP00S+5aPQ5X/4ioOC73N
	fEEDo6s4bADCIWQjBEoxdwEP9sXBMaIZ+nRzrJnHFedqJffyNRGRp9wXpHQHw8JDpu8/VFSBzCiCX
	cJ6rltA1MgKs6A41qQuGE5+HfGpO/Hl8ODqNhDyEXxKpZliRavmVPaYRqpIbaCClhHf2U7CpCP+BQ
	rQKueVQ2s0he/0r6MCmld8ZpTB0os7Y/dPvthltaN21jHcv943aeE4LwiwyrDk+UhH5m18QIVOcdq
	iABjNGBg==;
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV90t-009V5J-Ll
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9bw7tEvNZkLh7g76K0H883IIg9siBEJ6ZLjF8YUXRiqjZODJm0wc1Q1Qvqtq1xqaB9Q7nY2XEPw0cg4D4B6vVNtA9uKJopIZv8FR/lDiNOs4WsO2HRTL1dc6Qqu4fdNvaZ0hDvg2jWiWzMF0g6oUO7G2CLHkIBLS6W5AN5r3sylE8MiFUFDza6LruH78U/uPmyxMN9AyruGCfY5Igpb5kooD7HFkgmX/pAJ1ROGiQDEMx2nxrsD3e2PEMMcLUPfzHip7qJQ5vzxiVFAQXOT5rmZ80001NHnF1gcQS7Kl22HVeP/2Q5sL7OB28nHFWJqgY7kFclsURgIU3K6Lpkptw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O6Gb5QQeo3f/oAyHvAlG0MjEMrsDvfZIKXpcw5A4A6g=;
 b=T5IfJmqkr6wPtZmyLSPHt+iP7Hp4JQRQmulU0cqzhDzCFO5wsq4eUTuZuDJ2wem1rVbJoYSNuYTW6QWDROrsq/T22HYVbnozTduLJuATMSzWE6ux2i6t85uF5N1kZpGatRjZkh16S/qK4H36DYV12UIbnD1MRXypUcpFkpNzwVkDHenuO7/1Mxlr6px0F2mHnpyOYNCUdHBgTJ4DQwHAR4i5eNd3+ueqkrjh8K4vzmkkrzc5fn2J3YUzsXDnqU3ylDpbn1LafgSiAyEZgp4lYlPS6vUbthuWeAcYSnvRg9gcGdbgQbfbJcILHQ4QXHitlbBkr2h9eaXaZ5oAw/D/8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6Gb5QQeo3f/oAyHvAlG0MjEMrsDvfZIKXpcw5A4A6g=;
 b=3CKTNA87/MncarzQNb2mtxh/NgOA5J0FhmRe6lW88+eTr/AX6pPiLL+zL1l+W/1bbnSs777XtjO/a9CTuZtgtpNsbqQ0K97j0QEqKf2l/m5d8fNPEzcxyDBJa4hEl1DcTzXexsKhLYt9sEpdyHGVyWTzgU4x+6ta+YI/YK+cPVI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB8063.eurprd08.prod.outlook.com (2603:10a6:20b:54c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.16; Mon, 5 Sep
 2022 10:07:26 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 10:07:26 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 12:07:15 +0200
Message-Id: <20220905100717.150557-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0176.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4888ef6-c762-4e4e-312d-08da8f266f65
X-MS-TrafficTypeDiagnostic: AS8PR08MB8063:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	kooeKJ9h2WER52guoA84frd9aRKiOEd+/swk13JMTIgnwVKbHgIuXpDcKY9A4o63ChVtGV6XR1dR463+zqeIa5pT8329ryQa17CnG37Use7dQQ3AH8hB3x1zLjil6km+u3nDEiXbJ2JyeyhNu1DHmNrQd53U0YbBQ5eToersOxnzs5J625jD0tOKAAXaqxSHn9qZ+gGiDJIOh+GDJWPxjoy5isBmUygkucT5C3yyk2u0MO1Thceufldqqz4BfmB6i0wzeiBZF+HHGVSwPNBvRJxe5otF7uz0YnHoZmGkODGSNtkalpq8l9eReyxS1Ad7V1Yx4r/QGQb/rTbppDzR1B2/6+Tt8OXWj0/vHvk6YM2m7wva1MKyz4FwKa0PUBW8DJ2qCJ9FFzxSwPDugwSdqf6IHxHj/bILsP22ysO04MsRnKtc42Oq3MwLH0LWoi8Eqh+zqzUACr5E48aGUrheYREcpT7pfxG5eF5S4Wi7D0WkMiCAB2A45+IxXuPwG4l6p5qxCYmc3IC94cgLur2nhqAwCqqUFcBWfDjASnGHWF+jF0AVQDIj3a6oxNBu8GPSVwFj+bvULagMKlrjkmF/h4ZXh+ccuVvX25Se+eVDP1NfSNoxhA4zcv3lrvlTSv2ryfIK3sJI6lsqJIdUih5/BbpOSSiN8clzREo1XUhRyERidqGVSUjIzyp8bT1FelFiBgQsLnTroYIoMKYOv4tMtPJT9kSgf3Ut5LL/+qxFp8UN3edCgb1gBQVyFS+6QDjX
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(346002)(376002)(136003)(396003)(366004)(1076003)(186003)(6916009)(2616005)(316002)(8936002)(52116002)(36756003)(6506007)(86362001)(38100700002)(41300700001)(66476007)(6512007)(107886003)(2906002)(66946007)(966005)(6486002)(83380400001)(478600001)(66556008)(4326008)(8676002)(5660300002)(4744005)(44832011)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?EoNM2vNpcqGB0LHlaPysDoZRzIp6JM26K6aJEqKHXkKd1Y+bJp9Eglb0IRCJ?=
 =?us-ascii?Q?2WmGftHBlUGPP2F+1eKd2ZmQtJhVZ/RuBlOS+D9Ij7lX+1SiGyZsHl2OBRRW?=
 =?us-ascii?Q?u+o3RirRRACBqtOsCG01K9clxy0H4hcp8oMrdDgJkUzauwoT8KgdYRGln0al?=
 =?us-ascii?Q?YAK7q9CT99hJjpnRQYvKsWboNGHp//YhTXPFty1ZZXuAj+vWtpoTU5MsMXh5?=
 =?us-ascii?Q?yGTYMYMM6r01G8urmwY4M3Xnc69iWe5AIgcea4zmIRJLOEivXZpU3GGDyE/Y?=
 =?us-ascii?Q?Jb5a1pqCaXl10MdBE2xfjexyYfX1U6e2bcAJmCZHWk0yg3d9yINfHKz7253K?=
 =?us-ascii?Q?mp+bShiTt/R2AMMsSUKAYRqCTKi54Vb+OKy3lO93DZpkxEniRJ0kJIxXXA7i?=
 =?us-ascii?Q?AWEHR7TtPyl7STrJlKUpgz4+h90neseSqhcxgxFVFjwBO35D0iA0xVdX+hlJ?=
 =?us-ascii?Q?g9ereC1Vg4He3Vo13lopsSK3w8XKVgBgX2VcMrnHmV75bTjUZmp9BOGwwdOm?=
 =?us-ascii?Q?+TbDZoat1NQtO1vjpQgyC2MVSltvLngBv5fFtNVBNzb+SkZrRwrHQXgo0CJY?=
 =?us-ascii?Q?EihhUDh8HZXui4BVTgqI+6RtDFDeH4J64KCJFaKvlkZ6sw5laR0KAtsw3jVZ?=
 =?us-ascii?Q?gHdxzhUrjpByUgqtbp3OY4IO5pdgpvtXNobWwNlAhiQf55yimzUmq5OSq7UT?=
 =?us-ascii?Q?U9hrJfJ3Y+qpPprfV/Q15BxzvPhMHexj+Qucj5Km13rCZ2RDwRkybhc8pmqM?=
 =?us-ascii?Q?FEfemxkQ2kAsm8K5JrDmyDhf2eRBxTTHckScdD5AKGc4wn4w/+FQn5QjZQBj?=
 =?us-ascii?Q?MHnNW8DbLEWXj/54iEn0rILM7fdVkxkhJEKJ0pirCRSflEl5Q+A22hNCA0K2?=
 =?us-ascii?Q?VSiKaPVs7aUnt3UGwHvQdxBR7u5+ddRmjV+zodbmy22avy7VBhTdZb9ybZa7?=
 =?us-ascii?Q?T1MCX82GZWoJ4HuRkcx2j9S1i/mRHhXW5j94P6qnPNQpUKyLdyQlKoCxbkHO?=
 =?us-ascii?Q?unzqNcIQ/tOWahPqwO2W0JQFpDOq8FUgjM5/SESfrtKIe5M7S/heakyBIsN0?=
 =?us-ascii?Q?IF+T2dJ5HPV1kBO6wDn3LX7LGl4/bp30EKBEvwlWhZ9rPOjj4AlBY0bTCzvc?=
 =?us-ascii?Q?08xexkdpqdgGV0dRsTxpb/M2Zg9wd/2AybCq6P9m2cR80NsMHM2MNn/6OaSN?=
 =?us-ascii?Q?zzBMwGD/byItZLscIAwhjnDddd1FuZYwpNQti+qOMB/KVYcTh1u9oNf/7UI3?=
 =?us-ascii?Q?4lI+zMA91YTgn6E/odob5C7Dw64ill/kfLSff2tKpJb5tBxbKOA604GwAYTD?=
 =?us-ascii?Q?wsUbGmqyFIk9WPMhdPeUYI/g/pC3Bz9h1kTgykYB7iU9eVg+UR1CyU3+xLLL?=
 =?us-ascii?Q?kmIVd3ZmAtIK2nFiKjJXhjp2ZbT4cyf4b1daIbptHBUwg7lrw05t2cAD0VAY?=
 =?us-ascii?Q?g2RsERSe7Taxt5XeW9YDunPOXUP/BLnFgPNMvM6ptihEFo6EWJEeHYNhGEir?=
 =?us-ascii?Q?dEFSed09lb1GKbVD4KKC50rghJ0LRMekhRMMQgEavdO46ccwOa6qFbi8Cka9?=
 =?us-ascii?Q?Bg6A0RRKE0SalFcc/kdWQONH8jshmLNLlyYxJdRCQzq1i3XnBsiZqU4gQyc6?=
 =?us-ascii?Q?Odzm/MjFhWWLQ6xmRJM9IX7DMa1dXTF63XZDP+IkpCXjLyEc1NJJBzwOghqt?=
 =?us-ascii?Q?gEE+Zn5lwX01Urpk+RnRsRt9heI=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f4888ef6-c762-4e4e-312d-08da8f266f65
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 10:07:26.8496
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ODQLTFjvoOaoLndDsCK0htV27iisZgY0NOhoqUVL5DiYiAhp7TKj/KV7jo7cFoMHH5uU+Nh9woyPtRgJCUOXlFIQA4/jo0+/NbLcDgoSemc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_110932_371925_5A20A635 
X-CRM114-Status: UNSURE (   6.02  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] of: overlay: avoid potential null pointer exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

The function of_overlay_fix_path returns NULL in certain error cases but
of_overlay_apply_symbols (which is the only caller) does not check the
return value. For broken overlays this may result in a null pointer
exception. Fix this by checking the return value and inform the user
what exactly went wrong. To this end, improve the error handling in
of_overlay_apply_tree.

The thread [0] gives a bit more context.

Best regards,
Michael

[0] https://lore.barebox.org/barebox/95ff064f-aa11-c1ce-9d41-e38f2040c565@wolfvision.net/T/#u

Michael Riesch (2):
  of: overlay: improve error handling in of_overlay_apply_tree
  of: overlay: avoid potential null pointer exception

 drivers/of/overlay.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.30.2



