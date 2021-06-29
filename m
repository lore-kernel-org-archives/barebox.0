Delivery-date: Tue, 29 Jun 2021 14:32:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvC-00052H-A5
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 14:32:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvA-0001Wd-Hx
	for lore@pengutronix.de; Tue, 29 Jun 2021 14:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xTlD3ZIA5MY2LQqUDUpBlkpMDSVURqIaogzdmJOkhTk=; b=jZmvouoALnLzQX
	LA1egeDwfmQn9wKSJr3Njb+1NkqcxG9BfOLaKzhJKxSJ6MbfWojiaK1IbEeh1eP5nt+arQdV8gXFE
	CNpqAazg93uRNgOdKWu/UPWJ70KkghUW+18ExLgPa+g7fajWi1BVNb8BJEXrOH6HJv7OcNnuLWMCw
	Zqq2vdNKwOE2kyNIc3QJosyo0Efh8HfzTjfM9pU0MgdGkH7NHVASK8Kzt49ydA3eiF8ObPBbRIFLh
	pz9SgbcEd/R5dhNvFm5XgIFwGMJnIooTXYXYGaug5FlsPcfpQxzJQTQN8JoG9f8RTnna9CykjK3e8
	ajOjmLi+QXR43k5i9xAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyCtg-00ApA8-DM; Tue, 29 Jun 2021 12:31:24 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyCta-00Ap9E-Qm
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 12:31:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJuV8RBXc23ztJBYDKC2/79fCdvnoWUbzwuORtJMaO7eiYcYyHIBWh2cloL0tTvsG4bjilMhKEj0Z3adZqOM5MSN1q8QHOQWKbTty36BjijmxsCkgZ+mt9kC54ljeqoQY185gkrjTGbyQwHByaTD95bF6XvcbZVNskSWJG6+mfSEFYc/FiIG+3Xq6jeb9Zyl6zX0hOTW8e6db3KO7X/6LVL7Yl/KG+M6JEnDRWb0+wfTdlnt3tSpXiZkaP3ehiBD8uqxSvza1qvqljBTDR5JOBolRpsYArl9HOmwYYHwkv03lE+FUg8CAOuMdrx5RsoNGwfdgxNW1IP6utdlDOt99Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uyjDujh3hHHNGghD+2K8iY7R0erAFuqJlKtfESLKB3A=;
 b=Z5mwPJr7+57dKUnTgdE8dNZjwX0BRl9QwGejBSgvkTQUb/oLtwZiWMi+jQ62DzkUHFr5fbiT/4hXdu1K+6GclWAoYYhDF3WDEbmPF9lpQnpFQ7mgDHShdusG4tQI70nOhZTndgKYlOTrDz6oP7And2mmr0yX7qLrKObdviyuRzcRU3TWgdNL20rdMg5dHGnVr3Z1e0skktEbCm6RoClNViVQESdpvRjGocSOERYDtSuesdtcB9B9J9BZg4nJkZuE/W3oyknpKUYzQqdtNtcmZ/SZiOCe64v9z/4CRcg8flSJ3w2CngJCZcyvpJiO7lf9dehsZggNZS7GasrVgRW0qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uyjDujh3hHHNGghD+2K8iY7R0erAFuqJlKtfESLKB3A=;
 b=g1R5Dmxcd0OPTFi36GNf7rZqAuPonuUe7zluPPieBWKMCvQJ+8HIq7M+yMnw7VR/kno6OetPpU026S+3Jx/MNzdoiZoPmezW4aWW0OgfCiSihqzxozm3XMKwyumv1EUJPCTZShTeVWOVsJ28fFBPWlDGrQF1EjNAqb7qzbbzW4c=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3867.eurprd08.prod.outlook.com (2603:10a6:10:7f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.23; Tue, 29 Jun
 2021 12:31:15 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 12:31:15 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 29 Jun 2021 14:31:02 +0200
Message-Id: <20210629123104.13818-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR04CA0077.eurprd04.prod.outlook.com
 (2603:10a6:802:2::48) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR04CA0077.eurprd04.prod.outlook.com (2603:10a6:802:2::48) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Tue, 29 Jun 2021 12:31:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c73b737c-abd9-413a-2b1f-08d93af9c9b8
X-MS-TrafficTypeDiagnostic: DB7PR08MB3867:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB38677D62E892F561B5423FF5F2029@DB7PR08MB3867.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qKeCL0jdiHgapgErhtZdWO30g0zhzmqxhUMWhjzH+V81DEt/31HA7+No8c6LBLvwBljEh+bC2iEDISzlLd/9Dcg99R/4iJAGNFWVNWraSPlZ6DuoQNBuPyypIXlngUgtZ1DD4Rns2a0RJm5GEUbZlzZxUiGRg8jTMebn101kC7v/trXCRxLTEdn3K0TLpc+zCGH19oF/rQdoZxlQ6elQ6Lp8/iSmZqc+5fbu2SSpxjt5iF7v9L/wk2YOUrmBrISWHAlUMn3qOKQwXxUIljr1LclW6a8HRwcHK5XIDhW+a+9HNy8jh27R4fJQ9uQaquzk90xVD0/wB8NgpBACKSen1pphIVrgoeDMYk5A9M8B5RT5t7GkhMLbDJHwhXWHPMsxOQj36C4JzmdsXsOvkbjVRtHvZaCnVzlyxzosGTNw5926wbcEFbh8OGxRjYqbshmK9+DMDZh+ohy/3MMld4dPXY4F84O9blZfFjM02ElAVVQCkwaBDzf3gxBwoxZUoNflH53TQthDqiC1AacJgr3Ti8r0Tg8HWjIrhuKagcHwJ++ZuCsQQsioHW8BePICAc9IllK8g33fM82rfddgUMGPDbFPhTlADHQR0ADwnxRAZrcZHbbpAm86Qlnkweqh5qB+N1NrIMV+9zyK8c4grOqPYXyGPQYsLKLzaVKChuvZG/QcGJi9sJt56hSrk+JfQvfTv5ic9NNygxBN6dV/1T7ttp3vgSiCuB/LftyHag8q0rw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39830400003)(376002)(346002)(316002)(52116002)(5660300002)(83380400001)(478600001)(956004)(2616005)(36756003)(66556008)(4326008)(186003)(6666004)(66476007)(66946007)(107886003)(16526019)(26005)(6512007)(2906002)(1076003)(8936002)(8676002)(86362001)(6486002)(44832011)(6916009)(6506007)(38350700002)(38100700002)(4744005)(206463001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A6oqRThwyZol1yg1pqq6e2nEfp2iLVIDAB+yoR+Ovd0/BnQlKXaQX1UgMBRu?=
 =?us-ascii?Q?qUB8EKSnukVBT3Z/bO91rsPJqrlWMzcqN/WLuJGosn8+D9nJ8aWcZQCUECj4?=
 =?us-ascii?Q?2gu74xoOnA+WS8m+y+6BXvnX8HvgwyV2u5g5K/BYNW5CU5N2+yni3vdITVa3?=
 =?us-ascii?Q?W2hFonxMC4hYWAwMjnJlF9vYjSA9V3vqeH3Zal4VO7wthBsteggxRLpz7BVy?=
 =?us-ascii?Q?GYQ/OjEn+nBpDgVo4gZpaIZ/5I+ADWUOlnk5NYLweYZIZvuI4DinUyh7TKUd?=
 =?us-ascii?Q?NWSuvWm3dy2CvbqRzjyMZhdKYtCZi05UXorRDB8kbDg4TGDR0GxFiWKnx9w/?=
 =?us-ascii?Q?yTtq9YTMfxVlKLLmuHHBrm3xfB9f+3TUvw5FDDVTnzOxyNXRrNJp9nGkIXYr?=
 =?us-ascii?Q?xRENGkfkyUGUk8Q3Lv4vuCXtVPc1zsdJckEdqPeuNfFnvYpKuTEuYkfMA3cA?=
 =?us-ascii?Q?KTJWufDpxUsDjLfTG385MiYpF+3VT9mk+SoDvrgqCLtelQFPc4RDkCwGu2zN?=
 =?us-ascii?Q?4BVguTyq33RqtQYRv5z6Hwi6kS+ogACDefd7UgOsvwLMUcIDaB97Hu/KJRr8?=
 =?us-ascii?Q?Y0fQvbG0pYxMk6pbNggChoYpgWA9vEIH+AtkH+k88DBmEY8btTKUMS2Fh2yM?=
 =?us-ascii?Q?XU1MOrKMJcMAcmu1eLfjIEiuvCUNVyimxYqV0fzh6srgKPVEnssrHJM/sVNX?=
 =?us-ascii?Q?dxmzom2R8KTVo2QTEE3TnlF1hdv09vyGzyqu8afG3rhsqDfs1Wdg7hsJtE/9?=
 =?us-ascii?Q?F8N8q65wSmskvxZEQE9vDejpltLC/6ITJbcraFJ8Q0vcK7AJ+KiqPOPTzfN7?=
 =?us-ascii?Q?XIIkPdDKi8U5MPIOT0RrLAJndRcW50vwT0DsohvWpawpGcgDmpuXRTqLQCO1?=
 =?us-ascii?Q?aDYpJalcvMZOmZHkVLkzuLD+fwZGclzEc+sbo5BLTyPm6WdPQFcAlay98s0l?=
 =?us-ascii?Q?E1XgjFimUhVASy5is+kUOj1grAC3fVqtqq2PRFKzNC62hp82byl6XvgQRZlb?=
 =?us-ascii?Q?N6sG6vUktTTcnxBJeU9IK6k/+n2AoGndWiBBOoWFlI+CsHUTKJlvNRU/1jHS?=
 =?us-ascii?Q?7XkgNuitxK+WXfcuTXBsKKhTZZ5KfQo/BOsJTODlKhbgKVsdJRkhInhlZTWu?=
 =?us-ascii?Q?vC6zuhzgJNOEJTc0Sy7LAr7D51w4KZzncGJ9YExVAk/GpJF0zJDn1JFeYeub?=
 =?us-ascii?Q?EDbXLcZn+q6OQW3VD8xmxjlHIn/w6Sf0osWniOCV/SO6uyOPAXNXs8pDv7zN?=
 =?us-ascii?Q?n2gv5xNCv0K18mIjGTBI27R444q2yD+ZizvrenPTxWOkeoZm0POnA16ssYd6?=
 =?us-ascii?Q?MVGaMCUjpkXOXqqxarQyMryQ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c73b737c-abd9-413a-2b1f-08d93af9c9b8
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 12:31:15.7462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kDeWT1hmoMfMz+nAzMB7yQPFX4iMzS9EU458WcQeU/6IFxa3WOklhdwBpAQS5IODp5LNcna/nEw66nLTEmTojhNknPe6BqgHjaspI4wYUnc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_053118_918652_19AC385D 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC PATCH 0/2] Proof of concept device tree overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This is a kind request for comments with regard to the new feature that
enables barebox to provide device tree overlays to the kernel.

The first patch adds support for the hardware id detection on the Rockchip
RK3568 EVB. The voltage tresholds are taken from the EVB1 schematic.

The second patch applies a fictional device tree overlay (that is assumed
to reside in rootfs/boot/) to the kernel for the EVB7.

Is this how you all envisaged the usage of this new feature? Or do you have
any suggestions?

Thanks and best regards,
Michael

Michael Riesch (2):
  arm: rockchip-rk3568-evb: add hardware id detection
  arm: rockchip-rk3568-evb: apply dt overlay for evb7

 arch/arm/boards/rockchip-rk3568-evb/board.c | 40 +++++++++++++++++++++
 1 file changed, 40 insertions(+)

--
2.20.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

