Delivery-date: Sun, 04 Oct 2026 03:25:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyk-009UUk-2c
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 40BAB202348
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="e/A1d0TS";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="S5F/fa+k";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077126; a=rsa-sha256;
	cv=pass;
	b=XusZfy4GyKAjpQHF6QNveQ6LftGoq7V+8Dj8qMDQYt4Bu89kwkFk28arVCUEW59eEhl3PK
	AczkTceXjbI4UF8vdgvlGE4o2IOnj8RZBjMyJGOCqeE0ybRnepxHT6gqgMv9UntfavvJh+
	eTpi8C3H6iaselJ1RGBhtsJlz6yYxRvJAxz7lDciWE9p/VEQVyVeRMHszwQxyRhp0olI5u
	frz+eNt7s3OFsHz6xsn6Q/sMa3yg/wE/JwP1csADol9EyR5N5qPqvQZ6CRAZ3xLaK3e0XG
	1/8l9Xq3m3hrI0/NxOXQajwa6KWUe3PcphePI2Y2REhgGIdfl8IHhTPUF24edQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="e/A1d0TS";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="S5F/fa+k";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077126;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VLKL09Ukgxb8zSNUi+uGgOm8TOXScupED6DgwF3r6Hw=;
	b=IJsvBE7twHU3kj8pAeFZifrNWpyCRnrj6RQijW2uLsyichqfXImh9ahB0c1v06gRp46gtc
	qf9sJUiAu/xv1xjZMFdxsTJbQKUURdrNOhqcNqihk02xFEJ+aIqj680VtluRg+IRyldUKB
	uzY8XyJzlJOfUD+T9hMWWotgSjiGbGjaYpcF+B85/GLqW1EQcbzf3O4hmIosLyzVCv1BCP
	iDugPMy4y/HAasV4h43aJOS7Jg8fhSBn07gLwqo0sPuVxOI+SGB88Pvd04gc1nEC/EUbH4
	6SVKk/O5lvzXTCYTWRYmVbRVWlmqXCkxncPQHilZtse+ngKVB289GqMBBV/fCA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VLKL09Ukgxb8zSNUi+uGgOm8TOXScupED6DgwF3r6Hw=; b=e/A1d0TSMzB9E7jrrHwb7Ip7wI
	3o2jorpG9deQPi6i9hFVJ+0YpsAPtz5pACMsZVHIl6DVxDLTR06n1OF33nLSjAs+8Wm0pC92MWjb/
	vQoLkpsHRFap6jnsGnf1kqvc7A977bcHUaxSO8KjB9PTl8QufxWqlnLb0odm449FfqVOAGUciGPAV
	mG8OM03P6e8P6rDR/5gVFFdZUofFtzXz4xYnAxmmdjrVlOhO3scQJnslTxhnXiEVnmnPe8Yr/R4BR
	TkJAfR3X4Jxw4bJw5OC2PDK3cKA9LBeVSgJ7jApaUyKqv34NuHSmfr8fCzNr+SmK1AGCoQwL4Xio9
	9b6yQ8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAte-0000000EDuy-3bDB;
	Sun, 04 Oct 2026 01:20:10 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtb-0000000EDsG-2MqH
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xUs4O3GIJONs0Sk8iA5UhzTypqPicxyg1ET/cnFwWSg/Ux3hgqeyFiOao2vVP0Td/qYTF7HazRe/WAwAMFDXvnT6ABeOfevXou9MBpK87bIzXszZHPwyYAlcEM1ulxuOfGHP+6oiWxqNESXGbz8Cmf8/VGKIMuONPxfL2xexv6n0n64dVsnwi+7Irfp/ABn29FDNN+iFzug3zEwBHcGVOexOR/bliBf92bODwlOh9h1ZygyXUfFo3wLxZMank5YclyYCaDi/O6jMoLhnXNU2dSexwNh3c0aqJayF/tXOmzzNgKRu4Go1/eHMqYYLJBJLwXWst3w39vQ0kFqzEcpIHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLKL09Ukgxb8zSNUi+uGgOm8TOXScupED6DgwF3r6Hw=;
 b=nfH7+qQV0U4ays+WzlYQVe2+iM7H5SSBe2LZZQWC+idTt6s5SIyssg9rVebIfM+dXEawk+p+CmC7XsCgEX3dmbVH7/37b7k2bXgxuqeaF4lQw4kPDgUn898C5gTG1wMS01c3+IEhzWiVxswDsRki/JmNMru0QH3egRR7HtDb7PBG7md/AvWz1Qd1alsJihGwG8LlMrJ0MZSMZiLQ77wsr7BpKYIx2fbfsvN4FdLLT1klJXZ8ejOYZaPjRNabC9PmEI5VUQXCN5eJVbJ+XRisLnDYeiBgNuVLm49ZmzuvXpVkiIpMU9zNK+AXDy0b2K9mpVPoeAxvwQHzqUdk6eonUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLKL09Ukgxb8zSNUi+uGgOm8TOXScupED6DgwF3r6Hw=;
 b=S5F/fa+k6vz71SBPPu0VGMx+rMhWNMWU8x1GedgViMjY8NcW7L0iH90kAJ/xss0BQrmzrzG8QHHT56AGXyo6C+By7dgEdUXHrzUtDfcd8tbZ6tCBkcwGO9xxTMr5NAfbwf6QQFpfvqGN9gs0q1LTO1ccK3JbrNHam7REemZk3bY=
Received: from PAZP264CA0151.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::15)
 by PA6PR06MB10157.eurprd06.prod.outlook.com (2603:10a6:102:51f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:00 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::2a) by PAZP264CA0151.outlook.office365.com
 (2603:10a6:102:1f9::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:00 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 193.8.40.99) smtp.mailfrom=leica-geosystems.com; dkim=none (message not
 signed) header.d=none;dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 ZR1PEPF0000E6B0.mail.protection.outlook.com (10.167.241.87) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:00 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:19:59 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 00/14] efi: loader: boot Authenticode-signed UKIs
Date: Sun,  4 Oct 2026 01:19:33 +0000
Message-ID: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:19:59.0945 (UTC) FILETIME=[79817B90:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA6PR06MB10157:EE_
X-MS-Office365-Filtering-Correlation-Id: 16dd686e-0fd6-46ec-c7d3-08df21b59c0f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|23010399003|1800799024|36860700016|376014|6133799003|18002099003|10067099003|3023799007|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: PAY1z6J29Y0BfCgmyHrVS3V9liflQcbf0wGeQsEkwmjIJj/RgtMh8bKcbCQ+KUxIMVxLeHBjv5kd/HWUOzHEvVl7p7t0tG/D6bsTTfy7geFaLER3ENR6tcfMaeCtr4dME/IfCsId4FHb4mEy0riSc2VkpNWXVxWLccK+x7wIj6AMk/jeq9NUzNrQBkmF/h0NRXK8J+rOcSq/Gpbc0YvCfsfso/faH0zTwExnrUhAIipcdYan4H109FaJee8wbipeWM8NYJbB+ByPShbxv88IqYkNX4wMIAi4vBX9zCZ1E4ynb5bYeoLH5gbC39GFV+KaUEfbiW6YEoxXdGgbaftTNVHXK5oGfYSMQUuwy6jUBkIjAiWvr/1o+fwmTomV0NJnyw/NqPEhB7iR3MuLcJUhRi1lBAszzGlpojI96feat4dafxdFgnMwk2pSfIqO2K+AOm0LBhLvdw1HVZzozhVcHisSJNJnAE9FKuBBVOKl2FSAfCDTgjw2RU+XhICcv1IYdiha7p0hNcD+vgfF44FHp8pFq71x0AQXOT/wPX8eBj604k0QuZaABwsRmX+jMR5RKYx+YKzyHGh0/CWoYDPZ7UhYKdO0o68fxBaM7n01iYT7BWRu4y+HQynlciNc7gmx/69T1BDbdIE8hRow3IRaA3IwE5MabM3FsfJqtOTwtzEgZS7u9Zsfu1XUI4QhkoS8ezIzf3sPqCc0NxglGoJUhQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(23010399003)(1800799024)(36860700016)(376014)(6133799003)(18002099003)(10067099003)(3023799007)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: e/FAJUWkCCBrI/tSUAw5SUKthzWK55a+LflHWbvjWEurC2pk72smXonV8sliitMObwBjfrs85s+OU+ERAPXADnrZ19oB+UY5ob91MoX9GlDXhNkTbGW7xwoJaBSNe016OdgpKCa18MYDrfws1BqAJwCw0MM1WBaTvRH6dUdsKocgQYVaRezNm5I6FoiIkuGccFBmt6uviW+aEwN0Qjt0eNq46HuXpiuc3HxLJSt0t9BJL8rf9OPdRWttvcF87CbffnjZTV4rvOM+8+CC2aTR+FBIsQVMxm9tkEW/Xhp/jCxVGiuhln5J+murWEgVn+22nqsFCkncvv5MVfHtzurvRchF9EbADYd6fwKt2LDX6F23itS1ee3pa0YUtCN5/synktCtO0z4e6ZlDY20G1TS/4DU5P2gkY9qy4ZUgLl/1YrRSIOoDNxDDdqB2GfvRprf
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:00.0885
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 16dd686e-0fd6-46ec-c7d3-08df21b59c0f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR06MB10157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182007_757943_CB8B193E 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi, motivated by yet another FIT image CVE that "forced"
   us to roll out an update (not really, we do that regularly anyway ;-) and
   Marco's hint about UKIs on ARM, this series lets the EFI loader boot an A
   [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:6 listed in]
                             [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::6:received];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 40BAB202348
X-Stat-Signature: g1pawfwrpd8ky7gftt8n6t99btoyopob

Hoi,


motivated by yet another FIT image CVE that "forced" us to roll out an
update (not really, we do that regularly anyway ;-) and Marco's hint
about UKIs on ARM, this series lets the EFI loader boot an
Authenticode-signed UKI with signed images forced, as an alternative
to a signed FIT image.

systemd-stub picks the devicetree from the UKI and hands it back
through EFI_DT_FIXUP_PROTOCOL, so barebox's fixups and overlays apply
as with FIT. With signing forced, LoadImage() verifies as well, as the
stub would otherwise load unsigned addons, and a UKI barebox cannot
boot properly is refused before it starts.

Open for opinions: overlays travel in a barebox-specific ".bbdtbo"
section, as UKIs have no place for them.
Known gap: memory reserved via EFI_DT_FIXUP_PROTOCOL stays reserved if
the payload returns to barebox instead of calling ExitBootServices().

Tested on an i.MX8MM board with rauc A/B updates and bootchooser,
including the refusal cases; the Authenticode parser has a fuzz test.

Beware: AI-generated code ahead. It went through a couple of
iterations, trimming and manual rewording, bench and smoke tests, and
agentic monkey-testing of the links in the verified boot chain.


Gruß
Johannes



Johannes Schneider (14):
  mfd: hgs-efi: do not claim the name of the EFI loader's device
  efi: loader: file: report EFI_UNSUPPORTED for volumes without a
    filesystem
  efi: loader: bootm: free the devicetree after installing it
  efi: loader: provide EFI_DT_FIXUP_PROTOCOL
  efi: loader: pe: add helpers for the image size and a named section
  efi: loader: bootm: load only the PE image, not the whole file
  efi: loader: bootm: pass the kernel command line to UKIs
  efi: loader: verify Authenticode signatures against built-in keys
  efi: loader: authenticode: add a fuzz test
  efi: loader: authenticate LoadImage() images when signing is forced
  efi: loader: file: expose no filesystem when signed images are forced
  bootm: efi: boot signed EFI images when signed images are forced
  efi: loader: bootm: install a devicetree for matching UKI devicetrees
  efi: loader: bootm: apply overlays carried by a UKI

 arch/arm/boards/hgs-gs05/board.c       |   2 +-
 common/boards/configs/libfuzzer.config |   1 +
 common/boards/hgs/common.c             |   2 +-
 common/bootm.c                         |   6 +-
 drivers/mfd/hgs-efi.c                  |   2 +-
 efi/Kconfig                            |  11 +
 efi/loader/Kconfig                     |  17 +
 efi/loader/Makefile                    |   1 +
 efi/loader/authenticode.c              | 448 +++++++++++++++++++++++++
 efi/loader/boot.c                      |   3 +
 efi/loader/bootm.c                     | 275 ++++++++++++++-
 efi/loader/pe.c                        | 123 ++++++-
 efi/loader/protocols/Kconfig           |   9 +
 efi/loader/protocols/Makefile          |   1 +
 efi/loader/protocols/dt_fixup.c        | 185 ++++++++++
 efi/loader/protocols/file.c            |  16 +
 include/efi/loader/authenticode.h      |  20 ++
 include/efi/loader/pe.h                |   7 +
 include/efi/protocol/dt_fixup.h        |  21 ++
 19 files changed, 1138 insertions(+), 12 deletions(-)
 create mode 100644 efi/loader/authenticode.c
 create mode 100644 efi/loader/protocols/dt_fixup.c
 create mode 100644 include/efi/loader/authenticode.h
 create mode 100644 include/efi/protocol/dt_fixup.h


base-commit: 58eda915df7a4e907dc741e26a90c9c7ba59a18b
-- 
2.43.0



