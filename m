Delivery-date: Mon, 09 Feb 2026 18:46:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVLZ-00AdIE-1u
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 18:46:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVLY-0003b1-EV
	for lore@pengutronix.de; Mon, 09 Feb 2026 18:46:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kp6LijTdDvQsZzG0985DcIWu8m8fXkapHHZyF1XkQSc=; b=JYgFRfIUR9qtozTg3BZ3i2WdId
	lP4seUfsRzL4ciss9nyYrrl/baFhuHy4NeUWYSCeaGTwR0wA5ga2a+alkzoSFcVze2w2GxxzhRBGG
	wb4WdgYK9fqb0jZJ+bCNoP6mpUYf+ndFYk580PZ48ILuVsww45wycpduzALZBSMa1GbpcSWUG+wg9
	KEeD7E6na7m9+wS+WGSNarS8UFbSSnttKXK0uOD85KqfQO6y2ntYdBnyuiN4hbjnGwG0b1ELVgAyA
	wFdR6GF3UWsxXim0aZcJ/Lv71211NCi6vOcg0VE9VJPtmrSjZcoREnscjdUVMlyaXZCzVihMHcq6h
	srJ27S2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVL0-0000000FnXo-0okE;
	Mon, 09 Feb 2026 17:46:18 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVKw-0000000FnXG-1M2g
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 17:46:16 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619G1e8T2282968;
	Mon, 9 Feb 2026 12:46:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=kp6
	LijTdDvQsZzG0985DcIWu8m8fXkapHHZyF1XkQSc=; b=gv72TynZ3VXNPphJ1hA
	AqETMXJ0Q6F6DdEzm0+pelzu5SPqwPJ1E8NZi3kRfVfGf8+qNei3YulPHOcWoxhG
	a+kSAVtoz3cJ47O6Z/8VHZdYymFaUOfR5cQ+irhPVD4W2zPIKhhMGcSIIx8tlIpM
	/NX9CEHYWpsHZ24DVxC2fhdksmd67kBVYDLSg46xoVgCG2TpAAwDN4a3Gdownsb0
	sw3RLjAIQkNWLPwD0BfdgXdNl9kEeSDPbJSxUCVTGW9+up0xdIMI/0Dk22PHTGqe
	B6KkKi3zJBdATRDh9NNAiRRmkWDhe8UphXLORaIQJsiHsNw+LX2At6ltS1nl+Dmq
	EmQ==
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010016.outbound.protection.outlook.com [52.101.46.16])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4c6g5jd18c-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 09 Feb 2026 12:46:11 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCHbR+8diGDNoXUku3DYVcMP1HXESR3HA078LiDnwl/MPo0J9k38oPTnazgpakqJkhW6GmrUoTSZVXxKkKgLHzCKKzLfF2iK8CfpleLSu8Rz90bHfRkwVkBkokeQUpJRR7Uftsz0rziZu0yhdtI509Mua0/ULm72yT0spkk0AmV+KIfmXTqPB/t9fBY8m80RFJYwtVdY5s5ata3QHcIgKnlTKPifkuI5RA7IindbimjenPsgz4w/SfAP4cx+GzJdZ+tEZ7Kk4gSmwxfzEmX2qpLdmebmvZtxTIVkRIFBczsB0G4bof6ElvSpzMSYyFKX1U8ghwaDoFWg5tAyveCRUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kp6LijTdDvQsZzG0985DcIWu8m8fXkapHHZyF1XkQSc=;
 b=wyJTmwcrRzS+wyKsvrj2dSuHo5u7mXb4SM31nUFXD+2NZftjcfi25BO4h25HJFv1xXZFfbZ+Z0xNpMSTKRpIX6e/3RGBc8G6a2KZdyJKIT8ds7t/rdZn3UFuNiULqOC8/ufcZZ+ZuCcd4HItzLB900PBmVecSZj3IIlhdKkgj+m7lVwwszCBABjf43aT1rI9wDrfwqpZLn5LafCGgoPG4umcQ2/Nn6ZfFsIpRKm5ZA6LYrX3/6BfEaIjrpxWzz7IpmpB5wsqrvng0dSOUD1DLiuoOgBvMR+W6TI0J6lFWQB7qxrJKmxrxaiCNvUvdYiEVg6GfmEUF1ALW23pxY0miw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kp6LijTdDvQsZzG0985DcIWu8m8fXkapHHZyF1XkQSc=;
 b=iLw5Q6i171s7oo5oEH4Mwr0nQ+s4PRGxY625FsbviZrMxQuWd6F18TqR+lNNbAZIhUxA1oUytyeYxOt35qURpEIC1Cn8Khigk/mWt2D/7FnrTJ6O/M9wcXXgPskw9TUrRimz/srq9I4upZYTFbg//3HBcqgm6baSFZX6kZYZhMY=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by BN8PR07MB7011.namprd07.prod.outlook.com (2603:10b6:408:79::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 17:46:10 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%2]) with mapi id 15.20.9587.010; Mon, 9 Feb 2026
 17:46:09 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2 4/4] ARM: ls1021a: initial Ethernet and mdio
 configuration
Thread-Index: AQHclcvpI43VP2Y/ekeBNmW9DlW0zbV6eXSAgAAydAA=
Date: Mon, 9 Feb 2026 17:46:09 +0000
Message-ID: <SJ0PR07MB97664D4DEF1BA1F1FD1DB1EDEC65A@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
 <20260204114621.2130261-5-renaud.barbier@ametek.com>
 <aYnyr03HdE8B-b5o@pengutronix.de>
In-Reply-To: <aYnyr03HdE8B-b5o@pengutronix.de>
Accept-Language: en-US, en-GB
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|BN8PR07MB7011:EE_
x-ms-office365-filtering-correlation-id: 56f1b702-a0b1-4cdd-a26e-08de68031c03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?g3pk2EYyy2+XWXlqnYABEIY3mmzDncRpREvAyMX7tDg3h3NDgPMaYhs55KEj?=
 =?us-ascii?Q?2d7B6DCKpyEUyEFxOB6LoorGqLd4T7d1HcidfSi22nH80M6AF2XPbR31MO82?=
 =?us-ascii?Q?0OPdrfLwZs6+BSl/gW8izRqf5CA4HEi0rZ8ZRcfGFC/vs6FLdv4iQhjhPbBl?=
 =?us-ascii?Q?l12kYh5Dv0ED9tXlQ0NiXRDowit9o9QknARZrtn8Hfg+UN9DLuD1n+H/EZZf?=
 =?us-ascii?Q?xNddIMoxaVkUojjuVmCqJAQW8AN7P5YnX+sVYm3+Norhq3nHYtC/zEVdW9Ay?=
 =?us-ascii?Q?bqc2d7P0FkaJq4xfo1xFp2nY2QyzztgLc624Jdnim+a6YdjMbw/8MiWGognB?=
 =?us-ascii?Q?EMadFEfm/WnPei3tJnYXy/i3x/zjhQFq4dW9ZSj3D5+yg7vXBkGuFnhD+4Y8?=
 =?us-ascii?Q?n6nh2VTkc9c1JZ7g2nkw4SXrM4w46aLKfQGXqvr5QONPYDKIlKybJO5f2yIN?=
 =?us-ascii?Q?4exNnRJDj0u0PC2zsIxZsmMJR7ywE78QEvVEoKcn7TBxhZnnQqRUWAErIP1K?=
 =?us-ascii?Q?CDaBy7xn5quIB+do0fXUSme/GoDP29MEGdVX4bIol7V6KAjbHk7stBBzlHZ3?=
 =?us-ascii?Q?3oNHWpr9bm09xQStNqlI9TUVU4Bqe37wASYeGxEuQIwLOnV/mn8rmMHOVoCs?=
 =?us-ascii?Q?37PmfIxlWCyBI8HAII1xy+CD7a864WrtR2ouYDc+fgZ03llZnQeGTy39iZ2u?=
 =?us-ascii?Q?kf2GK70RahdeJBVo4g/+5JvCsunDv4GWv38TI04OPI1uYQFtg+Da2LsynWHy?=
 =?us-ascii?Q?AtvH6K6VObiXTR2rH0r+vBIqvEj/12f2SczCGlcWm8RdjxfrzdGUHNa8Jqrv?=
 =?us-ascii?Q?NXyUkjZvKPd0K1ei+MUxtKlU6WrzN6lIP8k7MM91sfzCf2sqw5WUhUAjZJ24?=
 =?us-ascii?Q?FL+JBQ1EhQmwuZCcCVhjcWLGIvUHjv/CPMngHVyZJR3DKph6khNSH2I4caDu?=
 =?us-ascii?Q?kcqyXLiX3CdlIahV3afJ6311FjzP1lk3ixy2vadKOh3fL+73uYtK6DZrGRRZ?=
 =?us-ascii?Q?Q7nI1cPUnbspeXmSR7+1JHVGumM80QFafNCCyhgkeutVDC08kJu0YtneiTuB?=
 =?us-ascii?Q?0uNDTCTqWC0qEL8BiDtBYIcIe/Kdbka6te5Dcdq7PpplszapLdpjLJWFY75q?=
 =?us-ascii?Q?A+pyeSn93JVsx3XHm4phE7cM9X2z6hJpzApwv9lcKyWhjyjljw74GsvPlBsv?=
 =?us-ascii?Q?mZvc8JVzzM/WBw/nDUc/PODY2o2EyRY55nYlW3064/mXwg9l+eYIoLzMtLgN?=
 =?us-ascii?Q?nhHaRHzsUTuVARRhp+JEHHPCEewe8ir6dJAUNJEkFU9RrO/9h/rs4DXQrwy6?=
 =?us-ascii?Q?dJrh7SJxXfp7W+9OfUk8JMGhP5gOtZjpQq3pVybgipfDoO2Wmbn1zpQ5CHJJ?=
 =?us-ascii?Q?ZyVNKyisbk+VND37QVWcQeh75va20hJsDQdFOzxe2Rho4ZYqW30tPMuQy3Ss?=
 =?us-ascii?Q?a7pPJ5nTV2Pj0LWp0ZsZ63Boymu2mWNS0OMNPqZme9CDln9A/eBbjGajZAka?=
 =?us-ascii?Q?RP167kgtoJIHuROTvYFgR8FWE8UcMkK6+tOePUS0caVuiOVBU544+iE9z1YJ?=
 =?us-ascii?Q?LHtE1DytvrJ5WPodWbE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vSZX5H5O63yyQFe43sDyMEeH9lm8/mn0T8Qbqt7nKYnu/Yt+AY0vFVLKBD4g?=
 =?us-ascii?Q?Y59ePElOYPIfJkLwC9yWmXi3UvY7S5EaV5WoeTIGruEzXRbE2bVobtcYgKDS?=
 =?us-ascii?Q?qlYTc+pFClwV/bzN/SZhLJ3Rv1xerT93oGKGEkBPo05iqV/kOAQ8hpmVEsvB?=
 =?us-ascii?Q?6OcZD+HrmufF6VxyBsuHozdCS7R63XaA6Jc03xkXHPtBBi4IUOh3Mj54e1+Y?=
 =?us-ascii?Q?F+DWiJycYvS09lVuPZXiyp15sEsAK9taJ9Buyjlt+yB0F5iW9JumG7UVi3ad?=
 =?us-ascii?Q?oWITFD/Jto2pjRxiOoYW62ivjOAzOdkydyuXbXx1mq1LuxwABZS2+hWo/Phb?=
 =?us-ascii?Q?FU7IF1Fp0I5R2pIG06jwznLpLCIYiJ+CuerdzMWED/cy0yHvDpW8wRUkq7sE?=
 =?us-ascii?Q?ubhB60uqVFHt8pkt58lNjpSM8TzqiA2oM8iGLpTxwd/hYqCIjVNrSIY9be72?=
 =?us-ascii?Q?UQDLaMv57pdcBiAAEaVlTU66MzKnYgblCp1GNUEgIJ9aFRv16wccd2NX07mi?=
 =?us-ascii?Q?Qqq7x3HI4lzM5i636ATatb17njoD/LIq7lOT7nbxYq3t5DmDdmyOurKEPoOg?=
 =?us-ascii?Q?Qity7b55eZl6tbcOezbcEFfnRiXN8LMcN+uwNaqCn8MupuWa6o1SWInQFtul?=
 =?us-ascii?Q?eDY0RLDiamXoFBTwaGZRtyJCwpecCpwE5ghhFi4nmTB4Cu9swfbJvJ1TfjQg?=
 =?us-ascii?Q?EybPI/saVOdneI7oJ4fMITn5afm7IsFFsKDhHV6aIzlDwxVATCM9KkMLXF8b?=
 =?us-ascii?Q?NWqOGjbelUSoeeGvmwDyH0d9urwUD7gxhllq5Yy3EuEVC+Y03Xc/mDWeGakv?=
 =?us-ascii?Q?DOzmTOi23vBAJC7k3tFjhMdQt4cEwiwOyr00YZ7NdA2HN11R0f8TEWshi4ti?=
 =?us-ascii?Q?aQVaGf0CgVoq2urrmZrT1LHd9c3SCoFKDJ6T6hZ+qylgnHPrwoZlzyrwdR62?=
 =?us-ascii?Q?OqyrGKpQRYLjWHi2c8f3VP/5VB7qhlN86oWP61YkX9smTSnXWk+hbva7ytQg?=
 =?us-ascii?Q?B0exgyYiwEdNEEwyjCzqh884gCea0OmfhpJEqqAUo0EDp6pztB1eZRj68H3m?=
 =?us-ascii?Q?qdvN5YCZi+ctUTbNTFzItiGle/TvNqQpmcaLOelIqm2scLJFIzOdNxpFeia2?=
 =?us-ascii?Q?m4KJdPt5+2TrNKa6XcVbqhoKz/C2vfDy9QiSTHlRInmTSmbzPRdG8z/geYXB?=
 =?us-ascii?Q?fVkSSSXivclPSeW/ou9wgg2xNJa4dVWngddEK2hZkfSC6vkVPQPX8pFBsWJ7?=
 =?us-ascii?Q?CRVV5SgqfXfbBLuLdrXUDHV7nIWztYCmm/+PmVtrPRO4gGc/b/dA5eSx2jdf?=
 =?us-ascii?Q?WQzP7nYYUgoeDMEcy8VAxu7BTS6KMXFZCFYrAjXTKU54fJVRmLwNX1asR3ae?=
 =?us-ascii?Q?bsO+efjPYdKyzeXnTFcP6haYcnW+hAdd2EEcAcfiIlWbMBDCnbTnjEuh/fp4?=
 =?us-ascii?Q?UA3vS3zMi7fWoNtx8+00PUjouVA0nNRplVjSrFohC3gYDADT5ovakMNISuoe?=
 =?us-ascii?Q?fr3RVQUPbq7D91dydk9onT0Lre+ML6MBYaQdSflGEkc7z7sAvY95Q2tztMzG?=
 =?us-ascii?Q?O9b21PHFyudB4a240OePm57PGeegUfSh2LI03tce8h0Znkkiu0FGK0pKOQhs?=
 =?us-ascii?Q?19aJXiyuE3N3qUHOM6S+Sa5gNU7X3A3yc3eyDTMK/3EBtjkkfvdZChFoW6gn?=
 =?us-ascii?Q?3lDwixR9OKS6Eevlc6/8kRCDoiXuyunWzCoXVYPsccSHJ2HtPP8miRQN81ne?=
 =?us-ascii?Q?80KFSnCaGg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f1b702-a0b1-4cdd-a26e-08de68031c03
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2026 17:46:09.6736
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qcvnyh+y8E6ymWb98j1C0X0UGOyhFczDugyPyLj934cKrzMA3PAkpSpZRFjPHao/FlVt4kb9t2AIZ+IMbxAphK863kMWlIOO465D03ceprI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB7011
X-Proofpoint-GUID: 7m_rWtcupYht4evTMlOGzD-V0beXdUGW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE0OSBTYWx0ZWRfX4WV6Z7Eyw0m6
 511jWr5Q/4NE3dsu1k+HL9ZsldltX/N+h0WPvBbjHH+Hnq+VL3qKWNsDnM5QgqvTNu6pmdicCSn
 jD8bt5OmoyHA7c4zf5VLgH1ll5ux5TypT6y2y3vtyn61DlQRdNv3jFoYKlk27UwGG3/n80OGMGH
 sGK3ZEDmL4vIs5RMsxSk8VlxmLddIRrgBnwL3GolfAfgil87Goyh+znldgBu0iqH4G5vfD8JtiT
 tpASW4GrzHY6kmjCe6VWvT7wEPiQpW30uJVBfl5ZJC7lMlEhxEosE9TRGI4oIAeNxRE8HJ++YDI
 XO8Oxicvlqcuu7sEgdqzuERka4HH5XtqKjBniaOc8+9gLu/BEVOTlaoYrhI/C5jVuWC4dVQjf1k
 fpTTQF+5R5Jf+6pt5SqbYtjrVIkBb8Li44ZLtxHTQSxR/cCnzmy+SenM7/GyOOiBliopPKvxrHF
 2s6CkPS45x6rGsrCidw==
X-Authority-Analysis: v=2.4 cv=F5tat6hN c=1 sm=1 tr=0 ts=698a1d63 cx=c_pps
 a=+tUgqrp9vGCFEjR5l+cGAg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=uherdBYGAAAA:8
 a=bGNZPXyTAAAA:8 a=Bf0votYA2KInU0rJQloA:9 a=CjuIK1q_8ugA:10
 a=yL4RfsBhuEsimFDS2qtJ:22
X-Proofpoint-ORIG-GUID: 7m_rWtcupYht4evTMlOGzD-V0beXdUGW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 bulkscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_094614_743775_0F0DB937 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: [PATCH v2 4/4] ARM: ls1021a: initial Ethernet and mdio
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



> > +&enet0 {
> > +     status =3D "disabled";
> > +};
> > +
> > +&enet1 {
> > +     tbi-handle =3D <&tbi1>;
> > +     phy-handle =3D <&phy3>;
> > +     phy-mode =3D "sgmii";
> > +     /* Disable property as transmit fails without a DMA sync */
> > +     /delete-property/ dma-coherent;
> > +};
> > +
> > +&enet2 {
> > +     status =3D "disabled";
> > +};
> > +
> > +&mdio0 {
> > +     /* Rename the compatible name property as the mdio register offse=
t
> > +      * in the gianfar driver depends on this name. Once the driver
> > +      * is in sync with Linux, it may be gone.
> > +      */
> > +     compatible =3D "fsl,etsec2-mdio";
>=20
> What am I missing here? The "fsl,etsec2-mdio" compatible is introduced in
> your patch series and the original "gianfar" compatible is unused in bare=
box,
> so why not use the original "gianfar" compatible?

This looks like a brain meltdown. Working on it.

>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!EYn
> wk0KOC4uaZ6o2g405vX9jY5cYxTXggB3OWKRK4fkhKYQkD1ipDYAvpoXwCD1xI
> ouD69egxnltsNg0UUl0r8QgLw$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


