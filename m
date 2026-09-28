Delivery-date: Mon, 28 Sep 2026 12:46:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB8sh-007GDc-1z
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 12:46:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 10E77201E1B
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 12:46:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eK7cpR6m;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Wc0qXaV7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790592407;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Gd13o/bQyO3vu7qH0TJ3r3tIyzhvBZeAw4R5bvjDKh4=;
	b=hGh0Ji+2UM4w+JZpWbUbjjbP8+xPWL4goQC0xRjo29/niVjz6ONCnmgAtrHiS+VQdpkTtj
	UvCxY0DSz7jy9NggH/+EZ7t92mj/mbRDmoJ3j1fd9oXuDytyuVbkMaA7vNakzqie7Y7tp5
	a25LcvEc2kjeESlUKYcUowKPJq0nfRgokh6e0Px0/i7jBL3gQvUu8PsnjZzXHgL1t/7ZCg
	X4f3mjXbajEDkLWMNh7qtVnmdU1kyENOJvarlrJsg4p8OOMkrXv9Log3qlw5lwPjTMt74O
	HQC2uwS7+ba2no5rUKysqC0GdpzAKnEuUw5IxTm9LveI5aWRYtQJY9Rfowl1Mg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790592407; a=rsa-sha256;
	cv=pass;
	b=Od1Xeh3rAMwrH/cvGebRILzQlTiVqBJD6phJyh+rntZQBVGOlZpTzCAiita0vigl/oNkG0
	9Fj496s5A34mxxBCeMdFGsyLtKRkJ8nunJW4vMABFvL0Q0gYjz1CM/2busMDZ2Kl4+GxEb
	ojABDbLU0SEjuBRxdpy7OQdcc2XWNuXFrJH6wNlxAMHLklQhZwZxMrQGq091xDvkD2E5iH
	BDfSxdRYZHB+DTmutle6vj1wdpgja8x6J3o9c3Zqk2rgMAE+RlLyl04kdNgb7K+ar5l0Vy
	gO/HxJrhJCnjyW//LfrawvfEU8UQygZSHFnZ2I3fzImEdnMMv1LT7WgQRtG+VQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eK7cpR6m;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Wc0qXaV7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gd13o/bQyO3vu7qH0TJ3r3tIyzhvBZeAw4R5bvjDKh4=; b=eK7cpR6mhovlrYunSg7zeRsZ/W
	QSI4EwFOEiZSNXzcRRng4MmPb+qvLDRELT132NwuRTD0L+iPw/+lTGK8DozHb73ZlaLZmoNt0DjT/
	JhBODTJh3SYlNfRA0gORl6uZgJCqlCj0K7DRW6D/6HGbmgWxU17EvV/Sw4ArrzGaYQKpdIdO6lGia
	lmnLeEiTI9mumWtqiPBif1jWoDi/1xboX9m50GwCh678JjvWiodD8cN6BfaEQZZCZgxkXqvEUXszo
	IDZnaF1N4NBwimzgTPvkawWW/QlA8/oc/WwvisCii2HrfPKxfn2WpOKzMcK6sfTrNXijeCknx0K3T
	1wxE3PIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB88k-00000000Ifz-3E50;
	Mon, 28 Sep 2026 09:59:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB88i-00000000IfL-0WiT
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 09:59:17 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4246F20084D;
	Mon, 28 Sep 2026 11:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790589554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Gd13o/bQyO3vu7qH0TJ3r3tIyzhvBZeAw4R5bvjDKh4=;
	b=Wc0qXaV7M9XdEGnclypH63uhlis7z04UZ4G0jWovRPXSX5NVha8iE8/UYlOa/u6p2kQ9u6
	NjI2/t+Jfa3f1FcEWQcQJV2qpYT/M6C2eKdGnR5vb2Jrh5DZx++lqAKZZtPd/dfkRSGPQp
	B6kZBOvtgryY8n1T7yUMaVq9tYQ6nZX9H5Cai5m1IOqLC/rGSXC/YMn1v/1cx7QRmZ7xX3
	rlBABSa9V70OmTKhw2T7PTg5oE7QSl7yC2EXg8GMoLLFm6Lun+7+4V3BJ0ctPZ7UNks1gz
	8yNOY0IgZwkElJ1hHqP+NcRESXlgr7EPN7pnb0qofHdtuqCs1PvQeCV2DF9WsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790589554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Gd13o/bQyO3vu7qH0TJ3r3tIyzhvBZeAw4R5bvjDKh4=;
	b=Whg9NosisZs6zCenr7ZPBa/3zwmq0AANgdfprxmJ9FdlyuuCVvr5kAHvMnx2YyZWzOUuPG
	gNYAOOjGKVwvS2eOsgDY/0Sttwv+Etq0f5Usb3oS9KU53z99E6U4fAQoh+3MSCg7jh7d0G
	Uwr8bM6dqU4GjKqqkOKqDo8h5Mq67Xe2DwEfHtZISQpd2tujmM94U3K7+KAc7c4GYotzah
	sKDqeGtBnVWn4pI9KRHcE7WzdhPsc7/KQIvqKyinZvCNRSysj46aKDnr3oaDvTboqogNGK
	ya7ZN0kwGK/9AdrsmqsZDmPjr0uHyGNrsYWHJzD+tMyk14UHSIHue5IjbJgFTQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790589554; a=rsa-sha256;
	cv=none;
	b=ArjWSkvKLjeXoPIyW8qi38QPJ8sN8UnELUGpC6UFF9yz4zxywUcpDGTKqfMWluhRFC9/iR
	iRD6r3Za/1C+XPX1uOuo/30GnFp7y3Yas4oZvrV72ZuM1P1cEvq9Bn7gj0yHKYiNy64lc2
	TbzTjJp9eWCqKTfPGoUMYbRZCZdPL7WE/FP0wEL42qFqgQxleGDF7FhKoBrJ2vNKfUV9c0
	9G9a0cgqiSjYkki3KT1bta46u6ZJS0/cMW7j/70VhsGXZsYRwLdGhllqhmBMIVCyZZ8W4C
	WMXimOgLzdTPzptmsx/KmjvECwqpLEUCGQMG6reZgfBFNaEXIyljb1m7DYgFHQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 2DEDF7419D3;
	Mon, 28 Sep 2026 11:59:14 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH] ARM: lib32: bootm: always pass a device tree to barebox images
Date: Mon, 28 Sep 2026 11:59:12 +0200
Message-ID: <20260928095913.1102079-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_025916_321926_23F15E36 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since commit 828ffad14177 ("bootm: make fallback to barebox
    internal tree optional"), disabling CONFIG_BOOTM_OFTREE_FALLBACK doesn't
   only affect kernels, but also barebox images started with bootm. Wi [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 10E77201E1B
X-Stat-Signature: oueupmps4geuordatc4i34xpjij44mgq

Since commit 828ffad14177 ("bootm: make fallback to barebox internal
tree optional"), disabling CONFIG_BOOTM_OFTREE_FALLBACK doesn't only
affect kernels, but also barebox images started with bootm. Without -o,
these now get ATAGs instead of a device tree, which leaves images like
barebox-dt-2nd.img or the STM32MP generic BL33 without any description
of the hardware and thus without an interactive console.

The option is meant to make users notice a missing kernel device tree,
but barebox images don't ship one that should be preferred over ours.
So let's have the barebox image handler preset barebox' own device tree
for bootm_get_devicetree() to use if none was supplied.

Tested on an STM32MP157C-DK2 with CONFIG_BOOTM_OFTREE_FALLBACK=n: a
zImage still gets no device tree, -o is still honoured and a chainloaded
generic BL33 image comes up with a console.

Assisted-by: Claude:opus-5.5
Fixes: 828ffad14177 ("bootm: make fallback to barebox internal tree optional")
Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 17 ++++++++++++++++-
 common/bootm.c         |  4 +++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index e2a80ada788b..cfd30d1e0aff 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -457,9 +457,24 @@ static struct image_handler zimage_handler = {
 	.filetype = filetype_arm_zimage,
 };
 
+static int do_bootm_barebox(struct image_data *data)
+{
+	/*
+	 * Unlike a kernel, barebox doesn't ship a device tree that should be
+	 * preferred over ours: Images like barebox-dt-2nd.img and the
+	 * STM32MP generic BL33 image learn about the hardware solely from
+	 * the device tree they are passed. So pass along ours if none was
+	 * supplied, regardless of CONFIG_BOOTM_OFTREE_FALLBACK.
+	 */
+	if (!data->oftree)
+		data->of_root_node = of_dup(of_get_root_node());
+
+	return do_bootm_linux(data);
+}
+
 static struct image_handler barebox_handler = {
 	.name = "ARM barebox",
-	.bootm = do_bootm_linux,
+	.bootm = do_bootm_barebox,
 	.check_image = bootm_efi_check_image,
 	.filetype = filetype_arm_barebox,
 };
diff --git a/common/bootm.c b/common/bootm.c
index 27da1a590bf1..7ba31379a217 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -330,7 +330,9 @@ void *bootm_get_devicetree(struct image_data *data)
 			printf("using %s as devicetree\n", data->oftree->name);
 
 	} else {
-		data->of_root_node = of_dup_root_node_for_boot();
+		/* image handlers may preset barebox' own device tree */
+		if (!data->of_root_node)
+			data->of_root_node = of_dup_root_node_for_boot();
 		if (!data->of_root_node) {
 			if (bootm_verbose(data))
 				printf("using no devicetree\n");
-- 
2.47.3



