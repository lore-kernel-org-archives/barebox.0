Delivery-date: Sat, 18 Sep 2021 00:40:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMX5-0001er-OX
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 00:40:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMX4-00088P-Dp
	for lore@pengutronix.de; Sat, 18 Sep 2021 00:40:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nChxpyCiz1CWTwHDaOuMxTTQev0GyGvvXIwl/gN7XAI=; b=dbqC5v3zTwA9ebuabIF/5qtZiu
	XZqTWWS77D7g4d96NKCVngn1EsW37JAQgoDAKtI/ZyOWXpwc2/dTiJ9q4WNdppGiB/cVjZ0iFZnqP
	3KIBC+qphe/HiH0iNgjc49k6gSx3Gw468jKbH+DSqH2M0xQu86XnPiGAQTNnXIaG7D6t09I7eqLCc
	FWUFWIIZxTo+w/Lrst5lS8jYv2fK/EZRkFK15THzAE4kyDrrJP2XyeLYrqpkdVceCuL9SBUdwHSHG
	F8c8JFHuY1pgzcNVjbCNZ+/uxBpfWjl0xYjCV/0YEfjhSchpy3hg5VNBq5jT5dkK+eUX3++HCQaAU
	s1ulO9DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMVk-00F5cv-59; Fri, 17 Sep 2021 22:39:12 +0000
Received: from mail-eopbgr80109.outbound.protection.outlook.com
 ([40.107.8.109] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMVe-00F5bi-GB
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 22:39:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NM7o3pYJnZSA8D0cU5OMsTva8hozfxEq7HoQldUZyslbj1Y54XwdDKUSALdIxk1cghbsIdqFzjETAyaXrwoeLOTSCl7F8MQ3Sr3KhKRW3XpaX5mYHP898uJ+UmZ1ggVMRfz8fgeTEk1x2PXzbB+5tYf/zEtEyrGnkmIA9Ixq/fsJlZctn2ENfTtdXrABszwj3EVr32TPYDnjoXEoCrxotMbFWVZ+oovawJXytoFGkAo1noAGCURg0EhGzfgFVi/J5xvorW33LHFQli3gv10XcD76v1Np7cGyAUc05p/8AEXxeF+pz7yqoOQFDxoP+BNK/HN2YOdCci4S6gwRkgtgLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=6bBiQlKqpsv82awsNlgqMTu/rxNMtZXFSBCsOJGCHYY=;
 b=e0rtrCaO4SIthBDSxZ++hW5zQRckzdC2s3VVX0gWdUdNHVV4pWAT1rx3xaEBlp1qIC/FAo1IK5uahz9xq3tJP8WrRSaoa2VawEXzs4sGQFRRplBxokx1aZc1Lh7/2Ib66+weI+CgolEOZIefpWJo0nJuPKSvqZyKndqdNHe9664N+5rgR8Jj6GkHxkamHrPBHodlMfjihKdCHTPpKRgtOPKjalS/piGxOE1SuAMBNy/nKc0EfgSlALswmyVYMj5omxAWKexr3l6roWiaE4NX7GKzzba3/hY6vNYKN4Cq/S/nUqzAHUbhCVXmql2JY2oWcdNra2+HrZU9IG708UsYsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6bBiQlKqpsv82awsNlgqMTu/rxNMtZXFSBCsOJGCHYY=;
 b=HLgGksoYbR8UVfk+Y1wI7UHg0ba2aeq/1n7zAoD7srI/7l40xC+3SQ7Db0vUi9yZ2lLaaaQQcr9iLNxa+Q+0AHNr77TuO4BqR0GqrmTigDGkx2yy5++YnV9MlsN3X3qoNCXhAUovcW+ORe4Jw0uPGC34B1NCg05jIJSU5xaBzhc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB7259.eurprd02.prod.outlook.com (2603:10a6:10:24a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 22:39:03 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 22:39:03 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <3b36e00c-84fb-800a-5128-cb38f2be0868@axentia.se>
Date: Sat, 18 Sep 2021 00:39:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Content-Language: sv-SE
X-ClientProxiedBy: AS9PR06CA0220.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::23) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AS9PR06CA0220.eurprd06.prod.outlook.com (2603:10a6:20b:45e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Fri, 17 Sep 2021 22:39:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de50e689-6d9e-44aa-c1dc-08d97a2bf358
X-MS-TrafficTypeDiagnostic: DB9PR02MB7259:
X-Microsoft-Antispam-PRVS: <DB9PR02MB725906BF1DBAF8A1ED088B4EBCDD9@DB9PR02MB7259.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4KUey2KWs1o99kwd2ZTCZIXVTnfClXqZQ07qVxa0cFHKqTvRSQpmy0YRxU5GfLnv3I3v+mI4bRyFpHJSUk3qqyTVkhL8HAaoc2MR2BRNValBQvP6cxdHWVxAntJB/ptibmcDMLI4JCz8ra9QLrZl+b+pxud/XsXl68KSeygNg2kOX99hoEI1GhU9Y0OkSzeRk+Ahd6UnxUrovEpKIpqWqLThmluCqIGL/YoaaNGqiQbEA0C1l5hvRfqLSmsbpCXJBa6SHzAQ8gJSbgFLtPMUTgW2MLFlZ2Bg5kSTbqmfXohhrEl4p/0T1jzj3VG28L7B7ikIL2cO4JDZdv2qvHbR9DGVEcTSE2p6wDgAZQPBO9FXHvgeCHJ8vqMnZMH3phmP/JrZw3gBL+ekUvdLUcyyybo13H7AN5ovHsItEdVXnIE48rmCVrntQhr5926RKII9snFPIrl6VPohbwQMOtFobYEqxEdbUOFxedRu2qPW2vliMQRK3wPGOC/RZ+qzjMb1L6OPKovBCANYVzwjbNWCD8BGfVi/jxM+tosJMzlhd7/LoJGaif1EsVNotwa079qGgLXqD4+ZElAVszLyBW8mpBBUx/YMKSXO1BT0OExHwzUxZWCd+qwzFDsRb+NnRS67EDUwJS8sQ5lfUfAO3XFH+XTbWMeDIgZQq+G2gYh+bb7kzzDOd/dReeYJobYQLZ+9Vz/ElqIo3dqe7E7AmfiXoSZ0jWfx+Q9Y5fbINyTVBSk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(39840400004)(136003)(366004)(376002)(186003)(38100700002)(8936002)(8676002)(26005)(2616005)(956004)(2906002)(16576012)(31696002)(5660300002)(66556008)(66946007)(66476007)(31686004)(86362001)(110136005)(316002)(36756003)(4326008)(36916002)(6486002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHo3b2pQUkMrMGN3Y0tDQjlxVkl6T1hOU2NrMVNKbVphWGlLeFQ5Y29WWDBk?=
 =?utf-8?B?aWcrdW1IazMzcUlQU0lEaGdqTWpwNDZacHNrSkV5bDR2cVRTV3NnblpHL0hM?=
 =?utf-8?B?NFVKUDErV3ZkNWF0RmxHdTk0bVNrQVpFbEN6azFmcnpOMC9TVGthdXBSdTZC?=
 =?utf-8?B?L0R4QkFicjFzMldoSkd5YnJCUjlBcUVNQlVoWUtMOGpITnh6RU8rU2IxZG92?=
 =?utf-8?B?b0JBQTgyaDUxeHVVbGZTQXh0dXM3MkZnZjZYYnhSTm1CYjdJYmd2K3RSaFRQ?=
 =?utf-8?B?cCtHd1J3UWJicFlhM0Z1WGpmQlZZZHNTWndDWkFjR0dXRVdNaUgrbjlxL1V1?=
 =?utf-8?B?emIvZWxVNHQycXNPanFkOE0wSXN4UC9tMzN4VUlqZ0FLS2xPTHl6ZW10SzE1?=
 =?utf-8?B?U2VBbVR4ZEQ5a0dRc3c0WHlJazJqd252ZlRpQndVN1Z2U2dPRkhnUTZ4V3JE?=
 =?utf-8?B?bVd1NSt6b3ZKV2tSTXQyV2plaEg4ZmcvL2ZUT1BQS2JGQkNsQmEyUHFYb0R4?=
 =?utf-8?B?NStBOXZhdWVsaTVYaFN5Ujl2UzFaeHp0UTNtMmMwRGdIM1hSUTkxSjN4V0cw?=
 =?utf-8?B?cEdxNWJVN1NIMWFQNGVJMEd4WFA5b2lFUG0zcC9TU1dVNU5HU01DQzBPSWh1?=
 =?utf-8?B?a0h0VnloZ3VXaXVsS0NKWENrbTZ2RzQrUEEwZmwyTEdoUk9qQXB5bnZKcU9D?=
 =?utf-8?B?QjFmV2VndGxOL090N0I3amFCcyttNXJrajNhSnlXRXBsNnFPSEhJWE9uV3oy?=
 =?utf-8?B?Ri9CbGVsNFhiYnJKVm8yMXZwTkMycG1hWnJ6RmdvNjVxNXVOcm83SWRuU1Fk?=
 =?utf-8?B?cHVscCs1a0wyak1BZkF2RHJiZEIyYWhlL25QN2JFd3dJckFOTTBaWFZJblJM?=
 =?utf-8?B?bW14Y0VwUy9SNmRvYWVpN2pjdE9VckZkdGVKOTJybkNxcmhVT0QyUHNjdUFx?=
 =?utf-8?B?T0x2MVdBYU5BVTJjSFFVcitEMnFBdHQrb1ptekwzYXBYc2N6NmVyaVZ3RVl6?=
 =?utf-8?B?aVBCVlZCQ2diQklZbmxmeXZHSHNsOVZzQUNBUCtUckZFdHB4bUsyMDAvcmll?=
 =?utf-8?B?ejcvZ2dkNXZQRXZRbHpBWDdxNCtqaHIwbVhqSGVadWJkZEM0dmQ3bGlxTkdq?=
 =?utf-8?B?aHZocGJFY0l4TG1rNTczZTkyQ2dETTFrWXlLWHdKNFkwb0tUR0hvSXhwMWRN?=
 =?utf-8?B?cnE0NVVQczRMZUpPZUxmbVkwNGF3NEtwaHMrU2wwNDlOeXFFdC91Y3pTYkNn?=
 =?utf-8?B?SjU4Vys5RldPWDNLSzdFdDNFbmkybmNsaTdIbE4wdnErNlhDallrWnRyR3U0?=
 =?utf-8?B?TWdKL2FWSi9TZ2g2NGJMcERoZlJocUM5K1pvTlR3b2VhUTR6Tnk2Y3RVWFlw?=
 =?utf-8?B?NmV3dzN0dHlhZ3pZRmlidnh2S1l5MXdpRExOVnRCMjZheDBleFZ3Tkt3WUlY?=
 =?utf-8?B?OWhBNkhhMWVSVGRLcHhFZUM0RDZ5TU1FQ1NLcGdZc3dXellSUnBncGRZd21R?=
 =?utf-8?B?UUJaUXArQ3hWMnE4ZitxK2h6K2s4N3JUeHZFaDVadG5lL0k4ZWU5T05ZUE55?=
 =?utf-8?B?WUhPZ2lwd2NnUU5lVlhXN1o4TWtLOEY1Rjhldm12SlUrSERkNmpPa1c5dXFL?=
 =?utf-8?B?NEYxOTdHdFlJSzdsTHV3NTJZWkhOelYvQzVrU0xCTmZ6TkxrWEoxdnlDN1Jh?=
 =?utf-8?B?VTExakw5ZWVObEpUaW5scWdSK1FRR1dLMzV6RlB0ZEc2T0lQcUNuZzFJVVo3?=
 =?utf-8?Q?qjEEV9/zklpXug5oadzcs6LlVnG6+GDMqLaYVPm?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: de50e689-6d9e-44aa-c1dc-08d97a2bf358
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 22:39:03.5707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +8TdzPITRqELOqPIlL8ra4ivK5cd0XMDQ36svW4WetySZoCAuSrYF0g0QCa5qRhN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_153906_599872_B0944D69 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] common.h: reintroduce region_overlap() as,
 old_region_overlap()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The region_overlap() function was removed as unused by patch
81ca755487 ("common.h: remove unused region_overlap()")
but only because the last user was prematurely removed by patch
070de908da ("ARM: remove PBL_FORCE_PIGGYDATA_COPY")

A clean reverts is not appropriate, as the previous name of
the function has been repurposed by patch
04e2aa516e ("common.h: move and rename lregion_overlap()")

Signed-off-by: Peter Rosin <peda@axentia.se>
---
 include/common.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/common.h b/include/common.h
index 693f5bf97029..10cf5f732cbf 100644
--- a/include/common.h
+++ b/include/common.h
@@ -137,4 +137,18 @@ const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 void barebox_set_hostname_no_overwrite(const char *);
 
+/*
+ * Check if two regions overlap. returns true if they do, false otherwise
+ */
+
+static inline bool old_region_overlap(unsigned long starta, unsigned long lena,
+		unsigned long startb, unsigned long lenb)
+{
+	if (starta + lena <= startb)
+		return 0;
+	if (startb + lenb <= starta)
+		return 0;
+	return 1;
+}
+
 #endif	/* __COMMON_H_ */
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

