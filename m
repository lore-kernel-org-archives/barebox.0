Delivery-date: Fri, 16 Sep 2022 18:21:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZE6G-006pkf-VX
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 18:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZE6F-0003sQ-3j
	for lore@pengutronix.de; Fri, 16 Sep 2022 18:21:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g2Gb7zRta41NgfelvZXOfE9hYYOnLyDv5Ek7Dnv9B78=; b=wqiwV6A2OpNMu03q8LO4RHUGDO
	ZAtRoJbNJ9/esvTNcXkfDucuapgnVl/USrs0oJgdRZIMGIGKrjqAKGCzpF6zcjorgrlRsjbOdk+XF
	Cgbz3ByX9mYuK4k6V7luuqwQQdZWM91yIxiIuVDKPBnmNz6q9fmpHGyDkSJ0cfZMtNtaXGBNnkbZU
	R/2D7bYkTUiDXLitgGNcWUk+ActxXV1YS9TXBPSyPywTDRLWjn7Vc+cIfJiyXh9+k0iYahcY/7KaC
	AJWfriwGPhKxKYsve3L/h2UHI4q0Lqwxys6vIsccFfOdspQe4czrk8BMZnNPvPEoHEh1K7GA9Q4Eq
	TRqgM3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZE3R-00EwjX-Mq; Fri, 16 Sep 2022 16:19:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZD1f-00EUi9-Ce
	for barebox@bombadil.infradead.org; Fri, 16 Sep 2022 15:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-ID:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Description:In-Reply-To:References;
	bh=g2Gb7zRta41NgfelvZXOfE9hYYOnLyDv5Ek7Dnv9B78=; b=ERcZO7j8abqMV4y6mrtaOg3/Vt
	k6AOapTtAVElzLM3AW4OttSOXJWnkFo4Z83IGLrowfimIckCvwYpfPv3XEDQuq3KGpbn4F6ncz9Kf
	ekHBFUwFQ2oWEKxiIkEhdqRQdEWpq8Zk9cX+d/XhtaJ9ENEFSnvSBxnC0vTtDh2fToVGNjnbenC9I
	6yi6frVxNxhdR23yfjg1v3XryPApKiI7IzEuuFmSopAb/MRKFG1y90gXNJtnGve3LxlFCdsSSxvEl
	XwaDZg3LPiom07yxBsoBz7uGjgffL2whygkJQoErBF2yi8DQZIGmuUCD5ztEPTQJxm3QUkVzSqenZ
	1fRo1USw==;
Received: from esa1.hc776-43.c3s2.iphmx.com ([216.71.156.243])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZCSg-00D4Mz-6X
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 14:37:00 +0000
X-IronPort-RemoteIP: 104.47.5.50
X-IronPort-MID: 2366957
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-he1eur02lp2050.outbound.protection.outlook.com (HELO EUR02-HE1-obe.outbound.protection.outlook.com) ([104.47.5.50])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Sep 2022 16:36:52 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ad+fPMks0K6RZsn4z67vu+JULmnmnPDQbpx0j3kXe/1+4orlHAU7EcscDpuB1/Fw6onEuoIG4iuV2r330M5JBH6nJDsOKEncSwNnDhqU9RPG6yjz6YTEBzvSuPCiy8zk2XA2/4B/HKkacObmTChU7rHaekItwbPPnOqDTloTDQM7IMnf6Z6F5Nl3dDQXQHgQlzFSbJi1nGyBebg/kWTD1yNNAK594qeF4CahtIwxoZ0x/wc1NGeXN5cMgdB2ux0PMhKsx0tnK5c/mThznDw4KkLal7QTR9P0KYVJLoa8/iuI2xQRDkZFnIpkdgQ5Ln+MaxEj9NG+GkUGS+DWKt+ogA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2Gb7zRta41NgfelvZXOfE9hYYOnLyDv5Ek7Dnv9B78=;
 b=PfjUcmlslSHr6818vuGJPzf43npRYHy/KcVzo4YlgxUMMOxPosiVGdAyIgKeP1FAf10PwDBlb750yZiBJzkpwPGGBG8GnWc9blPfkFrcfsDCq7Rrt9uSoa/JRGybAVcWtkS2U5N5rjpjZ2vZCWFUt8I0x0yMurAYAoKc6MLvHqxi4ylr2onq7TiVIdSdd7SdVAmdYPsbDFT8G13+G2/2iP/KGVx4RrKh8bphY2b2dJl+Vn6/t/UFHgX2oW3uVErz9GubyxW/15BFCutVLtMqVgPHNeq1rDyDpiRvXe/cDQWFOdsJUhrXzBl5XSf6DRLmb+HQJtGNNQAfVdf2okJI7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g2Gb7zRta41NgfelvZXOfE9hYYOnLyDv5Ek7Dnv9B78=;
 b=PjXdGscAK0XJKyq1kv5eNUvvzGh78+syUhl8mDib+VVeq9Fpqo4OnjgHc3j0fOVgkfQke+SiakMrfidqlcznFewWkzbRfbcqpdURnU5x+bv3bALDN4ULiJAxfzTRcyWtdLgsHHFdg/NGIfaru3LI8vBZtYAaHesI8m9a/VCsNfE=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by AM7PR03MB6354.eurprd03.prod.outlook.com (2603:10a6:20b:1b0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.14; Fri, 16 Sep
 2022 14:36:50 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7%3]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 14:36:50 +0000
From: =?iso-8859-1?Q?Hans_Christian_L=F8nstad?= <hcl@datarespons.no>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: fitimage: Allow match against config node name
Thread-Index: AQHYydnBLza0A+ZRiE2plE4TPSQSOw==
Date: Fri, 16 Sep 2022 14:36:50 +0000
Message-ID: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|AM7PR03MB6354:EE_
x-ms-office365-filtering-correlation-id: 7a1b0124-5a62-45de-25c9-08da97f0e45e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  OU3eBzSlbWSMNAqUoW32IcR1i8fy9lLHFDNDfweCCfuM0+IRCrnGlUEsQXZzUSUZidHeqIszM8oeEfVQV2YJZUuG+hdZD85HB1lrBG5QnElyPLmUMV8FTS12IaYM/CNfWD0rFdDrAg+vAHvE5lzCfN2AuPoT8k59N6yI9+oq1BsXpU6LiKNzU3DdyQjrcJb2AfDvrUzdFv7X7YUHvCFSMtitXbHys6p3iprDsX9mqBaedNq779duMiwrg+GNWmNog4UKw+pUUZ6MO1qOJ+wgOGaG/h+jk6e5lNJvc/7wgnszTxi+f89bZ9qk7p/NvFYkre50sUYJ+qw1Z9htThX6FybFLC1QaVJ7noDjwZDjCNEnoO8NBdImxIaGFM7yly3ytGhTSg/cB937WpdDJL46UJ5U2f2PXRqQmebjMSLdh3Nfwez7GN+LTAkIW7rEIJ1CkRZ2AXM8DuXqdVCn+cl5rUlj1I5umdGM9dUx2+kBJ5YrC76dfUUaR2wRUl6tYit+QoN50ONFMOVrQqWdyD3zXPT5aeGbqbZpUv0beoD3YRj5U5vrR8aJElN4xqTiUK6AxNPaRLXC4u/zEEkC8cYorJnyZpJzGW9PmNJKTJI4+MegYi8RWEVzW1EAibuISCcS/+lvKZjOloQYL4q0XW0g5JzzDIGVr0AHysa4lE4UZWvuz66HgYgzCcYQjamL7/oycuiHtPCZNZbkdT2cT5UpPQMcibzK0PenOjgnmf8+0X4Rc9qhtTW4r27Tx4WCU0ePTXQhOMWwGWX3bDG1J27d4n1L7u3f2Vux98XrvKp+0Yk=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(39830400003)(366004)(346002)(136003)(396003)(451199015)(6512007)(33656002)(41300700001)(316002)(36756003)(71200400001)(6506007)(6486002)(478600001)(38100700002)(6916009)(122000001)(38070700005)(186003)(2616005)(86362001)(83380400001)(2906002)(8936002)(8676002)(66946007)(66556008)(66476007)(66446008)(91956017)(5660300002)(64756008)(76116006)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?69k0QN+jvPxih8wl1WrAxrD9OEtW65p/MeA2bp0p8y1M0EmwOJub4BTLlX?=
 =?iso-8859-1?Q?l3w7Y+yPvUCTHU7MD/+Ep+Qh2PfzpP8lf78eAj1xk2wM0oWAFUiwUgCsZ4?=
 =?iso-8859-1?Q?fJbZeQRC8v9o4HCD9li2cAXwS99Kg/leDjq6NvzKgjCDqticehZ4uHJa1s?=
 =?iso-8859-1?Q?HmXlDjb8sRNiva7zOLuRGFB6fE8rVJjldDrsi4PfcuNaBWhJieqkrirzmR?=
 =?iso-8859-1?Q?ixC+9WBSQfuBYbS5zvGHpm54DhLkDoDcWDZXDGdQFHaTBeIez+k6Rup/ij?=
 =?iso-8859-1?Q?uRQgDZw5lj3XXXDDJouGJEKrwBbBW/ac2xxp2+Pqp7Lh8nhelX5DncUdYW?=
 =?iso-8859-1?Q?O49e53J91UpHSGaZIvErfVDluSWpu4e3bG3a2BO9GCN+jOBIex/l/gRARM?=
 =?iso-8859-1?Q?LTZC/X+lF6bFhlxigMeZMlENFiEXaz9omei1FtYhDzaesOAgsxTemZp3bj?=
 =?iso-8859-1?Q?x5jnAnSerTlW3tJqXyLvLz6bSqx3+aR+1JRUD39zn5iUTeC2ULJG1dG1Lk?=
 =?iso-8859-1?Q?GDENBshp4a0t2oAWWIUHJ0fi1FJesQWbq7/UqgN2y51/PcCtwrmpMIx1f1?=
 =?iso-8859-1?Q?O5uxayiu94Nd5omIf/OYD2gsSwLqAKK72RZpCne/e/6uNsbVyavJ75anBu?=
 =?iso-8859-1?Q?sXaXi0LS518ikECWukRaiO1dCriaqic+XGi5yUhdAnhUCJSKryydN8hJCL?=
 =?iso-8859-1?Q?5KQ9EwL9NKziiX/girB0fzKj6o8y1kvdCwJ0VYcx51WIRBc/p0KsMF6yEX?=
 =?iso-8859-1?Q?Ac8uJ5IKAYc1M0oGqUCzdq7RnYpWu3OtUmSrR5FQi1lbrDDKvs5VHr0XUW?=
 =?iso-8859-1?Q?/8ERUOwRbuD+B3cdoNOyStdTvxpBOzAM+nXVsWCyYMCTGZBJiqTW15+/ss?=
 =?iso-8859-1?Q?1ZOyL4uwPmr1S+Q0oZ3nvh7cOqmjiEzKSLzwMiwFXo7G98dpHXClqemCGp?=
 =?iso-8859-1?Q?xCyG1QVDpM/IiN8ZFeBl0c/ybhyJqYLjZrWvcYLpsiO1SRwGkqYWcQWCdU?=
 =?iso-8859-1?Q?bWXBAyONXbGRg1GWy+IuTUYnZ4cNiZ7WawGRDchsOImX/cHP053nddQX+8?=
 =?iso-8859-1?Q?mYDJLC3zzETnYUhq+omQsnITBb/y/iKp2SP0T2gY7QOSJXqdC/aQEWwKBI?=
 =?iso-8859-1?Q?kJRt+OnQcU5jAKOO/Xl1WtzqAIli99tLrh+bfvNy/CrFoZuiyez0OsU9Sn?=
 =?iso-8859-1?Q?8LDGJhFxxhG3gb1omnXxS6huzfnTV6PV7WnEP3uVNmN0toWYoj+p565ZLJ?=
 =?iso-8859-1?Q?sAcebikdAF3dYduiuBMLUEzY9u4wmB6zysbOUW5+v5YtXtFIHKpLfYzIpJ?=
 =?iso-8859-1?Q?XXKjB7wW5k2vJ6/MhLMOS30r49UzTWzkYnT1GodG10zMy3hin/plk6ArLp?=
 =?iso-8859-1?Q?xkpww/4D2Ma7Tx58kObnp9/dCkYUJhMo6Js1rO+4P8hU9tlhH61LX7B3x5?=
 =?iso-8859-1?Q?IsZAb2+SSNGjNtpMJUL+BgYwEvkNq8Ty/aWWIoOL2lkVujcZBzCTtj3Q3W?=
 =?iso-8859-1?Q?31GAbgAnDwG8OHYJJ5p6LpeA+6kOUYQVO+c7WNn7owOVIXWI2/L9I3eiJa?=
 =?iso-8859-1?Q?objx7CgBtSv3V48KEbYSE0XLpG4ei8Lm0Bf5fNENxW1eoyBgNp1pxf6btY?=
 =?iso-8859-1?Q?k5hjBmfx9r5XJ01MJWonAGzseNGMjs7UdOXnaEEh0K/aBDlbXH3s/pAWj0?=
 =?iso-8859-1?Q?wwdVl/RFcCNcTWABZaV41s4CSC42NpJ+AQZvMVq/?=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0BC1E8E3DA42834696A1C575889DC231@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a1b0124-5a62-45de-25c9-08da97f0e45e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 14:36:50.5042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ss8H1ST45uQAZ1CYlbOarPva43KOroP/JIWvu2o9oBXyeHn1LAmgA9QVM5d6wsvtup/1236oWikUD4YOWxaAnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR03MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_153658_452363_B9F9E2C5 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: fitimage: Allow match against config node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support fitimage configuration nodes without populated compatible fields

Yocto fit image recipe does not populate the compatible field
in the generated ITS file configuration nodes.
Barebox is thus only able to load the default configuration
preventing the use of variant based bootloader update bundles.

If the compatible match fails, fall through using a global
variable boot.fitnode allowing a match against the configuration
node name.

This allows variant boards to pick the correct configuration.

---
common/image-fit.c | 18 ++++++++++++++++++
1 file changed, 18 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index a410632d70..f92e813a8b 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -7,6 +7,7 @@

#define pr_fmt(fmt) "FIT: " fmt
#include <common.h>
+#include <environment.h>
#include <init.h>
#include <bootm.h>
#include <libfile.h>
@@ -663,6 +664,7 @@ static int fit_find_compatible_unit(struct device_node =
*conf_node,
struct device_node *barebox_root;
const char *machine;
int ret;
+ const char *config_node;

barebox_root =3D of_get_root_node();
if (!barebox_root)
@@ -680,6 +682,22 @@ static int fit_find_compatible_unit(struct device_node=
 *conf_node,
}
}

+ /*
+ * If the match against compatible in config node does not match
+ * (or is missing as in Yocto fitimage recipe)
+ * check for matching node name using global.boot.fitnode
+ */
+ config_node =3D getenv("global.boot.fitnode");
+ if (config_node) {
+ for_each_child_of_node (conf_node, child) {
+ if (strcmp(child->name, config_node) =3D=3D 0) {
+ *unit =3D child->name;
+ pr_info("matching node name unit '%s' found\n", *unit);
+ return 0;
+ }
+ }
+ }
+
default_unit:
pr_info("No match found. Trying default.\n");
if (of_property_read_string(conf_node, "default", unit) =3D=3D 0)
--=20
2.34.1=


