Delivery-date: Fri, 14 Apr 2023 11:42:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnFx7-003AlB-69
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 11:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnFx6-0007m2-Q4
	for lore@pengutronix.de; Fri, 14 Apr 2023 11:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eHn0M+jvSV7gGz3exDHWaY7FZRqfLYGJoBgmjthpqp4=; b=TIBfMjlIt6ucr+wa1rSfSr6yG2
	J0SpsQJ7nk86SUSBuBTcT8m74V98Rzc4MGY6L952NlvgJtUnLCL+5Ek9+lrcVXSCperTUUNDwX/R5
	nksEfxfdfIh7yQNBdyEpg9UUZ/n6Nx5p1tTnlaGSiawm0t+BrS0HjlF2Okx19SnpJIAU4/uhSlmLm
	zUhsrrI1lEUriYnR5yEgymSvDSpELeiFlJOUKeUg8jeOVhiEbv/K6W6pfWJ+3EODzt6C4KtQJmuuA
	y98TxIpcYoW8OURbHXDAwoPCKzIV/By3m9Y4kqExvqcNmkw6Ym5z3fGT0wxwcohejijLduadqlFMP
	IXOXCTJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFvc-008u2j-1P;
	Fri, 14 Apr 2023 09:41:12 +0000
Received: from mail-db3eur04on0707.outbound.protection.outlook.com ([2a01:111:f400:fe0c::707] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFvY-008u1N-1o
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 09:41:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jx3pFo2awEUFuQj+EG6htHazJJuEfr1TRB87mgdF7b9oC0uNMS6Lwqrq9YFEO+qXc+qlPSuEB24uLICqRJ32I6uHx5da3KX+bZjlUNRqb47em/DK7WR4GiyenTDD3eIs8wJiV2/mk2vnFvZk+ykh1c725I7BD9SY/4XnYLDtqvk+EXJBy7ahcHcpQe0VhWPEp3mx4m+ASUGeoYp2P3FCtpc0QOsV6Xf+5w1Uc7iA7+dSbrRXseuL6EsgJLgD4DrVEob84hRKElFMIOgjNySJrqeExYIop76Q2nT7mSbPpFyhTyCVBPPoJgLcyIm4cIGffpLekVLDHfRgwRSQoWTrgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHn0M+jvSV7gGz3exDHWaY7FZRqfLYGJoBgmjthpqp4=;
 b=g7+7lmFSbgygbQaRdFBoKcovDQbP+AAfI8z8klhA/1I1H92eYO8EUjhjkupxkcuKyQOCn7nkGb4UhIOMkshJVng014LNHSA+bpnyGCOnISjUPfQ/RnJ2lCfuDMXQHKJL4V849rYaalvkpWkjgjR/lU6YA7ibDLSid8QsyUmZWn8o3B65qDbUC3TZwgkG0vET+65+jPXqQrlpmRvV390K51S2Gt2952xpAqsLUjdcXEtmicrji3LK46tKJO4JmC2VVuCuFJYqJ4ftSBkePjrX3o+obZ9PxDUj8CRR+S+L57LS4QS5hrWvAILti4bNHf526cV9wLaNXtIYN9qSBmm41Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mt.com; dmarc=pass action=none header.from=mt.com; dkim=pass
 header.d=mt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mt.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eHn0M+jvSV7gGz3exDHWaY7FZRqfLYGJoBgmjthpqp4=;
 b=ah60n6sqPKgBrX1ZTFXTTz21SMC+kvzGJNZN92c1R1Er+Kj8JmLXBZ7tzUSOrEkxKFncBmWZLbefBCsuw+EAmwc0PnMOIMwKZdM8pjusDUjvMkApOXbmdWkGWIWs06noPVhczpj12UwQ64+xetmrL1Lr4AlS73NQSJ2lbvE0WzaIVJzmzSfg8wTpGnx9B0BzQ4Wql6+wqB8yX5wwfOTB5RWOeGefQjfTsFZxqhom/Gjt7vjvAMTGWwCC5Ei3DSd8UetzkQnwkaKunE4A/6TYEMneTkxPk2hgOq5zpA1QSrSHx/a2PHtvIcnrG9t1fmAdLiDhlSmuKIiqi28jlLnx5Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mt.com;
Received: from PA4PR03MB7488.eurprd03.prod.outlook.com (2603:10a6:102:bc::11)
 by AM0PR03MB6212.eurprd03.prod.outlook.com (2603:10a6:20b:15a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 09:41:01 +0000
Received: from PA4PR03MB7488.eurprd03.prod.outlook.com
 ([fe80::383:caf2:f88a:bd11]) by PA4PR03MB7488.eurprd03.prod.outlook.com
 ([fe80::383:caf2:f88a:bd11%3]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 09:41:01 +0000
From: Markus Burri <markus.burri@mt.com>
To: barebox@lists.infradead.org
Cc: Markus Burri <markus.burri@mt.com>
Date: Fri, 14 Apr 2023 11:40:20 +0200
Message-Id: <20230414094020.2389226-1-markus.burri@mt.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0036.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::23) To PA4PR03MB7488.eurprd03.prod.outlook.com
 (2603:10a6:102:bc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR03MB7488:EE_|AM0PR03MB6212:EE_
X-MS-Office365-Filtering-Correlation-Id: e3e09c8e-d280-407d-24f4-08db3ccc5b82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	EvHu7kP5pVZXZ6NAQLAKBBj81fKpbiwQfqgoRxeNaBroqr7i+u3aem00oYQi2T6S5+6D0a87H/x1BBNZLgmQQdr7ZPBWpzJqVQSiZBVQray1JgoEGjGSyvups8B1p5f4wTrmVS9glot5w2388OmUqcVdJLYkzTBYazQyRH7eDaEKVE0yW9P9LIURXJ2PXEcEPg5MhBKVPZmrlounwiiWCdXGMY3HpouvURUbsz+YQvlWxZSkLsDDLdsaOC5MXk7Rzfza008tfPvSXdiQLF0ytLsyYbT15Zu7n7d+g3R/bFzeZCWJM0kdryAGkmtSK8ibzMsTISo2NzR3FYOsJbngWDrFje0VoVO6sQkglNiAg7jWZgCiOzIZCf7H4wnmTHKBDCJkLziCn9OgEoZFBMyvCpO/LCEzAYF9HxV+pDIOudYZ1abEEv8wjxNDp5NX7jmwT3MXguqFtmL2PuYETp8I10EL6LURfDt/VOZ0/1IsoYR6IhJ6NXAAKXcC9G/A1M/wTS1ebFpI7oCH/30mU8YYleT/QwIoXEo9oNHlNLioE+BjFncK7kA5XTAwR+F3Cl/1WbOCnL9hLG2XoxP3W6hUVg7k5Zddx40tJEd1Z/ZVb/h6ojSuYaL8xmlrbDFG5oXx
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR03MB7488.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(396003)(136003)(366004)(346002)(376002)(451199021)(66556008)(4326008)(316002)(478600001)(6916009)(66946007)(66476007)(5660300002)(44832011)(41300700001)(8936002)(8676002)(38350700002)(38100700002)(186003)(83380400001)(6666004)(6486002)(52116002)(2616005)(26005)(1076003)(6506007)(6512007)(86362001)(36756003)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?mmsMtskrBl6Y9rHz2Ani/ImSidrINIiczvGZq2Eg62yXeavilZCKRdUql5a0?=
 =?us-ascii?Q?O2RrsXncO8D1df5s1NBPfqI5koPyY+pe6gwMxIRGXjzoh3YlPYcxxMuimBmE?=
 =?us-ascii?Q?wdWjp50QfV9o/BhTYGX/aAl5A8ZRZ1FKsOTRNcvrfhJctDaSBuP853wnn+9M?=
 =?us-ascii?Q?GqPFVGcwri+36bomjFbYzloitDgjRjV3FaSXhMJZOfwC4rr2E07WifxdqIKg?=
 =?us-ascii?Q?sZ1Zf7D9QAjATDiiyAuE4iG1cHjgwOIgVWt2AqBC5Gu8dmYYiFrxqAu0NRrp?=
 =?us-ascii?Q?qOgJTSTKSa+UjWl6pArhCbH4q3wh9wCa//qVZcGmL1Am+yfN3+qc8DMUxIiP?=
 =?us-ascii?Q?9h4s2GSRNz0N8a2rxuEJCtFpk+YmUMocuT42hpx5kx6V1VLvcMP1A+Yxa2tm?=
 =?us-ascii?Q?eX84ztwW2+4aR7g+vkH1HA8HUyM6cnVz7Sp0mul9p5LO42X2b2knjdiof2aI?=
 =?us-ascii?Q?TWuFPmgdhu/BIrNLrrTQl8cGW9jINIFXq/oD/mU307hvoc2353sOnEtopFT/?=
 =?us-ascii?Q?EN/y+otJQoClHS4t+RagkKeoNuz5qBC+rnlGp1lsjRx4ASBX1ag1aCu5DmoY?=
 =?us-ascii?Q?lB3ZGnAioH7FMOSL1fe4dcoYm3Vhz6rh5fVERiZdVvHqma/Yfuzyu1KOol+i?=
 =?us-ascii?Q?Fz/MAIIRlbAygCTcFG5kOuxhJjNCjGEUtVLd21fyJEofoRmnhaq2Y5gFQNfJ?=
 =?us-ascii?Q?qaIPRjiOhNfoI4+oOjEf7tlLhF4Rv91dpdDtf7wsrZfTzp/3i29sI/Hn7OtE?=
 =?us-ascii?Q?JxCvva14AJqejXSOPq8hpoBsIsPQfX4ySJC2w72yKhOyoWrwwuiZ7T+AkZH2?=
 =?us-ascii?Q?yygxkCvom44SwW6yVPhVdhjB9Kl/819q50huAEdruPX8/nL3DK5Ri59KjxU5?=
 =?us-ascii?Q?OmHjsv/n26h8bewuykjvFnWgsIglLaQUs/pARmucYZtozhA0mGdgffo0JDvS?=
 =?us-ascii?Q?Pkh8UXRV987UtELGDglqPuaSna/6h8yei2QtnpO8rVHX++btTGHvx6O4ZDSh?=
 =?us-ascii?Q?VFwyOhOV+6s225xZCIY7G09QMKZCtjyJXdcDlF3qQY6BpPEvA4khZkc5YVib?=
 =?us-ascii?Q?vcQlSc/B5/zk7r0SbP/hrydBcZ97VQXuEObA3vsfT9BEGyEwwBHYShDBhwye?=
 =?us-ascii?Q?yHFDLhNInnUI3bp1pQMIALacL32mz13kIsLE8im4aJAmkKVMl7AO+NjZZN3l?=
 =?us-ascii?Q?gHT6qYksA2X1nPIfl3zWMouVSzefQeCgh45sWBa041VuCDoda4pEL16oLEKV?=
 =?us-ascii?Q?w4q6zlMwj5E2pxVbbN4274qzACyNntBMSqHEDzqx0SbMZP+11UeOQLVs2ftS?=
 =?us-ascii?Q?Tct0xDvzyHaEqy2XEXK05MBL/NnzL7uMIh1EeshuRJjkIeg8zXop14TfDLOD?=
 =?us-ascii?Q?COsOP8u0T+HrYKi0S38h1XCtVEn+hNK6JMh1WNZu6Zsv9Mc9XUjyVMjgiS5p?=
 =?us-ascii?Q?XX+8RKYcMwHIW35wemJ7iILvjMwOtqRy9wlQOCO/138sw39VEG6hyJ5LrUK+?=
 =?us-ascii?Q?NTEoaVI9Db4lzSPe/Pf2EN7gsDpc6vfRIOxtWODrNWKNKKY5JktyZe6iBu+D?=
 =?us-ascii?Q?HZxSgNFsjtjf0DweOW1IyXBqKRqOyg2t2TuJbE3s?=
X-OriginatorOrg: mt.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e09c8e-d280-407d-24f4-08db3ccc5b82
X-MS-Exchange-CrossTenant-AuthSource: PA4PR03MB7488.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2023 09:41:01.0305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fb4c0aee-6cd2-482f-a1a5-717e7c02496b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ivIZZwk5hWhgYCgEt1dyywyUXpU/aXqMqPIjeO6HHUVjy96dm/q3fwbiFU8t0mM2qcBIvAEqsWfcbqUJDOl4uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB6212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_024108_885021_BC40A612 
X-CRM114-Status: GOOD (  15.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1] Add bootchooser command option for active boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add bootchooser command option to extract and save the active target.
The information about active target are stored into two variables
(bootchooser.active_target and bootchooser.active_boot)
This information may be used into scripts to do actions related to the active
target before starting it.

Signed-off-by: Markus Burri <markus.burri@mt.com>

Gbp-Pq: Name 0058-Add-command-for-next-boot-target.patch
---
 Documentation/user/bootchooser.rst |  6 ++++++
 commands/bootchooser.c             | 12 +++++++++++-
 common/bootchooser.c               | 21 +++++++++++++++++++++
 include/bootchooser.h              |  1 +
 4 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 8456e11..68ec1b6 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -168,6 +168,12 @@ options not specific to any boot target.
   set of ``global.bootchooser.<targetname>.<variablename>`` variables must exist.
 ``global.bootchooser.last_chosen``
   *bootchooser* sets this to the boot target that was chosen on last boot (index).
+``global.bootchooser.active_target``
+  Set to the active boot target that will boot next.
+  Call *bootchooser -n* to update the value.
+``global.bootchooser.active_boot``
+  Set to the boot device of the active target that will boot next. 
+  Call *bootchooser -n* to update the value.
 
 .. _bootchooser,setup_example:
 
diff --git a/commands/bootchooser.c b/commands/bootchooser.c
index ac763a6..20bd2d6 100644
--- a/commands/bootchooser.c
+++ b/commands/bootchooser.c
@@ -59,8 +59,9 @@ static int do_bootchooser(int argc, char *argv[])
 	int info = 0;
 	bool done_something = false;
 	bool last_boot_successful = false;
+	bool active_boot_target = false;
 
-	while ((opt = getopt(argc, argv, "a:p:is")) > 0) {
+	while ((opt = getopt(argc, argv, "a:p:ins")) > 0) {
 		switch (opt) {
 		case 'a':
 			if (!strcmp(optarg, "default"))
@@ -77,6 +78,9 @@ static int do_bootchooser(int argc, char *argv[])
 		case 'i':
 			info = 1;
 			break;
+		case 'n':
+			active_boot_target = true;
+			break;
 		case 's':
 			last_boot_successful = true;
 			break;
@@ -120,6 +124,11 @@ static int do_bootchooser(int argc, char *argv[])
 		done_something = true;
 	}
 
+	if (active_boot_target) {
+		bootchooser_active_target(bootchooser);
+		done_something = true;
+	}
+
 	if (!done_something) {
 		printf("Nothing to do\n");
 		ret = COMMAND_ERROR_USAGE;
@@ -137,6 +146,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
 BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
 BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
+BAREBOX_CMD_HELP_OPT ("-n",  "Save active boot target to bootchooser.active_target and active boot device to bootchooser.active_boot")
 BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index c08db03..1ec29e6 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -619,6 +619,27 @@ void bootchooser_info(struct bootchooser *bc)
 	       bc->last_chosen->name : "unknown");
 }
 
+/**
+ * bootchooser_active_target - Save information about active boot target
+ * @bc: The bootchooser
+ */
+void bootchooser_active_target(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+
+	list_for_each_entry(target, &bc->targets, list) {
+		if (bootchooser_target_ok(target, NULL)) {
+			if (bc->verbose) {
+				pr_info("bootchooser.active_target=%s\n", target->name);
+				pr_info("bootchooser.active_boot=%s\n", target->boot);
+			}
+			nvvar_add("bootchooser.active_target", target->name);
+			nvvar_add("bootchooser.active_boot", target->boot);
+			return;
+		}
+	}
+}
+
 /**
  * bootchooser_get_target - get the target that shall be booted next
  * @bc:		The bootchooser
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 7822c01..9825593 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -12,6 +12,7 @@ int bootchooser_save(struct bootchooser *bootchooser);
 int bootchooser_put(struct bootchooser *bootchooser);
 
 void bootchooser_info(struct bootchooser *bootchooser);
+void bootchooser_active_target(struct bootchooser *bc);
 
 int bootchooser_boot(struct bootchooser *bc);
 
-- 
2.39.2



