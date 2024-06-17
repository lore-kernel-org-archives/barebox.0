Delivery-date: Mon, 17 Jun 2024 15:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeu-007brL-27
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCet-0001Kd-RO
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crjckGNkYUO/I+fj9t+wv7EHheTCyvsc2VLFjtcHycI=; b=4Ucn2jRiQNPSyaqThyWcJ4kQF5
	D+RpeEZwu6hlMt0/GvuSRzqdYqJaDwYLyxYtODbiJ6nr8INXHY/jdk5FCMm4Bod31zUfbP7hEMd2L
	E/FOUj/FOEg/FrQe6VAVrwyEI283HvS3/5tv2o/rDMWHXMgFzPBsoji4C+ILGYYs5NbKUfyiBvB6s
	dYOvVp8f3MS3J5V57gprtD+g2+UxqBA8f01p68ZK5znipi60APpPBkkj4Z987EMTQ3OdXxSGA3guB
	BZ+TGFhJM+N9IMWILHwwHUDEMM6jTEUPZ1ce+OEnIFcGVYItM/njjIsCEe2cx7OLvghdz786LVF85
	AlfhxZ5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeM-0000000Av6w-37H2;
	Mon, 17 Jun 2024 13:43:58 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeG-0000000Av3a-1xAK
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:53 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 4AB7130F134
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631831;
	bh=TvA1W0P+mWqEPKZWonJ72Z1UanNVOppIkcMtFcxU2SM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Tmq0DXqZ6hV86F3lySSo7JEbzC4dvjVikz0ygxHsfuFhaNHn1HPBqu4JnTManElJv
	 Mhp3CFT0RXieSQPPhE0R8TMQAhqHIHZe/cVd6GPK4xhMq5DRiBqmME5UDFXZnPVeFB
	 6YghQ7E76YxxO3Vzl9GKJyDxoaqdOuW47KpkcwVc=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 25D0630F10A; Mon, 17 Jun
 2024 15:43:51 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2043.outbound.protection.outlook.com [104.47.25.43]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 755DC30F167; Mon, 17 Jun
 2024 15:43:50 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR1P264MB2212.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:10::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:49 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:49 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <8f71.66703d96.73d97.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6mn/cEwFbIkHY+RzD01MM6B6d5zXoS1wiSN0kr4Khk+2syM+DNWbncJC5lYlsWDw61YH0K5/DuD2a/9jLiFnJqu+TNnEInwsSq/IUYOSa8sDh4OKmR34xFsaR55BKxWgmnWmoljJRdJlWD83115toidZa7cQvyp+0h3fmBFRuyFwLA64OhTyZW5yX69jqCBCJ2ZJfkX7QK05hS74EMq9rJW4O5RvSgbeUFBzc4mN/6+Qm7f8r2/5YQ71cOam3Pm9YAriWF6QBU/CjBPWmKYWUngiWiIxr6+kLxsDyJW9uAbk7UHMqnTk8zoqVrjqpMfYpIQVMpMnLjX11Y0W4wV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crjckGNkYUO/I+fj9t+wv7EHheTCyvsc2VLFjtcHycI=;
 b=aJfCzZ49QSDktfCOCZB6spJjxNmDXNYdWVtNsHhRqy+C2v1eIt4YBpEvsaaP/uxKKk6niPK9CiVMZFB9a3fXZBTjQJgerwb3hhc64unJf9J19GszuJgqhtwXOdMICEqIz3LNIYoVDUD6pmfod/95YmDK6FddbZtbAa3gaM7QwjWi5CoKPikts5zNR2TZZd5jaYv8NVa0jCIHVEfNUxTqgBdWNvExiyoQzgoFdtMuxiETS9OHeLZb2SAiPSJ1zXqufj5b97pvKIG5kTm0ffQTFTtEP1LLkyPo67MFoFI3M3eK04SlYTzPGFxFVbTgTW2Jz21TlXEfXGXSKQYTTAoXkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=crjckGNkYUO/I+fj9t+wv7EHheTCyvsc2VLFjtcHycI=;
 b=spCRcuEiNOpmhOs3yt3mTJxkVvwBVUg6ZI6RTDiYJQIdLtdEj0YMpfaP+CTfKGu9IQuj5GeFVu2AnzFTQEdpGzcTd3uMEXB/NT49Cp0QCj6UA3t9t+UCTr/rjJq26PfAFoUFiXacr71o0pww23A8Y7vncdDiYmLtFnIGhNtUkMZyIFBKwbUI4VLLTEzZs9yLvXqNp1YJ57IalYMZDbzn42MI+oEUO76TMxJ8tCOTtQ39pOSiaEGpTOzY+1L9lod7k1daytgUAHm0ljANcQ5g3JW1E955SwmNHWvqSZ2GTUr40xwxOHuSuk9LPPsAvR9N3Bi45riBBEC21orsAvB3gQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr, Julian Vetter <jvetter@kalrayinc.com>
Date: Mon, 17 Jun 2024 15:43:28 +0200
Message-ID: <20240617134329.3671762-5-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617134329.3671762-1-jvetter@kalrayinc.com>
References: <20240617134329.3671762-1-jvetter@kalrayinc.com>
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::21) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MR1P264MB2212:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e9f66dd-db6d-4727-2228-08dc8ed3842b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|52116011|1800799021|366013|38350700011;
X-Microsoft-Antispam-Message-Info: K/qJFkDWUz2yIVkn2wJfHQOIGmKSpYJzpsMpsrFUWe0Gu07Xka9WahOZENv/o85pwfEXrw7vo4CJnS8tuhP1ftARWFoJ7ILsLdhZRSUPJ4DouIw7fYdOE50frTJa9e5T+yfAYo8Nm2BOjwjejKm7/WJPxC67L4tWLUeb3sDKSjAL5kvl6qHAqhGGENwalDOnDbTfwYSeCmSSfiqi7fki95ezovdjONmF8w/I5VM3I7sN3K7QB3qbmbSQfxnwBRv5tjMthZwD37O3DvwfqELmYjrsZHm2Vbr9AlfwQuDDn1nyJAC3F+EvzP0ndQIAB5mGpKFWaf3WKTsHx8TUBEDy5MIxktgOWjbF9ctrqJdBWzxmoXYIYBizh2dwRJU/Nm2idA62ozFJFn0R2Tk4fyQ+wMh0655Ae7yIHzH6KXkB2H7YWW4Ly/ubfqp/+y3oVjcwcIsIhsODV9TiIlBN40jEYfSZDtgAXs9TUaTjfpOIy0q+ifHK0ZMhbdRXuNJwtSpY2KeHZK/OUT2cS8PDdfJK7A4qzh/WmfPfdd8TfRtyKk2Bx2XYzWT33EnfMZiyeEogPbVpiWtcrtsnGNfgB4540kJULBTMdVBTy2mbGcR9cEUcAY0AngMqY77QdVebeQPRo9AndiFzyRkxxRZsyAxlYYiapBiLPOzhp1VpyEvisWOOubf5EMuMqPjNdrLAYz5k/YCPDCE0tv9vHubysaG9Q56pQQ41SljE8oaqbj+/8SCV2ZO0grBJ8JNSbVzhEE8H/aSa3gwVUSp1v4AzUEm1eyioF3vjjo5qbSlE94QJ+hYWgRRaoj2U18zj2IyuoTmDorbKZ/CzMnWpVv3S2NZIZwuRnta+XDEsQROaijXYcGsctKpYyD4lw/zKEXUP3Y6sjpwQvYh1rqAGl+18OH/ZrzvCiFfYMbwsYjcpcIaCm2XYTR4nDHPfEyq02yzpo7du1Wy
 vR5zUcgR5athaHUpP7uYMCxCMQDdDHy3YzbMGeWbX4Amuru6Pin19iQvlVzQTfDloATgpHmbwTShtlcuZU8Ewvti6RLfJW45bSZjypn4ICN0Ow+GpgBmreSoJSP3O/yJoSC0PFx0HrFQdBKTpOguat5IyeaE3mGOF1e37/EdBkPzVByQ1eZdszoM8dL6E6M5peHizck79AOKz4IGKNh8natdn678shSEAkycN/qFLuBJHSjwfGcnNgh0KrfaIwJtf0+tCPBFBPkUTbA0OdPyEc2Wh7XpmYB0PI+zihL+I5Yqot98pZukSvcSyB6pZljzBV62HtE3EHA6ZslbDUpDX6Def/HJUSDVq2Q5/pnKmH4iZht00yvUokYykkXpZgMKePTdD5KFwA0fNJCz6IXy8XQ5zJKMmT+iALF5X8sQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(376011)(52116011)(1800799021)(366013)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: siQ3BtZXz/osiheITD02LOvVMfYE4+CALVwr05mbVGX4pKoH6pB7vup/+qFPqcONDUa2VK+TVyS9RYuDAmJF5r5B2OqA9var/XcnrIEup0gDT2JT2C5QfKAPebjnyv7wVmKnmST115eMMSVBx+Q6PDOmdWJ5EuUK21X3fwkCNJpnAfBC/pLtA83NiNzluHhnp1j6e9af7WgA4kP1Jfujw6rspFmNXZFGoy3DvAzAp2T/Lo1KCldUiy1uLwrs4/3PzAwRJ+4jb0nxHboxoCOoVzLJFl41eMGcWwHCo85isg/wM2KVs0cvoVwumxxcc6EhO6CbQ3JpzHdEahzZNEUL5pMuFVdEkdObscLha2NYH2ZAYuHLiSktoZIXlLT4QughXpOu5MvAvaxfOpRwO1FQ5KLYuLrEJpTFiiqoT/woyJ10dhhgoPN67Cy4L0DCQobmIkiW+fxWKP7IE9yRgQzoj4Am/gjgDryFWBoweR+A0MZ9qA2JhWJu2Izvx1FCrRYSK0nZicPYFQp462pfjjp54Mg2J+4Zq27o9JgDiLrN9b6hndhgN+yk9nLWT7QKQdaYzm+wqbB0Vbcrm42QUgkKe04zC22GAxYfzk2ViWKcfDAydnUdUh8HXAe1hHwoPJeVdMPoJQ1VnM19Dv1Inwx4VXjVyN+aG8nqqrOqQi3OgxJ8wO0hPf+AVPlVqwdhwBJC1f87i6gQKPdbyqI0Vmngi473k+4JPxKoHYPKyk3fEYB4H4wBwXPga4sELL8iTb/9tVNwoNuumWJWd0bGP6sLIT9d1vwYnV6c7r0oWMe0KOFZbLaFC8aVKocDZx5/VXIZ+Ds1D/qxMJWZ2fUJPMU9qp3/0btMmGA5WNgzCVB5Djp1QY1lli5il8FpsoxroFWKuOyWQQEmO9EAR5vTFSIc8F0C+uvZzkamNuMfo9XboptlVPW0gszVbIppV3+9R7Nx
 dwBk08VZfoFXlx3S4NopmYNE2jIFmoqxh5H6uzd5uqfnvva0lRudFmZc6ABJazbQieYMmdyrPVVnk01SKwRgB3KsUieLlVTPmRMLD1G9h1tTvgPuAPS4c7kUPUAD9m29AgNwF2AOMhGiZAkxuLRV8TV0mdcuhj/SqJ5dcFj4gtsyQYl2Mz6dPbBB1ZY9rwjTHRGVKihNZ1za5MiiUsYT53h8RNdFEbSxNajOZh3D0Eli1PYlTeyExbBO/TLx093cXtb+lR0zuXfjP27G6eDLQQR4vRUaf9263z666lL+3bR3Wa+hniOQUNbFdyNVgsiyg/moWgL+rsU0pEOx0bbH7NQlvO93sBQg9etVp8B7by3XR0YZRKqgVBK4vBJP6OJMHqh6LYTlUgXtTsEpn7lNGoFaEHmsMjgLdGSiwZDzMn+X/YZIuDLFuefzyYZSnOCbCGJdekJ3EPsNQJ3G13+3+Sny72NT/cbucFNra3z8RQhiNT8W79g9m++tfx3opRUHRISJuuYXc8zvooaGS4cTpmeZlqRrcyLluT4knhZpFqbMGebWymaMCPCfwJ+XLdsTQrjEP4XUj4eypj2gY8YRp8Hl6TnOmZota2ZA9Hf0hA9igGqijGKtC9nZAwHHIDUbK2qYvTeC/5cLy0QwJfZyEw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e9f66dd-db6d-4727-2228-08dc8ed3842b
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:49.5796
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VS49oYVuhmukOCwhPkPqTp/wLfIyK9ocm6bzpTatgIgExd/MNVxIhfo+8PUUliZGfvKdEtM3NM51zgCZE6939Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2212
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064352_741803_CAF7B687 
X-CRM114-Status: UNSURE (   6.77  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] kvx: handle syscalls gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Clement Leger <clement@clement-leger.fr>

Upon syscall, return to caller via 'rfe' (return from exception)
without any modification or handling.

Signed-off-by: Clement Leger <clement@clement-leger.fr>
Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
Reviewed-by: Jonathan Borne <jborne@kalrayinc.com>
---
 arch/kvx/cpu/exception.S | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/kvx/cpu/exception.S b/arch/kvx/cpu/exception.S
index 0017e8ea12..a00e2f93b8 100644
--- a/arch/kvx/cpu/exception.S
+++ b/arch/kvx/cpu/exception.S
@@ -21,4 +21,15 @@ ENDPROC(kvx_ ## __type ## _early_handler)
 exception_stub(debug)
 exception_stub(trap)
 exception_stub(interrupt)
-exception_stub(syscall)
+
+/**
+ * The only time this handle syscalls is when debug routines are not present
+ * (which can happen when booted without JTAG). For instance the "magic
+ * console" uses a syscall catched by the debug routine and if not handled
+ * barebox will crash.
+ */
+.section .exception.syscall, "ax", @progbits
+ENTRY(kvx_syscall_handler):
+	rfe
+	;;
+ENDPROC(kvx_syscall_handler)
-- 
2.34.1







