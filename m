Delivery-date: Tue, 31 Aug 2021 14:59:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL3Ma-0007dW-Cy
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 14:59:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL3MX-0005Gh-09
	for lore@pengutronix.de; Tue, 31 Aug 2021 14:59:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s0pHfz+m9w4r+Sw+1HFvSKd2uV/w4Jo1OtZOaATdfZg=; b=4isTjKykzprmKJ
	R3wxg4BgCI/M1Tv+FCTpjCpKnq5lwvoKKOOPhwIi/I1z6XCNKxw2bWh6PATm8Vh6sTlhl0+HlgVTU
	tiH+aaO9IeO7aNfcR6RkENCqSDhkEuMMHG6v5434gmcUxPZ3Mv7mDu5HZnEB/dyKGPnWMzxpBMC1s
	kh7gJFvU25RbHQ3ItztNHeQyPAnAQeEkMwFGfOHeeiA3LxiwfwL28tuywblQ6qEESwt9xHrUgELEH
	rJAr1HFJSl2YtisZ84hRmTY+uPhe3n3H/MIupHCTUZczsU/PywZ+Iq1KdWUbDCIG/cKvWZ0Ydoqf4
	HQFbQ2y35mTBtnyPb47Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL3KK-002GM5-2g; Tue, 31 Aug 2021 12:57:20 +0000
Received: from mx08-005c9601.pphosted.com ([205.220.185.5])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL3KB-002GJb-De
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 12:57:16 +0000
Received: from pps.filterd (m0237837.ppops.net [127.0.0.1])
 by mx08-005c9601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17V3Wh3p031566
 for <barebox@lists.infradead.org>; Tue, 31 Aug 2021 14:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wago.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=p012021; bh=ilkhKAnGh5RixkiHwE34emX6Xmg3UAA+OPXCl7ViZSQ=;
 b=OpCrR0Igwta43dfqDZUToyqpuVi5oAfgJMGVC0XAWaE1A+tsXULF+at8fUlnZI0WoCby
 A/VofM/LulokqOOkZcIgwRl+GQByHW8XkQ8twmlHmCei5QFuwQQdLL0cTwHM3HDE6PrX
 rlIwH15Ik6MKXxzqcwBWlC4UMOMc804jygSgt4+h6w1vcpcG+HGBmWZDLb6s49dkqvRx
 zyecXaBnUPUM6Hi2AnwHHFBpPL+qnNaDIfrcFIYjCQLmTSTcwpju7a7IhfRKFD6C2Ja4
 0HNhzAW+8tyJRcLgXPsKyddrF6Gpi6T4VwBcJavNIFADl16VNYchNLEQ0lMo38nUlllj uw== 
Received: from mail.wago.com ([217.237.185.168])
 by mx08-005c9601.pphosted.com with ESMTP id 3as3d6rwm0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Tue, 31 Aug 2021 14:57:05 +0200
Received: from SVEX01009.wago.local (10.1.103.227) by SVEX01011.wago.local
 (10.1.103.229) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 31 Aug
 2021 14:57:04 +0200
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (10.1.103.197) by
 outlook.wago.com (10.1.103.227) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14 via Frontend
 Transport; Tue, 31 Aug 2021 14:57:04 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGyiE6+KBgTV1PXwvYU0gjKohw3g1CEZFRXQp2ijx5flKWLgcYFZHJukSAd2Vx3fBdDIXkgP0n+PgPX7qIsRSNA7XOcB9xXndbtArA4hjHD9bkWOhlqs1EhdtTutLKZopOtM52EMP8FXLqZ6kPBCb6/CDf0CSvdkXpHU1658udaJTzJn+G+4IUB8PkQtzkt5nt5e6zyVyGIgJbMZWOR0udoqrj6NKpOsyQJX41F+eYt+SGByhlfJ5LWhp94EsKqw/rqRFr1lxruWNmd9iW7a39TO3GOFCxc+bj04X3HQquL57BvmH352c7w1nX17oD1sVeru85VHQIESqtdRAb8QQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ilkhKAnGh5RixkiHwE34emX6Xmg3UAA+OPXCl7ViZSQ=;
 b=LqED8puQdZy9velkJIb1623mTP56LX2yFqxh/B6E4Q6dqNwFdZluhbRBHQQQWBx012tw1eZIhvVrBIPfPDKNARc2EKMq/8s9XNFDCuOIvSh8fU33Avuc50KZi7jEJMuGOnF4Kf1UhZ6LGOv5PO/Xe3BYAKVvn8z9gqJyzKmu2mjDa7ewSRpFIATy3LMVUm41cn/e7JRF6hdOWyED8huZ5ud+pBcTAxfEdQzE47PCuwDR/NiQk5wc6zXmnVAYzlKD9RIcoZn8WH5UqyquU5WnVuzWp3hpp5Oc6IKVBfo4iBxsN0UUxn8ePsa8bzwE8vf7P7a58sPLOpcqidpfELJNLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wago.com; dmarc=pass action=none header.from=wago.com;
 dkim=pass header.d=wago.com; arc=none
Received: from DBBPR08MB4556.eurprd08.prod.outlook.com (2603:10a6:10:c8::13)
 by DB8PR08MB4073.eurprd08.prod.outlook.com (2603:10a6:10:ad::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 12:57:01 +0000
Received: from DBBPR08MB4556.eurprd08.prod.outlook.com
 ([fe80::c966:a581:a2c2:7509]) by DBBPR08MB4556.eurprd08.prod.outlook.com
 ([fe80::c966:a581:a2c2:7509%4]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 12:57:01 +0000
From: "Karfich, Oleg" <Oleg.Karfich@wago.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
CC: "Karfich, Oleg" <Oleg.Karfich@wago.com>
Thread-Topic: [PATCH] net: cpsw: fix ethernet bringup in case of a fixed-link
 phy
Thread-Index: AQHXnmewbnOkJUSjuk6cw73dBqxKZg==
Date: Tue, 31 Aug 2021 12:57:01 +0000
Message-ID: <1630414594-10601-1-git-send-email-oleg.karfich@wago.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wago.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be81b654-a1b2-453e-5079-08d96c7ed358
x-ms-traffictypediagnostic: DB8PR08MB4073:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR08MB4073F860D2AFF45CB54CE61FF8CC9@DB8PR08MB4073.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LcnzAN/Kaxy6wPFZnNdP+EfSix28E7SHDsoh+BpDDheyjuOQ9YBnXwKcKA+AKTwZLJWYXc/eKE97GRFmoFTaAz34gT19D68eP8xtX3wz4yuPhhMFjA/ZoEqaCyLgF3YslAC5W9aNXl8G3lh3qWQm9OoemTVHm+V1Z97a1bxvyzoEx+zcQyh4GTuyUuai4j44gAjvv5M6E8yV52RpqheC66oMVTx0aAkO/JM9MPWfjFqoPmi6FyvmKTtRHpQgByZ44hEjsq60C/aNdpWK+8jwqeaY4brfXskInhQ9AT5dEUK05IzUcWYgXPQr4XRmM3Sdd6SmRTFltpXcsxDC7lwNeApIKnkLFRcUoR+M8F+KuQu5fs2gtF+gQBbOVWUBvz16V1lDHUlJewlER/hVSBIbkOsfMMSPDtex9jcojt9XiWtS0Chd3KCbkWNlUmrhvIzpEUH1TR3deU8pFm4kLAN1f2PHcPsDtDEmtk0+6GFlmoj5BldH5zyVGw8In7zuXrhcLwkqqDE1A1DigXvEyw6WV6ECXk/HL6HQSxFhpVZN1qWXqQ34DFmHa8qKobiDtw360GbOhFZdtNWVZEL6VEGQUjYBYovg2JKkI7m57eOWdvi8rSNiTGkhjkHVhAiB1yn03qihNX1cZtBl6hD+rinUrElb4AtJPrXyp21S1c/MVkgXoyd1sK1kMUb3vyUnDzOcq/gZrqf4v/Ele43eupnw3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4556.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(39850400004)(376002)(136003)(478600001)(38100700002)(6486002)(71200400001)(8676002)(6506007)(122000001)(66476007)(6916009)(5660300002)(6512007)(26005)(8936002)(38070700005)(186003)(2616005)(66946007)(66446008)(66556008)(316002)(2906002)(76116006)(86362001)(4326008)(64756008)(107886003)(83380400001)(4744005)(91956017)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qJeCjefrbsa5VqCLsHwJyX3untufSkS1/26tD9G0TXn5dqAd56wJsyWL5Y?=
 =?iso-8859-1?Q?STIRxmGEelhQhdaT3W29N+kdOWkxgPVtGHNgMpr/i5s1Pxf/CCfY0TQm0H?=
 =?iso-8859-1?Q?Hi8PW7vvx0t7u7XRoW1nuOkbum5gHK7DpaLi2VA/ltEd5BmW8aNJW7ZEtx?=
 =?iso-8859-1?Q?YlBNdvRfRUpJEUj9wydM6oUSI40jO/08YBncPKUNTHDjVyWjKknC3mSMwu?=
 =?iso-8859-1?Q?cp007/rLCUcKAP6Yt04S920AknBZEgDhP1k1sE17zuQBgkvtqPG6YOr/W3?=
 =?iso-8859-1?Q?Q7Y2G6cpJfcEWx08REOJHDU555cHdKLG3MeWKmu0wS8OcWsVx4ItM1wbtx?=
 =?iso-8859-1?Q?lp+dWfeEVg7aSKtYx6mXdqdAN/LBcUYrNNiuY5/jKtTbB/AkN/yuRPO6U0?=
 =?iso-8859-1?Q?Xi66j4sJo0xZuGQ1KuvtGa6733qQ8ZUfGIWdJmXE9QPxLJUUkKA3LnNajA?=
 =?iso-8859-1?Q?JGOAnBXrqeR5XxihUhy/LLK403QvNB5dWAQmjx/z/34EDSTK4eQO6a3kDE?=
 =?iso-8859-1?Q?r1BinkKu6GykiArmMrHYyGBx+2DPDc0cX4bGeeXxeMfylF3Hg55k7+Ss51?=
 =?iso-8859-1?Q?M/jgDi8Qei52y0/iuLETRAsjcdIK7APceliVXajcXn9B0DzyLckJpmOBAr?=
 =?iso-8859-1?Q?uM5U2gQ85lcW9u7k8XhqIj+H0C2fKrJRA++Q+UwmeBKlCxn/MKeeIuIa7j?=
 =?iso-8859-1?Q?rMG8tnR6HWqQ0NGMS7oxSrXimtcVBwAgDd7S9IrBc7py4MqtpABGj/q90/?=
 =?iso-8859-1?Q?foCS4QP+1pW5ApAIpkrooyxOKJzEl4gKDUCpPuXLX2Ggvsu8K5gWBM/8f5?=
 =?iso-8859-1?Q?cBS8Dlg2FMy8uqa7VLXkU8/3EzE1S9IjOfGBrXnJF937SzSV/iN6IqX1Zz?=
 =?iso-8859-1?Q?WCq039CeZUJVew9pfn6ICSNKLlcqanGOtPlo0bbn2GzW/hMhoHRNhifOVa?=
 =?iso-8859-1?Q?u2tXZbcrAtXt6vCP7KVUX3SwgyMDOysPEeMcHOV4YYX1K8wxQk3OLQN1Yh?=
 =?iso-8859-1?Q?ybyeIh64TD9oPAy7Cd6SrDgqf76f2C3UQOQ6kCbPkAMZMtRKwhT1XuMizE?=
 =?iso-8859-1?Q?DTiBmdDjhyM/a7lQVOPxlZliACNbjPNkBC/4mHyLW5ALnvy/5O7QilzNxm?=
 =?iso-8859-1?Q?6FwsC7fzlbZ5AjShOiAVlFonhE5Au7C4BgTcP5KaTDQJ6d1ndsrx6+47z0?=
 =?iso-8859-1?Q?3YJw3vxEopbizcFygSkTK4c4VPvI9mby5jCz8cP/0EsWC1OJTeEQcaZX31?=
 =?iso-8859-1?Q?kmxdLHceuQRcKeYzJ/x4jxEDC+bY5lUkfm9+JSmCzqeOsqF8UCGN6eOacK?=
 =?iso-8859-1?Q?R02T4h2gwUBJIbhdWrww2fR4wrCSDjGdWwU+1kLZRkhBNIiD6VeGbrgYlH?=
 =?iso-8859-1?Q?WcGn60Ze03?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4556.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be81b654-a1b2-453e-5079-08d96c7ed358
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 12:57:01.5366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e211c965-dd84-4c9f-bc3f-4215552a0857
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26k3bnYNRMlGCE+k3CrhG77rZHfR51PflqXLKjO9rqTI2r4jvnowmDeza8cmKG/ymgju2Z4kvV4385vUs0W5dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4073
X-OriginatorOrg: wago.com
X-KSE-ServerInfo: SVEX01011.wago.local, 9
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 31.08.2021 08:01:00
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-Proofpoint-GUID: 1spoaQlWpSh4DJ6N5PG5Tu3g1ErEnuF8
X-Proofpoint-ORIG-GUID: 1spoaQlWpSh4DJ6N5PG5Tu3g1ErEnuF8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-31_05,2021-08-31_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 impostorscore=0 mlxscore=0 clxscore=1011 lowpriorityscore=0 malwarescore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108310073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_055711_941957_89029506 
X-CRM114-Status: GOOD (  16.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: cpsw: fix ethernet bringup in case of a fixed-link phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In case of a fixed-link phy the cpsw_adjust_link() function is
called directly in phy_device_attach() and configures the MACCONTROL
register. Right after this configuration cpsw_init() is called and
resets the MACCONTROL register.
Fix this by initializing the slave before connecting the phy device in
cpsw_open().

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 drivers/net/cpsw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index b01e7ac..4a8f9e6 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -901,13 +901,13 @@ static int cpsw_open(struct eth_device *edev)
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
+	cpsw_slave_init(slave, priv);
+
 	ret = phy_device_connect(edev, NULL, slave->phy_id,
 				 cpsw_adjust_link, 0, slave->phy_if);
 	if (ret)
 		return ret;
 
-	cpsw_slave_init(slave, priv);
-
 	return 0;
 }
 
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

