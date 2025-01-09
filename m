Delivery-date: Thu, 09 Jan 2025 10:33:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVouR-0016vK-16
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 10:33:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVouP-0005jU-C0
	for lore@pengutronix.de; Thu, 09 Jan 2025 10:32:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ljgoVfoQmc2qBK/1PsFQtCaIsk+DoVuxY4IobGfD5Ss=; b=Y6RKEmPCibFD0F
	sta1ymnFawyJlCUxbALRFXFs1sX0Qu0c5Pq4NzKGvFQd7GNfOFMb4Pq7zD03TrhXiXyvQgmHGO2Ji
	Jb9MVgL63Gp/axNKPzNQWxIj8ciPgBo4vW41SBwG9kvyFlOQZYWe+tufar5kmPQvpRC6K+2JpSnXH
	556OfQ3smoe6MEPSZuHdOiCC/fSeB7qZjwJIxpC9KgQSOID+Pfyp0s71HSqG3Q13KjkUpxEl94dyl
	7n4eRe1ZdKlpApEHwIwy4WErYNBC9L66wHrFgWnR5cQz3X1J++36V5xDvolt10j7z1RgXRdvTKFcL
	oyGw5x/qfwYCQKuCG+DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVotp-0000000BMbG-0PWY;
	Thu, 09 Jan 2025 09:32:21 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVotl-0000000BMZk-3aA3
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 09:32:20 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098BkXU014695
	for <barebox@lists.infradead.org>; Thu, 9 Jan 2025 04:32:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=ljgoVfoQmc2qBK/1PsFQtCaIs
	k+DoVuxY4IobGfD5Ss=; b=PxjJ7FKpE5c9hdYxvE0mFn6xDmFjqg3hvPMR1PRoe
	btZzAn7Ji6gc5SfGKn/FqNHvKv25JeTdJUBF3nQQuyISaaqBmeu/GsG0nxvJHdx+
	uc584onrlnPmO4DXv4bh+RIeTtsGL7skkDWWixDMd2Khc+2yzw02ic0FR2LFuCtc
	PeAUPWyMf95K8Ft/eeTd2iPZG/SWWEXIfkO3Mu6nkoRtlmVQs6DsIbLdnmAiEEdj
	TQ9hQvCCID27NUaWS6THAhWuQb/pvqu/rq6M/eWZAbHYh5JIYGqSfNif3jyUSG1W
	Kn1+reK+WABQIfYYZe7yG0uVz8Xz96FIglO9L3pgP6j+A==
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazlp17010006.outbound.protection.outlook.com [40.93.1.6])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 442aqx87uu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 09 Jan 2025 04:32:15 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPVYcKIwXsPbF7VpiVROHRiPkTEXtH7LWG1tNdLsD1dp93BIb7hrFZLTCQXhqfvKwusexOiTO0qazs9wFnxkJC0+NJTrqQAKAqIpIvvIBn3HHvVTwFH7M9hcQg7F/Hf+oLg1aBujsUb6pUC1IfcfMxj4CN1kQ45TMjOZyrPZv7pc2KJ4XM54+8CA1YPjFstEMXu1eekluv3R1euy6SsrsRMLtB6oNTWSfCLztImEJ58qsSI7qjLwZP82XsPl/YE6JFI2GhmDsPausgJRQXAtVn4eQqJYF2NSVgIY/1gtyka7V2CM6vYzXhKfTACv19NOFO9QKyoLNkEfdiJVWWodMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ljgoVfoQmc2qBK/1PsFQtCaIsk+DoVuxY4IobGfD5Ss=;
 b=NTj8fvqGjAwYuQ8xfJK3cbMbhU1iUXyso3iJgWYJCZGZoeOFCGJCH5uo7MSsLNARPbwm6NXX+ivyBloqT4SDI3nehgC+56ETLVqTuofZY05m9Tt4srprzgeM4gtJgMSX7LFpc1E/dKvD3ZEOeEo5xhFPPMpVVoyyv1nyN0s5KIU9eg8hAnesKIrxit0WQyyCmRGCJY77mKfcNHw/jN42GJ93H/jnhPvMUQNFAdAXcMWGAutsxRCYs5Vml2Le7NYHQcsc8oyiH3A7A8T4RjIzMoz3r8hfHYTuayrD8owscC/MyaNZX9f70ozsp+PqOQSqmYy9GqGMMXet7JzURvWyew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljgoVfoQmc2qBK/1PsFQtCaIsk+DoVuxY4IobGfD5Ss=;
 b=vAO48NGharmmsLzPMnPtpiPTHdV1SFO85qqZG+6+A67aRjlIqsINXzMcg6kROyuE0eqUG4CEYXd4RVAtiQD9ff2akEis6/cWc91VhjIvOZ40CNdTcNIX/QP/6Ej4T2EbjQ3q0qZI9IisHRcHnVo3bTYIFHE3RCnZNXvcVqPn9vA=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 SJ0PR07MB7728.namprd07.prod.outlook.com (2603:10b6:a03:280::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Thu, 9 Jan
 2025 09:32:13 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.010; Thu, 9 Jan 2025
 09:32:13 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: parted crash on NVME storage on LS1046A-RDB
Thread-Index: Adtidh82wT6z2NuYQ7C7JxRMnax/ew==
Date: Thu, 9 Jan 2025 09:32:13 +0000
Message-ID: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|SJ0PR07MB7728:EE_
x-ms-office365-filtering-correlation-id: 032935dc-50f3-4602-442a-08dd30908004
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lUb1YvxzuYI1h3Otif8mL6peDDIj7e+m5I/AzhsZEZQvU2iu5t2XMEC5YWHW?=
 =?us-ascii?Q?7g/iDnG27HZxNPybkfT5dHu/UMB8Fv0wWBeDm6boi3T21dynHiSd7ZgQ8Pl9?=
 =?us-ascii?Q?ZNiwujtsr9Q6i95CoiZHHtW6lgbsdvG7om6mEpyrrtpwwXWDhbbcwAhrZ1er?=
 =?us-ascii?Q?I2+fMD17s/yUt5bsQM+vId3LOIC89qsU5RLoZEVTnBDbraRwp8c2kgJGx5Ij?=
 =?us-ascii?Q?I7FCgHfSWf8vabGdMolQJVq9Nq6ACJ8+EJPJ2sIegnUubWnzlCMOuRWMpA8k?=
 =?us-ascii?Q?0X6xpOwWCv25o9qj+on9B2w0lM5GeJi+zWb2Mqm7O9zw9t2YQSfaOYj9jIg2?=
 =?us-ascii?Q?8M4V7zHT9vjoBfslK1qQ7g4mVjWyuEtf+U4Z9ezYFvI1AI1C7HzmFqhVrU3N?=
 =?us-ascii?Q?kSlSIJbnSqC4hiQXgiB5WBecX6qwVCQYDX/XQfMx5mZAm/gRanHWlOqugOOT?=
 =?us-ascii?Q?3CSHhWO4MY/v0DXQq8eo4Tk94t9qb0OlOGxKZrVNmZ3E4ENx2P6FLf4mEXY8?=
 =?us-ascii?Q?2Dsw3r7srjnhKVzZIjI7f+gTPKCxfqZ5tlNN0p7WO610MPBaht+shYS5f7mK?=
 =?us-ascii?Q?atyPgyS1FfH1sc20hxmgU+Xee80BlAm+Jyiz/iw/iMhnZ1fzKPAZ4IuRyigc?=
 =?us-ascii?Q?ah6xanBq9Gi4UBGhNTh2/UY0Sb71ds638u5kfUG9qAVLGkz+OUMwabOxSHsh?=
 =?us-ascii?Q?vsxzQk2Bg0It2ioltbpFjylO1f13c9CcqBlFaroxx5X2ATGUG8ws9K3ZRw7B?=
 =?us-ascii?Q?tztdWaFctV1qZc/HhH0zL1ZdmRU77HjMfy2Rwq037yi6x2kWqwIZUJKH3VV2?=
 =?us-ascii?Q?YkiUAj3bNbPH8c6qER+K0zTOG6qSnxVUdy/iTY/3n6flY6AfvWGfUZJXvHau?=
 =?us-ascii?Q?S48K6dslXHlk/tw0aDL7ebO0ljeJRsxfrOZr4JYO2187C/Sb31ToPyrgaIof?=
 =?us-ascii?Q?tCZdXohvMXT9lQhS00UhJCSfom0w3oMBi+BRqva1XBb4xh2l1iVT7vMts1Om?=
 =?us-ascii?Q?/S9Mqac+hHf7AlHNiQCXHKjbMWIF9Lm04RuGf5WBOftyKHnjNims2SERrWkw?=
 =?us-ascii?Q?EyBZ6v8UEvBd+Z3W0Qyxy2VLTTIcITPpEeMvxtTdShWf9ocuaL/9BYs7ioku?=
 =?us-ascii?Q?5SovmdDRKGWRtgD7PFfIazpbuPY3vfSrU6lRDbLPLSXHv6sHxfw7wjDz6XPZ?=
 =?us-ascii?Q?CpHqj1riJFrGBCNyjZvoYG/3kxQ9CJXwkfP+oDMZuh7SNf8IfLu9l8ut/u5I?=
 =?us-ascii?Q?NtWOVn12pOYSFUDrkSIHG4xK6IXKA0M02sIjNaQPY34RVj+J3FzpGVEwuRjz?=
 =?us-ascii?Q?CTgFRXzaQRoCC84X8ND1piqPzZBgdMBrj5P8y+HjbqsfNdEn6oMQuwPOoMvU?=
 =?us-ascii?Q?2Ls5YIKUTwqUPVgen9t3U9GojL6S9to4mLShwn/l8TVEZGk50ZrfYf+7jow/?=
 =?us-ascii?Q?rJhPWRO/lIoPgROQoJM5mEDGGCQW3k5i?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tOaEdCnuPj4Fp9T1KkC7UtxH6InTMcnmZ+789wl3O66F3udE3fZlKcB9OyOh?=
 =?us-ascii?Q?5TQcHU+WOeyZ+X9g/MJEVsp1Tfyx39delKFcOfcdcWnZGyR0lXVbMujMb7GB?=
 =?us-ascii?Q?9sK9FU1+uH+zL3iGX/L+ensiAHzuunUvfwl4R5kN+eldLBQZgLMW9PRZoHxP?=
 =?us-ascii?Q?Dn4ncaOsI2i2rLfWqzJ2MhKFRy/n9ES/QKLG0sB8ymg3OKp85uI3sSBXQQ1K?=
 =?us-ascii?Q?+HxGNDOOkW4rlqugWnawvDEeq/67jgXBJkzFqV+ks4538LCdI1gQLF4ga80O?=
 =?us-ascii?Q?a0LRi70lQdyqJ8kPaTzzJxFvo9WyL49HvBGO4byMT2MFmqg4KpdztEMpqHJC?=
 =?us-ascii?Q?o7oYnI8iIf7vZvs5kcu6zp0P3IScnSqa+gknRIwKx13VnGq0zJw46YXjE8LD?=
 =?us-ascii?Q?CONMgw0DABCSYbMI6YRk9kg9lPUs4G0zUMH7PRt0Cu1Lv6dkjlyR7EpDi2Hk?=
 =?us-ascii?Q?0KzJDyLeva5v9mrso45RV6rmON75BJZ7ZJQ7qZbs/1tRd+ew5ZiBZEXOWpwF?=
 =?us-ascii?Q?cdrULzm6pki/Hh+/ii+lAq7mzOw7sUfqZH//ND4gbc20ER2aYzdXNETMDLQQ?=
 =?us-ascii?Q?3t0jzsqn8bt1ndxBkOuaWi1Km+7sV6hQqA7/n4l9TiNHgVUya2kUFrGHC5yC?=
 =?us-ascii?Q?SB67qtJ3rf36fKfAEIDH+/lkldUMyLTJ69xkzcjz94EYnDk3NlYdCp/9iu1p?=
 =?us-ascii?Q?wwHDtTGtsMvdNlu7aG/wrRgUNPphLAFdD3PfM48QVdj1I0k2Mn80aAlnSZ6B?=
 =?us-ascii?Q?2wq5cT4QpnpzkweqSU96nnC2Ggi0nPRhc9HUdAEyOljhgUL/ou40n32QGfER?=
 =?us-ascii?Q?vsLYvwfFIjXp0oKQ3lpjCst0wlgSc4jIAgruslusYtsL99d0AmYrXa1YN8Ga?=
 =?us-ascii?Q?xg+vhoBvlGmx7jrOsz/RDeTuS4WJwWgyO1MUIZomZUkgS9KEXZY/O+0dPlVa?=
 =?us-ascii?Q?nd4Dpuxiytfrm064ZdAzlq90zYz9Z7dboYKfhAPghyQ/Q1tkSYbLBGymjWFx?=
 =?us-ascii?Q?O9kmlxeMUN10LifWKKYyPPhz68mEyXMAVX0wjsDdLClSrFdE3xMawcu57VLH?=
 =?us-ascii?Q?dFJbMefutnSsMfCKAvA0e0FqkIDmTqalCXDc8tsx9yC8hfnNtNBqLn1kM6jF?=
 =?us-ascii?Q?CnbKmChU3H89pGnt0piR26VQV2dCVAe/LlTTDTQvxrns8zZbGBU4iB4rDoRQ?=
 =?us-ascii?Q?pgEvhzOR2xrLQoSbcF53eXKR+utfqO7lU68jxKtEH3NQPLjR7OX23/au+4SZ?=
 =?us-ascii?Q?D0OhvAQa7DnH3WIOhlETNlHIixyzeu116hR/crrvQ6wfvhDtHdWlSaJeVyKn?=
 =?us-ascii?Q?ufuf8oBdEzwmiU7mCGHxKbFIeFwS/CosBvTHj5SCy7/PYCEFHWjc1AFrRu++?=
 =?us-ascii?Q?UGHS3OqTZufyDP0X1sJGPsK7Z2MGN/0q9mg+fdzvBEaUTnXTN1xqeqTlTzhv?=
 =?us-ascii?Q?mvmjpN8Nqv+lvlu+18Sm/GHnp7Q0VR0ILATtQk8BEFlxvNBt3t5ojXSZA2EW?=
 =?us-ascii?Q?TINERNEyHfsVbuvy0uTFkMbEVXTJq2DUnOQDtK6ADoJyDn4Hbmeg+O71y6ae?=
 =?us-ascii?Q?B3NluGVLIpxUhUjdJhxSWDf2YWs+P3c2RTNipfUH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 032935dc-50f3-4602-442a-08dd30908004
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 09:32:13.7640
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nLiHwD5HTqgcdu8UJGDPlIDl6y10iwoild45ZPjwmvGoWHUT5jh/6ebMXG24iSxJjM5Sa9KfSJo6vLycdRvM42uyVID96nvuLWiVV75rVTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB7728
X-Proofpoint-ORIG-GUID: hHx6n2umBJF3b-0q4gbxp07mWsxSDeR9
X-Proofpoint-GUID: hHx6n2umBJF3b-0q4gbxp07mWsxSDeR9
X-Authority-Analysis: v=2.4 cv=Wfn2a1hX c=1 sm=1 tr=0 ts=677f979f cx=c_pps a=CbxOEkXH4sIw/lcH++vrDQ==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=c4HcMfULxg1ayU0UzbEA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 phishscore=0 mlxlogscore=912 clxscore=1015 impostorscore=0
 suspectscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_013218_154953_B481BEFE 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are investigating the use of NVME storage using a NXP LS1046A CPU.
I have a RDB eval board on which I installed NVME storage whose ext4 partit=
ion was created from Linux.
The commit from which the boot loader is built is: 2024.12.0-00214-ge3de867=
716e9-dirty from Tue Dec 17 2024

The device is probed:
 `-- pci-1957:81c0.1
     `-- pci-126f:2263.0
         `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1
         `-- 0x00100000-0x401001ff (     1 GiB): /dev/nvme0n1.0, nvme0n1.Li=
nux filesystem

nvme pci-126f:2263.0: serial: A012410180629000000
nvme pci-126f:2263.0: model: SM681GEF AGS
nvme pci-126f:2263.0: firmware: TFX7GB

The partition below was created from Linux:

barebox@LS1046A RDB Board:/ parted nvme0n1 print
Disk /dev/nvme0n1: 447.1 GiB
Partition Table: gpt
Number      Start           End          Size     Name
   0            1MB        1074MB        1073MB   Linux filesystem

However, attempting to create a new partition:

barebox@LS1046A RDB Board:/ parted nvme0n1 mkpart config ext4 1074MiB 1090M=
iB
NULL pointer dereference: DABT (current EL) exception (ESR 0x9600000b) at 0=
x0000000000000008
elr: 00000000fbd69444 lr : 00000000fbd0e110
x0 : 0000000000000000 x1 : 0000000000000000
x2 : 0000000000000000 x3 : fffffffffffffff8
x4 : 00000000fbff7a6c x5 : 00000000fbff7a68
x6 : 00000000bdfc5a48 x7 : 00000000bde80000
x8 : 00000000bded2dd0 x9 : 00000000fbff7a68
x10: 00000000fbdb4190 x11: 0000000000000002
x12: 00000000bdfc402e x13: 00000000bdfc4053
x14: 00000000ffffffff x15: 00000000ffffffff
x16: 0000000000000000 x17: 00000000fbff7538
x18: 00000000fbff7ac0 x19: 0000000000000000
x20: 00000000bdfc59b0 x21: 00000000bded2dd0
x22: 00000000bdfc5278 x23: 00000000bdfc57a8
x24: 0000000000004000 x25: 00000000fbdb2650
x26: 00000000fbe1c000 x27: 00000000bdfc3fc8
x28: 00000000fbde5db0 x29: 00000000fbff7a90

Call trace:
[<fbd69444>] (dev_remove_param+0x18/0x5c) from [<fbd0e110>] (dos_partition_=
free+0x30/0x58)
[<fbd0e110>] (dos_partition_free+0x30/0x58) from [<fbd0db68>] (partition_ta=
ble_free+0x14/0x1c)
[<fbd0db68>] (partition_table_free+0x14/0x1c) from [<fbd0ec64>] (efi_partit=
ion_write+0x39c/0x3c0)
[<fbd0ec64>] (efi_partition_write+0x39c/0x3c0) from [<fbd0da08>] (partition=
_table_write+0x18/0x28)
[<fbd0da08>] (partition_table_write+0x18/0x28) from [<fbd65af8>] (do_parted=
+0x138/0x154)
[<fbd65af8>] (do_parted+0x138/0x154) from [<fbd0786c>] (execute_command+0x4=
4/0x8c)
[<fbd0786c>] (execute_command+0x44/0x8c) from [<fbd04208>] (execute_binfmt+=
0x68/0xa0)
[<fbd04208>] (execute_binfmt+0x68/0xa0) from [<fbd120fc>] (run_list_real+0x=
8cc/0x978)
[<fbd120fc>] (run_list_real+0x8cc/0x978) from [<fbd11684>] (parse_stream_ou=
ter+0x144/0x1f0)
[<fbd11684>] (parse_stream_outer+0x144/0x1f0) from [<fbd124dc>] (run_shell+=
0x64/0xac)
[<fbd124dc>] (run_shell+0x64/0xac) from [<fbd01b30>] (run_init+0x148/0x250)
[<fbd01b30>] (run_init+0x148/0x250) from [<fbd01c88>] (start_barebox+0x50/0=
x8c)
[<fbd01c88>] (start_barebox+0x50/0x8c) from [<fbd90f48>] (psci_driver_regis=
ter+0x0/0x1c)
[<fbd90f48>] (psci_driver_register+0x0/0x1c) from [<fbd0000c>] (__bare_init=
_start+0x0/0x14)
[<fbd0000c>] (__bare_init_start+0x0/0x14) from [<80028800>] (0x80028800)
[<80028800>] (0x80028800) from [<800280c4>] (0x800280c4)
panic: unhandled exception

A bit of debugging shows that dpd->disksig.param is NULL. Is that supposed =
to be?

barebox@LS1046A RDB Board:/ parted nvme0n1 mkpart config ext4 1074MiB 1090M=
iB
dos_partition_free: pd =3D 0x00000000bdfc6980
dos_partition_free: dpart =3D 0x00000000bdfc7738
dos_partition_free: dpd =3D 0x00000000bdfc6980
dos_partition_free: dpd->disksig.param=3D 0x0000000000000000 <=3D=3D
dos_partition_free: pd =3D 0x00000000bdfc6980

And the partition is created if dpd->disksig.param is tested for NULL:
barebox@LS1046A RDB Board:/ parted nvme0n1 print
Disk /dev/nvme0n1: 447.1 GiB
Partition Table: gpt
Number      Start           End          Size     Name
   0         1024KiB    1049600KiB    1048576KiB  Linux filesystem
   1      1099776KiB    1116159KiB      16384KiB  config




