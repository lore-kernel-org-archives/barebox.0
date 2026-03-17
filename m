Delivery-date: Tue, 17 Mar 2026 15:32:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2VTV-001poA-1R
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 15:32:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2VTU-0007KT-IM
	for lore@pengutronix.de; Tue, 17 Mar 2026 15:32:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fp9BZ1McyPVjV3AGEx8EbqcIW8hA14S85hrUotgyzVk=; b=S3tbIOj96w+GllLFZNCMizbPa2
	GYfY9eaG/K6rwdTHvTHlMbByQ4TQma/9c9MbmzegV7ABuuX/raAmR93SoHQtup2YZz74wpzI37tLg
	3YH1XxZLEHGqAasUU16NTKylYlIHQ62kkEcdWM8o+epkfdLUY0GV7833lU8UBjZY68WyDh8TdJpqC
	ddUJmvnYwl3yeACT7/7287dNwFiijpyVpmmF9TVjUpNh6Jhpwvp/ZP5+61rPtgKSZgUIJuesD1BsP
	sN9gsNbnjBY3zQTEPMgURdFrlqlKlLtOzViHB707Q21/JTlTFpCvCxSZlmBQXD1IP0Ctf2y4DBOPy
	geuiGXgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2VSj-00000006cXF-2G8d;
	Tue, 17 Mar 2026 14:32:01 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2VSf-00000006cVk-2unw
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 14:32:00 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HCtcQ6098416;
	Tue, 17 Mar 2026 10:31:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=fp9
	BZ1McyPVjV3AGEx8EbqcIW8hA14S85hrUotgyzVk=; b=XBGwpSv/LVEEGdBDZYu
	2Ipy/6kT1O567Mq+SDnJQSctN4ohlx1M1tsh+A/fmcrBGkmj1QeGPujJzCT2iBXg
	z9jf+xYW5Yk8HeJvC7LiYqdK8puV6bEJlCis0L3tY5GC+4zw32ua7nYgScVxIuAN
	tZcJgIaLaeX9jkaOEuDdi9StYLbYbjIcEv5vhazwhxORdeLx8+MRWaVvScG2f34f
	2Mm17KkFEGn89WoV3imh7i9UtXNjfk6jyzB3cdku8GB5QZbGjpIRODrScr9yAEZK
	MXhlMBRX2oodHLO02SuYx7s90zN6YOvkgsX67PIEG2ugvOMTf6nLwgaI9pIWSmOh
	6YA==
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013042.outbound.protection.outlook.com [40.107.201.42])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4cx7fc7ghh-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 17 Mar 2026 10:31:55 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ynQyLZktenXEgTn/SfIxU+cxfL58xg1A9XqvQqb/lrHHRNmDd3qE5gDgDKFCW6SCEGAnP0wTb1vZ1b7PeRwzT1Tw82kmigbjwdDthjTcNaUqAweq0GprRKsGFtqAFmfDQD+rEt0ZQE6h9tAoJ5xU1iy88iCh4eW18pTwp7kXMDrPi2d/vm3czuF34dH1P61bvuRlE0+2AhcZeGXpPE0NNyL/uUC/ax1Uz8PxbMLpHo3NAGd1Qs3wr841QlH2EOsbIiz0K6wuoIDRGiwpkQMDBLtiMIcqd12To4IF1olf8Toj+vrNlVGZs5cU6C53dHGMfrMit21Lb2ICIDGBTUqEJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fp9BZ1McyPVjV3AGEx8EbqcIW8hA14S85hrUotgyzVk=;
 b=Q63y99XZosIOB1o7iZRf2vqu/8lNHKf9Fsiz61jeDRRlPUpYfFpGFqlmWn/JebZMFY0dnPxn5z79L7mI4zfXSQ1ZDkVGRVvw/FLx0nIg+9+fjmluZYkLqYfHf6KI5PxRescVTtOM2oeh0aT8zqbPTqpqKBZy7F7Y7vtG8wxayUhbuuJspO1YT8mHJxUP3EhWGgovCxB57aNAowdt7Vhh1erncufvP5K9HP8jnt/ANtPFBjYW4C51wl3GBN2xeY9zBU7imML1wK2QfwQKfdL+da8bgfVg8sFZSaylaRyBiUzcTN45KN6X2wIXTxmYgMDglcXH2iv4/jgfYyECljE0BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fp9BZ1McyPVjV3AGEx8EbqcIW8hA14S85hrUotgyzVk=;
 b=OWuU+3OPc/zlFthFH1FAk4IPHeIjAdjgJ3hEErrafCz50K/GSAk2kQ6EueaGNO42FWJVQFaxVdMvvNRGqCDT1uZ2j7HPnGaXGYAa9INOYvbE8nDwWwqhNoOFbFR633jJWpMODmYSxp/oC/nrNFO5MTRXpmikX23Je/iiBLyMMz8=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by PH7PR07MB9675.namprd07.prod.outlook.com (2603:10b6:510:2b4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Tue, 17 Mar
 2026 14:31:46 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%2]) with mapi id 15.20.9700.018; Tue, 17 Mar 2026
 14:31:47 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: file system crash
Thread-Index: Ady18tnnNOaQSfwuRSuNRY9AfPCsjQADJB0AAAbVeaA=
Date: Tue, 17 Mar 2026 14:31:47 +0000
Message-ID: <SJ0PR07MB976610EF68958EB992C538E0EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <SJ0PR07MB976639CACF9AB10A471A2B96EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <62cdd7a2-f712-44e9-8f3f-785a7af0e659@pengutronix.de>
In-Reply-To: <62cdd7a2-f712-44e9-8f3f-785a7af0e659@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|PH7PR07MB9675:EE_
x-ms-office365-filtering-correlation-id: be5b5f32-f0fa-4331-552a-08de8431eb88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|22082099003|18002099003|17002099007|56012099003|38070700021;
x-microsoft-antispam-message-info: a5Sh3IFMNaR95PzWjUWioM27NrSNwha4eFRi2hu4poWSxY1/YDl4xacTHpZn93nOrS9WwAfly3ZP6y6FctOcHFuu0gYMmpXoPynzgqnvvrUb9HORXU7UNGQ1J2TLdvat6hG5ahoW/W2HlF7V+tXrtUcHidRpgGPqzt5N2DRTvQkXUwBCdFHDTrpUQwhyzAdXyTFyOVVdpXMLETReq5yDhAEYcpwJ2bPvfpVUQChitJ4bI49GukII2X4+vDsUiOrjcUIURgG1hHv1HaQASqRMha0zr51q6HT+beAPb3iqW1JatecZmTB03PsH6fc7MTdLl2m04DHGzkl+xGZlgBglyDk74MvZq0ueO7e6WK2tvB6yGhOEnEcxIZ/FPGakwNqcDW9uqtHX+V9qBVia1LEbm7+67krpEV+z3AijwS/By+FEcvuD4arvHLIMbNDyNWm+cylPsNwh/OjXdjoG+D0wS8eNHymdu5Q+hRG5xlaR3jvMGu/sNS8TBtfITtwj81OqrQMOT1A+qC3GRdg78Ebl2FEBR5Wtb+PtgQOhy9UKHYp9H1metDY/tsHIvM7LQ1ih0ho2PsVRpKoZraJzw8lL2FNM7Lhm2ZXqXG0eOqDrgSGUM22zdlOU0R47e8au4XcJ3FAXklrdrZ6IB1E5BSGg8Q+4wL5ubUwY2T27I7aT6Pn8Loy8S7y/phfXUJKslFpTCSLrXkGDxTEffDPdoKermtfnJXMn78djAzhJh3+0vl8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(17002099007)(56012099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGFHR0tYUDBCK3U5TWZzV1hqZ2txRVl3eVlTcFZMc0d3SW5yUk11dzRUUGlW?=
 =?utf-8?B?Y2JpNDJvckp6R0JJaWVPWXNlbW5yWHlGUjFhNGZiRFl1ZzBlcXhJNmhCNlJr?=
 =?utf-8?B?dVorVlpFSHRMV3FJbnhYN20xaFU1L0dnMDloMkN4bXFGQW9WMkhWYlc1Mmw4?=
 =?utf-8?B?OFFua2NCYXQ1R3preVIvRGVsbjBVRVo3Tzh5b3ZienFPbE5KRElCRUNCWTA2?=
 =?utf-8?B?a0F1WGhjRWhrTXNlNmFMUUkxOHMyWDFSWksyTWJ1eHdrOW1kN200bnNxWjFj?=
 =?utf-8?B?UDhYa2UxRG9YbXllZU9EalN0S0hPU2x6c1lDcUdTNDBwZVdmazNEVmI4bndT?=
 =?utf-8?B?S2pQN1JIVitvZllpbkJuUjZtaWpIUENtMXF6NHdkakpjK1drZUZQS29lZjFh?=
 =?utf-8?B?U2M4S1dLa2QyZmV2ZzArZ29qMDRQK29YazR0c05ZcEE2a3UxMzJwVzVqTWR3?=
 =?utf-8?B?dCtZLzh6dXNIbDJkVU9lTkpmSi9WekxVdkRaTFRyVEJpRG5MNlJMaVdSR3ZK?=
 =?utf-8?B?cDJmUEZXZWNVK2ErZ3dIZ29jcXhEbWlUaWVUSTNEWmlUZHZHZk9NTkxBRitn?=
 =?utf-8?B?SWFDTU5uekJhcjUvTWJUNHVnbUZKV21jTHFQNzhyZW9Pam0wSml0VzFxT3Na?=
 =?utf-8?B?dXBRLy9naDVmSXVRN1JNWEhWd1JlbGlxWXpCVEw0aXp1ZjFSMk1CZ2JzSFha?=
 =?utf-8?B?TGNMYkNEajdkRWs4eXp1SyswZ0hibEtBUVlXclQ5UHlLTStnS3dScDRLR25G?=
 =?utf-8?B?TmRod1kxSG1nUjg3Qm9HeXlYNWRsNUJRVmsxTjdqUjRRTkMxT2VkYU1tamwy?=
 =?utf-8?B?bisvZWRNa2tqVEcvVEJFY3RuYXV5NGM5MTB1RzlZTlpTbmQ0bXRhczZzUnhG?=
 =?utf-8?B?Y1k5TTFBR1BTYVJVSXNmaDJPSk5yeEo2akRFZFlLNW1vaVJVWElhQ3UxWitP?=
 =?utf-8?B?WUR6SFkyN1c3bENOTDArcElVYk1BaUJpajJOR0c0MEhGTzJ2UGkzRTZNa0ND?=
 =?utf-8?B?S2QzbUloMldKaDBBY1luVXhiZXBSdGtjZ2RMbUtXUUR0eGpQNWE2U09PT3B4?=
 =?utf-8?B?a1FNZnRhOThFQ05qVGxGbklMaUJYT29TK0M5SlVnZk8xSllFZThRRk11a0Fx?=
 =?utf-8?B?bS9oVGpOSVBtSktkNGdkQ1hHQVJMcTVNbTRGbkhOOHBhNEpsU0RadjRLQXMz?=
 =?utf-8?B?enE4MG5XWlR5KzJWZXM0T0JvVEsxQ1FkdXN6ZVJCc3hZSWJrUVl3VHpWVDZm?=
 =?utf-8?B?K0srK1F4SVk0dkdOa2dDVTVMK25UTGpNUzBrTTVlSGhLQ2RTbWh6WlBjZCtU?=
 =?utf-8?B?b1Z5TWNodWtRaTk2NG5ncUxZUDZkMXpWWEgycjNGU2RXRDFoaVArTTBZdTFj?=
 =?utf-8?B?eDc1SEQzck9vdW94WXpMTkM4VEFWMStjUU1aOHU3Qk1MZnNyRElra1JrYTlq?=
 =?utf-8?B?ZDA1ZnMvVkkwUTVMaThUbFNILzFhTjFteVZzejZ5WnFtYytHejJ6VVlrdWRU?=
 =?utf-8?B?QWZNN2FXUFdyQzhabVNyVXllQWZKaXE2TEdpSU1PWG0xR2tuUHd1Sld1L1ly?=
 =?utf-8?B?SW9JY1pJeEdQYllKRzJWbDhJUWdCcmRUOWREZENRVGpmTXErcWRwVXhDUlBq?=
 =?utf-8?B?SW55MUkxUTJQQkp3c3NUcXpFVTFIOWRmNmVLZmxTbzM1QTRFeVlDeXUrZDU3?=
 =?utf-8?B?NW01VEprWmY2RWZqVVRYVnU1NjZ5QWNHb29YcVJFbEFkak5KdzlPeU03cmtZ?=
 =?utf-8?B?VnpIbTExZ0o5bElUbkRiZlViQm5SZEEyYVlxaWVDOVdjeVJTVlNKRktITG1O?=
 =?utf-8?B?V3FFLzVqZTU3UG1xSTQxZExmbEZnbEtnakJadEN1TVVBUWwwUXgxMTJEYTdy?=
 =?utf-8?B?SVJ6R1hWcXhReVVuTkp4MWs5UUVHQU9WL24xWmh0cFYzcnFweWdib0ZvNnZG?=
 =?utf-8?B?QUJ5WlNEWVp0aXlaK3VhMks3NTJLOUlZeGJzTFBHK0t4ZkhRRHl5RTNjV3l5?=
 =?utf-8?B?WXhTWEtYaU9YN3pGYllzeHovTGVjSktJRkZ0dVFYQ1hvV1U1RDhROE1xdGwr?=
 =?utf-8?B?R3ZCOEt0aGN2ZmorRjk1dGVRcGxMcU1OcG5tMTBmTnRHWERMeGNKc3pCUzVO?=
 =?utf-8?B?RFNyTEhQM0Z4ZCtQRVB6Y0c3b053bU9oWk5vYkpCSkRURW92QjFXUGVCUHpu?=
 =?utf-8?B?TlQ2em03ZVF5Q0ZDbFU1RmVRUDRVMHRVc1NSMmMrWjJFSzhFRHhuVE9leStr?=
 =?utf-8?B?S3ZUYnJkN2w0Y1Qyd1g1Y3Z0SXZQWHBNSDFlWU5TRnJzajBGZmtRRFduY3VT?=
 =?utf-8?B?c3ZNUXNoYkI5eFhLYjIxdWZvaSttRWdpWmxhWXE1K0dlR0xqenFSZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bJX2B+nwz/bXl7P1o1QjR6T/xJQat5vo1/K6wjKac9cJbLlqZ57eq6Wz7x36uYMBX/0JG0FTXD0Q/cipLv4LEdg95m4greDbYR+FEbDxB35ycYFA6JIA+1FjUCKtbXs+I/sAdMA/FSB++pdRo3AcogFznOJelPfgyl92cpSKEYr86Kl2XWt5kkuB3pfyPnuAddpLgR2IaczD1EemkAZo2mGA3aR4Koo4RY7BBAe83ADBzyCpmSvuYhDwcUYYYhfccvBd0Co5Pgd+51fHU+T1m0Hn3w2YOsnDQisuiVELwnbiuv2eklsmnzEVpjXiGtfcivZlme21hdC1eL57006ULw==
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be5b5f32-f0fa-4331-552a-08de8431eb88
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 14:31:47.2637
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1OPsweqCDFDIdtyeK78RTPgz50tegbRZoH4lBZ/CRF59r8AR7W5j3Qu8QPsV8zo5N4N6b6Q2aqYAF+lZI9Om/yk3VAwJTcCF7Hiwkr5Ef/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR07MB9675
X-Proofpoint-ORIG-GUID: P9P-NtvkfbTmX37D6ZX5nHxEDs9v0jZj
X-Authority-Analysis: v=2.4 cv=MZRhep/f c=1 sm=1 tr=0 ts=69b965db cx=c_pps
 a=MKhdtnkEmnO/r5iZxkZDBQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=nxKGlp_yvOrowMGCFGNG:22 a=rlAm-rynIqtlprnVPWRb:22 a=uherdBYGAAAA:8
 a=bGNZPXyTAAAA:8 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8 a=skNKRFEwD4AhowzVcfQA:9
 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyOSBTYWx0ZWRfX4VOCD3+kFKFe
 vN9MKTtzw8kJsrgbKJD+yIM3KFBQUL8kLt/kC65YOetcxoTWre1JUjqkekhq2mz3QR+CcEa+NWx
 Uvg94OxE5FogB0GdT5tYqX1LJWOv/QOIV8y9Q+Gt8vTE5hAoCVG2euV5DEPGYv9n7auatMX09hK
 OtQYaHu3aIzY4ozmITztJUZbRyaNB+LAphSqGrdx0E3z+Lm8qhvsicYBwiG3W5KmHc35fTdYtso
 z+W2uLgiI0CgnRiOnE1QxYJ9TZnr+wVEwUfG6kR7wRxQvgJBRxuS3l0pt3cPTsM5YTmXP04pErV
 FVhsrmQRrfdSJezlkVzogVTDXIdBJd9tQZIZchu2VMGzjE9LEsLJIcIWHl1++v/FzvPeVL1gEby
 PIiYYZ9NfABOWgnvBrdY7PN9Tf6MZXYyhHHeVqYgC0iWge2UhTepsgISZsE117sD432OLgA12g7
 NOcWTRY2I2r/D1rBYjA==
X-Proofpoint-GUID: P9P-NtvkfbTmX37D6ZX5nHxEDs9v0jZj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_073158_113496_C10709D1 
X-CRM114-Status: GOOD (  15.39  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: file system crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SSBtZWFudCBBUk0gQ29ydGV4LUE5DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMTcg
TWFyY2ggMjAyNiAxMToxNg0KPiBUbzogUmVuYXVkIEJhcmJpZXIgPFJlbmF1ZC5CYXJiaWVyQGFt
ZXRlay5jb20+OyBCYXJlYm94IExpc3QNCj4gPGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZz4N
Cj4gU3ViamVjdDogUmU6IGZpbGUgc3lzdGVtIGNyYXNoDQo+IA0KPiAqKipOT1RJQ0UqKiogVGhp
cyBjYW1lIGZyb20gYW4gZXh0ZXJuYWwgc291cmNlLiBVc2UgY2F1dGlvbiB3aGVuDQo+IHJlcGx5
aW5nLCBjbGlja2luZyBsaW5rcywgb3Igb3BlbmluZyBhdHRhY2htZW50cy4NCj4gDQo+IEhlbGxv
IFJlbmF1ZCwNCj4gDQo+IE9uIDMvMTcvMjYgMTE6NTggQU0sIFJlbmF1ZCBCYXJiaWVyIHdyb3Rl
Og0KPiA+IEkgaGF2ZSBhIEJTUCAobm90IHVwc3RyZWFtZWQpIHVzaW5nIGEgQVJNdjkgdGhhdCBJ
IHJlYmFzZWQgZnJvbXYyMDI1LjA2DQo+IHRvIDIwMjYuMDEuIFRoaXMgYm9hcmQgaGFzIGEgU1BJ
IE5PUiB3aXRoIGEgVUJJIHZvbHVtZS4NCj4gPiBUaGUgc3lzdGVtIHN0YXJ0cyBwZXJmZWN0bHku
DQo+IA0KPiBBUk12OSBvciBBUk05Pw0KPiANCj4gQ2FuIHlvdSByZXJ1biB3aXRoIENPTkZJR19L
QVNBTj15IGFuZCByZXBvcnQgdGhlIG91dHB1dD8NCj4gDQo+IFRoYW5rcywNCj4gQWhtYWQNCj4g
DQo+ID4NCj4gPiBXaGVuIGRvaW5nIGFuIHVtb3VudCBvciBscyAtbCBvciByZXNldCBiYXJlYm94
IGNyYXNoZXMuIERlYnVnZ2luZyB0aGUNCj4gY29kZSwgIHRoZSBjZGV2bmFtZSBwb2ludGVyIGlu
IGRlc3Ryb3lfaW5vZGUgaXMgc29tZXRpbWVzIChzZXQgdG8gMHhmZmZmZmZmZikNCj4gb3IgdGhl
IHN0cmluZyBjb3JydXB0ZWQuIEFsc28gYmVsb3cgdGhlIGZpbGVuYW1lIGlzIGNvcnJ1cHRlZC4N
Cj4gPiBPV0JPT1Q+IC8gbHMgLWwgL21udC9wcmltYXJ5DQo+ID4gRVJST1I6IFJFTkFVRDogY2Rl
dl9ieV9uYW1lOiBuYW1lID0gY3MwIGZpbGVuYW1lID0gLtO/aw0KPiA+IEVSUk9SOiBSRU5BVUQ6
IGNkZXZfYnlfbmFtZTogbmFtZSA9IG0yNXAwIGZpbGVuYW1lID0gLtO/aw0KPiA+IEVSUk9SOiBS
RU5BVUQ6IGNkZXZfYnlfbmFtZTogbmFtZSA9IG0yNXAwLmJhcmVib3ggZmlsZW5hbWUgPSAu079r
DQo+ID4gRVJST1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gbTI1cDAuc2Vjb25kYXJ5
LWJhcmVib3gNCj4gZmlsZW5hbWUgPQ0KPiA+IC7Tv2sNCj4gPiBFUlJPUjogUkVOQVVEOiBjZGV2
X2J5X25hbWU6IG5hbWUgPSBtMjVwMC5iYXJlYm94LWVudmlyb25tZW50DQo+IGZpbGVuYW1lDQo+
ID4gPSAu079rIOKApiBPbmUgY2FuIHNlZSB0aGUgZmlsZW5hbWUgYWJvdmUgaXMgY29ycnVwdGVk
DQo+ID4NCj4gPiBEdXJpbmcgcmVzZXQ6DQo+ID4gRVJST1I6IFJFTkFVRDogZGV2ZnNfb3Blbjog
Y2Rldm5hbWUgPSBtMjVwMC5ib290LXZhcnMNCj4gPiBFUlJPUjogUkVOQVVEOiBjZGV2X2J5X25h
bWU6IG5hbWUgPSBjczAgZmlsZW5hbWUgPSBtMjVwMC5ib290LXZhcnMNCj4gPiBFUlJPUjogUkVO
QVVEOiBjZGV2X2J5X25hbWU6IG5hbWUgPSBtMjVwMCBmaWxlbmFtZSA9IG0yNXAwLmJvb3QtDQo+
IHZhcnMNCj4gPiBFUlJPUjogUkVOQVVEOiBjZGV2X2J5X25hbWU6IG5hbWUgPSBtMjVwMC5iYXJl
Ym94IGZpbGVuYW1lID0NCj4gPiBtMjVwMC5ib290LXZhcnMNCj4gPiBFUlJPUjogUkVOQVVEOiBj
ZGV2X2J5X25hbWU6IG5hbWUgPSBtMjVwMC5zZWNvbmRhcnktYmFyZWJveA0KPiBmaWxlbmFtZSA9
DQo+ID4gbTI1cDAuYm9vdC12YXJzDQo+ID4gRVJST1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBu
YW1lID0gbTI1cDAuYmFyZWJveC1lbnZpcm9ubWVudA0KPiBmaWxlbmFtZQ0KPiA+ID0gbTI1cDAu
Ym9vdC12YXJzDQo+ID4gRVJST1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gbTI1cDAu
ZW52LXNlY29uZGFyeSBmaWxlbmFtZQ0KPiA9DQo+ID4gbTI1cDAuYm9vdC12YXJzDQo+ID4gRVJS
T1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gbTI1cDAuYm9vdC12YXJzIGZpbGVuYW1l
ID0NCj4gPiBtMjVwMC5ib290LXZhcnMNCj4gPiBFUlJPUjogUkVOQVVEOiBjZGV2X2J5X25hbWU6
IGZvdW5kIGNkZXYgbTI1cDAuYm9vdC12YXJzDQo+ID4gRVJST1I6IGZzX3JlbW92ZTogRU5URVIN
Cj4gPiBFUlJPUjogdWJpZnNfcmVtb3ZlOiBFTlRFUg0KPiA+IEVSUk9SOiB1Ymlmc19yZW1vdmU6
IEVORA0KPiA+IEVSUk9SOiBkZXN0cm95X2lub2RlOiBpbm9kZSA9IGJmZjM2MzgwDQo+ID4gRVJS
T1I6IGRlc3Ryb3lfaW5vZGU6IGNkZXZuYW1lQCA9IGJmZjM2NDdjDQo+ID4gRVJST1I6IFJFTkFV
RDogZGVzdHJveV9pbm9kZSBjZGV2bmFtZTogdGNgLCBsZW4gPSA1ID8/Pw0KPiA+ICFibG9ja19p
c19sYXN0KGJsb2NrKWNvbW1vbi90bHNmLmMgMjUzIFs8ZGZkODM4N2M+XQ0KPiA+ICh1bndpbmRf
YmFja3RyYWNlKzB4MC8weGU0KSBmcm9tIFs8ZGZkMGEwZGM+XSAoYmxvY2tfbmV4dCsweDM4LzB4
NDgpDQo+ID4gWzxkZmQwYTBkYz5dIChibG9ja19uZXh0KzB4MzgvMHg0OCkgZnJvbSBbPGRmZDBh
MGY4Pl0NCj4gPiAoYmxvY2tfbGlua19uZXh0KzB4Yy8weDE0KSBbPGRmZDBhMGY4Pl0gKGJsb2Nr
X2xpbmtfbmV4dCsweGMvMHgxNCkNCj4gPiBmcm9tIFs8ZGZkMGE3NmM+XSAodGxzZl9mcmVlKzB4
NDgvMHgxMDgpIFs8ZGZkMGE3NmM+XQ0KPiA+ICh0bHNmX2ZyZWUrMHg0OC8weDEwOCkgZnJvbSBb
PGRmZDY1YTc0Pl0gKGRlc3Ryb3lfaW5vZGUrMHg4NC8weDE4OCkNCj4gPiBbPGRmZDY1YTc0Pl0g
KGRlc3Ryb3lfaW5vZGUrMHg4NC8weDE4OCkgZnJvbSBbPGRmZDY3MWNjPl0NCj4gPiAoZGVudHJ5
X2tpbGwrMHgxOC8weDU0KSBbPGRmZDY3MWNjPl0gKGRlbnRyeV9raWxsKzB4MTgvMHg1NCkgZnJv
bQ0KPiA+IFs8ZGZkNjdlMjQ+XSAoZnNfcmVtb3ZlKzB4MTQ0LzB4MWIwKSBbPGRmZDY3ZTI0Pl0N
Cj4gPiAoZnNfcmVtb3ZlKzB4MTQ0LzB4MWIwKSBmcm9tIFs8ZGZkMTIyMzA+XQ0KPiAoZGV2aWNl
c19zaHV0ZG93bisweDU0LzB4NjgpDQo+ID4gWzxkZmQxMjIzMD5dIChkZXZpY2VzX3NodXRkb3du
KzB4NTQvMHg2OCkgZnJvbSBbPGRmZDAyMjFjPl0NCj4gPiAoc2h1dGRvd25fYmFyZWJveCsweDQ0
LzB4NTgpIFs8ZGZkMDIyMWM+XQ0KPiAoc2h1dGRvd25fYmFyZWJveCsweDQ0LzB4NTgpDQo+ID4g
ZnJvbSBbPGRmZDQ4MjQ0Pl0gKGNtZF9yZXNldCsweDExNC8weDE1NCkgWzxkZmQ0ODI0ND5dDQo+
ID4gKGNtZF9yZXNldCsweDExNC8weDE1NCkgZnJvbSBbPGRmZDA2MTYwPl0NCj4gKGV4ZWN1dGVf
Y29tbWFuZCsweDRjLzB4OTApDQo+ID4gWzxkZmQwNjE2MD5dIChleGVjdXRlX2NvbW1hbmQrMHg0
Yy8weDkwKSBmcm9tIFs8ZGZkMGRjOTg+XQ0KPiA+IChydW5fbGlzdF9yZWFsLmlzcmEuMCsweDgx
MC8weDhjMCkNCj4gPiBbPGRmZDBkYzk4Pl0gKHJ1bl9saXN0X3JlYWwuaXNyYS4wKzB4ODEwLzB4
OGMwKSBmcm9tIFs8ZGZkMGQxM2M+XQ0KPiA+IChwYXJzZV9zdHJlYW1fb3V0ZXIrMHgxMzAvMHgx
ZjQpIFs8ZGZkMGQxM2M+XQ0KPiA+IChwYXJzZV9zdHJlYW1fb3V0ZXIrMHgxMzAvMHgxZjQpIGZy
b20gWzxkZmQwZGYwND5dDQo+ID4gKHJ1bl9zaGVsbCsweDc0LzB4YjQpIFs8ZGZkMGRmMDQ+XSAo
cnVuX3NoZWxsKzB4NzQvMHhiNCkgZnJvbQ0KPiA+IFs8ZGZkMDFlODA+XSAoc3RhcnRfYmFyZWJv
eCsweDU4LzB4OWMpIFs8ZGZkMDFlODA+XQ0KPiA+IChzdGFydF9iYXJlYm94KzB4NTgvMHg5Yykg
ZnJvbSBbPGRmZDdmMWI4Pl0NCj4gPiAoYmFyZWJveF9ub25fcGJsX3N0YXJ0KzB4YzQvMHhkYykg
WzxkZmQ3ZjFiOD5dDQo+ID4gKGJhcmVib3hfbm9uX3BibF9zdGFydCsweGM0LzB4ZGMpIGZyb20g
WzxkZmQwMDAwND5dDQo+ID4gKF9fYmFyZV9pbml0X3N0YXJ0KzB4MC8weDEwKQ0KPiA+DQo+ID4g
QWdhaW4sIGl0IHNlZW1zIHRoZXJlIGlzIG1lbW9yeSBjb3JydXB0aW9uIG9mIGNkZXZuYW1lDQo+
ID4NCj4gPiBIYXMgYW55Ym9keSBzZWVuIHRoaXM/DQo+ID4NCj4gPiBOb3RlIHRoaXMgaXMgbm90
IGhhcHBlbmluZyB3aXRoIGJhcmVib3ggdjIwMjUuMTIuMCBhbmQgSSBkaWQgbm90aWNlDQo+ID4g
dGhlcmUgd2FzIGxvdHMgb2YgcmV3b3JrIG9uIHRoZSBmcyBkaXJlY3RvcnkgZnJvbSB2MjAyNi4w
MQ0KPiA+DQo+ID4NCj4gPg0KPiANCj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0
ci4gMjEgICAgICAgICAgICAgIHwNCj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvX187ISFIS09TVTBnIUh2DQo+IFZMdkRNd3I0YUc2YWRYS1A0
MjNNSlJpQ09halRfa25QM2ZIRmszdk40TFJON0VGQ0lwVXZTazQ0dW41S3RUDQo+IEJHZi00Tzlq
bGJaR0kwZWplSUx2cGdoRFpWUSQgICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAg
ICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2ICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8DQoNCg==


