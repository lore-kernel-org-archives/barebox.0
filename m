Delivery-date: Tue, 03 Nov 2026 22:32:52 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7f-006wWE-27
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 73C2E201B70
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FcYl7FoH;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=HULnD+CP;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=pGcLULNb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741567;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mNENCl5WWooWVnAB5J/zFRxEShvGhxlLGJ4dGcnOz4U=;
	b=NRxFwbFAiFC2IM+BcPrAFWbvPo8MDwO2fVXDwz/hZ9MbPfHX+kCsyLruriEDL70jFqTbEA
	hm1Zsd12iMxAWUZxdMJwWIq98ya6DqXIqwjiNktyfrYdxc6X37Tg9kOO/2DaekGPwKQwon
	onTKRKkoEPcFOyzvGfyspj0UAt0UzP7vDQgnLSUsSWMkLaKFzmMbK8ybhRuD2I0zJuNPLP
	nmeSKkUz3GusV72CA1XegMJf5tOtwefOwH8dCcwq5CEuMYECzw25oORuOMrzdCsH6J13Wz
	C7pdlqXCwflXCKDSDNn4Zlfwu607UI5zQ7itiR2Hif+3NodUFlLIIPBjVwIxiQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FcYl7FoH;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=HULnD+CP;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=pGcLULNb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741567; a=rsa-sha256;
	cv=none;
	b=DMY8HoIsSEY33/GV0gwK46p+KyRYKfGfgNvLxMRa2xYC7JLLgUAvG5+r2etwH8uGDNdGb6
	1tQRcd0PNmpmJgarb+Ez8l7GvkOn5esIl7IYdovpntqgeepselVPSjgH0o+G8UWs1SOZC1
	BeL35Zfu7YCjN+AzFlH9IqsANnXSwhrO9hOSzJW0xS2Qob/5GUlD/Y2agHaEDkW0dIzVpO
	uXSs9VVaqJ+2LZ/U6V0udhCu61enwvwusAtLCZ4gPz2WGnMcBowiOfTyIQsOX9Djk7YJdC
	q/tmfOhREjXuQTQ8QMftO6zmnm+iC76WOH8+VNAMMZGpHAW65vfPl5K01cgjRg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=mNENCl5WWooWVnAB5J/zFRxEShvGhxlLGJ4dGcnOz4U=; b=FcYl7FoH/sgjqM
	h6PvRa3PaUM8NI46mMLuMJWmySiX0BDe0lqonookIedvN76SLgsKFEbhtIBLYjlLTKR7DYdUQVUIp
	Le5su+nRqRELh10GMCgT5nYwcwx1DuPGdPuzA/1PoOWXdjkNO/EKgtuCUMCHKV2oRe009ChLTBTYm
	2L5QNANvrYvcBVAXaMlVM6tHeZGcl42TGdzqrk0EV+twkoCNptFN9VS5MYAkjswVfUO7kUObPBUOr
	6C3LgProYt2/rIwl05G0pIkQagG+TOSdtQ+3B321+qMB+XHffCzVgRW+a0HSTS/4suKHjVFVvA0gw
	APpah0cgubUq/06BgJow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6R-00000003iDR-0f7A;
	Tue, 03 Nov 2026 21:31:35 +0000
Received: from mx03.puzzle.ch ([2a06:c00::5e55])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i5d-2cE6
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:33 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [45.81.71.99])
	by mx03.puzzle.ch (Postfix) with ESMTPS id 42D9E1C1;
	Tue,  3 Nov 2026 22:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mNENCl5WWooWVnAB5J/zFRxEShvGhxlLGJ4dGcnOz4U=;
	b=HULnD+CPMZUr7fqGs5McO8nMBNBjrYDhQXGxMkkAUbu7iuMNyIpfvCa1lHMgHG/spPOVCV
	nLB3aVF3rUWzm+Pydrt2M9yQdPxFKrfvGHzoXAxKiG74bLx/doasUySGWrpR1/QwGmXunO
	Tjk4UDuK6F3368Md88Q2EV5bKIpwLy+BOE/V8TVyhEZDPwG6KPwW1y/3Cq25tlQX8EO2xJ
	vCbK+v47JbSkZFTX58tYrlMKXWRTor4d98h3j/r0qTiFZUggD1NrpsFHdJH4rpJGpe3IQN
	QOiLqsHKHF35+nFx+fwZiu9RllXFOuPST7AyQDqiDFwDeGHvFyKIUaJKUa+MAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mNENCl5WWooWVnAB5J/zFRxEShvGhxlLGJ4dGcnOz4U=;
	b=pGcLULNbkC0UC6kAud9Ltam9J/8art9mI3ceTXrBXLNrYyhdTjM+fNcVWtkfVZFc4QZdTQ
	sOggkEh7xjgtckoTjlZMvSYS0PpmFKMQXqz/DiLIVIJQPpa/lXQxkCLK7CGCqgHmMF+kwv
	DqAbWCxVNIiT6OwC39hTfbPONBZ0cjG9Tt+C9oCJuFIPVuiGe5ESELCtECEiKEqLfvS+M9
	JFGUDMygTWYN2+MJZ03e2ggTHiy8s0REPVnGoRxxVLS3S1+rz0GV0DpOlasrh/qvIuKihu
	+GKCSRdygZiJ0HApuLox0QPmLsgorBKlcjb8qVyr5HZvpLTyJw0d++UZb4bZcg==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:11 +0100
Subject: [PATCH 5/6] mtd: nand: orion: register the NAND device as "nand"
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-5-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=vh+AJaqLj7aDqOVNQX4yMSQ4XCt/hceqQpbzcpCkz7Q=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKlSYpDfKoXrJCGFr72Qw6W8e1MTH0KZlZ2u
 T/t/RnV8umJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpQAKCRC/aVhE+XH0
 q54XD/0cqaSya1fgdWXspXTmWpRlU9UOdKNitGtymy/AXbOzAsBV4SjCxxsHNqOGWP8OPryL1yL
 +FWhX8Qb0z+4jZ0BRGnelUvXF1kXNSRxPvIiegL71IXe9J2S7m7PVJqY8+7YlM/m161vNoB2jzn
 SDEHBbIHaWBciUfIsGLL+pdRc+MtPMizKMqqIOJEwq6VZOjRXCyL02tTc3sG3ass3XK+CX1zR8e
 MTBQw+P2Kbr088oh8MJno2QJg6rc7j7cNVuT4T67XajeLisKI5INEcli31t3GZeBT3YiFRkHvpd
 2LmTTRrShJFhIEI3D5y3YepQdLofep4y4X1tKfldL5qIOQA/bI7T8ApUevsfRU2IjoZsPpCKfAk
 43/OaAIaPc6/E9sXb+ZoHmyXOpvtSAwavknmy5aZkyQJzlaPy69zok7meyJudZcpUUfcmYk5hi9
 dY6WuvjVR5+WSiegczC/YWdWUAagegQ5777GvDCYDWpfRGO5eVhCL4LNuaQrgCS+gOjKVMxEPYW
 OPeTvlBrZA6zeJltc1jt8/KI29pCMeFOj55iQea6qYvMXt/VFTIXQhiRzz6U7vXe+LhP361Cyj0
 hVIJ2m3xOXEmbqSZLa/Bjk45el5ncV5ULcE0Ov2/z/XUFgJyYDq66kUCHgseySKL9BJUltk3f5+
 timAI7qyjrtGzMA==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_918315_8E5D0F00 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  All other raw NAND drivers register their device as "nand",
    so the flash shows up as /dev/nand0 with partitions like /dev/nand0.barebox.
    The orion driver used "orion_nand", giving /dev/orion_nand0 and [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 73C2E201B70
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211209,puzzle.ch:s=20211230];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: jmcjodywtbnq6qrpzuowzhixgw63h4gq

All other raw NAND drivers register their device as "nand", so the
flash shows up as /dev/nand0 with partitions like /dev/nand0.barebox.
The orion driver used "orion_nand", giving /dev/orion_nand0 and
/dev/orion_nand0.barebox, so board code, environments and documentation
written for the common name did not find the device:

  update barebox on /dev/nand0.barebox.bb from /barebox-ram.img using handler nand.
  update failed
  barebox_update: No such file or directory

Use the common name. Nothing in barebox refers to the old one.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 drivers/mtd/nand/raw/nand_orion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_orion.c b/drivers/mtd/nand/raw/nand_orion.c
index 68797b9b38..eb58cba399 100644
--- a/drivers/mtd/nand/raw/nand_orion.c
+++ b/drivers/mtd/nand/raw/nand_orion.c
@@ -152,7 +152,7 @@ static int orion_nand_probe(struct device *dev)
 		goto no_dev;
 	}
 
-	add_mtd_nand_device(mtd, "orion_nand");
+	add_mtd_nand_device(mtd, "nand");
 	return 0;
 no_dev:
 	if (!IS_ERR(clk))

-- 
2.53.0



