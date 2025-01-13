Delivery-date: Mon, 13 Jan 2025 16:49:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXMgr-000eb0-07
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 16:49:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXMgq-0006Rx-5Z
	for lore@pengutronix.de; Mon, 13 Jan 2025 16:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qZ/F/TP8KlXlYO8ykbuATiZnmUNX/H04J2whReizhys=; b=MJYlSeNLoauc+DCTqO3p/zK2zs
	LkNQHl31PxO8BTdmwsei6djWY+gQajoHyBi8azgWLImOHmLcGGXyGxT2XkdrbUNdrOMcN7rpDIwZj
	SsxZUx9IM5Dkq0TUqDrzz0qYx9vUKkWt+9B/H7Gn0UUbBHmcd2b0fnkR9IPbY1RfXkRPHR77/7idF
	le7o4zM0uOVRfd+6JI8XpngWvVT0S4BxVJ16+lmI3kmUc4jDYpqoJ7XCnwzya2Wot14rmTVrZxobZ
	3fxq/QkgqBCgiNuV2mbW2M1mrHsbDloIuIAHORNu7CbfWHj8mmECKGzKwqNVjVLaSxwkfsUh9Ayw1
	g9+etiFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXMg7-00000005iOl-2AL3;
	Mon, 13 Jan 2025 15:48:35 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXLzp-00000005Xpk-3Hh1
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 15:04:56 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DEogv9016672;
	Mon, 13 Jan 2025 10:04:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=qZ/
	F/TP8KlXlYO8ykbuATiZnmUNX/H04J2whReizhys=; b=W0wHnR9LBCAYcHz3rOp
	nvoilRL8km0a8XFsfQHibQ2SaQNlHwLMRtkgx9VGe7r6LN7huYt79VcKEWqlO8s1
	tUF9HhDmT17Oto/EwgDL4qB8StNWA3EcxcfqoY/uY/cguW+w9rz8UDR3k2bQ53CM
	894+XxpMh5uObi/BGfHn9dLYk3NfIGogOUtvAaCRH0SrZf6DXzzKNAOpsxnmLWp0
	g+b/4uuZSmaCgX+u+vbw8QbXAsqsKBbVLubXK57zUXnPGXAztJytY2DWrQpa40mS
	oPHi9aCLvXKHc+tz9tkv/KeY/vxCEKH8N+WTszFU0MWKCg76T54l1/uGVKpxdGv+
	Ivg==
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azlp17010002.outbound.protection.outlook.com [40.93.10.2])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4454xxr2bm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 10:04:52 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pz/Yejmv3ESQHn96ix6peh6bYmL5eeww3fLAi+er5Cckl50sX0HJ0D0uNw//5JlcOsT+J3oTpYcXPUo4CaVBbIZhHogO00V7EIq0Szfbrwwac8vHwYFUmTnW7p4o9QAxGKmJiDZWPykpDfFrPmINd6c7jc/hMkQFLB9baNUeJp0F1plvLPr4DpgFI6kL31ehoB2rbCNd2xbB8/hcuza0UrE+RjKvSYC8tFpkbHY/OhrhSFZv4PX5VYyxa6imoTWwzhWCqnOfzWScyZqnZ94qqv1hgRTrHHG8FJQHFOPE/fd2G6JV99O6uw5obUbjhJQgeFSqPsKua1esXoyqMHTyHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZ/F/TP8KlXlYO8ykbuATiZnmUNX/H04J2whReizhys=;
 b=HPOZrbzRm4jsahLSfe3kgps91Kaiskxwy2Pl+puNAouMziAI9s5YLBrrBz7xGzKQyi3g1cRwdWb4zqti4NFK8GkTwyeYZoWruZUM+RLQbRKYuKgpRw31ECZ+QAkyppPiemh/RO8Qdec6QQH9I42k86hlbHNl5Y18yq7HpNygLH7PFLvxw3BjwIO9Sjc3A8V1VRKSPN+Kuoyzadvbi7HYzmLxWmsA6HaVlLVaXTlZT+kZmVdCsIhoAak7SMDtUVBOnAmqa7afpOd2qsaLJUeZ3TWqdeYEKmY8z8EyoNPxLr1SyegK4pHxml3/O3QM0On7RbicSkNQcwrKo9EDFFUYnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZ/F/TP8KlXlYO8ykbuATiZnmUNX/H04J2whReizhys=;
 b=egF4qtPfHCTj9qHS4SAzhjP0JYrnhL0zsVcy6jIf/Hqbnit8AQQRtO7OkqQeoDpku9EaOiq5NOp7wMzhIUe3xCPBjzmjhkcli80f4KqDXHtjxVTYmuPeBesc28UYffYEgi+vsByEVeax+qnG/ex/iNSaLRrTEMB/CuyD/zXI7iU=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 DS7PR07MB7672.namprd07.prod.outlook.com (2603:10b6:5:2c9::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Mon, 13 Jan 2025 15:04:51 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 15:04:51 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: nvme sanitize command
Thread-Index: AdtlpzvLFXYcz+CsTuq+OBCnofdr8wABZzIAAAFjUqAABYxNAAAAR4/A
Date: Mon, 13 Jan 2025 15:04:50 +0000
Message-ID: <DM5PR07MB353242B3BFE08BF509D9E78FEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
 <DM5PR07MB353218A5AE678C5F358831C5EC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <757d7d40-a066-4dc7-80b0-b14dec016fbb@pengutronix.de>
In-Reply-To: <757d7d40-a066-4dc7-80b0-b14dec016fbb@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|DS7PR07MB7672:EE_
x-ms-office365-filtering-correlation-id: 0d69e5d0-ee82-4e05-c4ec-08dd33e3a11d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Q3VscjM4K0FrWmE4NldVblpndExnb0Q4WWlOc3hqcDBRU0g2R0t6U0lxWnc4?=
 =?utf-8?B?UXJlOWlRcmU2THJSN3FURWx1K2k3YUNqLytMNWZJZy81b1dXWXJRaUN0NER0?=
 =?utf-8?B?Uk03ZW5yRTU2eE9veVBwZ0FibVl5TVFLOTNRemdmaHlRbWt5STJGOXZwWFVn?=
 =?utf-8?B?YUtKVFhUVFVyU0JyWkR2TlNXZ3BCbml3bTViVXNpRjZLRE1CVEN5dld0SkQx?=
 =?utf-8?B?Y2hyUDA5QTFCMkZLeXptQ3hvZHNsWmxETUVxdFB0SmY4aG5mN2VIbzc4QUpF?=
 =?utf-8?B?WkRMSW9sL3lFUGlNdk5TWjE0ZXlkcEI3SUZhY3VaZlVZSHREV1NmR2l2MWRh?=
 =?utf-8?B?ZlY5MnA0THZ6Y0cwY2c5ZW13UHhLOThrY1YzWElJRjNadjdwSkgzSnQ4eW9s?=
 =?utf-8?B?YzMxeFpISXRRNVZhdGFza05SZjd3TzZ6ZXBqelA5UjJmalF6RWcxbzhwSExw?=
 =?utf-8?B?eFZCdFJoY3ZDQmpLaGE0SFNvMmUxcVRkR0hrSmtreGEvWndPbk5WekxYaUhv?=
 =?utf-8?B?V0NxajdqY3h3WTdRRmFWS3Z5SjlMT05pMEo1b3krZ2kwaWJFNEJua2VCcERC?=
 =?utf-8?B?MnBHbXA5VWkwbjZGdVZpcERqYno1eVltWlMyS3ZVbHgwbVVnTFdKYjVMNk5D?=
 =?utf-8?B?cHoxRDdyMXRuUVhHQVJLeFZqemlUVTQwYWJWSWNWN0J1ajN6Ri9URHhuNmQ1?=
 =?utf-8?B?MG9md202VVRzN0ZwMSs4VmpBQkFwMGdiVVRFQy9TYVc0c2NaWmdHbTVoTVl4?=
 =?utf-8?B?cm1XUkNMV25IK1l0R05US01lNGp2RVV2cWpUUjNhQjRrZjJ0enByRXZnenBo?=
 =?utf-8?B?b3FMenJFb1gxQVY0VTdXcDlsdjZCRmc4NHZiY3dlc1hKVUZaeTVBY2M0bFZu?=
 =?utf-8?B?ZDBwTmRHbHhJK0gyNTNrRUw5WktjT3NoVmlnMHQwZ3oramdWRnZLQ3VEYjJJ?=
 =?utf-8?B?MjN5M3haSVNMb1RaYmtMUjhkS0h2TzJVUGQ3eG1oYW9WaEUwYVRVV1RBSFdw?=
 =?utf-8?B?MmZTMUw1ZlVxZDRPcGd4VVZpejBWdDZjTFJqWkkzOXBCakJWdHBDQ1ozcnB3?=
 =?utf-8?B?NzZmV0J1L1BQVEtpSm5HSnhTZ2wzMStlbmZhdXZpWUJEc0txKy9rM2hFNzha?=
 =?utf-8?B?QkQ2di8zWHRDclhkZ3Q0M3h1bUhjZ2R1Y0g1TVcvYkJ0RHlqZ1VuTWZOWExP?=
 =?utf-8?B?Y0k5cVBaZ2RWODRxbHNxd1EwZTVIOFBXRFlWT1l2KytVTkZZYk1XV0RQTmVH?=
 =?utf-8?B?WDlXSmlISW5WREplbnVUZjV0TFV1Wm4zb0lQYmo1NEhrOWNvY21aZTJ4UmQz?=
 =?utf-8?B?c3Rja2Y4UjcyZ2pMN2hIK0w2UWs4dzlnYkg5VFFVRmtNd2haUjZhZk84KzBk?=
 =?utf-8?B?NzVaYzVSc3BHS0tlYTUrQyszY3Y0cExBMWpVZ1cxY0lHTDFJWS94bEZMdVNi?=
 =?utf-8?B?Y2NpWW5qb3FHN1RxUGdHS29wdStZSDF2NElidzdWb3AxZGo0MU5vMG5JNm52?=
 =?utf-8?B?SlVvOEsxWlJ4Zms5dlI2ancwSU9JdWlzVXFqS3ppUWYzdlYxaFJvUVYraFJP?=
 =?utf-8?B?QWEzeU83R2dpS0NRMUJlRWk1Yis4VExjWWN3Y3kzc0hRNlhhVEZvUVZ5VWhS?=
 =?utf-8?B?Q3MvUWYyWll2SXRCb0IvMG1ldUk4QmhNaDdBN1g2cUhHd29MTVEybWJIbVZU?=
 =?utf-8?B?c1dBcTNXdDA5U2s3eGdWZmJveVMxM3JzR0ZsTFJ6TkVkYWlJMW9LUzJqbUI2?=
 =?utf-8?B?WCtJeGRoTGl1cFUwMklRMzdhL0hFVWxoNUQ0VG1iNi9PVXI3RkZocWNwSEdY?=
 =?utf-8?B?WkRrSEk4YlZWR2pwOHZ5VWlMRTJhVnA1ZmFLWE5Ockk0ZmJlRDgyNndsc0ZL?=
 =?utf-8?Q?02fDlnO4uNcr1?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WCtJWUpSVVloOXg3bGt5bEZsTi9rQW4zUFpFRFEycjRlMXIyS3RhWXVQRjZX?=
 =?utf-8?B?UXhxT09HSDRRejJkMjRZSkxITUpUZlp5ZFVRejNDU0J3T0ZWUkMwUmxRR2JB?=
 =?utf-8?B?VzZzc0hBNTA5VzZwaDBqdllFdUNiNXhBUXltK1NPY05OUmQ0NURSblBUS0py?=
 =?utf-8?B?Q0E5aU5KWnZmdU9kYWhObFZJWXdSTEQwbUI4WThSd3FkU2VJdTdsSXpiT2I2?=
 =?utf-8?B?TnNoZ1FYRDN5eHZ0UU5xd1Vhejg4TUJPc04zZGtGTm5qZkt6TlUzR3ljMllx?=
 =?utf-8?B?ekZ0Wk5xOExnSzlFZWlXUU1BbmZVU2tuOElVQTFpbk4xeUo2U0xvRlAybmtH?=
 =?utf-8?B?Qk90R0w0OVZKWk03d3hNcFFEZytsZHZhbEJodXcvQ0N1eEppQ1lPRHEveEc3?=
 =?utf-8?B?TXdpaTlXSEhXWEJpNHh0cFk1YlJQRG80Y3VycjFuVVdHelB3Vk9ZdzNVVndt?=
 =?utf-8?B?ZW01UGo2dFFLU0NkbnNRYXFwZDM0MlllcjVkLzBhQnJMZm1PaTM1cW5kZ0Za?=
 =?utf-8?B?YnlsQkhFQXdkdnB0c3AzODVtdEZ4SjZFeHQ0ZWkzQThQZVVESnd3c3hVRTVQ?=
 =?utf-8?B?NXU3SWFydEVBVURKekFHaU5yZUZDS3JNOTRLWDV0anlUdnRobzNqbXRBTTN4?=
 =?utf-8?B?QlpHa0pBT0Z1WmRZU0d6Z0lucy9lUms2T1YrTi80c0o0dDBvNktjWjNMZGRB?=
 =?utf-8?B?S1NGTVo3aC9JK29MekN3V3VWbEJKK1Q1RzRXbEEvcnY1MWdhcmhjU3k0Ynpk?=
 =?utf-8?B?eWl4cVRQNjlZRzk1N2hxeTZsbzQ2bnlpRWZBalFwWXFXVXl6cnBVN0tnSjVE?=
 =?utf-8?B?czc1eFBLbTVtSnFXVzVGL3VmVUVHTjlObno4b0hqaW1paGlwcmszSlBFY0FS?=
 =?utf-8?B?SThTam1UbnAwWG9EZWt3a2ZrNkY3M0pBa2pwalYrN0s2ak9LNkRPc244M0Zz?=
 =?utf-8?B?MGdCeEoxeCtPVFhkVlBDQTZhNjI0Q2tFS3hQZkVRWmJuampqMXJEYUVzb3Vr?=
 =?utf-8?B?Y0M0bk9MSnpvNUtTMGsvbzlFQlFpR1VFY21XczdKOUJGM2M0N0hHWG5oWVRC?=
 =?utf-8?B?bTFiQUJMTWhoZEk2QnZEMEt4cDRaelROK1ZrVWVweHRMbWFFdFIyTmlDZi90?=
 =?utf-8?B?WlRBVzZmcTkvY0dnTG0xWXV1L3dGY3MwQmpXdzAwUEpEaFBzK1Y4RkRTdWE1?=
 =?utf-8?B?dXI1VmVsUzdJMjU5V2U5d1JPMW9QdmJ6cUdIeU1SY1BHNmJTMjhaM1Y5RC9P?=
 =?utf-8?B?c1A0aHRnSVB3bThsNTBxUEU4KzAwc1ZjUWFyclMzV1ltajhoSHlZSWlBSUpM?=
 =?utf-8?B?Sk9taHNMbU1kRWZIamZnUXBTS2NweWpMU1lJSEhuNHgwYXdxZktCaks1ekMz?=
 =?utf-8?B?SWE4cFBzazZzUW53ekZKMUtENXJoemhwSnBKZzJTY2xHV2tpVmVKM09idGF3?=
 =?utf-8?B?SVRyRjh0ajNJdGduQVFHUUh5YTk3NnRuYlI5MTNwbkd5OHc2TDhRS05obUx4?=
 =?utf-8?B?WUYyVVZ1cFZDdnZmQitaclp1OXpXd0l6TFAxWDBWM2xxYlQxVnZCYWRkTmJz?=
 =?utf-8?B?cWJXOFRHc0FNS1NXQW1TN0RIbUtKazZEK1pSVDI4WFVremhVQzBXZ2lHNklM?=
 =?utf-8?B?ZEFVL0R0YW5HcDlwdi81WEZHMWhNdTd0Zk80dTNhOGsrWmVRT25ja2paemxk?=
 =?utf-8?B?YzE5Q0ZCL0prVjc4a3FpckdxRTgvcE8wc2NFeUc1VUZnOFpvKys2UGxTRDJ2?=
 =?utf-8?B?RXdRK21XSXFuclU2VW1CUFNnV1F1MHYvT0k5Qnl3QnFGbmN2TkJrb0pSdjNY?=
 =?utf-8?B?MnZmdm5IQmRqUFQwejZVOGJUTlZqd3VtVWJYRFdCeDAvWThiR1dRbDF3eDBJ?=
 =?utf-8?B?U09pc1FKem1idXhTSFJpcVRmZXBDNDVMdEZxRW1rUmxjM2d0bnl5Z1prTGFZ?=
 =?utf-8?B?K1JkSnRIZW9MK1g3WHlWa3pucVZFaVp2enB1bStJNi94QkdEcUN1SElvTGtQ?=
 =?utf-8?B?ZEl2aHZTQ2k2VlRmL2Nid3JSWTdhU2R1T2pjajQ5V1JZZUpMNEFIWG01NTVl?=
 =?utf-8?B?bHV6eDd6VGdKMjcwdlhkY0psOFZjZ0IxMTUrQzM0eHZwRVJHT3J1YzZ4bU1C?=
 =?utf-8?Q?C9G94DiA2UBfDBXXJYAnAk6f9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d69e5d0-ee82-4e05-c4ec-08dd33e3a11d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 15:04:50.9948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ymIJ3TB4PwjwXEe4nvVdJcPbFR0NKLUPmaJ0a9yuAlanpzcCmlzlsrJxhCFXZQFAKsGaSLFx2HAPVr6kww7ay0bggStE+zU8rHL7FY0zkEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR07MB7672
X-Proofpoint-GUID: yHfce68DMNKr05Od0OrSOz6kZBP0ulLj
X-Proofpoint-ORIG-GUID: yHfce68DMNKr05Od0OrSOz6kZBP0ulLj
X-Authority-Analysis: v=2.4 cv=ZrAXK87G c=1 sm=1 tr=0 ts=67852b94 cx=c_pps a=zlUeCHR5D0pndl+SJpnbFA==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=E1RfjVedg5RjaPCHlfQA:9 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0
 bulkscore=0 phishscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501130125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_070454_108921_A1141660 
X-CRM114-Status: GOOD (  26.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DQo+IEhpIFJlbmF1ZCwNCj4gDQo+IE9uIDEzLjAxLjI1IDE1OjAzLCBSZW5hdWQgQmFyYmllciB3
cm90ZToNCj4gPj4gV2UgZG8gaGF2ZSBpb2N0bHMgb24gY2RldiBpbiBiYXJlYm94LCBidXQgd2Ug
YWxzbyBoYXZlIGFuIGFjdHVhbA0KPiA+PiBlcmFzZSBvcGVyYXRpb24sIHNvIEkgcHJlZmVyIHdl
IHVzZSB0aGF0IGluc3RlYWQuDQo+ID4NCj4gPiBCZWxvdyB0aGUgb3B0aW9uIGZvciBzYW5pdGl6
ZSBjb21tYW5kOg0KPiA+ICMgbnZtZSBzYW5pdGl6ZSAtLWhlbHANCj4gPiBVc2FnZTogbnZtZSBz
YW5pdGl6ZSA8ZGV2aWNlPiBbT1BUSU9OU10NCj4gPg0KPiA+IFNlbmQgYSBzYW5pdGl6ZSBjb21t
YW5kLg0KPiA+DQo+ID4gT3B0aW9uczoNCj4gPiAgIFsgIC0tbm8tZGVhbGxvYywgLWQgXSAgICAg
ICAgICAgICAgICAgLS0tIE5vIGRlYWxsb2NhdGUgYWZ0ZXIgc2FuaXRpemUuDQo+ID4gICBbICAt
LW9pcGJwLCAtaSBdICAgICAgICAgICAgICAgICAgICAgIC0tLSBPdmVyd3JpdGUgaW52ZXJ0IHBh
dHRlcm4gYmV0d2Vlbg0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcGFzc2VzLg0KPiA+ICAgWyAgLS1vd3Bhc3M9PE5VTT4sIC1uIDxOVU0+IF0gICAgICAg
ICAtLS0gT3ZlcndyaXRlIHBhc3MgY291bnQuDQo+ID4gICBbICAtLWF1c2UsIC11IF0gICAgICAg
ICAgICAgICAgICAgICAgIC0tLSBBbGxvdyB1bnJlc3RyaWN0ZWQgc2FuaXRpemUgZXhpdC4NCj4g
PiAgIFsgIC0tc2FuYWN0PTxOVU0+LCAtYSA8TlVNPiBdICAgICAgICAgLS0tIFNhbml0aXplIGFj
dGlvbi4NCj4gPiAgIFsgIC0tb3ZycGF0PTxOVU0+LCAtcCA8TlVNPiBdICAgICAgICAgLS0tIE92
ZXJ3cml0ZSBwYXR0ZXJuLg0KPiANCj4gVGhhbmtzLCBJIGhhZCBsb29rZWQgaW4gbnZtZSgxKSwg
YnV0IEkgc2hvdWxkIGhhdmUgbG9va2VkIGluIG52bWUtc2FuaXRpemUoMSkNCj4gaW5zdGVhZC4N
Cj4gDQo+ID4gTm90ZSBJIGFtIHRhbGtpbmcgYWJvdXQgc2FuaXRpemUgb3BlcmF0aW9uIHRoYXQg
aXMgIHRoZSB3aG9sZSBkZXZpY2UgYmVpbmcNCj4gZXJhc2VkIGkuZSB0aGVyZSBpcyBubyBzdGFy
dCBhbmQgZW5kIGJsb2NrIHRvIGJlIHNwZWNpZmllZC4NCj4gDQo+IFNvIHRoaXMgaXMgYSBzaW5n
bGUgY29tbWFuZCB0aGF0IGVyYXNlcyB0aGUgd2hvbGUgZGV2aWNlLCBidXQgZG9lc24ndCB0YWtl
DQo+IGJsb2NrIG9mZnNldHMvbGVuZ3RoIGFzIGFyZ3VtZW50cz8gRG8geW91IGtub3cgd2hhdCB2
YWx1ZSB0aGUgZXJhc2VkIGRhdGENCj4gY2FuIGhhdmUgYWZ0ZXJ3YXJkcz8NCg0KSW5kZWVkLiBO
byBibG9jayBvZmZzZXQvbGVuZ3RoIGFzIGZhciBhcyBJIGNhbiBzZWUgZnJvbSBsaWJudm1lIGFu
ZCBudm1lLWNsaSBMaW51eCBjb21tYW5kcw0KDQpJIGhhdmUgYWRkZWQgdGhlIGVyYXNlIGVudHJ5
IHBvaW50IGFuZCByYW4gdGhlIHNhbml0aXplIGJsb2NrIGVyYXNlIGNvbW1hbmQuIFRoaXMgd2lw
ZWQgb3V0IHRoZSB3aG9sZSBkZXZpY2UgDQpiYXJlYm94QExTMTA0NkEgUkRCIEJvYXJkOi8gbWQg
LXMgL2Rldi9udm1lMG4xDQowMDAwMDAwMDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgICAgICAgICAgICAgICAgLi4uLi4uLi4uLi4uLi4uLg0KMDAwMDAwMTA6IDAwMDAwMDAw
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAgICAgICAgICAgICAgIC4uLi4uLi4uLi4uLi4u
Li4NCjAwMDAwMDIwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAgICAgICAg
ICAgICAgICAuLi4uLi4uLi4uLi4uLi4uDQowMDAwMDAzMDogMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAgICAgICAgICAgICAgICAgLi4uLi4uLi4uLi4uLi4uLg0KMDAwMDAwNDA6
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAgICAgICAgICAgICAgIC4uLi4u
Li4uLi4uLi4uLi4NCjAwMDAwMDUwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAgICAgICAgICAgICAgICAuLi4uLi4uLi4uLi4uLi4uDQouLi4NCg0KV2hhdGV2ZXIgdGhlIG9m
ZnNldCBJIGdpdmUsIEkgZ2V0IDAuDQoNCj4gDQo+ID4gVXNpbmcgZXJhc2Ugd291bGQgbGltaXQg
c2FuaXRpc2F0aW9uIHRvIGVyYXNpbmcgdGhlIHdob2xlIG1lZGlhDQo+IA0KPiBJc24ndCB0aGlz
IHdoYXQgeW91IHdhbnQ/IEVyYXNlIHRoZSB3aG9sZSBkZXZpY2UgYXQgb25jZT8NClllcy4gTXkg
bnVtYmVyIG9uZSBnb2FsIGlzIHJlYWNoZWQuDQpUaGVyZSBtYXliZSBhIHJlcXVpcmVtZW50IGZv
ciBwYXR0ZXJuIHdyaXRpbmcgd2l0aCBzZXZlcmFsIHBhc3NlcyBsYXRlci4NCg0KPiBBbnl3YXks
IHRoZSBlcmFzZSBjb21tYW5kIGNhbiBiZSBleHRlbmRlZCBhcyBuZWVkZWQgdG8gdGFrZSBvZmZz
ZXQvbGVuZ3RoDQo+IG9yIHRvIGNoYW5nZSBlcmFzdXJlIHR5cGUuDQo+IA0KPiBDdXJyZW50bHkg
ZXJhc2luZyBvbmx5IHBhcnQgb2YgdGhlIGRldmljZSBpcyBwb3NzaWJsZSBieSBhZGRpbmcgY2Fs
bGluZyBlcmFzZSBvbiBhDQo+IHBhcnRpdGlvbiAocGVyaGFwcyBhbGxvY2F0ZWQgdmlhIGFkZHBh
cnQpLg0KPiANCj4gPiBhbmQgbm8gcG9zc2liaWxpdHkgdG8gdXNlIHRoZSBvdGhlciBvcHRpb25z
IHN1Y2ggYXMgb3ZlcndyaXRlIHdoZXJlIGEgcGF0dGVybg0KPiBhbmQgYSBudW1iZXIgb2YgcGFz
cyBpcyBzcGVjaWZpZWQuDQo+IA0KPiBHZW5lcmFsbHksIEkgcHJlZmVyIG5vdCB0byBjb3B5IHRo
ZSBMaW51eCBzdHlsZSBvZiBkZXZpY2Utc3BlY2lmaWMgaW9jdGwgY29kZXMNCj4gdW5sZXNzIG5l
Y2Vzc2FyeS4NCj4gDQo+IEZvciBzdWNoIHZlcnkgc3BlY2lmaWMgdXNlIGNhc2VzLCBpb2N0bCBt
YWtlcyBzZW5zZSwgeWVzLg0KPiANCj4gY2RldiBhbHJlYWR5IHN1cHBvcnRzIGlvY3RsLCBidXQg
YmxvY2sgZGV2aWNlIGRvZXNuJ3QsIHNvIHRoZSBuYXR1cmFsIHN0ZXANCj4gd291bGQgYmUgdG8g
YWRkIHN0cnVjdCBibG9ja19kZXZpY2Vfb3BzOjppb2N0bCwgd2hpY2ggaXMgY2FsbGVkIGZyb20g
c3RydWN0DQo+IGJsb2NrX2RldmljZTo6Y2Rldjo6aW9jdGwuDQo+IA0KPiBJIHRoaW5rIHdlIGRv
bid0IG5lZWQgdGhhdCB5ZXQgdGhvdWdoLCBzZWUgYmVsb3cuDQo+IA0KPiA+IFVubGVzcyBhIHdh
eSBjYW4gYmUgYWRkZWQgdG8gc2V0IGZlYXR1cmVzIGZvciBzYW5pdGl6ZS4NCj4gPiBBdCBwcmVz
ZW50LCBlcmFzZSBpcyBhbGwgSSBuZWVkIHNvIEkgd2lsbCBhZGQgdGhlIGVyYXNlIGVudHJ5IHBv
aW50IHdpdGggdGhlDQo+IHNhbml0aXNhdGlvbiBhY3Rpb24gYmVpbmcgTlZNRV9TQU5JVElaRV9T
QU5BQ1RfU1RBUlRfQkxPQ0tfRVJBU0UgYXMNCj4gZGVmYXVsdC4NCj4gDQo+IEhvdyBhYm91dCB5
b3UgaW1wbGVtZW50IGVyYXNlIGluIG52bWUsIGJ1dCBjaGVjayB0aGF0IHNpemUgYXJndW1lbnRz
DQo+IGluZGVlZCBkZXNjcmliZSB0aGUgd2hvbGUgZGV2aWNlOiBJZiBpdCBkb2VzLCB5b3UgZG8g
eW91ciBzYW5pdGl6ZSBvcGVyYXRpb24NCj4gYW5kIGlmIGl0IGRvZXNuJ3QsIHJldHVybiAtRU5P
U1lTLg0KPiANCj4gV291bGQgdGhhdCB3b3JrIGZvciB5b3U/DQoNClBlcmZlY3QuIFRoYW5rcy4N
Cj4gDQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+IA0KPiA+DQo+ID4NCj4gDQo+IA0KPiAtLQ0K
PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAg
ICAgICAgICAgfA0KPiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL3d3dy5wZW5n
dXRyb25peC5kZS9fXzshIUhLT1NVMGchQVVpDQo+IDZSbUVaSVpZUi0NCj4gVTFPbEVsR1dKRWRp
MGcxWkNlUkdCazV6WXlYRnU2aWZVa18yUGREQWRUZm1wZV9jTU11QTRkTjVKOWhKMw0KPiBiUXRR
ektnZ3FZaXFRdmtxYyQgICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAg
ICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFtdHNnZXJpY2h0IEhp
bGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1
NSB8DQo=


