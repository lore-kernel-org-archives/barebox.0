Delivery-date: Tue, 18 Nov 2025 18:43:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLPjV-002ORC-00
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 18:43:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLPjU-0001FP-66
	for lore@pengutronix.de; Tue, 18 Nov 2025 18:43:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ji0Pjsr2bruBzSVS2+ima5eZhSqhyXpCb/dYG+0QUSY=; b=aHkZsGykT62j+mdv5RHRJSHwSQ
	G9rpLfBF/lIbFVMJeoRFaOCdyF3yrZexV3YGJnPNBb5ZKPE0Fgb68QUTygHAF6PdFvFgWCqWadIvc
	BgQDsHmNdecK0Xk/F25TGcoCnS/Tbck+6+F3jBMgWBKDXk23EC9JyMkapNbexrmeV9usx+zusrdgo
	S1TpXcMHFFbdYcNFG7munLF9d0lXJilTmKSwm7La/JMWp4sKP+dZ1ypNk1Mxzi3tsWmReuLEb1Ea2
	JN/+HLHQZg8yGvaEE3cJxygA+f4V+QCetM/bTCHiAuVhbcM6yk0f+TB0SshjVMFe2gc4Oz898WaSa
	YSy12+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPin-00000000snU-0vIk;
	Tue, 18 Nov 2025 17:42:29 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPij-00000000smV-2JiD
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 17:42:28 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIGJWKi262816;
	Tue, 18 Nov 2025 12:42:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=Ji0
	Pjsr2bruBzSVS2+ima5eZhSqhyXpCb/dYG+0QUSY=; b=xW7kizuPjyDcQ8GZYsL
	UrGFvACADYClVI0TUpAd1dKYVY8YCRCgzglO4nAOZvq6rFveAog0V2Dj1EDM5PXf
	mCN58tKQu3jp959RUo5ifGWskuQONy5RvFiO4ioK/fbHBiwDuUZ0ClePXFcxDdTe
	ui/We9RyuD+7g1zilLyzfjSd3/P0OIrT8VkeejhctFwzl0ZAAfFyhHYv/qSu9/B0
	1mWe9+UWyQCzBJQYN+P/ElV3RgnBIGsbpFsNOcNlu56Db4jE1lORKyVcVagiqX7q
	6bB6v4uGvdt7Gh613dS2x4arwZzCMWDP9G1JmJ/NtOrmRSyNG/sn5UYoHDj5hgBp
	mJQ==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010057.outbound.protection.outlook.com [52.101.56.57])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 4agv7m8aj0-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 18 Nov 2025 12:42:23 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LGtKfDi4+zg/c4rcOUyplcbl51ZHvN8oLblSSa4GwTk1vbY4f0HOyB9hJB3ZqzYMG3JFr56hmklhffwhGvk69xczKtIoGxMbeYDqi3drgw1QOBQkilQ4uzQ51wthN5vtCvmq389Dq+vnDDrgbTFzgPuh2ztPWfuz8iKsBEXglCdZJ5wXKoygCRZbdq5loKVMrWyibRL6TXv1ZeeFdSRLgTfPiXnOH02ugiAPEigiQTyu0WjnCWY+kAA6VlmXIV7FqdnKlS6wH9NENQeakSbYH3boKVDTio3Z3p3EbEfsIobe+WgbfEqCmp04+wfE7fjBGsp5jG/JTRVvXByGAD8wEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ji0Pjsr2bruBzSVS2+ima5eZhSqhyXpCb/dYG+0QUSY=;
 b=QZhv1Zp+NwIFypwPFXVl57BPQU4EaEMujdpPVqpNP8k1WH4XP4ziiC6r/4Boqf2MV/85IgaO5ijhRt+TowRBzn9ae2w1HFhfH+w3Faoxq7OxbavUs+a1tHP3Db/r9CMZ9PnvnrZNN+/1Ra+qHqKwLnkefzWqqQhJDWsuuNAVgQKvye9zyCABOTQF4psnxe+IE1mNqrq277/xX186BeYnLXuEQ56bJd3OBiJdmYQ4HNM/6uccSx/ZD3keHchp/bBTzhQsyGxO3vdzkpm7WpZVpd08viHDOplHSt7dcFCMEeoOYH/az6b76awHT0XKDsow2n3zVz4iSbN8TwOJMPvFRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ji0Pjsr2bruBzSVS2+ima5eZhSqhyXpCb/dYG+0QUSY=;
 b=qKb8pIU4UrWlXpsRm8IkJN0LFx35DX7+iY7hd3ZaQUdmQDpzl6YvSxuKAHzoqt0QP7q2drgCRal8JJ55AFA75zuIlF37hqpF35X6wkIxDup5OJj/T55x/AsUIQTYCOPOVYB2NkRXqLX2EjmSTY0h6KObDTkCUNeJsHo9IRzFhmA=
Received: from BN8PR07MB6993.namprd07.prod.outlook.com (2603:10b6:408:de::9)
 by LV3PR07MB10272.namprd07.prod.outlook.com (2603:10b6:408:237::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 18 Nov
 2025 17:42:21 +0000
Received: from BN8PR07MB6993.namprd07.prod.outlook.com
 ([fe80::c729:6c70:3332:dc91]) by BN8PR07MB6993.namprd07.prod.outlook.com
 ([fe80::c729:6c70:3332:dc91%4]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 17:42:20 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAAFsyICGmUs+AA==
Date: Tue, 18 Nov 2025 17:42:20 +0000
Message-ID: <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
In-Reply-To: <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR07MB6993:EE_|LV3PR07MB10272:EE_
x-ms-office365-filtering-correlation-id: af1f9750-8c13-433e-20f2-08de26c9d34c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZzFyYlpINzVBeHdkemhoREVxcEZUd29FVFd6UDRKcHZxMm4wVmVMUnhwUXlN?=
 =?utf-8?B?NEU2Sk5FOUFJZUppV1dXekVLZTllbHZxMDdPU1FIOW0yaTVzK0Z5Y1B1TkVx?=
 =?utf-8?B?Ry93Q3FsRk9za0FWNjkxVmpvUi9jM1lPNEl2UHhZWnE4ajBLR1NwamNvMTVn?=
 =?utf-8?B?MEtYVTVLa2c5NVhFYlBlVko1Y0tMVWtYS2hhejEvZE4rMjdncDRXOHRxL001?=
 =?utf-8?B?N0N6ZDFLSXN0Y1FQS3E1L3FKQXZtNHRoWnpvYlkyRDA4dW85TldlK2tSN0VS?=
 =?utf-8?B?M1dVSWdvN3dZODVCVTJ0Q1NkdVlHcko5QlQzZE5iNnBKQmluS2dXVDBXd29z?=
 =?utf-8?B?VjQ1ejFoNHVUMmVIdWVUWm51NUJsNG5Id2sxNXFnSkxmRHhreGV4QVdvSy9t?=
 =?utf-8?B?Qm5scTZzVFYwRW9UZ2pXbjM3a2ZlY09kMS82SGhpdHhtRGlsdHlpZUx1c2s5?=
 =?utf-8?B?dGw3QnBmVnlUSk81UytmcXlNdzNHMUUwRWdYQVRBd25ObnYzMTRBZk9rdUxo?=
 =?utf-8?B?Q3ZET0dlR3dodEVSRTQvazZqY01Ub2dZcDNvYkw3bDlzQjRhSEtzdjdHRVBF?=
 =?utf-8?B?ekdHUnZKSW1YeGZpcXFVU04wYVllWi9lZnI2OVV0NVd0TUJwQ3c0aTJ5cGda?=
 =?utf-8?B?bFNhSVBuTy83ZThrbW1vUUV1WHNRdGVyWVdENTcxNTVaUHJSRFNWSGtnYTNX?=
 =?utf-8?B?VU5zQVRISEhZN3I5MFY3dUpMZzRMUkRSZG5CSTlCVFl2WEJwWllNc1RrcmUw?=
 =?utf-8?B?VU11aStPTUF2MWIvZ3JVN29vVnJEci9OUE5KYzJWckVDaklCS1RMUXIzZzR3?=
 =?utf-8?B?c0NZTEFFZkpiSlN0ejkvM25HUnBYbXEzSUFoNkx4OG5uSHhNWHQvQ2tUeDNP?=
 =?utf-8?B?SHFrV2lTTlhuWVFUTG5JWkJGaURiUmdiQ3FIbDZ2bnR1aEpObDVEL0h6cWxE?=
 =?utf-8?B?eFBTbk0yQkdtbEM5SHRDR3JLWmdBUHhwSmdRZStPbVVDemFoUlZwTEtBRjR6?=
 =?utf-8?B?SEV0V0hEWDBqNWRXV09RSlozTnBTNHZsemFDaXFDUUJML1loNnFNTWtrY25Y?=
 =?utf-8?B?S1dCMWxheFN3NG40M0g5NzBsdWZDWjNKbmZicnduS3VPenRVWmhvTlB1dFpD?=
 =?utf-8?B?SStKS3ZIdi9peGh5a1ZSWFh3bk1pMVVZT3ZlcDhWTXEyYUtrbFBCNkF4eTVa?=
 =?utf-8?B?MHlyU0hLREF4WHJ0NnIyRll1SnVsMyttVmJVL3BET29rRXhiUUZFYkh3QXNG?=
 =?utf-8?B?dExHTVV6UEM2QkVjalpXWTZndEtDekVYaEZ5VW1rY0NCT3JqcmNoNmo0UVBt?=
 =?utf-8?B?b0lMUVFkcWJCbGdCYkxBQ0h3ZkFEZWF0MnpqVWlaSzE5NW5QSnJPaDQ4SU5x?=
 =?utf-8?B?Z2srTUNpUFF6cDQ3bit1eXlZYlBxd3N4Q2NQYUlzS2llOXplcnRpckY1dGV1?=
 =?utf-8?B?dk0zWkJVOEgrNHFTRS9DM1k0eUJsViszSzZ4YU1PT0JmM1dYNUJ0ajB6c2pn?=
 =?utf-8?B?N01xR1NzblltdFV6U25NWWtNUm9GdWpCQUx1azBBREhPU2lZUDQwQlMrZTRE?=
 =?utf-8?B?OVlkWERRNXA1TzFpbU1lWVRvaFBIMkFiY3ROTVdLbzVpVTFjQkVqT3ZQU3VG?=
 =?utf-8?B?ZytyeGdXOXFoV1dQSkVsWkdvdXJldHcrM0swek9HYUhSOUhsd3RjMVR5d240?=
 =?utf-8?B?OURPNGZkc2huR2JObFp3MzlGeDBEU2NPU1BBTG5DYXE0WXYxVUE0Z1lXdU1o?=
 =?utf-8?B?ZWtpa0QzTzR3NDFFaEVDN3d3NjVQTUpWWU95Q2RXbVA5d1hMcnhtSGNWNW5C?=
 =?utf-8?B?YlcwNGNzYWhIUkFwRWFqTTNDbDQ3SUlQa0RpMUJGMEFxSy9RR0Izb2U0NkNa?=
 =?utf-8?B?YUV5Y05KZzkzS1NDMWxUc01zV2swN2xpczd5K0NuY1A3VHJhNjZTVXliWlZC?=
 =?utf-8?Q?QMOG/FeRFRE1wUtAhJgjKom9leHfCwGq?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR07MB6993.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjE1U3RJSUFwK3BqeitjdXExbkNGTExMV2VEOUVvVDVIdnJJMXZrL2RXSDJ0?=
 =?utf-8?B?Z2lEY1FDcm56c1huUkU2Y2VTQkcxTGVPMHNxMVgwQ05WdWhJL2xTbGMyTU9U?=
 =?utf-8?B?U0VjSDhIV3grTFBkSkF2NkovMzhQLzQ3RzRuYlRHc1ZCQnZQOHo1cVp6QzMr?=
 =?utf-8?B?MExscGlWeGJ3aXQxTHl5djg1aGx3UFdKZEY1TGsvOEdQNTR4bjRNMHB6czNZ?=
 =?utf-8?B?WWR2RHM4WHZRNlZQR3NKd0Z5Z0RoQ21OQUI1d21mYVRuR2dhdFVOaCtwVG8z?=
 =?utf-8?B?MlFpL0plQ2lSak1wV0IwNFVyNXdVZE5HczNpa1VHcEN5TmJqT2hFSEl0elUw?=
 =?utf-8?B?dTdRSjJlaDBtWDJJYnJwZjhRNFRyWXlGWEZKZnJwSjVLSFRmVnl3SWFjN2dj?=
 =?utf-8?B?UGU0MlY1MEJGTHdVWWZycmIyMkJLMGZHU1VmdDFvbjU3QjJxQXBOOEtQR0pj?=
 =?utf-8?B?bnNoaTBuakNVRGc4Y1NiZ2piU3AxbGU5OWd6UkF4SDNvL1E4RFF5RTZkQVhO?=
 =?utf-8?B?OFk0TlpGZkhQbmw4c0pyNFh0Mkg2WGlGUnRwZWFDTXdYQ1VBckpEVVZnYTBi?=
 =?utf-8?B?RWthWm5xMHdTMU9mUFBjWnlZNFVMR3A4cEw0WUxDQi9WME53cFB5YUVFLzUv?=
 =?utf-8?B?bE1VcHpxMnlPMkVleGl0andmbTkrajMrUDdpLzgzTkI4Ym92aWE5MldzUklX?=
 =?utf-8?B?ZjlsR0tQVmRINkd6cTdhTk9PNkkxemQrMzE3VW1SMGRVZW8zLzFDL2pFMmZs?=
 =?utf-8?B?b3dGelBySjBwUXFEUHFMZ1NZbDZWZFpnY25QU21HTFM2WFkzK1VRV0ZQMTgy?=
 =?utf-8?B?Uzloa2lvZmx0ZTN6YSs2VWYrU2Zqb01MeC9na1ZrSSt3UlNnVWVrZEJYSWwy?=
 =?utf-8?B?K2ZmNjhGcEtoUTdyWDNndEdZcSthNGZLaVpOUFdkd1pvZUNEZFZzUFQ4WXpH?=
 =?utf-8?B?ZGhMcFB4SVkvUlBPM2hta0NDNnFXcWVzR2ViSm9mSG9CMExqdEs4SEhkQzJo?=
 =?utf-8?B?WTZqakFEdFJsVnY2Y1EyRkJsU0VGTStLQWlsL3RKNDdsOXU5RWRuc3IrTVNT?=
 =?utf-8?B?WEUwU1F4QVNFdVdtaElQZ1J1T0tia0VRUytiS2dSUGxHcm02TzVDTWdiYnFu?=
 =?utf-8?B?U2krbGppemk4TTEyTTZWQ2w5WnZaS29TQUJjZmtpd0lIRG02anNKNVNiQVdS?=
 =?utf-8?B?bUtyOFcrMUowY3VielJvTzZuQzVaWkNjQW5hVzBZZVN3UWhaRENtdU91cGdk?=
 =?utf-8?B?Nm1iOUh3YkxaTWRURDM5eVBINFBYMjdEWis4NEFlS3dPSlhIVm8ya1MwU0VB?=
 =?utf-8?B?UGQ3MUJBd1YvMHFLVjh3a0tZS1ZZemczMTJmRWRSNFFjcjQvUW1KdEI4ZVQx?=
 =?utf-8?B?K25zeXhJSlFKUE5GaExkUHNkdEhySFNETEg0alBQQTF6WGpWY2YrTWxvVnkz?=
 =?utf-8?B?Y0tpblJCS3llREkxYnpoU25jRW11WERXYjFneWpzbDhaU3hibFEwb3lFd1di?=
 =?utf-8?B?cG5TWjZwUWJoMmRQc1llclFRYWpjRVl1UDFidHBZM2hLcHJzVXFmazNRdHFm?=
 =?utf-8?B?aUdxdUNyeXNtZkRheXMxL0wwU0NrRkIrNnZoWEs5VGRnK0ZGeFZNV0ZRbDdh?=
 =?utf-8?B?VXhZNkFEdFJnNmlRbERuWkEvVHNBQWVKbzNnSlA3Z2l3YU5qM0Y4dVpxSitv?=
 =?utf-8?B?YkpnOHk0ZkpDSW5UYW1OdVZlM3pRM0NqVmtQcVFROVdPMlZCT29RTHY2R2pn?=
 =?utf-8?B?dlhLczgzbytDcFFHN0hmVzNGMXhIRXpDWUNGZXVZeEtJZUU3c3Y1WWxYL0ZN?=
 =?utf-8?B?STJ4NGN3b3dIcUU1N3dlRmlKakc5RnJuOFBUUWFvYXFBRjZxUGRpNUtkTmZC?=
 =?utf-8?B?UmJCdnRwR0R1a2g4NjFqbE1PM0JJYVVYd0xUeEVIK2VIaUZTa3ZuTndDdjFR?=
 =?utf-8?B?M1ZkU210NWhReVM2K2JMN1ZiWitHQm1BdHhicEJSYXlscmJETFpUckRUeHRW?=
 =?utf-8?B?VUpFUFlsek5GOUhldTVvZUptM2VxNUJuSzZGZ0s4eGNPQVk5SnZPRnovcTJl?=
 =?utf-8?B?THRwTFpGMFpObC93Mzg0bzMxai9CUDBaRm90UHJXdHpRSGpzZ1Y4bG1mc2pO?=
 =?utf-8?Q?f6c9TMSyEMsP9XBOHqIgn8vug?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR07MB6993.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1f9750-8c13-433e-20f2-08de26c9d34c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 17:42:20.8003
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o9VygPKesioGxJIz+3OHZPMU6BXJDqwjQgjFRWp+CHc3pUIPuDxVXCEbGEXF0+Aelw+wPQ6nwLgtkp85QyRakfKpPcE1wpKoPc66nTnEFXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR07MB10272
X-Proofpoint-GUID: cPM0sh5VZ0HzGbhIbnogTOqdZgobeBAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE0MyBTYWx0ZWRfX50Frqoa8axbj
 KIrYbVW3BFDLBHJq0e0CUE+5ekq9HTKQ2MyCf463Cm1EALxxpLjLSLysqtpb00Rc4vLV7+ETkcK
 Fs11M4B05bXtyrKdqATReLmtLDuVpCWMXfQcscOVp1FjDArFR0/1htR3FBhXYlfg7uR8jnQthI9
 DYuBtZOSppq6KcAE+84BcUwIl8TwwSFG5+qOR55O6vb6r0qRYoDFKaM6KXUwxX6j+ezoC1T5/38
 /qeX9q132bcTqCjYDP+tPtHKyB4CmF6/gxiYkOrSvbxEPZjkvsAnNBunOHMfxj5/fKYXva6nsRI
 tTNOrfkahTNMHxvO1Cwynf2EGoKM0/VEg0hXZB10+G8ymGSc9jbjv1r0r7ed/EKHkZ9+gaQiw/y
 Gyd7vm/56+QPoLKIwoWZowbdLe/0Bg==
X-Authority-Analysis: v=2.4 cv=TK1Iilla c=1 sm=1 tr=0 ts=691cafff cx=c_pps
 a=fyslLl4jtBSJ9QFfScbUNQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8
 a=7QecqTkOSbf3qctJsqEA:9 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: cPM0sh5VZ0HzGbhIbnogTOqdZgobeBAE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011 priorityscore=1501 phishscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_094226_000020_DFC42E82 
X-CRM114-Status: GOOD (  27.44  )
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
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SGVsbG8gQWhtYWQsDQpUaGlzIGhhcyBiZWVuIGEgd2hpbGUgdGhhdCBJIGFza2VkIHlvdSBhYm91
dCBhIHF1ZXN0aW9uIG9uIHRoZSBQQ0lFIGZvciB0aGUgTFMxMDIxQS4NCldlIGFyZSBkZXZlbG9w
aW5nIGEgbmV3IHByb2R1Y3Qgd2l0aCBhIE5WTUUgZGV2aWNlIHVzaW5nIHRoZSBMUzEwMjFBIENQ
VSBhbmQNCkkgd291bGQgbGlrZSB0byBhZGQgTFBBRSBzdXBwb3J0IHRvIGJhcmVib3ggc28gdGhh
dCBQQ0kgY2hpbGQgZGV2aWNlcyBjYW4gYmUgcHJvYmVkLg0KDQpJIGFtIHRyeWluZyB0byBmaWd1
cmUgb3V0IGhvdyB0byBhc3NlbWJsZSBMUEFFIHN1cHBvcnQgYmFzZWQgb24gdGhlIGluZm9ybWF0
aW9uIHlvdSBnYXZlIG1lIGJlbG93IGFuZCB3aGF0IEkgc2VlIGluIFUtYm9vdC4NCg0KQSBncmVw
IG9mIExQQUUgaW4gVS1ib290IHNob3dzIHNldmVyYWwgZmlsZXMgd2l0aCBzcGVjaWZpYyBjb2Rl
IGZvciBMUEFFOg0KYXJjaC9hcm0vY3B1L2FybXY3L3N0YXJ0LlMNCmFyY2gvYXJtL2xpYi9jYWNo
ZS1jcDE1LmMNCmFyY2gvYXJtL2NwdS9hcm12Ny9sczEwMnhhL2NwdS5jDQoNCkkgZG8gIHJlY29n
bml6ZSBzaW1pbGFyIHBpZWNlcyBvZiBjb2RlIGJldHdlZW4gYmFyZWJveCBhbmQgVS1ib290DQpG
cm9tIHRoZSBtZXNzYWdlIGJlbG93LCBJIHVuZGVyc3RhbmQgSSB3b3VsZCBuZWVkIHRvIHVwZGF0
ZSBtYXBfaW9fc2VjdGlvbnMgdG8gbWFwIHRoZSBQQ0kgYWRkcmVzcyBhcyBpbiBVLWJvb3QgbW11
X3NldHVwIGZyb20gdGhlIGZpbGUgYXJjaC9hcm0vY3B1L2FybXY3L2xzMTAyeGEvY3B1LmMNCg0K
Q2hlZXJzLA0KUmVuYXVkDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+IFNlbnQ6IDA5IERl
Y2VtYmVyIDIwMjIgMTk6MTgNCj4gVG86IFJlbmF1ZCBCYXJiaWVyIDxSZW5hdWQuQmFyYmllckBh
bWV0ZWsuY29tPjsgQmFyZWJveCBMaXN0DQo+IDxiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmc+
DQo+IENjOiBMdWNhcyBTdGFjaCA8bHN0QHBlbmd1dHJvbml4LmRlPg0KPiBTdWJqZWN0OiBSZTog
UENJRSBvbiBMUzEwMjFBDQo+IA0KPiAqKipOT1RJQ0UqKiogVGhpcyBjYW1lIGZyb20gYW4gZXh0
ZXJuYWwgc291cmNlLiBVc2UgY2F1dGlvbiB3aGVuDQo+IHJlcGx5aW5nLCBjbGlja2luZyBsaW5r
cywgb3Igb3BlbmluZyBhdHRhY2htZW50cy4NCj4gDQo+IE9uIDA5LjEyLjIyIDE5OjM3LCBBaG1h
ZCBGYXRvdW0gd3JvdGU6DQo+ID4+IEZyb20gbXkgZGVidWdnaW5nIEkgY2FuIHNlZSB0aGF0IHRo
ZSBMYXllcnNjYXBlIFBDSUUgZHJpdmVyIHVzZSBWQQ0KPiA+PiBhZGRyZXNzID0gUEEgYWRkcmVz
cyA9IDB4MjQwMDAwMDANCj4gPj4NCj4gPj4gU28gIElzIHRoZSBwcm9ibGVtIEkgYW0gc2VlaW5n
IGFuIGlzc3VlIHdpdGggbWFwcGluZyB0aGUgY29ycmVjdCBwaHlzaWNhbA0KPiBhZGRyZXNzIGZv
ciBhIDMyLWJpdCBwcm9jZXNzb3I/DQo+ID4+DQo+ID4+IElmIHllcywgaG93IGNhbiBJIG1hcCB0
aGUgNjQtYml0IFBBIHRvIGEgMzItYml0IFZBPw0KPiA+DQo+ID4gTm9ybWFsbHksIHlvdSB3b3Vs
ZCBjYWxsIG1hcF9pb19zZWN0aW9ucyBhcyBwY2ktdGVncmEgZG9lcywgYnV0IGluDQo+ID4geW91
ciBjYXNlIHRoaXMgYWxvbmUgaXMgaW5zdWZmaWNpZW50IGFzIHlvdSB3aWxsIG5lZWQgdG8gaW1w
bGVtZW50DQo+ID4gQVJNMzIgTFBBRSBzdXBwb3J0IGZpcnN0LiBPbmNlIHRoYXQncyBpbiBwbGFj
ZSwgeW91IGNhbiB1c2UNCj4gPiBtYXBfaW9fc2VjdGlvbnMgYW5kIG1hcCBpdCB0byBlLmcuIDB4
MjQwMDAwMDAgYXMgVS1Cb290IGRvZXMNCj4gYXJjaC9hcm0vY3B1L2FybXY3L2xzMTAyeGEvY3B1
LmMgbW11X3NldHVwKCkuDQo+ID4NCj4gPiBVLUJvb3QgTFBBRSBzdXBwb3J0IHdhcyBhZGRlZCB0
byBzdXBwb3J0IFJwaTIsIHdoaWNoIHN0YXJ0cyBpbiBIWVANCj4gPiBtb2RlLCBidXQgd2UgaGFk
IHdvcmtlZCBhcm91bmQgdGhhdCBpbiBiYXJlYm94IHRvIG5vdCByZXF1aXJlIExQQUUuDQo+ID4g
Rm9yIHlvdXIgY2FzZSBob3dldmVyLCBJIGRvbid0IGJlbGlldmUgdGhlcmUncyBhIHdheSBhcm91
bmQgdXNpbmcgTFBBRQ0KPiBwYWdlIHRhYmxlcy4NCj4gPg0KPiA+IFRhbmdlbnRpYWxseSByZWxh
dGVkOiBJIGRvbid0IGtub3cgaG93IHRoZSBQQ0kgY29udHJvbGxlciBtYWludGFpbnMNCj4gPiBj
YWNoZSBjb2hlcmVuY3ksIGJ1dCBpZiBpdCBkb2VzIHdyaXRlIGJhY2sgdGhyb3VnaCBDUFUgY2Fj
aGVzLCB5b3UgbWF5DQo+IG9ic2VydmUgbWVtb3J5IGNvcnJ1cHRpb24uDQo+ID4NCj4gPiBJdCBt
YXkgYmUgdGhlIHNhZmVzdCBmb3IgeW91IHRvIGRpc2FibGUgY2FjaGUgc25vb3BpbmcgZm9yIFBD
SWUgdW50aWwNCj4gPiB0aGF0J3MgcmVzb2x2ZWQgKFdlJ3ZlIHRoaXMgcGxhbm5lZCwgYnV0IGl0
IHdpbGwgcHJvYmFibHkgbm90IGhhcHBlbiB0aGlzDQo+IHllYXIuDQo+ID4gSWYgeW91J3JlIGlu
dGVyZXN0ZWQgSSBjYW4gZWxhYm9yYXRlKS4NCj4gDQo+IEkgc2hvdWxkIGhhdmUgc2hvcnRlbmVk
IHRoZSBjb250ZXh0IGEgYml0LiBQb3N0aW5nIGFnYWluIGluIGNhc2UgeW91IG1pc3NlZA0KPiBp
dC4NCj4gDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gQWhtYWQNCj4gPg0KPiA+DQo+ID4NCj4gPj4N
Cj4gPj4gQ2hlZXJzLA0KPiA+PiBSZW5hdWQNCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4N
Cj4gPg0KPiANCj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0ci4g
MjEgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9f
X2h0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvX187ISFIS09TVTBnIUNmQQ0KPiB1NEw5TVF2SXVF
dmZRbVZ5bWNaWWtyZGJybjk4SjJRYllNRnNIaHFGcnhwOGZEempUNi0NCj4gaDluU2Fqc2dZY052
c0NqSlZXZDk4b1l2ZHlqN3B2Ui1aZkRZMCQgICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1h
bnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFt
dHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEy
MS0yMDY5MTctNTU1NSB8DQoNCg==


