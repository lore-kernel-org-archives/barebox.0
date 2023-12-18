Delivery-date: Mon, 18 Dec 2023 21:27:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFKD7-003N6p-1E
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 21:27:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFKD6-0007Un-LO
	for lore@pengutronix.de; Mon, 18 Dec 2023 21:27:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=taATwdEn/tIM5mEe3IqNk6wcAPz5iZXC/YVV44mgEIY=; b=TQ3W4QAMUHzJoIdD0e/rTGTOxK
	xoeQ7toLz19PuQNCi8dBdHrnfdF1gCVRZaojvd+Va+prpsrCHvMF+s6yUkIv32xkQjEWF+zWa9qJg
	c+m/lNMhrmVBSUMh1vxIblPfxYn0oZ3quUyfEVwnXF90yqMCqCdapFF4mwygsEcBCT9CzdLeGmfUi
	jz9Fiodw7vrgg6r/3hew927vuuHCk4iO0AChovNwXjWTinCOgmrYxFhd3ZQi6poAUTKQofZOa9LWh
	aZ6zOcABMqYmV32j6fLeo0lVxNC1h8dJ+oHrMpcvouIrud1AIzNQgfyIFY2UHctzxBRzdeXBR8mSo
	MnvTFYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFKBj-00C0o7-1o;
	Mon, 18 Dec 2023 20:26:07 +0000
Received: from mail-db8eur05on20615.outbound.protection.outlook.com ([2a01:111:f400:7e1a::615] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFKBg-00C0nV-0t
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 20:26:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vprf81IA/9dy5zZgL0WvYzlmlSc+IRNbIk5wiQKxl//0z615Y63wxPcf0l40rRt7V0IQ4w/DGLFlTO7ykH/7tzsKppcFiCTKL9KFoUycgdcPzB4Cv6qVrdeW/Wit9epeEXGpSTzlojAm5dx1jy/FsLULS1Ii8SiFS8QYr0oeJDm/b1oRWwaXTJoX4l3gGJVYBUDYUJ2kfmusYrR+0/Ndo52/G8M0RfzCN+EOOnSnOQDphM0lTGIsdALHYBUKa5o8S6vAQp2TAhUUifOmN4zRzD1ScVcyzWuND+2/eKft3dHDP53mmVDUYDMLVbvpWMEv0mpX2hPwTkx5APIF7aVmww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=taATwdEn/tIM5mEe3IqNk6wcAPz5iZXC/YVV44mgEIY=;
 b=Ph9OqoLRbD34dwZR1DP9nxC7zFwFNtHn0Cs5cmdFrCfaKasb+yvVhfl5ZCpsSn73unJ7ggMXbA48FhD4x/rAH4Dsk8if+6G8XFEPMaU1z2XNI9aol5IpVPmSCjo6sh5jsBjDIgxhSNjC3XaFLdycgBc/QfAkC4bIkvM51HQFrlATXtC6XcBFc+Z5anqvjeyQQKgcMcnZrM4VMfyi2AHu9v8QlQNlgAsSFEXBT5t5SCsl6i/SJsclEzpQNeu4EJhqg5uQPHbLODGOJ0dDYnHkEbP0ZMVbDqXjXmxayzTbAaA5d+rng761z4C0E0oZTKRIqlFxx6SpDx3Z73VgKpJthA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taATwdEn/tIM5mEe3IqNk6wcAPz5iZXC/YVV44mgEIY=;
 b=glzXFPoM445STItQ4L9AHMJmZjPz7rjnxSHabRiBTEkx2af752byhvfDxme+vRaZot+CtAwxchKgM8NoHlvzr6zxic9h0u2hPlhDpJ7QFWdGPGjb/GUA0f4ulg/gPB3tcF+EA/O0IhOTer+6rho4FFI1+N5KkiB14RZ2LRffFe4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from AS4P251MB0635.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:4be::7)
 by AS4P251MB0587.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:4be::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.13; Mon, 18 Dec
 2023 20:25:51 +0000
Received: from AS4P251MB0635.EURP251.PROD.OUTLOOK.COM
 ([fe80::d70:1a65:1d6:d3ae]) by AS4P251MB0635.EURP251.PROD.OUTLOOK.COM
 ([fe80::d70:1a65:1d6:d3ae%7]) with mapi id 15.20.7113.016; Mon, 18 Dec 2023
 20:25:51 +0000
From: Christian Melki <christian.melki@t2data.com>
To: barebox@lists.infradead.org
Date: Mon, 18 Dec 2023 21:25:44 +0100
Message-Id: <20231218202544.3952838-1-christian.melki@t2data.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0027.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::16) To AS4P251MB0635.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:4be::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4P251MB0635:EE_|AS4P251MB0587:EE_
X-MS-Office365-Filtering-Correlation-Id: a80189a3-9d83-42fd-3467-08dc00078724
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eYB/++2NUwEbA6bwCam1eVH70+vv0vHb6PNlw/E+kHsbkO6DNvLUfBunMVhYbN70oCRx31kf5uDNgSrBwPzLKtqQ8mlYQiFHtsXocyGYZwM1OGs51DVvwYprH3/LByzCwE/6TUXWJunhwJJP1lDGTgPRsk9SiHLSfRG97OlTOwEF/94ryyf7Y6gxOXdoXhz0AXoAkESPslEtZfPNe0l251zKppn+1u/X2aoV/0Qin/YXGvpwFO2YpsWeIGqpnMbj4hjqwXihbhg2dnlQQJDS5zDS16u7seA8n8BVuxyEOA0MR0K228npfxUJqVB8MZfwRcr3lGJff/PD3R+A1vU35XCOdSWbCY7K+gjbaAje5n+DTBQqpesJhqpoEbQfU2LCSFYCKh2QP4FYYHhV3ISbxmS4nsHnUGXA1uc+T4GsHIVlVxq2c+O6ag9oLKda4rail0eWcRMttd6UkFjVXsHjl5V1DQ6QcRkcUPcZ0aBL7d/JjesXmjlgsnlN5HCjFAgw+058KGh+cfuvhXIgXclBtALcyy0Vp4HjQ/cmtLKOtXJe5UpjH+KN0nv4oHXX7R8CZCAF8H/ENaF3WRAv+XgeH9sDtCFcHFmKBkNfJyCDsJxdtKd8JQ1lmp7AY//USjPV
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P251MB0635.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(376002)(396003)(39830400003)(346002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6512007)(2616005)(1076003)(6506007)(52116002)(26005)(6666004)(83380400001)(41300700001)(5660300002)(478600001)(2906002)(8676002)(44832011)(6486002)(66556008)(66946007)(316002)(66476007)(8936002)(6916009)(38350700005)(38100700002)(36756003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4CLtbS4BwZj7JV7sogw/8/V7eTWcZ0Nxoxnydk3HoFHomU0V8v2At94gX0k+?=
 =?us-ascii?Q?nKpFqyImBFvdW5zus3azUqIwjcHYUjOVF4c8wn1SJ9p/D3r/veDThSpa3pwB?=
 =?us-ascii?Q?duqHK0/HfGSYS+efPWIC6MLRImBS2JYQQV2Ct7ouoRCmDIO2OYl0JpkVqjmH?=
 =?us-ascii?Q?CCIUOL5PvEVDnD8TdH+OGB+4i6DD8+LENJ2/vmdTI2rkxJ00puhTVXJI3PoZ?=
 =?us-ascii?Q?xhi5gCvcXJ/YmVfEwmGJC6Ad8zxwbd/csPgUutg/GCD8XPWkC/gf40Iy/jNI?=
 =?us-ascii?Q?VFJELuWDr+ZYoZnLz3qJ3Wd2ZZOqIFyktRyQV3MaduECbRmKps7zlC66trju?=
 =?us-ascii?Q?gqbT8jruco0qxkoTcMV5+IMfKfdqZ34C6cao1hqVsVn2ksb4l6ccQZF/HJ65?=
 =?us-ascii?Q?O956e/1O08eY7qsS6sWjLnxR0/0ZPkDWEEcCFzOs0hkJXY4PuBFV8bxnuwGB?=
 =?us-ascii?Q?LJ94cuHno5l5bEsEV/5xzfmAuwcuJ3B9wnpjEnMbnbojlWGOKre3EOp/GArk?=
 =?us-ascii?Q?XM8lszTueHSrvAcfcMyAoM+xhGZActx/AYcjNyrzLADNbYUY2UUbzzvQ5wXw?=
 =?us-ascii?Q?FIeKJP6lTyx8GtcjVhSJlIQhEjg7BK7I51V2nhVgxxiKFsLylfoC/ddeLS82?=
 =?us-ascii?Q?vezo44apEbKwgYnjsxAvevL19idEPiJ8hSXAAp8BtIn2O3oi/pSSrZd6/SvV?=
 =?us-ascii?Q?1z3Dp5IZgEoacpFYmmn+kMLVwJEv/0cIBpGx1v6fVUuVV83+WG6iBfgr2EVB?=
 =?us-ascii?Q?UX1/+r+ni5lLf7nNfeA9niOGK4BLR5QcHUQGqWiuW4yATZKSqie1upEUpKBz?=
 =?us-ascii?Q?mWYOpdjW4DkzMaE/W6IvB0svBrntirvpTUAHBW/e1sEA6gXPd+X0WSrwmiSf?=
 =?us-ascii?Q?17BOxu3Lt8FP2nOmlNxMW2XPW6RYgbUhlmNYNOM7lkQqfsyGIAzZjetkKyVI?=
 =?us-ascii?Q?e4jKJMmBSeVuEOJ7OCIQVhUqcL7mTRmeG0U2N4i6iM8pePdT/EgBo1pc4d2d?=
 =?us-ascii?Q?3hVjRqPa2cCX4WLNorVzxmR4Gc9xvy2Q9P3PEKAta94sse253K+kZOX1h/ed?=
 =?us-ascii?Q?i2HixrW1PeAiXjhAAzGZGcC0CeWzI5/XQckNAkZZZl6lzRdubIiqY+4d3Vf8?=
 =?us-ascii?Q?IY1EWeGqXIy8T7eOgCad3/RQGFZQb8Ha4BqLZVVQ7mycrm5RMm7OexBzNhGR?=
 =?us-ascii?Q?R9YKXLYtnpc5lAHSH4wIGyiotQnemAL4E9a7Ev4atDHOVX/oIfUwyl5++Xiv?=
 =?us-ascii?Q?we1aqHWXE6RE6IniysM9VqVIT+XhTiN/kEc9LBI+aTPz4Xw5o6DvXprDuQqz?=
 =?us-ascii?Q?ZOypxrvQV4/CqgL4fYC+Dwkg4o6Up716FJ2RSSBDCNciZAGdap9SNzN8hsJe?=
 =?us-ascii?Q?J7G93yXY/COGqu10lahbQEt8XXPjitPrdBl3lwAipyHQv0FE/ngWM7LVN++C?=
 =?us-ascii?Q?AoQHYuj/EC2QFF29oTk2WtK7kKYn+8bCvmsqvovqWchzK+n1GhnfYt0zbNNJ?=
 =?us-ascii?Q?nbOj34i8pVHRyW54V+Hr0ZeisiONubsdbhA8bL/C6umJ2BIiu1QpoyAxvJVF?=
 =?us-ascii?Q?wxyWkjwG/CvY2BSbd7wTg6h3YNnN2OmcY8l1+PPbG2ojpGeFNGJz5MWubPSp?=
 =?us-ascii?Q?Ag=3D=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a80189a3-9d83-42fd-3467-08dc00078724
X-MS-Exchange-CrossTenant-AuthSource: AS4P251MB0635.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 20:25:51.2924
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: riBjggNUaA8JafDG5N+1xD9MQIjZkZFsv/9AAh9MVI27pxztYJ0Gi7lL47jsDqSlzTgLQdth2ylLJVCpv7ini4pjIxqFSa3OxKKiO+aVxL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P251MB0587
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_122604_424943_E2E96BBF 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] habv4: Fix parsing of unresonable events.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An unknown root cause made data look like events (0xdb)
with very long event lengths. This was causing
very long printouts of bogus stuff in the console.

While the root cause needs to be found and fixed,
there is no need of parsing events with abnormal lengths.
Also stop parsing if length exceeds the end of scope.

Signed-off-by: Christian Melki <christian.melki@t2data.com>
---
 drivers/hab/habv4.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index f74de009fc..1a55a3e448 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -203,6 +203,8 @@ static uint32_t hab_sip_get_version(void)
 	return (uint32_t)res.a0;
 }
 
+#define HABV4_EVENT_MAX_LEN		0x80
+
 #define IMX8MQ_ROM_OCRAM_ADDRESS	0x9061C0
 #define IMX8MM_ROM_OCRAM_ADDRESS	0x908040
 #define IMX8MN_ROM_OCRAM_ADDRESS	0x908040
@@ -217,6 +219,7 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 	char *sram;
 	int i = 0;
 	int internal_index = 0;
+	uint16_t ev_len;
 	char *end = 0;
 	struct hab_event_record *search;
 
@@ -236,13 +239,21 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 	 * recommends the address and size, however errors are usually contained
 	 * within the first bytes. Scan only the first few bytes to rule out
 	 * lots of false positives.
+	 * The max event length is just a sanity check.
 	 */
-	end = sram +  0x1a0;
+	end = sram + 0x1a0;
 
 	while (sram < end) {
 		if (*sram == 0xdb) {
 			search = (void *)sram;
-			sram = sram + be16_to_cpu(search->hdr.len);
+			ev_len = be16_to_cpu(search->hdr.len);
+			if (ev_len > HABV4_EVENT_MAX_LEN) {
+				break;
+			}
+			sram += ev_len;
+			if (sram > end) {
+				break;
+			}
 			events[num_events] = search;
 			num_events++;
 		} else {
-- 
2.34.1



