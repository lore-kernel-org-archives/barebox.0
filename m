Delivery-date: Tue, 29 Jul 2025 06:54:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugcMU-004ozk-1H
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 06:54:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugcMT-0001kX-HQ
	for lore@pengutronix.de; Tue, 29 Jul 2025 06:54:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgcGbQmUgoh2ps1QcHkXkL00H9AO9DsjU1+NFYDibhc=; b=JC24QXmI4u1agN
	NjSrbzUbK55AONdjpe+d50ezreykIA0iTxQs6C1SLm9er63PNpoUCQmlPoChqX1953CJIR/58R2Ba
	iTd5X+i8qQ4lUWkmYDSi3FqVAyM4jHG/Adf7hlBypkEWMNowCccNXV3WS8xriSUis5s8pBB8OSqXk
	KLrSkoAzppDcaPz0kMqhBv6gFAYcaJ39Qzl17tmeuOXJNYxgx7Yka5dgFGgIm7EGkpuQ6zwu9uOsf
	4jy8R9R50MqFasEx/+CU+S0qnrhmNJDO6rah2DB+pMreOxDPgiAi2Gb+XokjOFurAYw7AX0ywSzfF
	z6KslnRwpdCGCC6u2TAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugcLU-0000000Fv0u-0FQr;
	Tue, 29 Jul 2025 04:53:48 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugcLN-0000000Fuzq-0R7x
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 04:53:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nox+aI7ZmvePqHSyOf/ww/ShEzKb3Kco/u0xdosLrUY+b0ui3zwFHFnpeg3LHiCuDYiaLyNMs1PtMcFcG/4R0JNYkHyY+PpuK24oaokyV0Ih9T+xmnsDXTzZVqbsDJTvJQUYP2kQAtAUm/MZcVx3+Pzht29mELW1x5pma2rR18PPeMDgl/NYI3mRWihVBif7u49BB9AdGUlqoeJsx4sZ0hhk1ok8a7/Vd4gb+OFokx2pjwYtUBZrolKgaIqmRAieWZH2sFq1MJVq0qYcfnMHVEXbUU//FKP9f8DXZSTWU/A9kX3QWqao6KSkvlMJSgpqc8ooO/W4SbUHIawkUoXIIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OgcGbQmUgoh2ps1QcHkXkL00H9AO9DsjU1+NFYDibhc=;
 b=ucK3xndBEsgD0o9nPzR9KMFLbwrV8P3hlND4MHxnyEc4Dn5bz/HheKRFl21Prw9PmQa0uRdnvwo8iPBZLzkz9BmYQOVc7SziTGLSwlX6TE2xIIIGb0XhlZgQh1zOyORC8Hel6jdRK8tjXTgeudPjAMwDEnaREa4MNtUIwNMKrRvbuAJsy9YpsVNpesADEXNkUHPARvf/agao/ZxRBqcilZQ+C2FQV3yrq8TZrLAQ5vj55orOAnrCmzM/vlG1wv2CLcbEt0Bo2otEDC2+LOoU1S2jz1H/yEebSFIYc1vf+adgBa0Vg30v58M5Sg1OzBJpZVV5z5fGJo8YQhU2D4po8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OgcGbQmUgoh2ps1QcHkXkL00H9AO9DsjU1+NFYDibhc=;
 b=CrmJ/o286GfoRw0I7rqMCVcW5Mb7h5tYQPzLM0MyZa7AEck5qWVsZValQGxK+09YtOqqTAJgiDJLiypOZw3AZipCSptLeSwfWwIC1/lpCWJAE5zamQRARwi/ITgiBubitQ1+aEsXEzSlM5wKvyF05J9fEQTfv67uya0u/KC80mk=
Received: from AM0PR05CA0082.eurprd05.prod.outlook.com (2603:10a6:208:136::22)
 by DB9PR06MB8583.eurprd06.prod.outlook.com (2603:10a6:10:369::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 04:53:28 +0000
Received: from AMS0EPF000001A2.eurprd05.prod.outlook.com
 (2603:10a6:208:136:cafe::1e) by AM0PR05CA0082.outlook.office365.com
 (2603:10a6:208:136::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.24 via Frontend Transport; Tue,
 29 Jul 2025 04:53:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF000001A2.mail.protection.outlook.com (10.167.16.235) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.10 via Frontend Transport; Tue, 29 Jul 2025 04:53:25 +0000
Received: from GEO-H84s5E2W8Pk.lgs-net.com ([10.60.34.121]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 29 Jul 2025 06:53:25 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: l.schmidt@pengutronix.de
Date: Tue, 29 Jul 2025 06:53:24 +0200
Message-ID: <20250729045325.1112492-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250619-bootchooser-lock-v3-3-fc4ad92c3866@pengutronix.de>
References: <20250619-bootchooser-lock-v3-3-fc4ad92c3866@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 29 Jul 2025 04:53:25.0669 (UTC) FILETIME=[B7DBE550:01DC0044]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001A2:EE_|DB9PR06MB8583:EE_
X-MS-Office365-Filtering-Correlation-Id: 4354a516-6d64-457c-fb96-08ddce5bda76
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGJDa1NtRFNUeVNXam14YnA5a2lmK2xTOVpMcFhPUG1GRkhuakphdUVnNmFt?=
 =?utf-8?B?TFZQano1UDRnTmxhNC8vU3NERHRtaXdSYUZ1dzI1ZTc4TUlIQUo5d0JUdHpL?=
 =?utf-8?B?VTh5T3dFUXZqKy9RVFYxZGNrbmxvOXJlWWJCM2JBTTk3U3phVjVRQzFiTC8w?=
 =?utf-8?B?cWg5YWdTS2dpQUI4RzhvdnNsOEZjSlo3QjRGV09UR0k2Sm9IN2FjbU12Vmho?=
 =?utf-8?B?RGtlYWQ0d0lMMzBhS1Y4MXZOamdlNkRHSEVKaDdKZjJZc2F6NDlGemIxWE9x?=
 =?utf-8?B?L3ArMXgrZlJ1dXFDa0NmUEE4M1hPYTl0Y1owTCtrM0M3L3I0NzI0Q1k1WlVW?=
 =?utf-8?B?Z1NYR0wzTWE5WE1PalMvdUJMeXVsV1NWY0UwQzdxdmRURU5oYWpHcWp2RXFX?=
 =?utf-8?B?YjZLUFdNVmtaWWppUzFKdGlMeDYyb0ZuK2RMSE1oeDc5Q1pibXpFVi9NQlBw?=
 =?utf-8?B?M2xqejB3eG5CRWN6ekpJSlRXWCtveG5vakJsMHloVStmK2RqNzM4dXByMDYy?=
 =?utf-8?B?UXkvUFFBNW9kd0k2U1pHdTRyNlh2a1FoT0Jmam1oa0xPZ0RWQ2dmaTF6Wjlq?=
 =?utf-8?B?Q3RRc3JGbE9xdDVBNTk5RTdvS0FaYzlvR1YzOEE4ZklYRkhmSGRNM2NjY1FI?=
 =?utf-8?B?U0FVTzUwTnovbWFoQ2ZPYndQdngrSm1vcUZsOVdGOFhZWkc4Vlp3T2NyRUYw?=
 =?utf-8?B?eWdpZ2x0cGVBZkRKa1I2YloyUXV2RmoxMmVKUkJvYXhwNDU1d1JSUjFETDdt?=
 =?utf-8?B?OGs3RkJ1QW1lR2M0ZUJDRVFOK1FNSGRjVTBXc0k4ZTZRMG8wU1crUThQNHpE?=
 =?utf-8?B?TzVmaGI2OThFMHNtVjRhNWtHMmZ5VEJKcnBxd1ROTjJvUS8xbE91Z1NLQzh6?=
 =?utf-8?B?SmhTQkVDUko0MGJnby9TNjZnYWxjSXFxcThGaXJKU3luVEt5ZHBmUXJEd3lS?=
 =?utf-8?B?OUJqVWZEeURkUGxpQWZWVFlIaFBuRTU3VU9QTE50b1BRZFBTVzFhaC9ZOXBP?=
 =?utf-8?B?cWt6eUExNjY1dVl3aFliNkF2VnYxK3lNNUZjcVE3YmhSZjI0cXdLM1RaVUVX?=
 =?utf-8?B?aEZjS0EwcWlUUEQ3bFdQMEtmeGdsTW9Ra3NtZXdSckVsMmFsQUM4YlV6VWJU?=
 =?utf-8?B?clpOUzk5a2g1ZjJRTTFUdllBWmE3V2RnVTZNRW1lZXZiS2JYanB5Si9JQUFM?=
 =?utf-8?B?TmFoc1hKeGllYnU2SFU0dVFFem5BMmdsOVd0dlRoaXB6cnhlejdCNXFtVmVV?=
 =?utf-8?B?K1BabGNPWUFPTUpxbVhqMVlVTWx3cXpiMHBzaDU1QjNNaFA5M1lOMFdlMG5z?=
 =?utf-8?B?UHR3N1YwOFQ3UkpZSmEzUmJQUk90d0NuMzRiWXNyYWpkQkZ3K0dMWVdacGNH?=
 =?utf-8?B?R1l3d0sxcTJzZWVoWnFjQndlbWo0Q0JiVkdTbTFZVUdaOTBIQ3hRZlZmMURy?=
 =?utf-8?B?OFlQdEk2S0ZTVU90N3dFRjhlbk5SY1g1MXpQUEdmQVkyUzFjMlR4UmNPNTNz?=
 =?utf-8?B?YUZ2ck1qanRqRlZldmp5d3BuQkxZQXRYQVZTTHZ1MEpucDQ4MG1Qc2lhWmZC?=
 =?utf-8?B?OEhiRThNeS9QNmtQajFGVEU2OVBLSmpkNnVvWEFUbXZjbDY2bU92MnREQThC?=
 =?utf-8?B?bUt1RVF5MDJ4ZWo3VlpPQ1JWaHI2SDlhQnpxYWpIdFpkWUt3a2Z1VFdZYy9D?=
 =?utf-8?B?UHR2MnhYVEk5R2xRQkRPRkFVdDhDQjdBcHJwc1ZnSUd3LzVyYjk3SlFtSnVE?=
 =?utf-8?B?Y0N2dEdTLzI2bEJOaU9idDMxVk9BK21Bbzl4YmwrOXlpeE1jWTZJY3hTMmFt?=
 =?utf-8?B?NlM4N0pNa2VxTTB4SExyd29DS21NN04zL003SkxGYWpnMW9HWUNzYm0rL3cw?=
 =?utf-8?B?eHc4WE92b0ZDZURrTjFqMTg4RVZqK2NMaWFwTWlsOEdBTkVRVWtZQlhRWmhK?=
 =?utf-8?B?cXEzbXdmeG5FcVR4S21JYkVobEJYemNTckRmRllUTjN3WjVQcG5xVGl6dHF6?=
 =?utf-8?B?Rnh2WWl0b0hBPT0=?=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 04:53:25.8701
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4354a516-6d64-457c-fb96-08ddce5bda76
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001A2.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_215341_336385_6C253908 
X-CRM114-Status: GOOD (  27.10  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: bootchooser: add information about attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> 
> The new variable behaves quite differently from the already existing
> method via reset_attempts. So a proper description, including a use case,
> is added to the documentation.
> Additionally an example how to add it is added to bootstate.dtsi.
> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst | 30 ++++++++++++++++++++++++++++++
>  arch/arm/dts/bootstate.dtsi        |  5 +++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 351e1d14..1d7ece6c 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -77,6 +77,23 @@ no remaining attempts left.
>  To prevent ending up in an unbootable system after a number of failed boot
>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable.
> +Alternatively, counting down the remaining attempts can be disabled by
> +locking bootchooser boot attempts.
> +This is done by defining a (32-bit) ``attempts_locked`` variable in the
> +bootstate and setting its value to ``1`` (usually from userspace).
> +
> +In scenarios where the system is rebootet too frequently (after the ``remaining_attempts``
> +counter is decremented, but before it got incremented again after a successful boot) and falls
> +back to the other boot target, the ``attempts_locked`` variable can be used to avoid this behavior
> +Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
> +to the other target. It comes with the trade-off that a slot, that becomes broken
> +over time, it won't be detected anymore and will be booted indefinitely.
> +

had to re-read this paragraph to get the message :-S
would sth like this be any better/clearer?:

"""
In scenarios where the system reboots too frequently — specifically, after the
remaining_attempts counter is decremented but before it can be incremented again
following a successful boot — it may prematurely fall back to the alternate boot
target. To prevent this, the attempts_locked variable can be used. When enabled,
it stops Bootchooser from decrementing the remaining_attempts counter and
switching to the other target.

However, this comes with a trade-off: if a slot becomes faulty over time, the
system will not detect the failure and will continue attempting to boot from
that slot indefinitely.
"""

> +The variable affects all targets, is optional and its absence is
> +interpreted as ``0``, meaning that attempts are decremented normally.
> +
> +The ``attempts_locked`` value does not influence the decision on which target
> +to boot if any, only whether to decrement the attempts when booting.
>  
>  If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
>  algorithm will iterate through all valid boot targets (and decrease their
> @@ -107,6 +124,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
>  This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
>  its default value (``reset_attempts``).
>  
> +Another option is to use ``attempts_locked``. Normally this should be controlled from
> +Linux userspace using the *barebox-state* tool, i.e.::
> +
> +  barebox-state -s  bootstate.attempts_locked=1
> +
> +It can also be locked via the :ref:`bootchooser command <command_bootchooser>`::
> +
> +  bootchooser -l
> +
> +or unlocked::
> +
> +  bootchooser -L
> +
>  
>  .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
>  
> diff --git a/arch/arm/dts/bootstate.dtsi b/arch/arm/dts/bootstate.dtsi
> index aa767d4e..733441fb 100644
> --- a/arch/arm/dts/bootstate.dtsi
> +++ b/arch/arm/dts/bootstate.dtsi
> @@ -42,4 +42,9 @@ last_chosen@10 {
>  		reg = <0x10 0x4>;
>  		type = "uint32";
>  	};
> +
> +	attempts_locked@14 {
> +		reg = <0x14 0x4>;
> +		type = "uint32";
> +	};
>  };
> -- 
> 2.43.0
> 


